package net.hasnath.android.keyboard;

import android.content.Context;
import android.os.AsyncTask;
import android.os.AsyncTask.Status;
import android.util.Log;
import android.view.inputmethod.InputMethodManager;

public class LatinIMEUtil {

    public static class GCUtils {
        private static final long GC_INTERVAL = 1000;
        public static final int GC_TRY_COUNT = 2;
        public static final int GC_TRY_LOOP_MAX = 5;
        private static final String TAG = "GCUtils";
        private static GCUtils sInstance = new GCUtils();
        private int mGCTryCount = 0;

        public static GCUtils getInstance() {
            return sInstance;
        }

        public void reset() {
            this.mGCTryCount = 0;
        }

        public boolean tryGCOrWait(String metaData, Throwable t) {
            if (this.mGCTryCount == 0) {
                System.gc();
            }
            int i = this.mGCTryCount + 1;
            this.mGCTryCount = i;
            if (i > 2) {
                LatinImeLogger.logOnException(metaData, t);
                return false;
            }
            try {
                Thread.sleep(GC_INTERVAL);
                return true;
            } catch (InterruptedException e) {
                Log.e(TAG, "Sleep was interrupted.");
                LatinImeLogger.logOnException(metaData, t);
                return false;
            }
        }
    }

    static class RingCharBuffer {
        static final int BUFSIZE = 20;
        private static final int INVALID_COORDINATE = -2;
        private static final char PLACEHOLDER_DELIMITER_CHAR = '￼';
        private static RingCharBuffer sRingCharBuffer = new RingCharBuffer();
        private char[] mCharBuf = new char[20];
        private Context mContext;
        private boolean mEnabled = false;
        private int mEnd = 0;
        int mLength = 0;
        private int[] mXBuf = new int[20];
        private int[] mYBuf = new int[20];

        private RingCharBuffer() {
        }

        public static RingCharBuffer getInstance() {
            return sRingCharBuffer;
        }

        public static RingCharBuffer init(Context context, boolean enabled) {
            sRingCharBuffer.mContext = context;
            sRingCharBuffer.mEnabled = enabled;
            return sRingCharBuffer;
        }

        private int normalize(int in) {
            int ret = in % 20;
            return ret < 0 ? ret + 20 : ret;
        }

        public void push(char c, int x, int y) {
            if (this.mEnabled) {
                this.mCharBuf[this.mEnd] = c;
                this.mXBuf[this.mEnd] = x;
                this.mYBuf[this.mEnd] = y;
                this.mEnd = normalize(this.mEnd + 1);
                if (this.mLength < 20) {
                    this.mLength++;
                }
            }
        }

        public char pop() {
            if (this.mLength < 1) {
                return PLACEHOLDER_DELIMITER_CHAR;
            }
            this.mEnd = normalize(this.mEnd - 1);
            this.mLength--;
            return this.mCharBuf[this.mEnd];
        }

        public char getLastChar() {
            if (this.mLength < 1) {
                return PLACEHOLDER_DELIMITER_CHAR;
            }
            return this.mCharBuf[normalize(this.mEnd - 1)];
        }

        public int getPreviousX(char c, int back) {
            int index = normalize((this.mEnd - 2) - back);
            if (this.mLength <= back || Character.toLowerCase(c) != Character.toLowerCase(this.mCharBuf[index])) {
                return -2;
            }
            return this.mXBuf[index];
        }

        public int getPreviousY(char c, int back) {
            int index = normalize((this.mEnd - 2) - back);
            if (this.mLength <= back || Character.toLowerCase(c) != Character.toLowerCase(this.mCharBuf[index])) {
                return -2;
            }
            return this.mYBuf[index];
        }

        public String getLastString() {
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < this.mLength; i++) {
                char c = this.mCharBuf[normalize((this.mEnd - 1) - i)];
                if (((LatinIME) this.mContext).isWordSeparator(c)) {
                    break;
                }
                sb.append(c);
            }
            return sb.reverse().toString();
        }

        public void reset() {
            this.mLength = 0;
        }
    }

    public static void cancelTask(AsyncTask<?, ?, ?> task, boolean mayInterruptIfRunning) {
        if (task != null && task.getStatus() != Status.FINISHED) {
            task.cancel(mayInterruptIfRunning);
        }
    }

    public static boolean hasMultipleEnabledIMEs(Context context) {
        return ((InputMethodManager) context.getSystemService("input_method")).getEnabledInputMethodList().size() > 1;
    }
}
