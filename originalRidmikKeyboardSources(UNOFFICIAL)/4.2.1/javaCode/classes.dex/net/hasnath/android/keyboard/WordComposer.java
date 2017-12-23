package net.hasnath.android.keyboard;

import java.util.ArrayList;

public class WordComposer {
    String bangla;
    private boolean mAutoCapitalized;
    private int mCapsCount;
    private final ArrayList<int[]> mCodes;
    private boolean mIsFirstCharCapitalized;
    private String mPreferredWord;
    private final StringBuilder mTypedWord;

    public WordComposer() {
        this.mCodes = new ArrayList(12);
        this.mTypedWord = new StringBuilder(20);
    }

    WordComposer(WordComposer copy) {
        this.mCodes = new ArrayList(copy.mCodes);
        this.mPreferredWord = copy.mPreferredWord;
        this.mTypedWord = new StringBuilder(copy.mTypedWord);
        this.mCapsCount = copy.mCapsCount;
        this.mAutoCapitalized = copy.mAutoCapitalized;
        this.mIsFirstCharCapitalized = copy.mIsFirstCharCapitalized;
    }

    public void reset() {
        this.mCodes.clear();
        this.mIsFirstCharCapitalized = false;
        this.mPreferredWord = null;
        this.mTypedWord.setLength(0);
        this.mCapsCount = 0;
    }

    public int size() {
        return this.mCodes.size();
    }

    public int[] getCodesAt(int index) {
        return (int[]) this.mCodes.get(index);
    }

    public void add(int primaryCode, int[] codes) {
        this.mTypedWord.append((char) primaryCode);
        correctPrimaryJuxtapos(primaryCode, codes);
        this.mCodes.add(codes);
        if (Character.isUpperCase((char) primaryCode)) {
            this.mCapsCount++;
        }
    }

    private void correctPrimaryJuxtapos(int primaryCode, int[] codes) {
        if (codes.length >= 2 && codes[0] > 0 && codes[1] > 0 && codes[0] != primaryCode && codes[1] == primaryCode) {
            codes[1] = codes[0];
            codes[0] = primaryCode;
        }
    }

    public void deleteLast() {
        int codesSize = this.mCodes.size();
        if (codesSize > 0) {
            this.mCodes.remove(codesSize - 1);
            int lastPos = this.mTypedWord.length() - 1;
            char last = this.mTypedWord.charAt(lastPos);
            this.mTypedWord.deleteCharAt(lastPos);
            if (Character.isUpperCase(last)) {
                this.mCapsCount--;
            }
        }
    }

    public CharSequence getTypedWord() {
        if (this.mCodes.size() == 0) {
            return null;
        }
        return this.mTypedWord;
    }

    public void setFirstCharCapitalized(boolean capitalized) {
        this.mIsFirstCharCapitalized = capitalized;
    }

    public boolean isFirstCharCapitalized() {
        return this.mIsFirstCharCapitalized;
    }

    public boolean isAllUpperCase() {
        return this.mCapsCount > 0 && this.mCapsCount == size();
    }

    public void setPreferredWord(String preferred) {
        this.mPreferredWord = preferred;
    }

    public CharSequence getPreferredWord() {
        return this.mPreferredWord != null ? this.mPreferredWord : getTypedWord();
    }

    public boolean isMostlyCaps() {
        return this.mCapsCount > 1;
    }

    public void setAutoCapitalized(boolean auto) {
        this.mAutoCapitalized = auto;
    }

    public boolean isAutoCapitalized() {
        return this.mAutoCapitalized;
    }
}
