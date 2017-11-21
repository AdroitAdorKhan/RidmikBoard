package net.hasnath.android.keyboard;

import android.content.Context;
import android.inputmethodservice.Keyboard.Key;
import android.support.v4.content.IntentCompat;
import android.text.format.DateFormat;
import android.util.Log;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Calendar;

public class TextEntryState {
    private static /* synthetic */ int[] $SWITCH_TABLE$net$hasnath$android$keyboard$TextEntryState$State = null;
    private static final boolean DBG = false;
    private static boolean LOGGING = DBG;
    private static final String TAG = "TextEntryState";
    private static int sActualChars;
    private static int sAutoSuggestCount = 0;
    private static int sAutoSuggestUndoneCount = 0;
    private static int sBackspaceCount = 0;
    private static FileOutputStream sKeyLocationFile;
    private static int sManualSuggestCount = 0;
    private static int sSessionCount = 0;
    private static State sState = State.UNKNOWN;
    private static int sTypedChars;
    private static FileOutputStream sUserActionFile;
    private static int sWordNotInDictionaryCount = 0;

    public enum State {
        UNKNOWN,
        START,
        IN_WORD,
        ACCEPTED_DEFAULT,
        PICKED_SUGGESTION,
        PUNCTUATION_AFTER_WORD,
        PUNCTUATION_AFTER_ACCEPTED,
        SPACE_AFTER_ACCEPTED,
        SPACE_AFTER_PICKED,
        UNDO_COMMIT,
        CORRECTING,
        PICKED_CORRECTION
    }

    static /* synthetic */ int[] $SWITCH_TABLE$net$hasnath$android$keyboard$TextEntryState$State() {
        int[] iArr = $SWITCH_TABLE$net$hasnath$android$keyboard$TextEntryState$State;
        if (iArr == null) {
            iArr = new int[State.values().length];
            try {
                iArr[State.ACCEPTED_DEFAULT.ordinal()] = 4;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[State.CORRECTING.ordinal()] = 11;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[State.IN_WORD.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[State.PICKED_CORRECTION.ordinal()] = 12;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[State.PICKED_SUGGESTION.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr[State.PUNCTUATION_AFTER_ACCEPTED.ordinal()] = 7;
            } catch (NoSuchFieldError e6) {
            }
            try {
                iArr[State.PUNCTUATION_AFTER_WORD.ordinal()] = 6;
            } catch (NoSuchFieldError e7) {
            }
            try {
                iArr[State.SPACE_AFTER_ACCEPTED.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                iArr[State.SPACE_AFTER_PICKED.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                iArr[State.START.ordinal()] = 2;
            } catch (NoSuchFieldError e10) {
            }
            try {
                iArr[State.UNDO_COMMIT.ordinal()] = 10;
            } catch (NoSuchFieldError e11) {
            }
            try {
                iArr[State.UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError e12) {
            }
            $SWITCH_TABLE$net$hasnath$android$keyboard$TextEntryState$State = iArr;
        }
        return iArr;
    }

    public static void newSession(Context context) {
        sSessionCount++;
        sAutoSuggestCount = 0;
        sBackspaceCount = 0;
        sAutoSuggestUndoneCount = 0;
        sManualSuggestCount = 0;
        sWordNotInDictionaryCount = 0;
        sTypedChars = 0;
        sActualChars = 0;
        sState = State.START;
        if (LOGGING) {
            try {
                sKeyLocationFile = context.openFileOutput("key.txt", IntentCompat.FLAG_ACTIVITY_CLEAR_TASK);
                sUserActionFile = context.openFileOutput("action.txt", IntentCompat.FLAG_ACTIVITY_CLEAR_TASK);
            } catch (IOException ioe) {
                Log.e(TAG, "Couldn't open file for output: " + ioe);
            }
        }
    }

    public static void endSession() {
        if (sKeyLocationFile != null) {
            try {
                sKeyLocationFile.close();
                sUserActionFile.write(new StringBuilder(String.valueOf(DateFormat.format("MM:dd hh:mm:ss", Calendar.getInstance().getTime()).toString())).append(" BS: ").append(sBackspaceCount).append(" auto: ").append(sAutoSuggestCount).append(" manual: ").append(sManualSuggestCount).append(" typed: ").append(sWordNotInDictionaryCount).append(" undone: ").append(sAutoSuggestUndoneCount).append(" saved: ").append(((float) (sActualChars - sTypedChars)) / ((float) sActualChars)).append("\n").toString().getBytes());
                sUserActionFile.close();
                sKeyLocationFile = null;
                sUserActionFile = null;
            } catch (IOException e) {
            }
        }
    }

    public static void acceptedDefault(CharSequence typedWord, CharSequence actualWord) {
        if (typedWord != null) {
            if (!typedWord.equals(actualWord)) {
                sAutoSuggestCount++;
            }
            sTypedChars += typedWord.length();
            sActualChars += actualWord.length();
            sState = State.ACCEPTED_DEFAULT;
            LatinImeLogger.logOnAutoSuggestion(typedWord.toString(), actualWord.toString());
            displayState();
        }
    }

    public static void backToAcceptedDefault(CharSequence typedWord) {
        if (typedWord != null) {
            switch ($SWITCH_TABLE$net$hasnath$android$keyboard$TextEntryState$State()[sState.ordinal()]) {
                case 3:
                case 7:
                case 8:
                    sState = State.ACCEPTED_DEFAULT;
                    break;
            }
            displayState();
        }
    }

    public static void acceptedTyped(CharSequence typedWord) {
        sWordNotInDictionaryCount++;
        sState = State.PICKED_SUGGESTION;
        displayState();
    }

    public static void acceptedSuggestion(CharSequence typedWord, CharSequence actualWord) {
        sManualSuggestCount++;
        State oldState = sState;
        if (typedWord.equals(actualWord)) {
            acceptedTyped(typedWord);
        }
        if (oldState == State.CORRECTING || oldState == State.PICKED_CORRECTION) {
            sState = State.PICKED_CORRECTION;
        } else {
            sState = State.PICKED_SUGGESTION;
        }
        displayState();
    }

    public static void selectedForCorrection() {
        sState = State.CORRECTING;
        displayState();
    }

    public static void typedCharacter(char c, boolean isSeparator) {
        boolean isSpace = c == ' ' ? true : DBG;
        switch ($SWITCH_TABLE$net$hasnath$android$keyboard$TextEntryState$State()[sState.ordinal()]) {
            case 1:
            case 2:
            case 6:
            case 7:
            case 8:
                if (!isSpace && !isSeparator) {
                    sState = State.IN_WORD;
                    break;
                } else {
                    sState = State.START;
                    break;
                }
                break;
            case 3:
                if (isSpace || isSeparator) {
                    sState = State.START;
                    break;
                }
            case 4:
            case 9:
                if (!isSpace) {
                    if (!isSeparator) {
                        sState = State.IN_WORD;
                        break;
                    } else {
                        sState = State.PUNCTUATION_AFTER_ACCEPTED;
                        break;
                    }
                }
                sState = State.SPACE_AFTER_ACCEPTED;
                break;
            case 5:
            case 12:
                if (!isSpace) {
                    if (!isSeparator) {
                        sState = State.IN_WORD;
                        break;
                    } else {
                        sState = State.PUNCTUATION_AFTER_ACCEPTED;
                        break;
                    }
                }
                sState = State.SPACE_AFTER_PICKED;
                break;
            case 10:
                if (!isSpace && !isSeparator) {
                    sState = State.IN_WORD;
                    break;
                } else {
                    sState = State.ACCEPTED_DEFAULT;
                    break;
                }
                break;
            case 11:
                sState = State.START;
                break;
        }
        displayState();
    }

    public static void backspace() {
        if (sState == State.ACCEPTED_DEFAULT) {
            sState = State.UNDO_COMMIT;
            sAutoSuggestUndoneCount++;
            LatinImeLogger.logOnAutoSuggestionCanceled();
        } else if (sState == State.UNDO_COMMIT) {
            sState = State.IN_WORD;
        }
        sBackspaceCount++;
        displayState();
    }

    public static void reset() {
        sState = State.START;
        displayState();
    }

    public static State getState() {
        return sState;
    }

    public static boolean isCorrecting() {
        return (sState == State.CORRECTING || sState == State.PICKED_CORRECTION) ? true : DBG;
    }

    public static void keyPressedAt(Key key, int x, int y) {
        if (LOGGING && sKeyLocationFile != null && key.codes[0] >= 32) {
            try {
                sKeyLocationFile.write(("KEY: " + ((char) key.codes[0]) + " X: " + x + " Y: " + y + " MX: " + (key.x + (key.width / 2)) + " MY: " + (key.y + (key.height / 2)) + "\n").getBytes());
            } catch (IOException e) {
            }
        }
    }

    private static void displayState() {
    }
}
