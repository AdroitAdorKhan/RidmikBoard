package net.hasnath.android.keyboard;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import java.util.List;
import net.hasnath.android.keyboard.Keyboard.Key;
import net.hasnath.android.keyboard.LatinIMEUtil.GCUtils;

public class LatinKeyboardView extends LatinKeyboardBaseView {
    static final boolean DEBUG_AUTO_PLAY = false;
    static final boolean DEBUG_LINE = false;
    static final int KEYCODE_DELETE = -5;
    static final int KEYCODE_F1 = -103;
    static final int KEYCODE_NEXT_LANGUAGE = -104;
    static final int KEYCODE_OPTIONS = -100;
    static final int KEYCODE_OPTIONS_LONGPRESS = -101;
    static final int KEYCODE_PREV_LANGUAGE = -105;
    static final int KEYCODE_SHIFT = -1;
    static final int KEYCODE_TAB = 9;
    static final int KEYCODE_VOICE = -102;
    private static final int MSG_TOUCH_DOWN = 1;
    private static final int MSG_TOUCH_UP = 2;
    private Key[] mAsciiKeys;
    private boolean mDisableDisambiguation;
    private boolean mDownDelivered;
    private boolean mDroppingEvents;
    Handler mHandler2;
    private int mJumpThresholdSquare;
    private int mLastRowY;
    private int mLastX;
    private int mLastY;
    private Paint mPaint;
    private Keyboard mPhoneKeyboard;
    private boolean mPlaying;
    private int mStringIndex;
    private String mStringToPlay;

    public static class YoHandler extends Handler {
        private final LatinKeyboardView outer;

        public YoHandler(LatinKeyboardView lv) {
            this.outer = lv;
        }

        public void handleMessage(Message msg) {
            removeMessages(1);
            removeMessages(2);
            if (this.outer.mPlaying) {
                LatinKeyboardView latinKeyboardView;
                switch (msg.what) {
                    case 1:
                        if (this.outer.mStringIndex >= this.outer.mStringToPlay.length()) {
                            this.outer.mPlaying = false;
                            return;
                        }
                        char c = this.outer.mStringToPlay.charAt(this.outer.mStringIndex);
                        while (true) {
                            if (c > 'ÿ' || this.outer.mAsciiKeys[c] == null) {
                                latinKeyboardView = this.outer;
                                latinKeyboardView.mStringIndex = latinKeyboardView.mStringIndex + 1;
                                if (this.outer.mStringIndex >= this.outer.mStringToPlay.length()) {
                                    this.outer.mPlaying = false;
                                    return;
                                }
                                c = this.outer.mStringToPlay.charAt(this.outer.mStringIndex);
                            } else {
                                MotionEvent me = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 0, (float) (this.outer.mAsciiKeys[c].x + 10), (float) (this.outer.mAsciiKeys[c].y + 26), 0);
                                this.outer.dispatchTouchEvent(me);
                                me.recycle();
                                sendEmptyMessageDelayed(2, 500);
                                this.outer.mDownDelivered = true;
                                return;
                            }
                        }
                        break;
                    case 2:
                        char cUp = this.outer.mStringToPlay.charAt(this.outer.mStringIndex);
                        int x2 = this.outer.mAsciiKeys[cUp].x + 10;
                        int y2 = this.outer.mAsciiKeys[cUp].y + 26;
                        latinKeyboardView = this.outer;
                        latinKeyboardView.mStringIndex = latinKeyboardView.mStringIndex + 1;
                        MotionEvent me2 = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 1, (float) x2, (float) y2, 0);
                        this.outer.dispatchTouchEvent(me2);
                        me2.recycle();
                        sendEmptyMessageDelayed(1, 500);
                        this.outer.mDownDelivered = false;
                        return;
                    default:
                        return;
                }
            }
        }
    }

    public LatinKeyboardView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public LatinKeyboardView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mJumpThresholdSquare = Integer.MAX_VALUE;
        this.mAsciiKeys = new Key[AccessibilityEventCompat.TYPE_VIEW_HOVER_EXIT];
    }

    public void setPhoneKeyboard(Keyboard phoneKeyboard) {
        this.mPhoneKeyboard = phoneKeyboard;
    }

    public void setPreviewEnabled(boolean previewEnabled) {
        if (getKeyboard() == this.mPhoneKeyboard) {
            super.setPreviewEnabled(false);
        } else {
            super.setPreviewEnabled(previewEnabled);
        }
    }

    public void setKeyboard(Keyboard newKeyboard) {
        Keyboard oldKeyboard = getKeyboard();
        if (oldKeyboard instanceof LatinKeyboard) {
            ((LatinKeyboard) oldKeyboard).keyReleased();
        }
        super.setKeyboard(newKeyboard);
        this.mJumpThresholdSquare = newKeyboard.getMinWidth() / 7;
        this.mJumpThresholdSquare *= this.mJumpThresholdSquare;
        this.mLastRowY = (newKeyboard.getHeight() * 3) / 4;
        setKeyboardLocal(newKeyboard);
    }

    protected boolean onLongPress(Key key) {
        int primaryCode = key.codes[0];
        if (primaryCode == KEYCODE_OPTIONS) {
            return invokeOnKey(KEYCODE_OPTIONS_LONGPRESS);
        }
        if (primaryCode == 48 && getKeyboard() == this.mPhoneKeyboard) {
            return invokeOnKey(43);
        }
        if (primaryCode == 10) {
            getOnKeyboardActionListener().onKey(LatinIME.SMILEY_KEYBOARD_1, null, -1, -1);
            return true;
        }
        if (LatinIME.CUT_COPY_PASTE) {
            int currentKey = -901;
            if (primaryCode == 99 || primaryCode == 67) {
                currentKey = LatinIME.CONTROL_C;
            } else if (primaryCode == 118 || primaryCode == 86) {
                currentKey = LatinIME.CONTROL_V;
            } else if (primaryCode == 120 || primaryCode == 88) {
                currentKey = LatinIME.CONTROL_X;
            }
            if (currentKey != -901) {
                getOnKeyboardActionListener().onKey(currentKey, null, -1, -1);
                return true;
            }
        }
        return super.onLongPress(key);
    }

    private boolean invokeOnKey(int primaryCode) {
        getOnKeyboardActionListener().onKey(primaryCode, null, -1, -1);
        return true;
    }

    protected CharSequence adjustCase(CharSequence label) {
        Keyboard keyboard = getKeyboard();
        if (!keyboard.isShifted() || !(keyboard instanceof LatinKeyboard) || !((LatinKeyboard) keyboard).isAlphaKeyboard() || TextUtils.isEmpty(label) || label.length() >= 3 || !Character.isLowerCase(label.charAt(0))) {
            return label;
        }
        if (LatinIME.langNow == 1 && label.charAt(0) == 'å') {
            return label;
        }
        return label.toString().toUpperCase(getKeyboardLocale());
    }

    public boolean setShiftLocked(boolean shiftLocked) {
        Keyboard keyboard = getKeyboard();
        if (!(keyboard instanceof LatinKeyboard)) {
            return false;
        }
        ((LatinKeyboard) keyboard).setShiftLocked(shiftLocked);
        invalidateAllKeys();
        return true;
    }

    private boolean handleSuddenJump(MotionEvent me) {
        int action = me.getAction();
        int x = (int) me.getX();
        int y = (int) me.getY();
        boolean result = false;
        if (me.getPointerCount() > 1) {
            this.mDisableDisambiguation = true;
        }
        if (this.mDisableDisambiguation) {
            if (action == 1) {
                this.mDisableDisambiguation = false;
            }
            return false;
        }
        MotionEvent translated;
        switch (action) {
            case 0:
                this.mDroppingEvents = false;
                this.mDisableDisambiguation = false;
                break;
            case 1:
                if (this.mDroppingEvents) {
                    translated = MotionEvent.obtain(me.getEventTime(), me.getEventTime(), 0, (float) x, (float) y, me.getMetaState());
                    super.onTouchEvent(translated);
                    translated.recycle();
                    this.mDroppingEvents = false;
                    break;
                }
                break;
            case 2:
                if (((this.mLastX - x) * (this.mLastX - x)) + ((this.mLastY - y) * (this.mLastY - y)) <= this.mJumpThresholdSquare || (this.mLastY >= this.mLastRowY && y >= this.mLastRowY)) {
                    if (this.mDroppingEvents) {
                        result = true;
                        break;
                    }
                }
                if (!this.mDroppingEvents) {
                    this.mDroppingEvents = true;
                    translated = MotionEvent.obtain(me.getEventTime(), me.getEventTime(), 1, (float) this.mLastX, (float) this.mLastY, me.getMetaState());
                    super.onTouchEvent(translated);
                    translated.recycle();
                }
                result = true;
                break;
                break;
        }
        this.mLastX = x;
        this.mLastY = y;
        return result;
    }

    public boolean onTouchEvent(MotionEvent me) {
        LatinKeyboard keyboard = (LatinKeyboard) getKeyboard();
        if (handleSuddenJump(me)) {
            return true;
        }
        if (me.getAction() == 0) {
            keyboard.keyReleased();
        }
        if (me.getAction() == 1) {
            int languageDirection = keyboard.getLanguageChangeDirection();
            if (languageDirection != 0) {
                getOnKeyboardActionListener().onKey(languageDirection == 1 ? KEYCODE_NEXT_LANGUAGE : KEYCODE_PREV_LANGUAGE, null, this.mLastX, this.mLastY);
                me.setAction(3);
                keyboard.keyReleased();
                return super.onTouchEvent(me);
            }
        }
        return super.onTouchEvent(me);
    }

    private void setKeyboardLocal(Keyboard k) {
    }

    private void findKeys() {
        List<Key> keys = getKeyboard().getKeys();
        for (int i = 0; i < keys.size(); i++) {
            int code = ((Key) keys.get(i)).codes[0];
            if (code >= 0 && code <= MotionEventCompat.ACTION_MASK) {
                this.mAsciiKeys[code] = (Key) keys.get(i);
            }
        }
    }

    public void startPlaying(String s) {
    }

    public void draw(Canvas c) {
        GCUtils.getInstance().reset();
        boolean tryGC = true;
        for (int i = 0; i < 5 && tryGC; i++) {
            try {
                super.draw(c);
                tryGC = false;
            } catch (OutOfMemoryError e) {
                tryGC = GCUtils.getInstance().tryGCOrWait("LatinKeyboardView", e);
            }
        }
    }
}
