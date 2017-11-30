package net.hasnath.android.keyboard;

import android.content.Context;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.Channels;
import java.util.Arrays;
import ridmik.keyboard.R;

public class AutoCorrect {
    private static final int LINES = 2280;
    private static final String TAG = "LL";
    private static final int TOTAL_CHARS = 37724;
    public static int mNativeDict;
    private int mDictLength;
    private char[] mInputChars = new char[25];
    private ByteBuffer mNativeDictDirectBuffer;
    private char[] mOutputChars = new char[25];

    private native void closeNative(int i);

    private native String getCorrectionNative(int i, String str, char[] cArr);

    private native int openNative(ByteBuffer byteBuffer, int i, int i2);

    static {
        try {
            System.loadLibrary("jni_autocorrect");
        } catch (UnsatisfiedLinkError e) {
            Log.e(TAG, "Could not load native library autocorrect");
        }
    }

    public AutoCorrect(Context context) {
        int[] resId = new int[]{R.raw.auto_correct};
        if (resId != null && resId.length > 0 && resId[0] != 0) {
            loadDictionary(context, resId);
        }
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
                mNativeDict = openNative(this.mNativeDictDirectBuffer, TOTAL_CHARS, LINES);
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

    public String getCorrection(String input) {
        Arrays.fill(this.mOutputChars, '\u0000');
        this.mInputChars = input.toCharArray();
        return getCorrectionNative(mNativeDict, input, this.mOutputChars);
    }
}
