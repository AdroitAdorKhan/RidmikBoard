package net.hasnath.android.keyboard;

import android.content.res.Resources;
import android.util.Log;
import net.hasnath.android.keyboard.Keyboard.Key;
import net.hasnath.android.keyboard.LatinKeyboardBaseView.OnKeyboardActionListener;
import net.hasnath.android.ridmik.voice.LoggingEvents;

public class PointerTracker {
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_MOVE = false;
    private static final int[] KEY_DELETE = new int[]{-5};
    private static final int NOT_A_KEY = -1;
    private static final String TAG = "PointerTracker";
    private final int mDelayBeforeKeyRepeatStart;
    private final UIHandler mHandler;
    private final boolean mHasDistinctMultitouch;
    private boolean mInMultiTap;
    private boolean mIsInSlidingKeyInput;
    private boolean mIsRepeatableKey;
    private boolean mKeyAlreadyProcessed;
    private final KeyDetector mKeyDetector;
    private int mKeyHysteresisDistanceSquared = -1;
    private final KeyState mKeyState;
    private boolean mKeyboardLayoutHasBeenChanged;
    private final KeyboardSwitcher mKeyboardSwitcher;
    private Key[] mKeys;
    private int mLastSentIndex;
    private long mLastTapTime;
    private OnKeyboardActionListener mListener;
    private int mLongPressKeyTimeout;
    private final int mMultiTapKeyTimeout;
    public final int mPointerId;
    private final StringBuilder mPreviewLabel = new StringBuilder(1);
    private int mPreviousKey = -1;
    private final UIProxy mProxy;
    private int mTapCount;

    private static class KeyState {
        private long mDownTime;
        private final KeyDetector mKeyDetector;
        private int mKeyIndex = -1;
        private int mKeyX;
        private int mKeyY;
        private int mLastX;
        private int mLastY;
        private int mStartX;
        private int mStartY;

        public KeyState(KeyDetector keyDetecor) {
            this.mKeyDetector = keyDetecor;
        }

        public int getKeyIndex() {
            return this.mKeyIndex;
        }

        public int getKeyX() {
            return this.mKeyX;
        }

        public int getKeyY() {
            return this.mKeyY;
        }

        public int getStartX() {
            return this.mStartX;
        }

        public int getStartY() {
            return this.mStartY;
        }

        public long getDownTime() {
            return this.mDownTime;
        }

        public int getLastX() {
            return this.mLastX;
        }

        public int getLastY() {
            return this.mLastY;
        }

        public int onDownKey(int x, int y, long eventTime) {
            this.mStartX = x;
            this.mStartY = y;
            this.mDownTime = eventTime;
            return onMoveToNewKey(onMoveKeyInternal(x, y), x, y);
        }

        private int onMoveKeyInternal(int x, int y) {
            this.mLastX = x;
            this.mLastY = y;
            return this.mKeyDetector.getKeyIndexAndNearbyCodes(x, y, null);
        }

        public int onMoveKey(int x, int y) {
            return onMoveKeyInternal(x, y);
        }

        public int onMoveToNewKey(int keyIndex, int x, int y) {
            this.mKeyIndex = keyIndex;
            this.mKeyX = x;
            this.mKeyY = y;
            return keyIndex;
        }

        public int onUpKey(int x, int y) {
            return onMoveKeyInternal(x, y);
        }
    }

    public interface UIProxy {
        boolean hasDistinctMultitouch();

        void invalidateKey(Key key);

        void showPreview(int i, PointerTracker pointerTracker);
    }

    public PointerTracker(int id, UIHandler handler, KeyDetector keyDetector, UIProxy proxy, Resources res, int longPressDelay) {
        if (proxy == null || handler == null || keyDetector == null) {
            throw new NullPointerException();
        }
        this.mPointerId = id;
        this.mProxy = proxy;
        this.mHandler = handler;
        this.mKeyDetector = keyDetector;
        this.mKeyboardSwitcher = KeyboardSwitcher.getInstance();
        this.mKeyState = new KeyState(keyDetector);
        this.mHasDistinctMultitouch = proxy.hasDistinctMultitouch();
        this.mDelayBeforeKeyRepeatStart = res.getInteger(R.integer.config_delay_before_key_repeat_start);
        this.mLongPressKeyTimeout = longPressDelay;
        this.mMultiTapKeyTimeout = res.getInteger(R.integer.config_multi_tap_key_timeout);
        resetMultiTap();
    }

    public void setOnKeyboardActionListener(OnKeyboardActionListener listener) {
        this.mListener = listener;
    }

    public void setKeyboard(Key[] keys, float keyHysteresisDistance) {
        if (keys == null || keyHysteresisDistance < 0.0f) {
            throw new IllegalArgumentException();
        }
        this.mKeys = keys;
        this.mKeyHysteresisDistanceSquared = (int) (keyHysteresisDistance * keyHysteresisDistance);
        this.mKeyboardLayoutHasBeenChanged = true;
    }

    public boolean isInSlidingKeyInput() {
        return this.mIsInSlidingKeyInput;
    }

    private boolean isValidKeyIndex(int keyIndex) {
        return keyIndex >= 0 && keyIndex < this.mKeys.length;
    }

    public void setLongPressKeyTimeout(int longPressKeyTimeout) {
        this.mLongPressKeyTimeout = longPressKeyTimeout;
        Log.d(TAG, "mLongPressKeyTimeout = " + this.mLongPressKeyTimeout);
    }

    public Key getKey(int keyIndex) {
        return isValidKeyIndex(keyIndex) ? this.mKeys[keyIndex] : null;
    }

    private boolean isModifierInternal(int keyIndex) {
        Key key = getKey(keyIndex);
        if (key == null) {
            return false;
        }
        int primaryCode = key.codes[0];
        if (primaryCode == -1 || primaryCode == -2) {
            return true;
        }
        return false;
    }

    public boolean isModifier() {
        return isModifierInternal(this.mKeyState.getKeyIndex());
    }

    public boolean isOnModifierKey(int x, int y) {
        return isModifierInternal(this.mKeyDetector.getKeyIndexAndNearbyCodes(x, y, null));
    }

    public boolean isSpaceKey(int keyIndex) {
        Key key = getKey(keyIndex);
        if (key == null || key.codes[0] != 32) {
            return false;
        }
        return true;
    }

    public void updateKey(int keyIndex) {
        if (!this.mKeyAlreadyProcessed) {
            int oldKeyIndex = this.mPreviousKey;
            this.mPreviousKey = keyIndex;
            if (keyIndex != oldKeyIndex) {
                if (isValidKeyIndex(oldKeyIndex)) {
                    this.mKeys[oldKeyIndex].onReleased(keyIndex == -1);
                    this.mProxy.invalidateKey(this.mKeys[oldKeyIndex]);
                }
                if (isValidKeyIndex(keyIndex)) {
                    this.mKeys[keyIndex].onPressed();
                    this.mProxy.invalidateKey(this.mKeys[keyIndex]);
                }
            }
        }
    }

    public void setAlreadyProcessed() {
        this.mKeyAlreadyProcessed = true;
    }

    public void onTouchEvent(int action, int x, int y, long eventTime) {
        switch (action) {
            case 0:
            case 5:
                onDownEvent(x, y, eventTime);
                return;
            case 1:
            case 6:
                onUpEvent(x, y, eventTime);
                return;
            case 2:
                onMoveEvent(x, y, eventTime);
                return;
            case 3:
                onCancelEvent(x, y, eventTime);
                return;
            default:
                return;
        }
    }

    public void onDownEvent(int x, int y, long eventTime) {
        int keyIndex = this.mKeyState.onDownKey(x, y, eventTime);
        this.mKeyboardLayoutHasBeenChanged = false;
        this.mKeyAlreadyProcessed = false;
        this.mIsRepeatableKey = false;
        this.mIsInSlidingKeyInput = false;
        checkMultiTap(eventTime, keyIndex);
        if (this.mListener != null && isValidKeyIndex(keyIndex)) {
            this.mListener.onPress(this.mKeys[keyIndex].codes[0]);
            if (this.mKeyboardLayoutHasBeenChanged) {
                this.mKeyboardLayoutHasBeenChanged = false;
                keyIndex = this.mKeyState.onDownKey(x, y, eventTime);
            }
        }
        if (isValidKeyIndex(keyIndex)) {
            if (this.mKeys[keyIndex].repeatable) {
                repeatKey(keyIndex);
                this.mHandler.startKeyRepeatTimer((long) this.mDelayBeforeKeyRepeatStart, keyIndex, this);
                this.mIsRepeatableKey = true;
            }
            startLongPressTimer(keyIndex);
        }
        showKeyPreviewAndUpdateKey(keyIndex);
    }

    public void onMoveEvent(int x, int y, long eventTime) {
        if (!this.mKeyAlreadyProcessed) {
            KeyState keyState = this.mKeyState;
            int keyIndex = keyState.onMoveKey(x, y);
            Key oldKey = getKey(keyState.getKeyIndex());
            if (isValidKeyIndex(keyIndex)) {
                if (oldKey == null) {
                    if (this.mListener != null) {
                        this.mListener.onPress(getKey(keyIndex).codes[0]);
                        if (this.mKeyboardLayoutHasBeenChanged) {
                            this.mKeyboardLayoutHasBeenChanged = false;
                            keyIndex = keyState.onMoveKey(x, y);
                        }
                    }
                    keyState.onMoveToNewKey(keyIndex, x, y);
                    startLongPressTimer(keyIndex);
                } else if (!isMinorMoveBounce(x, y, keyIndex)) {
                    this.mIsInSlidingKeyInput = true;
                    if (this.mListener != null) {
                        this.mListener.onRelease(oldKey.codes[0]);
                    }
                    resetMultiTap();
                    if (this.mListener != null) {
                        this.mListener.onPress(getKey(keyIndex).codes[0]);
                        if (this.mKeyboardLayoutHasBeenChanged) {
                            this.mKeyboardLayoutHasBeenChanged = false;
                            keyIndex = keyState.onMoveKey(x, y);
                        }
                    }
                    keyState.onMoveToNewKey(keyIndex, x, y);
                    startLongPressTimer(keyIndex);
                }
            } else if (!(oldKey == null || isMinorMoveBounce(x, y, keyIndex))) {
                this.mIsInSlidingKeyInput = true;
                if (this.mListener != null) {
                    this.mListener.onRelease(oldKey.codes[0]);
                }
                resetMultiTap();
                keyState.onMoveToNewKey(keyIndex, x, y);
                this.mHandler.cancelLongPressTimer();
            }
            showKeyPreviewAndUpdateKey(keyState.getKeyIndex());
        }
    }

    public void onUpEvent(int x, int y, long eventTime) {
        this.mHandler.cancelKeyTimers();
        this.mHandler.cancelPopupPreview();
        showKeyPreviewAndUpdateKey(-1);
        this.mIsInSlidingKeyInput = false;
        if (!this.mKeyAlreadyProcessed) {
            int keyIndex = this.mKeyState.onUpKey(x, y);
            if (isMinorMoveBounce(x, y, keyIndex)) {
                keyIndex = this.mKeyState.getKeyIndex();
                x = this.mKeyState.getKeyX();
                y = this.mKeyState.getKeyY();
            }
            if (!this.mIsRepeatableKey) {
                detectAndSendKey(keyIndex, x, y, eventTime);
            }
            if (isValidKeyIndex(keyIndex)) {
                this.mProxy.invalidateKey(this.mKeys[keyIndex]);
            }
        }
    }

    public void onCancelEvent(int x, int y, long eventTime) {
        this.mHandler.cancelKeyTimers();
        this.mHandler.cancelPopupPreview();
        showKeyPreviewAndUpdateKey(-1);
        this.mIsInSlidingKeyInput = false;
        int keyIndex = this.mKeyState.getKeyIndex();
        if (isValidKeyIndex(keyIndex)) {
            this.mProxy.invalidateKey(this.mKeys[keyIndex]);
        }
    }

    public void repeatKey(int keyIndex) {
        Key key = getKey(keyIndex);
        if (key != null) {
            detectAndSendKey(keyIndex, key.x, key.y, -1);
        }
    }

    public int getLastX() {
        return this.mKeyState.getLastX();
    }

    public int getLastY() {
        return this.mKeyState.getLastY();
    }

    public long getDownTime() {
        return this.mKeyState.getDownTime();
    }

    int getStartX() {
        return this.mKeyState.getStartX();
    }

    int getStartY() {
        return this.mKeyState.getStartY();
    }

    private boolean isMinorMoveBounce(int x, int y, int newKey) {
        if (this.mKeys == null || this.mKeyHysteresisDistanceSquared < 0) {
            throw new IllegalStateException("keyboard and/or hysteresis not set");
        }
        int curKey = this.mKeyState.getKeyIndex();
        if (newKey == curKey) {
            return true;
        }
        if (!isValidKeyIndex(curKey)) {
            return false;
        }
        if (getSquareDistanceToKeyEdge(x, y, this.mKeys[curKey]) >= this.mKeyHysteresisDistanceSquared) {
            return false;
        }
        return true;
    }

    private static int getSquareDistanceToKeyEdge(int x, int y, Key key) {
        int left = key.x;
        int right = key.x + key.width;
        int top = key.y;
        int bottom = key.y + key.height;
        int edgeX = x < left ? left : x > right ? right : x;
        int edgeY = y < top ? top : y > bottom ? bottom : y;
        int dx = x - edgeX;
        int dy = y - edgeY;
        return (dx * dx) + (dy * dy);
    }

    private void showKeyPreviewAndUpdateKey(int keyIndex) {
        updateKey(keyIndex);
        if (this.mHasDistinctMultitouch && isModifier()) {
            this.mProxy.showPreview(-1, this);
        } else {
            this.mProxy.showPreview(keyIndex, this);
        }
    }

    private void startLongPressTimer(int keyIndex) {
        if (this.mKeyboardSwitcher.isInMomentaryAutoModeSwitchState()) {
            this.mHandler.startLongPressTimer((long) (this.mLongPressKeyTimeout * 3), keyIndex, this);
        } else {
            this.mHandler.startLongPressTimer((long) this.mLongPressKeyTimeout, keyIndex, this);
        }
    }

    private void detectAndSendKey(int index, int x, int y, long eventTime) {
        OnKeyboardActionListener listener = this.mListener;
        Key key = getKey(index);
        if (key != null) {
            if (key.text == null) {
                int code = key.codes[0];
                int[] codes = this.mKeyDetector.newCodeArray();
                this.mKeyDetector.getKeyIndexAndNearbyCodes(x, y, codes);
                if (this.mInMultiTap) {
                    if (this.mTapCount != -1) {
                        this.mListener.onKey(-5, KEY_DELETE, x, y);
                    } else {
                        this.mTapCount = 0;
                    }
                    code = key.codes[this.mTapCount];
                }
                if (codes.length >= 2 && codes[0] != code && codes[1] == code) {
                    codes[1] = codes[0];
                    codes[0] = code;
                }
                if (listener != null) {
                    listener.onKey(code, codes, x, y);
                    listener.onRelease(code);
                }
            } else if (listener != null) {
                listener.onText(key.text);
                listener.onRelease(0);
            }
            this.mLastSentIndex = index;
            this.mLastTapTime = eventTime;
        } else if (listener != null) {
            listener.onCancel();
        }
    }

    public CharSequence getPreviewText(Key key) {
        int i = 0;
        if (!this.mInMultiTap) {
            return key.label;
        }
        this.mPreviewLabel.setLength(0);
        StringBuilder stringBuilder = this.mPreviewLabel;
        int[] iArr = key.codes;
        if (this.mTapCount >= 0) {
            i = this.mTapCount;
        }
        stringBuilder.append((char) iArr[i]);
        return this.mPreviewLabel;
    }

    private void resetMultiTap() {
        this.mLastSentIndex = -1;
        this.mTapCount = 0;
        this.mLastTapTime = -1;
        this.mInMultiTap = false;
    }

    private void checkMultiTap(long eventTime, int keyIndex) {
        Key key = getKey(keyIndex);
        if (key != null) {
            boolean isMultiTap;
            if (eventTime >= this.mLastTapTime + ((long) this.mMultiTapKeyTimeout) || keyIndex != this.mLastSentIndex) {
                isMultiTap = false;
            } else {
                isMultiTap = true;
            }
            if (key.codes.length > 1) {
                this.mInMultiTap = true;
                if (isMultiTap) {
                    this.mTapCount = (this.mTapCount + 1) % key.codes.length;
                } else {
                    this.mTapCount = -1;
                }
            } else if (!isMultiTap) {
                resetMultiTap();
            }
        }
    }

    private void debugLog(String title, int x, int y) {
        String code;
        int keyIndex = this.mKeyDetector.getKeyIndexAndNearbyCodes(x, y, null);
        Key key = getKey(keyIndex);
        if (key == null) {
            code = "----";
        } else {
            code = String.format(key.codes[0] < 0 ? "%4d" : "0x%02x", new Object[]{Integer.valueOf(key.codes[0])});
        }
        String str = TAG;
        String str2 = "%s%s[%d] %3d,%3d %3d(%s) %s";
        Object[] objArr = new Object[8];
        objArr[0] = title;
        objArr[1] = this.mKeyAlreadyProcessed ? "-" : " ";
        objArr[2] = Integer.valueOf(this.mPointerId);
        objArr[3] = Integer.valueOf(x);
        objArr[4] = Integer.valueOf(y);
        objArr[5] = Integer.valueOf(keyIndex);
        objArr[6] = code;
        objArr[7] = isModifier() ? "modifier" : LoggingEvents.EXTRA_CALLING_APP_NAME;
        Log.d(str, String.format(str2, objArr));
    }
}
