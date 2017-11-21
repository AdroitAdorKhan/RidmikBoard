package net.hasnath.android.keyboard;

import android.text.TextUtils;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputConnection;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.regex.Pattern;

public class EditingUtil {
    private static final int LOOKBACK_CHARACTER_NUM = 15;
    private static Method sMethodGetSelectedText;
    private static Method sMethodSetComposingRegion;
    private static boolean sMethodsInitialized;
    private static final Pattern spaceRegex = Pattern.compile("\\s+");

    public static class Range {
        public int charsAfter;
        public int charsBefore;
        public String word;

        public Range(int charsBefore, int charsAfter, String word) {
            if (charsBefore < 0 || charsAfter < 0) {
                throw new IndexOutOfBoundsException();
            }
            this.charsBefore = charsBefore;
            this.charsAfter = charsAfter;
            this.word = word;
        }
    }

    public static class SelectedWord {
        public int end;
        public int start;
        public CharSequence word;
    }

    private EditingUtil() {
    }

    public static void appendText(InputConnection connection, String newText) {
        if (connection != null) {
            connection.finishComposingText();
            CharSequence charBeforeCursor = connection.getTextBeforeCursor(1, 0);
            if (!(charBeforeCursor == null || charBeforeCursor.equals(" ") || charBeforeCursor.length() <= 0)) {
                newText = " " + newText;
            }
            connection.setComposingText(newText, 1);
        }
    }

    private static int getCursorPosition(InputConnection connection) {
        ExtractedText extracted = connection.getExtractedText(new ExtractedTextRequest(), 0);
        if (extracted == null) {
            return -1;
        }
        return extracted.startOffset + extracted.selectionStart;
    }

    public static String getWordAtCursor(InputConnection connection, String separators, Range range) {
        Range r = getWordRangeAtCursor(connection, separators, range);
        return r == null ? null : r.word;
    }

    public static void deleteWordAtCursor(InputConnection connection, String separators) {
        Range range = getWordRangeAtCursor(connection, separators, null);
        if (range != null) {
            connection.finishComposingText();
            int newCursor = getCursorPosition(connection) - range.charsBefore;
            connection.setSelection(newCursor, newCursor);
            connection.deleteSurroundingText(0, range.charsBefore + range.charsAfter);
        }
    }

    private static Range getWordRangeAtCursor(InputConnection connection, String sep, Range range) {
        Range range2 = null;
        if (!(connection == null || sep == null)) {
            CharSequence before = connection.getTextBeforeCursor(1000, 0);
            CharSequence after = connection.getTextAfterCursor(1000, 0);
            if (!(before == null || after == null)) {
                int start = before.length();
                while (start > 0 && !isWhitespace(before.charAt(start - 1), sep)) {
                    start--;
                }
                int end = -1;
                do {
                    end++;
                    if (end >= after.length()) {
                        break;
                    }
                } while (!isWhitespace(after.charAt(end), sep));
                int cursor = getCursorPosition(connection);
                if (start >= 0 && cursor + end <= after.length() + before.length()) {
                    String word = new StringBuilder(String.valueOf(before.toString().substring(start, before.length()))).append(after.toString().substring(0, end)).toString();
                    range2 = range != null ? range : new Range();
                    range2.charsBefore = before.length() - start;
                    range2.charsAfter = end;
                    range2.word = word;
                }
            }
        }
        return range2;
    }

    private static boolean isWhitespace(int code, String whitespace) {
        return whitespace.contains(String.valueOf((char) code));
    }

    public static CharSequence getPreviousWord(InputConnection connection, String sentenceSeperators) {
        CharSequence prev = connection.getTextBeforeCursor(15, 0);
        if (prev == null) {
            return null;
        }
        String[] w = spaceRegex.split(prev);
        if (w.length < 2 || w[w.length - 2].length() <= 0 || sentenceSeperators.contains(String.valueOf(w[w.length - 2].charAt(w[w.length - 2].length() - 1)))) {
            return null;
        }
        return w[w.length - 2];
    }

    private static boolean isWordBoundary(CharSequence singleChar, String wordSeparators) {
        return TextUtils.isEmpty(singleChar) || wordSeparators.contains(singleChar);
    }

    public static SelectedWord getWordAtCursorOrSelection(InputConnection ic, int selStart, int selEnd, String wordSeparators) {
        CharSequence touching;
        SelectedWord selWord;
        if (selStart == selEnd) {
            Range range = new Range();
            touching = getWordAtCursor(ic, wordSeparators, range);
            if (TextUtils.isEmpty(touching)) {
                return null;
            }
            selWord = new SelectedWord();
            selWord.word = touching;
            selWord.start = selStart - range.charsBefore;
            selWord.end = range.charsAfter + selEnd;
            return selWord;
        } else if (!isWordBoundary(ic.getTextBeforeCursor(1, 0), wordSeparators) || !isWordBoundary(ic.getTextAfterCursor(1, 0), wordSeparators)) {
            return null;
        } else {
            touching = getSelectedText(ic, selStart, selEnd);
            if (TextUtils.isEmpty(touching)) {
                return null;
            }
            int length = touching.length();
            for (int i = 0; i < length; i++) {
                if (wordSeparators.contains(touching.subSequence(i, i + 1))) {
                    return null;
                }
            }
            selWord = new SelectedWord();
            selWord.start = selStart;
            selWord.end = selEnd;
            selWord.word = touching;
            return selWord;
        }
    }

    private static void initializeMethodsForReflection() {
        try {
            sMethodGetSelectedText = InputConnection.class.getMethod("getSelectedText", new Class[]{Integer.TYPE});
            sMethodSetComposingRegion = InputConnection.class.getMethod("setComposingRegion", new Class[]{Integer.TYPE, Integer.TYPE});
        } catch (NoSuchMethodException e) {
        }
        sMethodsInitialized = true;
    }

    private static CharSequence getSelectedText(InputConnection ic, int selStart, int selEnd) {
        if (!sMethodsInitialized) {
            initializeMethodsForReflection();
        }
        if (sMethodGetSelectedText != null) {
            try {
                return (CharSequence) sMethodGetSelectedText.invoke(ic, new Object[]{Integer.valueOf(0)});
            } catch (InvocationTargetException e) {
            } catch (IllegalArgumentException e2) {
            } catch (IllegalAccessException e3) {
            }
        }
        ic.setSelection(selStart, selEnd);
        CharSequence result = ic.getTextAfterCursor(selEnd - selStart, 0);
        ic.setSelection(selStart, selEnd);
        return result;
    }

    public static void underlineWord(InputConnection ic, SelectedWord word) {
        if (!sMethodsInitialized) {
            initializeMethodsForReflection();
        }
        if (sMethodSetComposingRegion != null) {
            try {
                sMethodSetComposingRegion.invoke(ic, new Object[]{Integer.valueOf(word.start), Integer.valueOf(word.end)});
            } catch (InvocationTargetException e) {
            } catch (IllegalArgumentException e2) {
            } catch (IllegalAccessException e3) {
            }
        }
    }
}
