package net.hasnath.android.keyboard;

import android.content.Context;
import android.text.AutoText;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import net.hasnath.android.keyboard.Dictionary.DataType;
import net.hasnath.android.keyboard.Dictionary.WordCallback;
import net.hasnath.android.ridmik.voice.LoggingEvents;

public class Suggest implements WordCallback {
    public static final int APPROX_MAX_WORD_LENGTH = 32;
    public static final double BIGRAM_MULTIPLIER_MAX = 1.5d;
    public static final double BIGRAM_MULTIPLIER_MIN = 1.2d;
    public static final int CORRECTION_BASIC = 1;
    public static final int CORRECTION_FULL = 2;
    public static final int CORRECTION_FULL_BIGRAM = 3;
    public static final int CORRECTION_NONE = 0;
    public static final int DIC_AUTO = 3;
    public static final int DIC_CONTACTS = 4;
    public static final int DIC_MAIN = 1;
    public static final int DIC_TYPE_LAST_ID = 4;
    public static final int DIC_USER = 2;
    public static final int DIC_USER_TYPED = 0;
    static final int LARGE_DICTIONARY_THRESHOLD = 200000;
    public static final int MAXIMUM_BIGRAM_FREQUENCY = 127;
    private static final int PREF_MAX_BIGRAMS = 60;
    public static boolean suggestionFromContacts = false;
    private boolean mAutoTextEnabled;
    private int[] mBigramPriorities;
    ArrayList<CharSequence> mBigramSuggestions;
    private Dictionary mContactsDictionary;
    private int mCorrectionMode;
    private boolean mHaveCorrection;
    private boolean mIsAllUpperCase;
    private boolean mIsFirstCharCapitalized;
    private String mLowerOriginalWord;
    private BinaryDictionary mMainDict;
    private Dictionary mMyDictionary;
    private int[] mNextLettersFrequencies;
    private CharSequence mOriginalWord;
    private int mPrefMaxSuggestions;
    private int[] mPriorities;
    private ArrayList<CharSequence> mStringPool;
    private ArrayList<CharSequence> mSuggestions;

    public Suggest(LatinIME context, int[] dictionaryResId) {
        this.mPrefMaxSuggestions = 12;
        this.mPriorities = new int[this.mPrefMaxSuggestions];
        this.mBigramPriorities = new int[PREF_MAX_BIGRAMS];
        this.mNextLettersFrequencies = new int[1280];
        this.mSuggestions = new ArrayList();
        this.mBigramSuggestions = new ArrayList();
        this.mStringPool = new ArrayList();
        this.mCorrectionMode = 1;
        this.mMainDict = new BinaryDictionary(context, dictionaryResId, 1);
        initPool();
    }

    public Suggest(Context context, ByteBuffer byteBuffer) {
        this.mPrefMaxSuggestions = 12;
        this.mPriorities = new int[this.mPrefMaxSuggestions];
        this.mBigramPriorities = new int[PREF_MAX_BIGRAMS];
        this.mNextLettersFrequencies = new int[1280];
        this.mSuggestions = new ArrayList();
        this.mBigramSuggestions = new ArrayList();
        this.mStringPool = new ArrayList();
        this.mCorrectionMode = 1;
        this.mMainDict = new BinaryDictionary(context, byteBuffer, 1);
        initPool();
    }

    private void initPool() {
        for (int i = 0; i < this.mPrefMaxSuggestions; i++) {
            this.mStringPool.add(new StringBuilder(getApproxMaxWordLength()));
        }
    }

    public void setAutoTextEnabled(boolean enabled) {
        this.mAutoTextEnabled = enabled;
    }

    public int getCorrectionMode() {
        return this.mCorrectionMode;
    }

    public void setCorrectionMode(int mode) {
        this.mCorrectionMode = mode;
    }

    public boolean hasMainDictionary() {
        return this.mMainDict.getSize() > LARGE_DICTIONARY_THRESHOLD;
    }

    public int getApproxMaxWordLength() {
        return 32;
    }

    public void setUserDictionary(Dictionary userDictionary) {
    }

    public void setContactsDictionary(Dictionary userDictionary) {
        this.mContactsDictionary = userDictionary;
    }

    public void setAutoDictionary(Dictionary autoDictionary) {
    }

    public void setMyDictionary(Dictionary myDictionary) {
        this.mMyDictionary = myDictionary;
    }

    public void setUserBigramDictionary(Dictionary userBigramDictionary) {
    }

    public void setMaxSuggestions(int maxSuggestions) {
        if (maxSuggestions < 1 || maxSuggestions > 100) {
            throw new IllegalArgumentException("maxSuggestions must be between 1 and 100");
        }
        this.mPrefMaxSuggestions = maxSuggestions;
        this.mPriorities = new int[this.mPrefMaxSuggestions];
        this.mBigramPriorities = new int[PREF_MAX_BIGRAMS];
        collectGarbage(this.mSuggestions, this.mPrefMaxSuggestions);
        while (this.mStringPool.size() < this.mPrefMaxSuggestions) {
            this.mStringPool.add(new StringBuilder(getApproxMaxWordLength()));
        }
    }

    private boolean haveSufficientCommonality(String original, CharSequence suggestion) {
        int originalLength = original.length();
        int suggestionLength = suggestion.length();
        int minLength = Math.min(originalLength, suggestionLength);
        if (minLength <= 2) {
            return true;
        }
        int matching = 0;
        int lessMatching = 0;
        int i = 0;
        while (i < minLength) {
            char origChar = ExpandableDictionary.toLowerCase(original.charAt(i));
            if (origChar == ExpandableDictionary.toLowerCase(suggestion.charAt(i))) {
                matching++;
                lessMatching++;
            } else if (i + 1 < suggestionLength && origChar == ExpandableDictionary.toLowerCase(suggestion.charAt(i + 1))) {
                lessMatching++;
            }
            i++;
        }
        matching = Math.max(matching, lessMatching);
        if (minLength <= 4) {
            if (matching < 2) {
                return false;
            }
            return true;
        } else if (matching <= minLength / 2) {
            return false;
        } else {
            return true;
        }
    }

    public List<CharSequence> getSuggestions(View view, WordComposer wordComposer, boolean includeTypedWordIfValid, CharSequence prevWordForBigram) {
        int i;
        LatinImeLogger.onStartSuggestion(prevWordForBigram);
        this.mHaveCorrection = false;
        this.mIsFirstCharCapitalized = wordComposer.isFirstCharCapitalized();
        this.mIsAllUpperCase = wordComposer.isAllUpperCase();
        collectGarbage(this.mSuggestions, this.mPrefMaxSuggestions);
        Arrays.fill(this.mPriorities, 0);
        Arrays.fill(this.mNextLettersFrequencies, 0);
        this.mOriginalWord = wordComposer.getTypedWord();
        if (this.mOriginalWord != null) {
            String mOriginalWordString = this.mOriginalWord.toString();
            this.mOriginalWord = mOriginalWordString;
            this.mLowerOriginalWord = mOriginalWordString.toLowerCase();
            LatinImeLogger.onAddSuggestedWord(mOriginalWordString, 0, DataType.UNIGRAM);
        } else {
            this.mLowerOriginalWord = LoggingEvents.EXTRA_CALLING_APP_NAME;
        }
        if (wordComposer.size() == 1 && (this.mCorrectionMode == 3 || this.mCorrectionMode == 1)) {
            Arrays.fill(this.mBigramPriorities, 0);
            collectGarbage(this.mBigramSuggestions, PREF_MAX_BIGRAMS);
            if (!TextUtils.isEmpty(prevWordForBigram)) {
                CharSequence lowerPrevWord = prevWordForBigram.toString().toLowerCase();
                if (this.mMainDict.isValidWord(lowerPrevWord)) {
                    prevWordForBigram = lowerPrevWord;
                }
                if (this.mContactsDictionary != null && suggestionFromContacts) {
                    this.mContactsDictionary.getBigrams(wordComposer, prevWordForBigram, this, this.mNextLettersFrequencies);
                }
                if (this.mMainDict != null) {
                    this.mMainDict.getBigrams(wordComposer, prevWordForBigram, this, this.mNextLettersFrequencies);
                }
                char currentChar = wordComposer.getTypedWord().charAt(0);
                char currentCharUpper = Character.toUpperCase(currentChar);
                int bigramSuggestionSize = this.mBigramSuggestions.size();
                i = 0;
                int count = 0;
                while (i < bigramSuggestionSize) {
                    int count2;
                    if (((CharSequence) this.mBigramSuggestions.get(i)).charAt(0) == currentChar || ((CharSequence) this.mBigramSuggestions.get(i)).charAt(0) == currentCharUpper) {
                        StringBuilder sb;
                        int poolSize = this.mStringPool.size();
                        if (poolSize > 0) {
                            sb = (StringBuilder) this.mStringPool.remove(poolSize - 1);
                        } else {
                            StringBuilder stringBuilder = new StringBuilder(getApproxMaxWordLength());
                        }
                        sb.setLength(0);
                        sb.append((CharSequence) this.mBigramSuggestions.get(i));
                        count2 = count + 1;
                        this.mSuggestions.add(count, sb);
                        if (count2 > this.mPrefMaxSuggestions) {
                            break;
                        }
                    } else {
                        count2 = count;
                    }
                    i++;
                    count = count2;
                }
            }
        } else if (wordComposer.size() > 1) {
            if (this.mContactsDictionary != null && this.mSuggestions.size() > 0) {
                if (isValidWord(this.mOriginalWord) && (this.mCorrectionMode == 2 || this.mCorrectionMode == 3)) {
                    this.mHaveCorrection = true;
                }
            }
            if (this.mMyDictionary != null) {
                this.mMyDictionary.getWords(wordComposer, this, this.mNextLettersFrequencies);
            }
            this.mMainDict.getWords(wordComposer, this, this.mNextLettersFrequencies);
            if ((this.mCorrectionMode == 2 || this.mCorrectionMode == 3) && this.mSuggestions.size() > 0) {
                this.mHaveCorrection = true;
            }
        }
        if (this.mOriginalWord != null) {
            this.mSuggestions.add(0, this.mOriginalWord.toString());
        }
        if (wordComposer.size() > 1 && this.mSuggestions.size() > 1 && (this.mCorrectionMode == 2 || this.mCorrectionMode == 3)) {
            if (!haveSufficientCommonality(this.mLowerOriginalWord, (CharSequence) this.mSuggestions.get(1))) {
                this.mHaveCorrection = false;
            }
        }
        if (this.mAutoTextEnabled) {
            i = 0;
            int max = 6;
            if (this.mCorrectionMode == 1) {
                max = 1;
            }
            while (i < this.mSuggestions.size() && i < max) {
                String suggestedWord = ((CharSequence) this.mSuggestions.get(i)).toString().toLowerCase();
                CharSequence autoText = AutoText.get(suggestedWord, 0, suggestedWord.length(), view);
                boolean canAdd = (autoText != null) & (TextUtils.equals(autoText, (CharSequence) this.mSuggestions.get(i)) ? 0 : 1);
                if (canAdd && i + 1 < this.mSuggestions.size() && this.mCorrectionMode != 1) {
                    canAdd &= TextUtils.equals(autoText, (CharSequence) this.mSuggestions.get(i + 1)) ? 0 : 1;
                }
                if (canAdd) {
                    this.mHaveCorrection = true;
                    this.mSuggestions.add(i + 1, autoText);
                    i++;
                }
                i++;
            }
        }
        removeDupes();
        return this.mSuggestions;
    }

    public int[] getNextLettersFrequencies() {
        return this.mNextLettersFrequencies;
    }

    private void removeDupes() {
        ArrayList<CharSequence> suggestions = this.mSuggestions;
        if (suggestions.size() >= 2) {
            int i = 1;
            while (i < suggestions.size()) {
                CharSequence cur = (CharSequence) suggestions.get(i);
                for (int j = 0; j < i; j++) {
                    if (TextUtils.equals(cur, (CharSequence) suggestions.get(j))) {
                        removeFromSuggestions(i);
                        i--;
                        break;
                    }
                }
                i++;
            }
        }
    }

    private void removeFromSuggestions(int index) {
        CharSequence garbage = (CharSequence) this.mSuggestions.remove(index);
        if (garbage != null && (garbage instanceof StringBuilder)) {
            this.mStringPool.add(garbage);
        }
    }

    public boolean hasMinimalCorrection() {
        return this.mHaveCorrection;
    }

    private boolean compareCaseInsensitive(String mLowerOriginalWord, char[] word, int offset, int length) {
        int originalLength = mLowerOriginalWord.length();
        if (originalLength != length || !Character.isUpperCase(word[offset])) {
            return false;
        }
        for (int i = 0; i < originalLength; i++) {
            if (mLowerOriginalWord.charAt(i) != Character.toLowerCase(word[offset + i])) {
                return false;
            }
        }
        return true;
    }

    public boolean addWord(char[] word, int offset, int length, int freq, int dicTypeId, DataType dataType) {
        ArrayList<CharSequence> suggestions;
        int[] priorities;
        int prefMaxSuggestions;
        DataType dataTypeForLog = dataType;
        if (dataType == DataType.BIGRAM) {
            suggestions = this.mBigramSuggestions;
            priorities = this.mBigramPriorities;
            prefMaxSuggestions = PREF_MAX_BIGRAMS;
        } else {
            suggestions = this.mSuggestions;
            priorities = this.mPriorities;
            prefMaxSuggestions = this.mPrefMaxSuggestions;
        }
        int pos = 0;
        if (!compareCaseInsensitive(this.mLowerOriginalWord, word, offset, length)) {
            if (dataType == DataType.UNIGRAM) {
                int bigramSuggestion = searchBigramSuggestion(word, offset, length);
                if (bigramSuggestion >= 0) {
                    dataTypeForLog = DataType.BIGRAM;
                    freq = (int) Math.round(((double) freq) * (((((double) this.mBigramPriorities[bigramSuggestion]) / 127.0d) * 0.30000000000000004d) + BIGRAM_MULTIPLIER_MIN));
                }
            }
            if (priorities[prefMaxSuggestions - 1] < freq) {
                while (pos < prefMaxSuggestions) {
                    if (priorities[pos] < freq || (priorities[pos] == freq && length < ((CharSequence) suggestions.get(pos)).length())) {
                        break;
                    }
                    pos++;
                }
            } else {
                return true;
            }
        }
        pos = 0;
        if (pos >= prefMaxSuggestions) {
            return true;
        }
        StringBuilder sb;
        System.arraycopy(priorities, pos, priorities, pos + 1, (prefMaxSuggestions - pos) - 1);
        priorities[pos] = freq;
        int poolSize = this.mStringPool.size();
        if (poolSize > 0) {
            sb = (StringBuilder) this.mStringPool.remove(poolSize - 1);
        } else {
            sb = new StringBuilder(getApproxMaxWordLength());
        }
        sb.setLength(0);
        if (this.mIsAllUpperCase) {
            sb.append(new String(word, offset, length).toUpperCase());
        } else if (this.mIsFirstCharCapitalized) {
            sb.append(Character.toUpperCase(word[offset]));
            if (length > 1) {
                sb.append(word, offset + 1, length - 1);
            }
        } else {
            sb.append(word, offset, length);
        }
        suggestions.add(pos, sb);
        if (suggestions.size() > prefMaxSuggestions) {
            CharSequence garbage = (CharSequence) suggestions.remove(prefMaxSuggestions);
            if (garbage instanceof StringBuilder) {
                this.mStringPool.add(garbage);
            }
        } else {
            LatinImeLogger.onAddSuggestedWord(sb.toString(), dicTypeId, dataTypeForLog);
        }
        return true;
    }

    private int searchBigramSuggestion(char[] word, int offset, int length) {
        int bigramSuggestSize = this.mBigramSuggestions.size();
        for (int i = 0; i < bigramSuggestSize; i++) {
            if (((CharSequence) this.mBigramSuggestions.get(i)).length() == length) {
                boolean chk = true;
                for (int j = 0; j < length; j++) {
                    if (((CharSequence) this.mBigramSuggestions.get(i)).charAt(j) != word[offset + j]) {
                        chk = false;
                        break;
                    }
                }
                if (chk) {
                    return i;
                }
            }
        }
        return -1;
    }

    public boolean isValidWord(CharSequence word) {
        if (word == null || word.length() == 0) {
            return false;
        }
        if (this.mMainDict.isValidWord(word) || ((this.mContactsDictionary != null && this.mContactsDictionary.isValidWord(word)) || (this.mMyDictionary != null && this.mMyDictionary.isValidWord(word)))) {
            return true;
        }
        return false;
    }

    private void collectGarbage(ArrayList<CharSequence> suggestions, int prefMaxSuggestions) {
        int poolSize = this.mStringPool.size();
        int garbageSize = suggestions.size();
        while (poolSize < prefMaxSuggestions && garbageSize > 0) {
            CharSequence garbage = (CharSequence) suggestions.get(garbageSize - 1);
            if (garbage != null && (garbage instanceof StringBuilder)) {
                this.mStringPool.add(garbage);
                poolSize++;
            }
            garbageSize--;
        }
        if (poolSize == prefMaxSuggestions + 1) {
            Log.w("Suggest", "String pool got too big: " + poolSize);
        }
        suggestions.clear();
    }

    public void close() {
        if (this.mMainDict != null) {
            this.mMainDict.close();
        }
    }
}
