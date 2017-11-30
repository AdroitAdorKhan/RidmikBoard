package net.hasnath.android.keyboard;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.Region.Op;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.support.v4.view.MotionEventCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.PopupWindow;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.WeakHashMap;
import net.hasnath.android.keyboard.Keyboard.Key;
import net.hasnath.android.keyboard.PointerTracker.UIProxy;

public class LatinKeyboardBaseView extends View implements UIProxy {
    private static final boolean DEBUG = false;
    private static final int[] LONG_PRESSABLE_STATE_SET = new int[]{16843324};
    static final int NOT_A_KEY = -1;
    public static final int NOT_A_TOUCH_COORDINATE = -1;
    private static final int NUMBER_HINT_VERTICAL_ADJUSTMENT_PIXEL = -1;
    private static final String TAG = "LatinKeyboardBaseView";
    private final String KEY_LABEL_HEIGHT_REFERENCE_CHAR;
    private final float KEY_LABEL_VERTICAL_ADJUSTMENT_FACTOR;
    private float mBackgroundDimAmount;
    private Bitmap mBuffer;
    private Canvas mCanvas;
    private final Rect mClipRegion;
    private int mDarkShadowColor;
    private final int mDelayAfterPreview;
    private final int mDelayBeforePreview;
    private final Rect mDirtyRect;
    private final boolean mDisambiguateSwipe;
    private boolean mDrawPending;
    private GestureDetector mGestureDetector;
    private final UIHandler mHandler;
    private final boolean mHasDistinctMultitouch;
    private final int mHintBottomPaddingPlus;
    private int mHintColor;
    private final float mHintTextSize;
    private final int mHintToLeft;
    private final int mHintToUp;
    private Key mInvalidatedKey;
    private Drawable mKeyBackground;
    private int mKeyDarkTextColor;
    protected KeyDetector mKeyDetector;
    private float mKeyHysteresisDistance;
    private final int mKeyRepeatInterval;
    private int mKeyTextColor;
    private int mKeyTextSize;
    private Typeface mKeyTextStyle;
    private Keyboard mKeyboard;
    private OnKeyboardActionListener mKeyboardActionListener;
    private boolean mKeyboardChanged;
    private int mKeyboardVerticalGap;
    private Key[] mKeys;
    private int mLabelTextSize;
    private int mLongPressDelay;
    private LatinKeyboardBaseView mMiniKeyboard;
    private final WeakHashMap<Key, View> mMiniKeyboardCache;
    private int mMiniKeyboardOriginX;
    private int mMiniKeyboardOriginY;
    private View mMiniKeyboardParent;
    private PopupWindow mMiniKeyboardPopup;
    private long mMiniKeyboardPopupTime;
    private final float mMiniKeyboardSlideAllowance;
    private int mMiniKeyboardTrackerId;
    private int mModifierTextColor;
    private int[] mOffsetInWindow;
    private int mOldPointerCount;
    private int mOldPreviewKeyIndex;
    private final Rect mPadding;
    private final Paint mPaint;
    private final PointerQueue mPointerQueue;
    private final ArrayList<PointerTracker> mPointerTrackers;
    private int mPopupLayout;
    private int mPopupPreviewDisplayedY;
    private int mPopupPreviewOffsetX;
    private int mPopupPreviewOffsetY;
    private int mPreviewHeight;
    private int mPreviewOffset;
    private PopupWindow mPreviewPopup;
    private TextView mPreviewText;
    private int mPreviewTextSizeLarge;
    private int mShadowColor;
    private float mShadowRadius;
    private boolean mShowPreview;
    private boolean mShowTouchPoints;
    private final int mSwipeThreshold;
    private final SwipeTracker mSwipeTracker;
    private int mSymbolColorScheme;
    private final HashMap<Integer, Integer> mTextHeightCache;
    private float mVerticalCorrection;
    private int[] mWindowOffset;
    private int mWindowY;

    public interface OnKeyboardActionListener {
        void onCancel();

        void onKey(int i, int[] iArr, int i2, int i3);

        void onPress(int i);

        void onRelease(int i);

        void onText(CharSequence charSequence);

        void swipeDown();

        void swipeLeft();

        void swipeRight();

        void swipeUp();
    }

    static class PointerQueue {
        private LinkedList<PointerTracker> mQueue = new LinkedList();

        PointerQueue() {
        }

        public void add(PointerTracker tracker) {
            this.mQueue.add(tracker);
        }

        public int lastIndexOf(PointerTracker tracker) {
            LinkedList<PointerTracker> queue = this.mQueue;
            for (int index = queue.size() - 1; index >= 0; index--) {
                if (((PointerTracker) queue.get(index)) == tracker) {
                    return index;
                }
            }
            return -1;
        }

        public void releaseAllPointersOlderThan(PointerTracker tracker, long eventTime) {
            LinkedList<PointerTracker> queue = this.mQueue;
            int oldestPos = 0;
            for (PointerTracker t = (PointerTracker) queue.get(0); t != tracker; t = (PointerTracker) queue.get(oldestPos)) {
                if (t.isModifier()) {
                    oldestPos++;
                } else {
                    t.onUpEvent(t.getLastX(), t.getLastY(), eventTime);
                    t.setAlreadyProcessed();
                    queue.remove(oldestPos);
                }
            }
        }

        public void releaseAllPointersExcept(PointerTracker tracker, long eventTime) {
            Iterator it = this.mQueue.iterator();
            while (it.hasNext()) {
                PointerTracker t = (PointerTracker) it.next();
                if (t != tracker) {
                    t.onUpEvent(t.getLastX(), t.getLastY(), eventTime);
                    t.setAlreadyProcessed();
                }
            }
            this.mQueue.clear();
            if (tracker != null) {
                this.mQueue.add(tracker);
            }
        }

        public void remove(PointerTracker tracker) {
            this.mQueue.remove(tracker);
        }

        public boolean isInSlidingKeyInput() {
            Iterator it = this.mQueue.iterator();
            while (it.hasNext()) {
                if (((PointerTracker) it.next()).isInSlidingKeyInput()) {
                    return true;
                }
            }
            return LatinKeyboardBaseView.DEBUG;
        }
    }

    static class UIHandler extends Handler {
        private static final int MSG_DISMISS_PREVIEW = 2;
        private static final int MSG_LONGPRESS_KEY = 4;
        private static final int MSG_POPUP_PREVIEW = 1;
        private static final int MSG_REPEAT_KEY = 3;
        private boolean mInKeyRepeat;
        LatinKeyboardBaseView outer;

        public UIHandler(LatinKeyboardBaseView latinKeyboardBaseView) {
            this.outer = latinKeyboardBaseView;
        }

        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    this.outer.showKey(msg.arg1, (PointerTracker) msg.obj);
                    return;
                case 2:
                    this.outer.mPreviewPopup.dismiss();
                    return;
                case 3:
                    PointerTracker tracker = msg.obj;
                    tracker.repeatKey(msg.arg1);
                    startKeyRepeatTimer((long) this.outer.mKeyRepeatInterval, msg.arg1, tracker);
                    return;
                case 4:
                    this.outer.openPopupIfRequired(msg.arg1, (PointerTracker) msg.obj);
                    return;
                default:
                    return;
            }
        }

        public void popupPreview(long delay, int keyIndex, PointerTracker tracker) {
            removeMessages(1);
            if (this.outer.mPreviewPopup.isShowing() && this.outer.mPreviewText.getVisibility() == 0) {
                this.outer.showKey(keyIndex, tracker);
            } else {
                sendMessageDelayed(obtainMessage(1, keyIndex, 0, tracker), delay);
            }
        }

        public void cancelPopupPreview() {
            removeMessages(1);
        }

        public void dismissPreview(long delay) {
            if (this.outer.mPreviewPopup.isShowing()) {
                sendMessageDelayed(obtainMessage(2), delay);
            }
        }

        public void cancelDismissPreview() {
            removeMessages(2);
        }

        public void startKeyRepeatTimer(long delay, int keyIndex, PointerTracker tracker) {
            this.mInKeyRepeat = true;
            sendMessageDelayed(obtainMessage(3, keyIndex, 0, tracker), delay);
        }

        public void cancelKeyRepeatTimer() {
            this.mInKeyRepeat = LatinKeyboardBaseView.DEBUG;
            removeMessages(3);
        }

        public boolean isInKeyRepeat() {
            return this.mInKeyRepeat;
        }

        public void startLongPressTimer(long delay, int keyIndex, PointerTracker tracker) {
            removeMessages(4);
            sendMessageDelayed(obtainMessage(4, keyIndex, 0, tracker), delay);
        }

        public void cancelLongPressTimer() {
            removeMessages(4);
        }

        public void cancelKeyTimers() {
            cancelKeyRepeatTimer();
            cancelLongPressTimer();
        }

        public void cancelAllMessages() {
            cancelKeyTimers();
            cancelPopupPreview();
            cancelDismissPreview();
        }
    }

    public LatinKeyboardBaseView(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.keyboardViewStyle);
    }

    public LatinKeyboardBaseView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mKeyTextStyle = Typeface.DEFAULT;
        this.mSymbolColorScheme = 0;
        this.mOldPreviewKeyIndex = -1;
        this.mShowPreview = true;
        this.mShowTouchPoints = true;
        this.mMiniKeyboardCache = new WeakHashMap();
        this.mPointerTrackers = new ArrayList();
        this.mPointerQueue = new PointerQueue();
        this.mOldPointerCount = 1;
        this.mKeyDetector = new ProximityKeyDetector();
        this.mSwipeTracker = new SwipeTracker();
        this.mDirtyRect = new Rect();
        this.mClipRegion = new Rect(0, 0, 0, 0);
        this.mTextHeightCache = new HashMap();
        this.KEY_LABEL_VERTICAL_ADJUSTMENT_FACTOR = 0.55f;
        this.KEY_LABEL_HEIGHT_REFERENCE_CHAR = "H";
        this.mHandler = new UIHandler(this);
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.LatinKeyboardBaseView, defStyle, R.style.LatinKeyboardBaseView);
        LayoutInflater inflate = (LayoutInflater) context.getSystemService("layout_inflater");
        int previewLayout = 0;
        int n = a.getIndexCount();
        for (int i = 0; i < n; i++) {
            int attr = a.getIndex(i);
            switch (attr) {
                case 1:
                    this.mKeyBackground = a.getDrawable(attr);
                    break;
                case 2:
                    this.mKeyTextSize = a.getDimensionPixelSize(attr, 18);
                    break;
                case 3:
                    this.mLabelTextSize = a.getDimensionPixelSize(attr, 14);
                    break;
                case 4:
                    this.mKeyTextColor = a.getColor(attr, -16777216);
                    break;
                case 5:
                    this.mKeyDarkTextColor = a.getColor(attr, -16777216);
                    break;
                case 6:
                    previewLayout = a.getResourceId(attr, 0);
                    break;
                case 7:
                    this.mPreviewOffset = a.getDimensionPixelOffset(attr, 0);
                    break;
                case 8:
                    this.mPreviewHeight = a.getDimensionPixelSize(attr, 80);
                    break;
                case 9:
                    this.mKeyHysteresisDistance = (float) a.getDimensionPixelOffset(attr, 0);
                    break;
                case 10:
                    this.mVerticalCorrection = (float) a.getDimensionPixelOffset(attr, 0);
                    break;
                case 11:
                    this.mPopupLayout = a.getResourceId(attr, 0);
                    break;
                case 12:
                    this.mShadowColor = a.getColor(attr, 0);
                    break;
                case 13:
                    this.mDarkShadowColor = a.getColor(attr, 0);
                    break;
                case 14:
                    this.mHintColor = a.getColor(attr, -16777216);
                    break;
                case 15:
                    this.mModifierTextColor = a.getColor(attr, -16777216);
                    break;
                case 16:
                    this.mShadowRadius = a.getFloat(attr, 0.0f);
                    break;
                case 17:
                    this.mBackgroundDimAmount = a.getFloat(attr, 0.5f);
                    break;
                case 18:
                    int textStyle = a.getInt(attr, 0);
                    switch (textStyle) {
                        case 0:
                            this.mKeyTextStyle = Typeface.DEFAULT;
                            break;
                        case 1:
                            this.mKeyTextStyle = Typeface.DEFAULT_BOLD;
                            break;
                        default:
                            this.mKeyTextStyle = Typeface.defaultFromStyle(textStyle);
                            break;
                    }
                case 19:
                    this.mSymbolColorScheme = a.getInt(attr, 0);
                    break;
                default:
                    break;
            }
        }
        Resources res = getResources();
        this.mHintTextSize = res.getDimension(R.dimen.corner_hint_text_size);
        this.mHintToLeft = res.getInteger(R.integer.hint_to_left);
        this.mHintToUp = res.getInteger(R.integer.hint_to_up);
        this.mHintBottomPaddingPlus = 7;
        this.mPreviewPopup = new PopupWindow(context);
        if (previewLayout != 0) {
            this.mPreviewText = (TextView) inflate.inflate(previewLayout, null);
            this.mPreviewTextSizeLarge = (int) res.getDimension(R.dimen.key_preview_text_size_large);
            this.mPreviewPopup.setContentView(this.mPreviewText);
            this.mPreviewPopup.setBackgroundDrawable(null);
        } else {
            this.mShowPreview = DEBUG;
        }
        this.mPreviewPopup.setTouchable(DEBUG);
        this.mPreviewPopup.setAnimationStyle(R.style.KeyPreviewAnimation);
        this.mDelayBeforePreview = res.getInteger(R.integer.config_delay_before_preview);
        this.mDelayAfterPreview = res.getInteger(R.integer.config_delay_after_preview);
        this.mMiniKeyboardParent = this;
        this.mMiniKeyboardPopup = new PopupWindow(context);
        this.mMiniKeyboardPopup.setBackgroundDrawable(null);
        this.mMiniKeyboardPopup.setAnimationStyle(R.style.MiniKeyboardAnimation);
        this.mPaint = new Paint();
        this.mPaint.setAntiAlias(true);
        this.mPaint.setTextSize((float) 0);
        this.mPaint.setTextAlign(Align.CENTER);
        this.mPaint.setAlpha(MotionEventCompat.ACTION_MASK);
        this.mPadding = new Rect(0, 0, 0, 0);
        this.mKeyBackground.getPadding(this.mPadding);
        this.mSwipeThreshold = (int) (500.0f * res.getDisplayMetrics().density);
        this.mDisambiguateSwipe = res.getBoolean(R.bool.config_swipeDisambiguation);
        this.mMiniKeyboardSlideAllowance = res.getDimension(R.dimen.mini_keyboard_slide_allowance);
        this.mGestureDetector = new GestureDetector(getContext(), new SimpleOnGestureListener() {
            public boolean onFling(MotionEvent me1, MotionEvent me2, float velocityX, float velocityY) {
                float absX = Math.abs(velocityX);
                float absY = Math.abs(velocityY);
                float deltaX = me2.getX() - me1.getX();
                float deltaY = me2.getY() - me1.getY();
                int travelX = LatinKeyboardBaseView.this.getWidth() / 2;
                int travelY = LatinKeyboardBaseView.this.getHeight() / 2;
                LatinKeyboardBaseView.this.mSwipeTracker.computeCurrentVelocity(1000);
                float endingVelocityX = LatinKeyboardBaseView.this.mSwipeTracker.getXVelocity();
                float endingVelocityY = LatinKeyboardBaseView.this.mSwipeTracker.getYVelocity();
                if (velocityX <= ((float) LatinKeyboardBaseView.this.mSwipeThreshold) || absY >= absX || deltaX <= ((float) travelX)) {
                    if (velocityX >= ((float) (-LatinKeyboardBaseView.this.mSwipeThreshold)) || absY >= absX || deltaX >= ((float) (-travelX))) {
                        if (velocityY >= ((float) (-LatinKeyboardBaseView.this.mSwipeThreshold)) || absX >= absY || deltaY >= ((float) (-travelY))) {
                            if (velocityY > ((float) LatinKeyboardBaseView.this.mSwipeThreshold) && absX < absY / 2.0f && deltaY > ((float) travelY) && LatinKeyboardBaseView.this.mDisambiguateSwipe && endingVelocityY >= velocityY / 4.0f) {
                                LatinKeyboardBaseView.this.swipeDown();
                                return true;
                            }
                        } else if (LatinKeyboardBaseView.this.mDisambiguateSwipe && endingVelocityY <= velocityY / 4.0f) {
                            LatinKeyboardBaseView.this.swipeUp();
                            return true;
                        }
                    } else if (LatinKeyboardBaseView.this.mDisambiguateSwipe && endingVelocityX <= velocityX / 4.0f) {
                        LatinKeyboardBaseView.this.swipeLeft();
                        return true;
                    }
                } else if (LatinKeyboardBaseView.this.mDisambiguateSwipe && endingVelocityX >= velocityX / 4.0f) {
                    LatinKeyboardBaseView.this.swipeRight();
                    return true;
                }
                return LatinKeyboardBaseView.DEBUG;
            }
        }, null, true);
        this.mGestureDetector.setIsLongpressEnabled(DEBUG);
        this.mHasDistinctMultitouch = context.getPackageManager().hasSystemFeature("android.hardware.touchscreen.multitouch.distinct");
        this.mKeyRepeatInterval = res.getInteger(R.integer.config_key_repeat_interval);
    }

    public void setOnKeyboardActionListener(OnKeyboardActionListener listener) {
        this.mKeyboardActionListener = listener;
        Iterator it = this.mPointerTrackers.iterator();
        while (it.hasNext()) {
            ((PointerTracker) it.next()).setOnKeyboardActionListener(listener);
        }
    }

    protected OnKeyboardActionListener getOnKeyboardActionListener() {
        return this.mKeyboardActionListener;
    }

    public void setKeyboard(Keyboard keyboard) {
        if (this.mKeyboard != null) {
            dismissKeyPreview();
        }
        this.mHandler.cancelKeyTimers();
        this.mHandler.cancelPopupPreview();
        this.mKeyboard = keyboard;
        LatinImeLogger.onSetKeyboard(keyboard);
        this.mKeys = this.mKeyDetector.setKeyboard(keyboard, (float) (-getPaddingLeft()), ((float) (-getPaddingTop())) + this.mVerticalCorrection);
        this.mKeyboardVerticalGap = (int) getResources().getDimension(R.dimen.key_bottom_gap);
        Iterator it = this.mPointerTrackers.iterator();
        while (it.hasNext()) {
            ((PointerTracker) it.next()).setKeyboard(this.mKeys, this.mKeyHysteresisDistance);
        }
        requestLayout();
        this.mKeyboardChanged = true;
        invalidateAllKeys();
        computeProximityThreshold(keyboard);
        this.mMiniKeyboardCache.clear();
    }

    public Keyboard getKeyboard() {
        return this.mKeyboard;
    }

    public boolean hasDistinctMultitouch() {
        return this.mHasDistinctMultitouch;
    }

    public boolean setShifted(boolean shifted) {
        if (this.mKeyboard == null || !this.mKeyboard.setShifted(shifted)) {
            return DEBUG;
        }
        invalidateAllKeys();
        return true;
    }

    public boolean isShifted() {
        if (this.mKeyboard != null) {
            return this.mKeyboard.isShifted();
        }
        return DEBUG;
    }

    public void setPreviewEnabled(boolean previewEnabled) {
        this.mShowPreview = previewEnabled;
    }

    public boolean isPreviewEnabled() {
        return this.mShowPreview;
    }

    public void setLongPressDelay(int longPressDelay) {
        this.mLongPressDelay = longPressDelay;
        Iterator it = this.mPointerTrackers.iterator();
        while (it.hasNext()) {
            ((PointerTracker) it.next()).setLongPressKeyTimeout(this.mLongPressDelay);
        }
    }

    public int getSymbolColorScheme() {
        return this.mSymbolColorScheme;
    }

    public void setPopupParent(View v) {
        this.mMiniKeyboardParent = v;
    }

    public void setPopupOffset(int x, int y) {
        this.mPopupPreviewOffsetX = x;
        this.mPopupPreviewOffsetY = y;
        this.mPreviewPopup.dismiss();
    }

    public void setProximityCorrectionEnabled(boolean enabled) {
        this.mKeyDetector.setProximityCorrectionEnabled(enabled);
    }

    public boolean isProximityCorrectionEnabled() {
        return this.mKeyDetector.isProximityCorrectionEnabled();
    }

    protected Locale getKeyboardLocale() {
        if (this.mKeyboard instanceof LatinKeyboard) {
            return ((LatinKeyboard) this.mKeyboard).getInputLocale();
        }
        return getContext().getResources().getConfiguration().locale;
    }

    protected CharSequence adjustCase(CharSequence label) {
        if (!this.mKeyboard.isShifted() || label == null || label.length() >= 3 || !Character.isLowerCase(label.charAt(0))) {
            return label;
        }
        return label.toString().toUpperCase(getKeyboardLocale());
    }

    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.mKeyboard == null) {
            setMeasuredDimension(getPaddingLeft() + getPaddingRight(), getPaddingTop() + getPaddingBottom());
            return;
        }
        int width = (this.mKeyboard.getMinWidth() + getPaddingLeft()) + getPaddingRight();
        if (MeasureSpec.getSize(widthMeasureSpec) < width + 10) {
            width = MeasureSpec.getSize(widthMeasureSpec);
        }
        setMeasuredDimension(width, (this.mKeyboard.getHeight() + getPaddingTop()) + getPaddingBottom());
    }

    private void computeProximityThreshold(Keyboard keyboard) {
        if (keyboard != null) {
            Key[] keys = this.mKeys;
            if (keys != null) {
                int dimensionSum = 0;
                for (Key key : keys) {
                    dimensionSum += Math.min(key.width, key.height + this.mKeyboardVerticalGap) + key.gap;
                }
                if (dimensionSum >= 0 && length != 0) {
                    this.mKeyDetector.setProximityThreshold((int) ((((float) dimensionSum) * 1.4f) / ((float) length)));
                }
            }
        }
    }

    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        this.mBuffer = null;
    }

    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mDrawPending || this.mBuffer == null || this.mKeyboardChanged) {
            onBufferDraw();
        }
        canvas.drawBitmap(this.mBuffer, 0.0f, 0.0f, null);
    }

    private void onBufferDraw() {
        if (this.mBuffer == null || this.mKeyboardChanged) {
            if (this.mBuffer == null || (this.mKeyboardChanged && !(this.mBuffer.getWidth() == getWidth() && this.mBuffer.getHeight() == getHeight()))) {
                this.mBuffer = Bitmap.createBitmap(Math.max(1, getWidth()), Math.max(1, getHeight()), Config.ARGB_8888);
                this.mCanvas = new Canvas(this.mBuffer);
            }
            invalidateAllKeys();
            this.mKeyboardChanged = DEBUG;
        }
        Canvas canvas = this.mCanvas;
        canvas.clipRect(this.mDirtyRect, Op.REPLACE);
        if (this.mKeyboard != null) {
            Paint paint = this.mPaint;
            Drawable keyBackground = this.mKeyBackground;
            Rect clipRegion = this.mClipRegion;
            Rect padding = this.mPadding;
            int kbdPaddingLeft = getPaddingLeft();
            int kbdPaddingTop = getPaddingTop();
            Key[] keys = this.mKeys;
            Key invalidKey = this.mInvalidatedKey;
            boolean drawSingleKey = DEBUG;
            if (invalidKey != null && canvas.getClipBounds(clipRegion) && (invalidKey.x + kbdPaddingLeft) - 1 <= clipRegion.left && (invalidKey.y + kbdPaddingTop) - 1 <= clipRegion.top && ((invalidKey.x + invalidKey.width) + kbdPaddingLeft) + 1 >= clipRegion.right && ((invalidKey.y + invalidKey.height) + kbdPaddingTop) + 1 >= clipRegion.bottom) {
                drawSingleKey = true;
            }
            canvas.drawColor(0, Mode.CLEAR);
            for (Key key : keys) {
                if (!drawSingleKey || invalidKey == key) {
                    String label;
                    paint.setColor(key.modifier ? this.mKeyDarkTextColor : this.mKeyTextColor);
                    keyBackground.setState(key.getCurrentDrawableState());
                    if (key.label == null) {
                        label = null;
                    } else {
                        label = adjustCase(key.label).toString();
                    }
                    Rect bounds = keyBackground.getBounds();
                    if (!(key.width == bounds.right && key.height == bounds.bottom)) {
                        keyBackground.setBounds(0, 0, key.width, key.height);
                    }
                    canvas.translate((float) (key.x + kbdPaddingLeft), (float) (key.y + kbdPaddingTop));
                    keyBackground.draw(canvas);
                    boolean shouldDrawIcon = true;
                    if (label != null) {
                        int labelSize;
                        int labelHeight;
                        if (label.length() <= 1 || key.codes.length >= 2) {
                            labelSize = this.mKeyTextSize;
                            paint.setTypeface(this.mKeyTextStyle);
                        } else {
                            labelSize = this.mLabelTextSize;
                            paint.setTypeface(Typeface.DEFAULT_BOLD);
                        }
                        if (useBanglaFont()) {
                            paint.setTypeface(Typefaces.get(getContext(), LatinIME.BANGLA_ASCII_FONT));
                        }
                        paint.setTextSize((float) labelSize);
                        Integer labelHeightValue = (Integer) this.mTextHeightCache.get(Integer.valueOf(labelSize));
                        if (labelHeightValue != null) {
                            labelHeight = labelHeightValue.intValue();
                        } else {
                            Rect textBounds = new Rect();
                            paint.getTextBounds("H", 0, 1, textBounds);
                            labelHeight = textBounds.height();
                            this.mTextHeightCache.put(Integer.valueOf(labelSize), Integer.valueOf(labelHeight));
                        }
                        if (key.modifier) {
                            paint.setColor(this.mModifierTextColor);
                            paint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
                        } else {
                            paint.setColor(this.mKeyTextColor);
                            paint.setShadowLayer(this.mShadowRadius, 0.0f, 0.0f, key.modifier ? this.mDarkShadowColor : this.mShadowColor);
                        }
                        int centerX = ((key.width + padding.left) - padding.right) / 2;
                        int centerY = (((key.height + padding.top) - padding.bottom) + this.mHintBottomPaddingPlus) / 2;
                        canvas.drawText(label, (float) centerX, ((float) centerY) + (((float) labelHeight) * 0.55f), paint);
                        if (key.popupCharacters != null && key.popupCharacters.length() > 0) {
                            String hintLabel;
                            paint.setTextSize(this.mHintTextSize);
                            paint.setColor(this.mHintColor);
                            paint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
                            if (useBanglaFont()) {
                                paint.setTypeface(Typefaces.get(getContext(), LatinIME.BANGLA_ASCII_FONT));
                            }
                            if (isNumberAtLeftmostPopupChar(key)) {
                                hintLabel = new StringBuilder(String.valueOf(key.popupCharacters.charAt(0))).toString();
                            } else if (isNumberAtRightmostPopupChar(key)) {
                                hintLabel = new StringBuilder(String.valueOf(key.popupCharacters.charAt(key.popupCharacters.length() - 1))).toString();
                            } else {
                                hintLabel = new StringBuilder(String.valueOf(key.popupCharacters.charAt(key.popupCharacters.length() - 1))).toString();
                            }
                            if (hintLabel != null) {
                                canvas.drawText(hintLabel, (float) ((centerX - this.mHintToLeft) + (labelSize / 2)), (float) ((centerY - this.mHintToUp) - (labelSize / 2)), paint);
                            }
                        }
                        paint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
                        shouldDrawIcon = shouldDrawLabelAndIcon(key);
                    }
                    if (key.icon != null && shouldDrawIcon) {
                        int drawableWidth;
                        int drawableHeight;
                        int drawableX;
                        int drawableY;
                        if (shouldDrawIconFully(key)) {
                            drawableWidth = key.width;
                            drawableHeight = key.height;
                            drawableX = 0;
                            drawableY = -1;
                        } else {
                            drawableWidth = key.icon.getIntrinsicWidth();
                            drawableHeight = key.icon.getIntrinsicHeight();
                            drawableX = (((key.width + padding.left) - padding.right) - drawableWidth) / 2;
                            drawableY = (((key.height + padding.top) - padding.bottom) - drawableHeight) / 2;
                        }
                        canvas.translate((float) drawableX, (float) drawableY);
                        key.icon.setBounds(0, 0, drawableWidth, drawableHeight);
                        key.icon.draw(canvas);
                        canvas.translate((float) (-drawableX), (float) (-drawableY));
                    }
                    canvas.translate((float) ((-key.x) - kbdPaddingLeft), (float) ((-key.y) - kbdPaddingTop));
                }
            }
            this.mInvalidatedKey = null;
            if (DEBUG && this.mShowTouchPoints) {
                Iterator it = this.mPointerTrackers.iterator();
                while (it.hasNext()) {
                    PointerTracker tracker = (PointerTracker) it.next();
                    int startX = tracker.getStartX();
                    int startY = tracker.getStartY();
                    int lastX = tracker.getLastX();
                    int lastY = tracker.getLastY();
                    paint.setAlpha(128);
                    paint.setStrokeWidth(3.0f);
                    paint.setColor(-13388315);
                    canvas.drawLine((float) startX, (float) startY, (float) lastX, (float) lastY, paint);
                }
            }
            this.mDrawPending = DEBUG;
            this.mDirtyRect.setEmpty();
        }
    }

    private boolean useBanglaFont() {
        return LatinIME.useBanglaFont();
    }

    private void dismissKeyPreview() {
        Iterator it = this.mPointerTrackers.iterator();
        while (it.hasNext()) {
            ((PointerTracker) it.next()).updateKey(-1);
        }
        showPreview(-1, null);
    }

    public void showPreview(int keyIndex, PointerTracker tracker) {
        boolean hidePreviewOrShowSpaceKeyPreview = DEBUG;
        int oldKeyIndex = this.mOldPreviewKeyIndex;
        this.mOldPreviewKeyIndex = keyIndex;
        boolean isLanguageSwitchEnabled = ((this.mKeyboard instanceof LatinKeyboard) && ((LatinKeyboard) this.mKeyboard).isLanguageSwitchEnabled()) ? true : DEBUG;
        if (tracker == null || tracker.isSpaceKey(keyIndex) || tracker.isSpaceKey(oldKeyIndex)) {
            hidePreviewOrShowSpaceKeyPreview = true;
        }
        if (oldKeyIndex == keyIndex) {
            return;
        }
        if (!this.mShowPreview && (!hidePreviewOrShowSpaceKeyPreview || !isLanguageSwitchEnabled)) {
            return;
        }
        if (keyIndex == -1) {
            this.mHandler.cancelPopupPreview();
            this.mHandler.dismissPreview((long) this.mDelayAfterPreview);
        } else if (tracker != null) {
            this.mHandler.popupPreview((long) this.mDelayBeforePreview, keyIndex, tracker);
        }
    }

    private void showKey(int keyIndex, PointerTracker tracker) {
        Key key = tracker.getKey(keyIndex);
        if (key != null) {
            if (key.icon == null || shouldDrawLabelAndIcon(key)) {
                this.mPreviewText.setCompoundDrawables(null, null, null, null);
                this.mPreviewText.setText(adjustCase(tracker.getPreviewText(key)));
                if (key.label.length() <= 1 || key.codes.length >= 2) {
                    this.mPreviewText.setTextSize(0, (float) this.mPreviewTextSizeLarge);
                    if (useBanglaFont()) {
                        this.mPreviewText.setTypeface(Typefaces.get(getContext(), LatinIME.BANGLA_ASCII_FONT));
                    } else {
                        this.mPreviewText.setTypeface(this.mKeyTextStyle);
                    }
                } else {
                    this.mPreviewText.setTextSize(0, (float) this.mKeyTextSize);
                    if (useBanglaFont()) {
                        this.mPreviewText.setTypeface(Typefaces.get(getContext(), LatinIME.BANGLA_ASCII_FONT));
                    } else {
                        this.mPreviewText.setTypeface(Typeface.DEFAULT_BOLD);
                    }
                }
            } else {
                this.mPreviewText.setCompoundDrawables(null, null, null, key.iconPreview != null ? key.iconPreview : key.icon);
                this.mPreviewText.setText(null);
            }
            this.mPreviewText.measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(0, 0));
            int popupWidth = Math.max(this.mPreviewText.getMeasuredWidth(), (key.width + this.mPreviewText.getPaddingLeft()) + this.mPreviewText.getPaddingRight());
            int popupHeight = this.mPreviewHeight;
            LayoutParams lp = this.mPreviewText.getLayoutParams();
            if (lp != null) {
                lp.width = popupWidth;
                lp.height = popupHeight;
            }
            int popupPreviewX = key.x - ((popupWidth - key.width) / 2);
            int popupPreviewY = (key.y - popupHeight) + this.mPreviewOffset;
            this.mHandler.cancelDismissPreview();
            if (this.mOffsetInWindow == null) {
                this.mOffsetInWindow = new int[2];
                getLocationInWindow(this.mOffsetInWindow);
                int[] iArr = this.mOffsetInWindow;
                iArr[0] = iArr[0] + this.mPopupPreviewOffsetX;
                iArr = this.mOffsetInWindow;
                iArr[1] = iArr[1] + this.mPopupPreviewOffsetY;
                int[] windowLocation = new int[2];
                getLocationOnScreen(windowLocation);
                this.mWindowY = windowLocation[1];
            }
            this.mPreviewText.getBackground().setState(key.popupResId != 0 ? LONG_PRESSABLE_STATE_SET : EMPTY_STATE_SET);
            popupPreviewX += this.mOffsetInWindow[0];
            popupPreviewY += this.mOffsetInWindow[1];
            if (this.mWindowY + popupPreviewY < 0) {
                if (key.x + key.width <= getWidth() / 2) {
                    popupPreviewX += (int) (((double) key.width) * 2.5d);
                } else {
                    popupPreviewX -= (int) (((double) key.width) * 2.5d);
                }
                popupPreviewY += popupHeight;
            }
            if (this.mPreviewPopup.isShowing()) {
                this.mPreviewPopup.update(popupPreviewX, popupPreviewY, popupWidth, popupHeight);
            } else {
                this.mPreviewPopup.setWidth(popupWidth);
                this.mPreviewPopup.setHeight(popupHeight);
                this.mPreviewPopup.showAtLocation(this.mMiniKeyboardParent, 0, popupPreviewX, popupPreviewY);
            }
            this.mPopupPreviewDisplayedY = popupPreviewY;
            this.mPreviewText.setVisibility(0);
        }
    }

    public void invalidateAllKeys() {
        this.mDirtyRect.union(0, 0, getWidth(), getHeight());
        this.mDrawPending = true;
        invalidate();
    }

    public void invalidateKey(Key key) {
        if (key != null) {
            this.mInvalidatedKey = key;
            this.mDirtyRect.union(key.x + getPaddingLeft(), key.y + getPaddingTop(), (key.x + key.width) + getPaddingLeft(), (key.y + key.height) + getPaddingTop());
            onBufferDraw();
            invalidate(key.x + getPaddingLeft(), key.y + getPaddingTop(), (key.x + key.width) + getPaddingLeft(), (key.y + key.height) + getPaddingTop());
        }
    }

    private boolean openPopupIfRequired(int keyIndex, PointerTracker tracker) {
        boolean z = DEBUG;
        if (this.mPopupLayout != 0) {
            Key popupKey = tracker.getKey(keyIndex);
            if (popupKey != null) {
                z = onLongPress(popupKey);
                if (z) {
                    dismissKeyPreview();
                    this.mMiniKeyboardTrackerId = tracker.mPointerId;
                    tracker.setAlreadyProcessed();
                    this.mPointerQueue.remove(tracker);
                }
            }
        }
        return z;
    }

    private View inflateMiniKeyboardContainer(Key popupKey) {
        int popupKeyboardId = popupKey.popupResId;
        View container = ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(this.mPopupLayout, null);
        if (container == null) {
            throw new NullPointerException();
        }
        Keyboard keyboard;
        LatinKeyboardBaseView miniKeyboard = (LatinKeyboardBaseView) container.findViewById(R.id.LatinKeyboardBaseView);
        miniKeyboard.setOnKeyboardActionListener(new OnKeyboardActionListener() {
            public void onKey(int primaryCode, int[] keyCodes, int x, int y) {
                LatinKeyboardBaseView.this.mKeyboardActionListener.onKey(primaryCode, keyCodes, x, y);
                LatinKeyboardBaseView.this.dismissPopupKeyboard();
            }

            public void onText(CharSequence text) {
                LatinKeyboardBaseView.this.mKeyboardActionListener.onText(text);
                LatinKeyboardBaseView.this.dismissPopupKeyboard();
            }

            public void onCancel() {
                LatinKeyboardBaseView.this.mKeyboardActionListener.onCancel();
                LatinKeyboardBaseView.this.dismissPopupKeyboard();
            }

            public void swipeLeft() {
            }

            public void swipeRight() {
            }

            public void swipeUp() {
            }

            public void swipeDown() {
            }

            public void onPress(int primaryCode) {
                LatinKeyboardBaseView.this.mKeyboardActionListener.onPress(primaryCode);
            }

            public void onRelease(int primaryCode) {
                LatinKeyboardBaseView.this.mKeyboardActionListener.onRelease(primaryCode);
            }
        });
        miniKeyboard.mKeyDetector = new MiniKeyboardKeyDetector(this.mMiniKeyboardSlideAllowance);
        miniKeyboard.mGestureDetector = null;
        if (popupKey.popupCharacters != null) {
            keyboard = new Keyboard(getContext(), popupKeyboardId, popupKey.popupCharacters, -1, getPaddingLeft() + getPaddingRight());
        } else {
            keyboard = new Keyboard(getContext(), popupKeyboardId);
        }
        miniKeyboard.setKeyboard(keyboard);
        miniKeyboard.setPopupParent(this);
        container.measure(MeasureSpec.makeMeasureSpec(getWidth(), Integer.MIN_VALUE), MeasureSpec.makeMeasureSpec(getHeight(), Integer.MIN_VALUE));
        return container;
    }

    private static boolean isOneRowKeys(List<Key> keys) {
        if (keys.size() == 0) {
            return DEBUG;
        }
        int edgeFlags = ((Key) keys.get(0)).edgeFlags;
        return ((edgeFlags & 4) == 0 || (edgeFlags & 8) == 0) ? DEBUG : true;
    }

    protected boolean onLongPress(Key popupKey) {
        if (popupKey.popupResId == 0) {
            return DEBUG;
        }
        int y;
        View container = (View) this.mMiniKeyboardCache.get(popupKey);
        if (container == null) {
            container = inflateMiniKeyboardContainer(popupKey);
            this.mMiniKeyboardCache.put(popupKey, container);
        }
        this.mMiniKeyboard = (LatinKeyboardBaseView) container.findViewById(R.id.LatinKeyboardBaseView);
        if (this.mWindowOffset == null) {
            this.mWindowOffset = new int[2];
            getLocationInWindow(this.mWindowOffset);
        }
        List<Key> miniKeys = this.mMiniKeyboard.getKeyboard().getKeys();
        int miniKeyWidth = miniKeys.size() > 0 ? ((Key) miniKeys.get(0)).width : 0;
        boolean isNumberAtLeftmost = (hasMultiplePopupChars(popupKey) && isNumberAtLeftmostPopupChar(popupKey)) ? true : DEBUG;
        int popupX = (popupKey.x + this.mWindowOffset[0]) + getPaddingLeft();
        if (isNumberAtLeftmost) {
            popupX = (popupX + (popupKey.width - miniKeyWidth)) - container.getPaddingLeft();
        } else {
            popupX = ((popupX + miniKeyWidth) - container.getMeasuredWidth()) + container.getPaddingRight();
        }
        int popupY = (((popupKey.y + this.mWindowOffset[1]) + getPaddingTop()) - container.getMeasuredHeight()) + container.getPaddingBottom();
        int x = popupX;
        if (this.mShowPreview && isOneRowKeys(miniKeys)) {
            y = this.mPopupPreviewDisplayedY;
        } else {
            y = popupY;
        }
        int adjustedX = x;
        if (x < 0) {
            adjustedX = 0;
        } else if (x > getMeasuredWidth() - container.getMeasuredWidth()) {
            adjustedX = getMeasuredWidth() - container.getMeasuredWidth();
        }
        this.mMiniKeyboardOriginX = (container.getPaddingLeft() + adjustedX) - this.mWindowOffset[0];
        this.mMiniKeyboardOriginY = (container.getPaddingTop() + y) - this.mWindowOffset[1];
        this.mMiniKeyboard.setPopupOffset(adjustedX, y);
        this.mMiniKeyboard.setShifted(isShifted());
        this.mMiniKeyboard.setPreviewEnabled(DEBUG);
        this.mMiniKeyboardPopup.setContentView(container);
        this.mMiniKeyboardPopup.setWidth(container.getMeasuredWidth());
        this.mMiniKeyboardPopup.setHeight(container.getMeasuredHeight());
        this.mMiniKeyboardPopup.showAtLocation(this, 0, x, y);
        long eventTime = SystemClock.uptimeMillis();
        this.mMiniKeyboardPopupTime = eventTime;
        MotionEvent downEvent = generateMiniKeyboardMotionEvent(0, (popupKey.width / 2) + popupKey.x, (popupKey.height / 2) + popupKey.y, eventTime);
        this.mMiniKeyboard.onTouchEvent(downEvent);
        downEvent.recycle();
        invalidateAllKeys();
        return true;
    }

    private static boolean hasMultiplePopupChars(Key key) {
        if (key.popupCharacters == null || key.popupCharacters.length() <= 1) {
            return DEBUG;
        }
        return true;
    }

    private boolean shouldDrawIconFully(Key key) {
        return (isNumberAtEdgeOfPopupChars(key) || isLatinF1Key(key) || LatinKeyboard.hasPuncOrSmileysPopup(key)) ? true : DEBUG;
    }

    private boolean shouldDrawLabelAndIcon(Key key) {
        return (isNumberAtEdgeOfPopupChars(key) || isNonMicLatinF1Key(key) || LatinKeyboard.hasPuncOrSmileysPopup(key)) ? true : DEBUG;
    }

    private boolean isLatinF1Key(Key key) {
        return ((this.mKeyboard instanceof LatinKeyboard) && ((LatinKeyboard) this.mKeyboard).isF1Key(key)) ? true : DEBUG;
    }

    private boolean isNonMicLatinF1Key(Key key) {
        return (!isLatinF1Key(key) || key.label == null) ? DEBUG : true;
    }

    private static boolean isNumberAtEdgeOfPopupChars(Key key) {
        return (isNumberAtLeftmostPopupChar(key) || isNumberAtRightmostPopupChar(key)) ? true : DEBUG;
    }

    static boolean isNumberAtLeftmostPopupChar(Key key) {
        if (key.popupCharacters == null || key.popupCharacters.length() <= 0 || !isAsciiDigit(key.popupCharacters.charAt(0))) {
            return DEBUG;
        }
        return true;
    }

    static boolean isNumberAtRightmostPopupChar(Key key) {
        if (key.popupCharacters == null || key.popupCharacters.length() <= 0 || !isAsciiDigit(key.popupCharacters.charAt(key.popupCharacters.length() - 1))) {
            return DEBUG;
        }
        return true;
    }

    private static boolean isAsciiDigit(char c) {
        return (c >= '' || !Character.isDigit(c)) ? DEBUG : true;
    }

    private MotionEvent generateMiniKeyboardMotionEvent(int action, int x, int y, long eventTime) {
        return MotionEvent.obtain(this.mMiniKeyboardPopupTime, eventTime, action, (float) (x - this.mMiniKeyboardOriginX), (float) (y - this.mMiniKeyboardOriginY), 0);
    }

    private PointerTracker getPointerTracker(int id) {
        ArrayList<PointerTracker> pointers = this.mPointerTrackers;
        Key[] keys = this.mKeys;
        OnKeyboardActionListener listener = this.mKeyboardActionListener;
        for (int i = pointers.size(); i <= id; i++) {
            PointerTracker tracker = new PointerTracker(i, this.mHandler, this.mKeyDetector, this, getResources(), this.mLongPressDelay);
            if (keys != null) {
                tracker.setKeyboard(keys, this.mKeyHysteresisDistance);
            }
            if (listener != null) {
                tracker.setOnKeyboardActionListener(listener);
            }
            pointers.add(tracker);
        }
        return (PointerTracker) pointers.get(id);
    }

    public boolean isInSlidingKeyInput() {
        if (this.mMiniKeyboard != null) {
            return this.mMiniKeyboard.isInSlidingKeyInput();
        }
        return this.mPointerQueue.isInSlidingKeyInput();
    }

    public int getPointerCount() {
        return this.mOldPointerCount;
    }

    public boolean onTouchEvent(MotionEvent me) {
        int action = me.getActionMasked();
        int pointerCount = me.getPointerCount();
        int oldPointerCount = this.mOldPointerCount;
        this.mOldPointerCount = pointerCount;
        if (!this.mHasDistinctMultitouch && pointerCount > 1 && oldPointerCount > 1) {
            return true;
        }
        this.mSwipeTracker.addMovement(me);
        if (this.mMiniKeyboard == null && this.mGestureDetector != null && this.mGestureDetector.onTouchEvent(me)) {
            dismissKeyPreview();
            this.mHandler.cancelKeyTimers();
            return true;
        }
        long eventTime = me.getEventTime();
        int index = me.getActionIndex();
        int id = me.getPointerId(index);
        int x = (int) me.getX(index);
        int y = (int) me.getY(index);
        if (this.mMiniKeyboard != null) {
            int miniKeyboardPointerIndex = me.findPointerIndex(this.mMiniKeyboardTrackerId);
            if (miniKeyboardPointerIndex >= 0 && miniKeyboardPointerIndex < pointerCount) {
                MotionEvent translated = generateMiniKeyboardMotionEvent(action, (int) me.getX(miniKeyboardPointerIndex), (int) me.getY(miniKeyboardPointerIndex), eventTime);
                this.mMiniKeyboard.onTouchEvent(translated);
                translated.recycle();
            }
            return true;
        }
        if (this.mHandler.isInKeyRepeat()) {
            if (action == 2) {
                return true;
            }
            PointerTracker tracker = getPointerTracker(id);
            if (pointerCount > 1 && !tracker.isModifier()) {
                this.mHandler.cancelKeyRepeatTimer();
            }
        }
        if (this.mHasDistinctMultitouch) {
            if (action != 2) {
                tracker = getPointerTracker(id);
                switch (action) {
                    case 0:
                    case 5:
                        onDownEvent(tracker, x, y, eventTime);
                        break;
                    case 1:
                    case 6:
                        onUpEvent(tracker, x, y, eventTime);
                        break;
                    case 3:
                        onCancelEvent(tracker, x, y, eventTime);
                        break;
                    default:
                        break;
                }
            }
            for (int i = 0; i < pointerCount; i++) {
                getPointerTracker(me.getPointerId(i)).onMoveEvent((int) me.getX(i), (int) me.getY(i), eventTime);
            }
            return true;
        }
        tracker = getPointerTracker(0);
        if (pointerCount == 1 && oldPointerCount == 2) {
            tracker.onDownEvent(x, y, eventTime);
        } else if (pointerCount == 2 && oldPointerCount == 1) {
            tracker.onUpEvent(tracker.getLastX(), tracker.getLastY(), eventTime);
        } else if (pointerCount == 1 && oldPointerCount == 1) {
            tracker.onTouchEvent(action, x, y, eventTime);
        } else {
            Log.w(TAG, "Unknown touch panel behavior: pointer count is " + pointerCount + " (old " + oldPointerCount + ")");
        }
        return true;
    }

    private void onDownEvent(PointerTracker tracker, int x, int y, long eventTime) {
        if (tracker.isOnModifierKey(x, y)) {
            this.mPointerQueue.releaseAllPointersExcept(null, eventTime);
        }
        tracker.onDownEvent(x, y, eventTime);
        this.mPointerQueue.add(tracker);
    }

    private void onUpEvent(PointerTracker tracker, int x, int y, long eventTime) {
        if (tracker.isModifier()) {
            this.mPointerQueue.releaseAllPointersExcept(tracker, eventTime);
        } else if (this.mPointerQueue.lastIndexOf(tracker) >= 0) {
            this.mPointerQueue.releaseAllPointersOlderThan(tracker, eventTime);
        } else {
            Log.w(TAG, "onUpEvent: corresponding down event not found for pointer " + tracker.mPointerId);
        }
        tracker.onUpEvent(x, y, eventTime);
        this.mPointerQueue.remove(tracker);
    }

    private void onCancelEvent(PointerTracker tracker, int x, int y, long eventTime) {
        tracker.onCancelEvent(x, y, eventTime);
        this.mPointerQueue.remove(tracker);
    }

    protected void swipeRight() {
        this.mKeyboardActionListener.swipeRight();
    }

    protected void swipeLeft() {
        this.mKeyboardActionListener.swipeLeft();
    }

    protected void swipeUp() {
        this.mKeyboardActionListener.swipeUp();
    }

    protected void swipeDown() {
        this.mKeyboardActionListener.swipeDown();
    }

    public void closing() {
        this.mPreviewPopup.dismiss();
        this.mHandler.cancelAllMessages();
        dismissPopupKeyboard();
        this.mBuffer = null;
        this.mCanvas = null;
        this.mMiniKeyboardCache.clear();
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        closing();
    }

    private void dismissPopupKeyboard() {
        if (this.mMiniKeyboardPopup.isShowing()) {
            this.mMiniKeyboardPopup.dismiss();
            this.mMiniKeyboard = null;
            this.mMiniKeyboardOriginX = 0;
            this.mMiniKeyboardOriginY = 0;
            invalidateAllKeys();
        }
    }

    public boolean handleBack() {
        if (!this.mMiniKeyboardPopup.isShowing()) {
            return DEBUG;
        }
        dismissPopupKeyboard();
        return true;
    }
}
