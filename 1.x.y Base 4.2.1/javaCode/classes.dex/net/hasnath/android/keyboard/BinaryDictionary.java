package net.hasnath.android.keyboard;

import android.content.Context;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.Channels;
import java.util.Arrays;
import net.hasnath.android.keyboard.Dictionary.DataType;
import net.hasnath.android.keyboard.Dictionary.WordCallback;

public class BinaryDictionary extends Dictionary {
    private static final boolean ENABLE_MISSED_CHARACTERS = true;
    private static final int MAX_ALTERNATIVES = 16;
    private static final int MAX_BIGRAMS = 60;
    private static final int MAX_WORDS = 18;
    protected static final int MAX_WORD_LENGTH = 48;
    private static final String TAG = "BinaryDictionary";
    private static final int TYPED_LETTER_MULTIPLIER = 2;
    public static int mNativeDict;
    private Alternative alts;
    private int mDicTypeId;
    private int mDictLength;
    private int[] mFrequencies;
    private int[] mFrequencies_bigrams;
    private int[] mInputCodes;
    private ByteBuffer mNativeDictDirectBuffer;
    private char[] mOutputChars;
    private char[] mOutputChars_bigrams;
    private LatinIME mService;

    private native void closeNative(int i);

    private native int getBigramsNative(int i, char[] cArr, int i2, int[] iArr, int i3, char[] cArr2, int[] iArr2, int i4, int i5, int i6);

    private native int getSuggestionsNative(int i, int[] iArr, int i2, char[] cArr, int[] iArr2, int i3, int i4, int i5, int i6, int[] iArr3, int i7);

    private native boolean isValidWordNative(int i, char[] cArr, int i2);

    private native int openNative(ByteBuffer byteBuffer, int i, int i2);

    static {
        try {
            System.loadLibrary("jni_ridmik");
        } catch (UnsatisfiedLinkError e) {
            Log.e(TAG, "Could not load native library jni_latinime");
        }
    }

    public BinaryDictionary(LatinIME context, int[] resId, int dicTypeId) {
        this.mInputCodes = new int[768];
        this.mOutputChars = new char[864];
        this.mOutputChars_bigrams = new char[2880];
        this.mFrequencies = new int[18];
        this.mFrequencies_bigrams = new int[MAX_BIGRAMS];
        this.alts = new Alternative();
        if (!(resId == null || resId.length <= 0 || resId[0] == 0)) {
            loadDictionary(context, resId);
        }
        this.mService = context;
        this.mDicTypeId = dicTypeId;
    }

    public BinaryDictionary(Context context, ByteBuffer byteBuffer, int dicTypeId) {
        this.mInputCodes = new int[768];
        this.mOutputChars = new char[864];
        this.mOutputChars_bigrams = new char[2880];
        this.mFrequencies = new int[18];
        this.mFrequencies_bigrams = new int[MAX_BIGRAMS];
        this.alts = new Alternative();
        if (byteBuffer != null) {
            if (byteBuffer.isDirect()) {
                this.mNativeDictDirectBuffer = byteBuffer;
            } else {
                this.mNativeDictDirectBuffer = ByteBuffer.allocateDirect(byteBuffer.capacity());
                byteBuffer.rewind();
                this.mNativeDictDirectBuffer.put(byteBuffer);
            }
            this.mDictLength = byteBuffer.capacity();
            mNativeDict = openNative(this.mNativeDictDirectBuffer, 2, 2);
        }
        this.mDicTypeId = dicTypeId;
    }

    private final void loadDictionary(Context context, int[] resId) {
        InputStream[] is = null;
        int total = 0;
        int i;
        try {
            is = new InputStream[resId.length];
            for (i = 0; i < resId.length; i++) {
                is[i] = context.getResources().openRawResource(resId[i]);
                total += is[i].available();
            }
            this.mNativeDictDirectBuffer = ByteBuffer.allocateDirect(total).order(ByteOrder.nativeOrder());
            int got = 0;
            for (i = 0; i < resId.length; i++) {
                got += Channels.newChannel(is[i]).read(this.mNativeDictDirectBuffer);
            }
            if (got != total) {
                Log.e(TAG, "Read " + got + " bytes, expected " + total);
            } else {
                mNativeDict = openNative(this.mNativeDictDirectBuffer, 2, 2);
                this.mDictLength = total;
            }
            if (is != null) {
                i = 0;
                while (i < is.length) {
                    try {
                        is[i].close();
                        i++;
                    } catch (IOException e) {
                        Log.w(TAG, "Failed to close input stream");
                        return;
                    }
                }
            }
        } catch (IOException e2) {
            Log.w(TAG, "No available memory for binary dictionary");
            if (is != null) {
                i = 0;
                while (i < is.length) {
                    try {
                        is[i].close();
                        i++;
                    } catch (IOException e3) {
                        Log.w(TAG, "Failed to close input stream");
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            if (is != null) {
                i = 0;
                while (i < is.length) {
                    try {
                        is[i].close();
                        i++;
                    } catch (IOException e4) {
                        Log.w(TAG, "Failed to close input stream");
                    }
                }
            }
        }
    }

    public void getBigrams(WordComposer codes, CharSequence previousWord, WordCallback callback, int[] nextLettersFrequencies) {
        char[] chars = previousWord.toString().toCharArray();
        Arrays.fill(this.mOutputChars_bigrams, '\u0000');
        Arrays.fill(this.mFrequencies_bigrams, 0);
        int codesSize = codes.size();
        Arrays.fill(this.mInputCodes, -1);
        int[] alternatives = codes.getCodesAt(0);
        System.arraycopy(alternatives, 0, this.mInputCodes, 0, Math.min(alternatives.length, 16));
        int count = getBigramsNative(mNativeDict, chars, chars.length, this.mInputCodes, codesSize, this.mOutputChars_bigrams, this.mFrequencies_bigrams, MAX_WORD_LENGTH, MAX_BIGRAMS, 16);
        int j = 0;
        while (j < count && this.mFrequencies_bigrams[j] >= 1) {
            int start = j * MAX_WORD_LENGTH;
            int len = 0;
            while (this.mOutputChars_bigrams[start + len] != '\u0000') {
                len++;
            }
            if (len > 0) {
                callback.addWord(this.mOutputChars_bigrams, start, len, this.mFrequencies_bigrams[j], this.mDicTypeId, DataType.BIGRAM);
            }
            j++;
        }
    }

    public void getWords(WordComposer lodes, WordCallback callback, int[] nextLettersFrequencies) {
        WordComposer codes;
        if (LatinIME.langNow == 1) {
            String as = lodes.bangla;
            if (as != null) {
                WordComposer mWo = new WordComposer();
                for (int x : as.toCharArray()) {
                    mWo.add(x, this.alts.getAlts(x));
                }
                codes = mWo;
            } else {
                return;
            }
        }
        WordComposer wordComposer = new WordComposer(lodes);
        int codesSize = codes.size();
        if (codesSize <= 47) {
            Arrays.fill(this.mInputCodes, -1);
            for (int i = 0; i < codesSize; i++) {
                Object alternatives = codes.getCodesAt(i);
                System.arraycopy(alternatives, 0, this.mInputCodes, i * 16, Math.min(alternatives.length, 16));
            }
            Arrays.fill(this.mOutputChars, '\u0000');
            Arrays.fill(this.mFrequencies, 0);
            int count = getSuggestionsNative(mNativeDict, this.mInputCodes, codesSize, this.mOutputChars, this.mFrequencies, MAX_WORD_LENGTH, 18, 16, -1, nextLettersFrequencies, nextLettersFrequencies != null ? nextLettersFrequencies.length : 0);
            if (count < 5) {
                for (int skip = 0; skip < codesSize; skip++) {
                    int tempCount = getSuggestionsNative(mNativeDict, this.mInputCodes, codesSize, this.mOutputChars, this.mFrequencies, MAX_WORD_LENGTH, 18, 16, skip, null, 0);
                    count = Math.max(count, tempCount);
                    if (tempCount > 0) {
                        break;
                    }
                }
            }
            int j = 0;
            while (j < count && this.mFrequencies[j] >= 1) {
                int start = j * MAX_WORD_LENGTH;
                int len = 0;
                while (this.mOutputChars[start + len] != '\u0000') {
                    len++;
                }
                if (len > 0) {
                    callback.addWord(this.mOutputChars, start, len, this.mFrequencies[j], this.mDicTypeId, DataType.UNIGRAM);
                }
                j++;
            }
        }
    }

    public boolean isValidWord(CharSequence word) {
        if (word == null) {
            return false;
        }
        char[] chars = word.toString().toCharArray();
        return isValidWordNative(mNativeDict, chars, chars.length);
    }

    public int getSize() {
        return this.mDictLength;
    }

    protected void finalize() throws Throwable {
        close();
        super.finalize();
    }
}
