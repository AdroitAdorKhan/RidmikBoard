package net.hasnath.android.keyboard;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.view.ViewConfiguration;
import java.util.List;
import java.util.Locale;
import net.hasnath.android.keyboard.Keyboard.Key;
import net.hasnath.android.keyboard.Keyboard.Row;
import ridmik.keyboard.R;

public class LatinKeyboard extends Keyboard {
    private static final String BANGLA_STRING_ASCII = "±ô";
    private static final String BANGLA_STRING_UNICODE = "অভ্র";
    private static final boolean DEBUG_PREFERRED_LETTER = false;
    private static final float MINIMUM_SCALE_OF_LANGUAGE_NAME = 0.8f;
    private static final String NATIONAL_STRING_ASCII = "ÂâÊäÝ";
    private static final String NATIONAL_STRING_UNICODE = "জাতীয়";
    private static final int OPACITY_FULLY_OPAQUE = 255;
    private static final float OVERLAP_PERCENTAGE_HIGH_PROB = 0.85f;
    private static final float OVERLAP_PERCENTAGE_LOW_PROB = 0.7f;
    private static final int SHIFT_LOCKED = 2;
    private static final int SHIFT_OFF = 0;
    private static final int SHIFT_ON = 1;
    private static final float SPACEBAR_DRAG_THRESHOLD = 0.8f;
    private static final float SPACEBAR_LANGUAGE_BASELINE = 0.6f;
    private static final float SPACEBAR_POPUP_MIN_RATIO = 0.4f;
    private static final int SPACE_LED_LENGTH_PERCENT = 80;
    private static final String TAG = "LatinKeyboard";
    private static final String UNIJOY_STRING_ASCII = "ûÒâÊ";
    private static final String UNIJOY_STRING_UNICODE = "প্রভাত";
    private static int sSpacebarVerticalCorrection;
    private Key m123Key;
    private CharSequence m123Label;
    private Drawable m123MicIcon;
    private Drawable m123MicPreviewIcon;
    private final Drawable mButtonArrowLeftIcon;
    private final Drawable mButtonArrowRightIcon;
    private final Context mContext;
    private boolean mCurrentlyInSpace;
    private Key mEnterKey;
    private Key mF1Key;
    private boolean mHasVoiceButton;
    private final Drawable mHintIcon;
    private final boolean mIsAlphaKeyboard;
    private boolean mIsBlackSym;
    private LanguageSwitcher mLanguageSwitcher;
    private Locale mLocale;
    private Drawable mMicIcon;
    private Drawable mMicPreviewIcon;
    private int mMode;
    private Drawable mOldShiftIcon;
    private int mPrefDistance;
    private int mPrefLetter;
    private int[] mPrefLetterFrequencies;
    private int mPrefLetterX;
    private int mPrefLetterY;
    private final Resources mRes;
    private Key mShiftKey;
    private Drawable mShiftLockIcon;
    private Drawable mShiftLockPreviewIcon;
    private int mShiftState;
    private SlidingLocaleDrawable mSlidingLocaleIcon;
    private Drawable mSpaceAutoCompletionIndicator;
    private int mSpaceDragLastDiff;
    private int mSpaceDragStartX;
    private Drawable mSpaceIcon;
    private Key mSpaceKey;
    private final int[] mSpaceKeyIndexArray;
    private Drawable mSpacePreviewIcon;
    private int mThemeIndex;
    private final int mVerticalGap;
    private boolean mVoiceEnabled;

    class LatinKey extends Key {
        private final int[] KEY_STATE_FUNCTIONAL_NORMAL = new int[]{16842915};
        private final int[] KEY_STATE_FUNCTIONAL_PRESSED = new int[]{16842915, 16842919};
        private boolean mShiftLockEnabled;

        public LatinKey(Resources res, Row parent, int x, int y, XmlResourceParser parser) {
            super(res, parent, x, y, parser);
            if (this.popupCharacters != null && this.popupCharacters.length() == 0) {
                this.popupResId = 0;
            }
        }

        private void enableShiftLock() {
            this.mShiftLockEnabled = true;
        }

        private boolean isFunctionalKey() {
            return (this.sticky || !this.modifier) ? LatinKeyboard.DEBUG_PREFERRED_LETTER : true;
        }

        public void onReleased(boolean inside) {
            if (this.mShiftLockEnabled) {
                this.pressed = this.pressed ? LatinKeyboard.DEBUG_PREFERRED_LETTER : true;
            } else {
                super.onReleased(inside);
            }
        }

        public boolean isInside(int x, int y) {
            return LatinKeyboard.this.isInside(this, x, y);
        }

        boolean isInsideSuper(int x, int y) {
            return super.isInside(x, y);
        }

        public int[] getCurrentDrawableState() {
            if (!isFunctionalKey()) {
                return super.getCurrentDrawableState();
            }
            if (this.pressed) {
                return this.KEY_STATE_FUNCTIONAL_PRESSED;
            }
            return this.KEY_STATE_FUNCTIONAL_NORMAL;
        }

        public int squaredDistanceFrom(int x, int y) {
            int xDist = (this.x + (this.width / 2)) - x;
            int yDist = (this.y + ((this.height + LatinKeyboard.this.mVerticalGap) / 2)) - y;
            return (xDist * xDist) + (yDist * yDist);
        }
    }

    class SlidingLocaleDrawable extends Drawable {
        private final Drawable mBackground;
        private String mCurrentLanguage;
        private int mDiff;
        private final int mHeight;
        private boolean mHitThreshold;
        private final Drawable mLeftDrawable;
        private final int mMiddleX;
        private String mNextLanguage;
        private String mPrevLanguage;
        private final Drawable mRightDrawable;
        private final TextPaint mTextPaint = new TextPaint();
        private final int mThreshold;
        private final int mWidth;

        public SlidingLocaleDrawable(Drawable background, int width, int height) {
            this.mBackground = background;
            LatinKeyboard.this.setDefaultBounds(this.mBackground);
            this.mWidth = width;
            this.mHeight = height;
            this.mTextPaint.setTextSize((float) LatinKeyboard.this.getTextSizeFromTheme(16973892, 18));
            this.mTextPaint.setColor(R.color.latinkeyboard_transparent);
            this.mTextPaint.setTextAlign(Align.CENTER);
            this.mTextPaint.setAlpha(255);
            this.mTextPaint.setAntiAlias(true);
            this.mMiddleX = (this.mWidth - this.mBackground.getIntrinsicWidth()) / 2;
            this.mLeftDrawable = LatinKeyboard.this.mRes.getDrawable(R.drawable.sym_keyboard_feedback_language_arrows_left);
            this.mRightDrawable = LatinKeyboard.this.mRes.getDrawable(R.drawable.sym_keyboard_feedback_language_arrows_right);
            this.mThreshold = ViewConfiguration.get(LatinKeyboard.this.mContext).getScaledTouchSlop();
        }

        private void setDiff(int diff) {
            if (diff == Integer.MAX_VALUE) {
                this.mHitThreshold = LatinKeyboard.DEBUG_PREFERRED_LETTER;
                this.mCurrentLanguage = null;
                return;
            }
            this.mDiff = diff;
            if (this.mDiff > this.mWidth) {
                this.mDiff = this.mWidth;
            }
            if (this.mDiff < (-this.mWidth)) {
                this.mDiff = -this.mWidth;
            }
            if (Math.abs(this.mDiff) > this.mThreshold) {
                this.mHitThreshold = true;
            }
            invalidateSelf();
        }

        private String getLanguageName(Locale locale) {
            return LanguageSwitcher.toTitleCase(locale.getDisplayLanguage(locale), locale);
        }

        public void draw(Canvas canvas) {
            canvas.save();
            if (this.mHitThreshold) {
                String currentFixed;
                Paint paint = this.mTextPaint;
                int width = this.mWidth;
                int height = this.mHeight;
                int diff = this.mDiff;
                Drawable lArrow = this.mLeftDrawable;
                Drawable rArrow = this.mRightDrawable;
                canvas.clipRect(0, 0, width, height);
                if (KeyboardSwitcher.CURRENT_FIXED_LAYOUT == 1) {
                    if (LatinIME.useBanglaFont()) {
                        currentFixed = LatinKeyboard.UNIJOY_STRING_ASCII;
                    } else {
                        currentFixed = LatinKeyboard.UNIJOY_STRING_UNICODE;
                    }
                } else if (LatinIME.useBanglaFont()) {
                    currentFixed = LatinKeyboard.NATIONAL_STRING_ASCII;
                } else {
                    currentFixed = LatinKeyboard.NATIONAL_STRING_UNICODE;
                }
                String banglaString = LatinKeyboard.BANGLA_STRING_UNICODE;
                if (LatinIME.useBanglaFont()) {
                    banglaString = LatinKeyboard.BANGLA_STRING_ASCII;
                }
                if (LatinIME.CURRENT_TOGGLER == 1) {
                    if (LatinIME.langNow == 1) {
                        this.mCurrentLanguage = banglaString;
                        this.mNextLanguage = "English";
                        this.mPrevLanguage = currentFixed;
                    } else if (LatinIME.langNow == 2) {
                        this.mCurrentLanguage = "English";
                        this.mNextLanguage = currentFixed;
                        this.mPrevLanguage = banglaString;
                    } else {
                        this.mCurrentLanguage = currentFixed;
                        this.mNextLanguage = banglaString;
                        this.mPrevLanguage = "English";
                    }
                } else if (LatinIME.CURRENT_TOGGLER == 2) {
                    if (LatinIME.langNow == 3) {
                        this.mCurrentLanguage = currentFixed;
                        r9 = "English";
                        this.mPrevLanguage = r9;
                        this.mNextLanguage = r9;
                    } else {
                        this.mCurrentLanguage = "English";
                        this.mPrevLanguage = currentFixed;
                        this.mNextLanguage = currentFixed;
                    }
                } else if (LatinIME.CURRENT_TOGGLER == 3) {
                    if (LatinIME.langNow == 1) {
                        this.mCurrentLanguage = banglaString;
                        r9 = "English";
                        this.mPrevLanguage = r9;
                        this.mNextLanguage = r9;
                    } else {
                        this.mCurrentLanguage = "English";
                        this.mPrevLanguage = banglaString;
                        this.mNextLanguage = banglaString;
                    }
                }
                float baseline = (((float) this.mHeight) * LatinKeyboard.SPACEBAR_LANGUAGE_BASELINE) - paint.descent();
                paint.setColor(LatinKeyboard.this.mRes.getColor(R.color.latinkeyboard_feedback_language_text));
                if (LatinKeyboard.this.mThemeIndex == LatinIME.LOLIPOP_THEME_INDEX || LatinKeyboard.this.mThemeIndex == LatinIME.LOLIPOP_THEME_INDEX + 1) {
                    paint.setColor(LatinKeyboard.this.mRes.getColor(R.color.latinkeyboard_key_color_black));
                }
                if (LatinIME.useBanglaFont()) {
                    paint.setTypeface(Typefaces.get(LatinKeyboard.this.mContext, LatinIME.BANGLA_ASCII_FONT));
                }
                canvas.drawText(this.mCurrentLanguage, (float) ((width / 2) + diff), baseline, paint);
                canvas.drawText(this.mNextLanguage, (float) (diff - (width / 2)), baseline, paint);
                canvas.drawText(this.mPrevLanguage, (float) ((diff + width) + (width / 2)), baseline, paint);
                if (!(LatinKeyboard.this.mThemeIndex == LatinIME.LOLIPOP_THEME_INDEX || LatinKeyboard.this.mThemeIndex == LatinIME.LOLIPOP_THEME_INDEX + 1)) {
                    LatinKeyboard.this.setDefaultBounds(lArrow);
                    rArrow.setBounds(width - rArrow.getIntrinsicWidth(), 0, width, rArrow.getIntrinsicHeight());
                    lArrow.draw(canvas);
                    rArrow.draw(canvas);
                }
            }
            if (this.mBackground != null) {
                canvas.translate((float) this.mMiddleX, 0.0f);
                this.mBackground.draw(canvas);
            }
            canvas.restore();
        }

        public int getOpacity() {
            return -3;
        }

        public void setAlpha(int alpha) {
        }

        public void setColorFilter(ColorFilter cf) {
        }

        public int getIntrinsicWidth() {
            return this.mWidth;
        }

        public int getIntrinsicHeight() {
            return this.mHeight;
        }
    }

    public LatinKeyboard(Context context, int xmlLayoutResId) {
        this(context, xmlLayoutResId, 0, 0);
    }

    public LatinKeyboard(Context context, int xmlLayoutResId, int mode, int keyboardHeightPercentage) {
        super(context, xmlLayoutResId, mode, keyboardHeightPercentage);
        this.mShiftState = 0;
        Resources res = context.getResources();
        this.mContext = context;
        this.mMode = mode;
        this.mRes = res;
        this.mShiftLockIcon = res.getDrawable(R.drawable.sym_keyboard_shift_locked);
        this.mShiftLockPreviewIcon = res.getDrawable(R.drawable.sym_keyboard_feedback_shift_locked);
        setDefaultBounds(this.mShiftLockPreviewIcon);
        this.mOldShiftIcon = res.getDrawable(R.drawable.sym_keyboard_shift);
        this.mSpaceIcon = res.getDrawable(R.drawable.sym_keyboard_space);
        this.mSpaceAutoCompletionIndicator = res.getDrawable(R.drawable.sym_keyboard_space_led);
        this.mSpacePreviewIcon = res.getDrawable(R.drawable.sym_keyboard_feedback_space);
        this.mMicIcon = res.getDrawable(R.drawable.sym_keyboard_mic);
        this.mMicPreviewIcon = res.getDrawable(R.drawable.sym_keyboard_feedback_mic);
        setDefaultBounds(this.mMicPreviewIcon);
        this.mButtonArrowLeftIcon = res.getDrawable(R.drawable.sym_keyboard_language_arrows_left);
        this.mButtonArrowRightIcon = res.getDrawable(R.drawable.sym_keyboard_language_arrows_right);
        this.m123MicIcon = res.getDrawable(R.drawable.sym_keyboard_123_mic);
        this.m123MicPreviewIcon = res.getDrawable(R.drawable.sym_keyboard_feedback_123_mic);
        this.mHintIcon = res.getDrawable(R.drawable.hint_popup);
        setDefaultBounds(this.m123MicPreviewIcon);
        sSpacebarVerticalCorrection = res.getDimensionPixelOffset(R.dimen.spacebar_vertical_correction);
        boolean z;
        if (LatinIME.langNow != 1) {
            z = (xmlLayoutResId == R.xml.kbd_qwerty || xmlLayoutResId == R.xml.kbd_qwerty_black) ? true : DEBUG_PREFERRED_LETTER;
            this.mIsAlphaKeyboard = z;
        } else if (LatinIME.useBanglaFont()) {
            z = (xmlLayoutResId == R.xml.kbd_qwerty_bangla_ascii || xmlLayoutResId == R.xml.kbd_qwerty_bangla_black) ? true : DEBUG_PREFERRED_LETTER;
            this.mIsAlphaKeyboard = z;
        } else {
            z = (xmlLayoutResId == R.xml.kbd_qwerty_bangla || xmlLayoutResId == R.xml.kbd_qwerty_bangla_black) ? true : DEBUG_PREFERRED_LETTER;
            this.mIsAlphaKeyboard = z;
        }
        this.mSpaceKeyIndexArray = new int[]{indexOf(32)};
        this.mVerticalGap = super.getVerticalGap();
    }

    protected Key createKeyFromXml(Resources res, Row parent, int x, int y, XmlResourceParser parser) {
        Key key = new LatinKey(res, parent, x, y, parser);
        switch (key.codes[0]) {
            case -103:
                this.mF1Key = key;
                break;
            case -102:
                key.icon = res.getDrawable(R.drawable.sym_keyboard_mic);
                break;
            case -100:
                key.icon = res.getDrawable(R.drawable.sym_keyboard_settings);
                break;
            case Keyboard.KEYCODE_DELETE /*-5*/:
                key.icon = res.getDrawable(R.drawable.sym_keyboard_delete);
                break;
            case -2:
                this.m123Key = key;
                this.m123Label = key.label;
                break;
            case -1:
                key.icon = res.getDrawable(R.drawable.sym_keyboard_shift);
                break;
            case 9:
                key.icon = res.getDrawable(R.drawable.sym_keyboard_tab);
                break;
            case 10:
                this.mEnterKey = key;
                break;
            case Suggest.APPROX_MAX_WORD_LENGTH /*32*/:
                this.mSpaceKey = key;
                break;
        }
        return key;
    }

    void setImeOptions(Resources res, int mode, int options) {
        this.mMode = mode;
        if (this.mEnterKey != null) {
            this.mEnterKey.popupCharacters = null;
            this.mEnterKey.popupResId = 0;
            this.mEnterKey.text = null;
            switch (1073742079 & options) {
                case 2:
                    this.mEnterKey.iconPreview = null;
                    this.mEnterKey.icon = null;
                    this.mEnterKey.label = res.getText(R.string.label_go_key);
                    break;
                case 3:
                    this.mEnterKey.iconPreview = res.getDrawable(R.drawable.sym_keyboard_feedback_search);
                    this.mEnterKey.icon = res.getDrawable(this.mIsBlackSym ? R.drawable.sym_bkeyboard_search : R.drawable.sym_keyboard_search);
                    this.mEnterKey.label = null;
                    break;
                case 4:
                    this.mEnterKey.iconPreview = null;
                    this.mEnterKey.icon = null;
                    this.mEnterKey.label = res.getText(R.string.label_send_key);
                    break;
                case 5:
                    this.mEnterKey.iconPreview = null;
                    this.mEnterKey.icon = null;
                    this.mEnterKey.label = res.getText(R.string.label_next_key);
                    break;
                case 6:
                    this.mEnterKey.iconPreview = null;
                    this.mEnterKey.icon = null;
                    this.mEnterKey.label = res.getText(R.string.label_done_key);
                    break;
                default:
                    if (mode == 6) {
                        this.mEnterKey.text = "\n";
                    }
                    this.mEnterKey.iconPreview = res.getDrawable(R.drawable.sym_keyboard_feedback_return);
                    this.mEnterKey.icon = res.getDrawable(this.mIsBlackSym ? R.drawable.sym_bkeyboard_return : R.drawable.sym_keyboard_return);
                    this.mEnterKey.label = null;
                    break;
            }
            if (this.mEnterKey.iconPreview != null) {
                setDefaultBounds(this.mEnterKey.iconPreview);
            }
        }
    }

    public void setThemeIndex(int theme) {
        this.mThemeIndex = theme;
    }

    void enableShiftLock() {
        int index = getShiftKeyIndex();
        if (index >= 0) {
            this.mShiftKey = (Key) getKeys().get(index);
            if (this.mShiftKey instanceof LatinKey) {
                ((LatinKey) this.mShiftKey).enableShiftLock();
            }
        }
    }

    void setShiftLocked(boolean shiftLocked) {
        if (this.mShiftKey == null) {
            return;
        }
        if (shiftLocked) {
            this.mShiftKey.on = true;
            this.mShiftKey.icon = this.mShiftLockIcon;
            this.mShiftState = 2;
            return;
        }
        this.mShiftKey.on = DEBUG_PREFERRED_LETTER;
        this.mShiftKey.icon = this.mShiftLockIcon;
        this.mShiftState = 1;
    }

    boolean isShiftLocked() {
        return this.mShiftState == 2 ? true : DEBUG_PREFERRED_LETTER;
    }

    public boolean setShifted(boolean shiftState) {
        boolean shiftChanged = DEBUG_PREFERRED_LETTER;
        if (this.mShiftKey == null) {
            return super.setShifted(shiftState);
        }
        if (!shiftState) {
            shiftChanged = this.mShiftState != 0 ? true : DEBUG_PREFERRED_LETTER;
            this.mShiftState = 0;
            this.mShiftKey.on = DEBUG_PREFERRED_LETTER;
            this.mShiftKey.icon = this.mOldShiftIcon;
        } else if (this.mShiftState == 0) {
            shiftChanged = this.mShiftState == 0 ? true : DEBUG_PREFERRED_LETTER;
            this.mShiftState = 1;
            this.mShiftKey.icon = this.mShiftLockIcon;
        }
        return shiftChanged;
    }

    public boolean isShifted() {
        if (this.mShiftKey != null) {
            return this.mShiftState != 0 ? true : DEBUG_PREFERRED_LETTER;
        } else {
            return super.isShifted();
        }
    }

    boolean isAlphaKeyboard() {
        return this.mIsAlphaKeyboard;
    }

    public void setColorOfSymbolIcons(boolean isAutoCompletion, boolean isBlack) {
        this.mIsBlackSym = isBlack;
        if (isBlack) {
            this.mShiftLockIcon = this.mRes.getDrawable(R.drawable.sym_bkeyboard_shift_locked);
            this.mSpaceIcon = this.mRes.getDrawable(R.drawable.sym_bkeyboard_space);
            this.mMicIcon = this.mRes.getDrawable(R.drawable.sym_bkeyboard_mic);
            this.m123MicIcon = this.mRes.getDrawable(R.drawable.sym_bkeyboard_123_mic);
        } else {
            this.mShiftLockIcon = this.mRes.getDrawable(R.drawable.sym_keyboard_shift_locked);
            this.mSpaceIcon = this.mRes.getDrawable(R.drawable.sym_keyboard_space);
            this.mMicIcon = this.mRes.getDrawable(R.drawable.sym_keyboard_mic);
            this.m123MicIcon = this.mRes.getDrawable(R.drawable.sym_keyboard_123_mic);
        }
        updateDynamicKeys();
        if (this.mSpaceKey != null) {
            updateSpaceBarForLocale(isAutoCompletion, isBlack);
        }
    }

    private void setDefaultBounds(Drawable drawable) {
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
    }

    public void setVoiceMode(boolean hasVoiceButton, boolean hasVoice) {
        this.mHasVoiceButton = hasVoiceButton;
        this.mVoiceEnabled = hasVoice;
        updateDynamicKeys();
    }

    private void updateDynamicKeys() {
        update123Key();
        updateF1Key();
    }

    private void update123Key() {
        if (this.m123Key != null && this.mIsAlphaKeyboard) {
            if (!this.mVoiceEnabled || this.mHasVoiceButton) {
                this.m123Key.icon = null;
                this.m123Key.iconPreview = null;
                this.m123Key.label = this.m123Label;
                return;
            }
            this.m123Key.icon = this.m123MicIcon;
            this.m123Key.iconPreview = this.m123MicPreviewIcon;
            this.m123Key.label = null;
        }
    }

    private void updateF1Key() {
        if (this.mF1Key != null) {
            if (this.mIsAlphaKeyboard) {
                if (this.mMode == 4) {
                    setNonMicF1Key(this.mF1Key, "/", R.xml.popup_slash);
                } else if (this.mMode == 5) {
                    setNonMicF1Key(this.mF1Key, "@", R.xml.popup_at);
                } else if (this.mVoiceEnabled && this.mHasVoiceButton) {
                    setMicF1Key(this.mF1Key);
                } else {
                    setNonMicF1Key(this.mF1Key, ",", R.xml.popup_comma);
                }
            } else if (this.mVoiceEnabled && this.mHasVoiceButton) {
                setMicF1Key(this.mF1Key);
            } else {
                setNonMicF1Key(this.mF1Key, ",", R.xml.popup_comma);
            }
        }
    }

    private void setMicF1Key(Key key) {
        Drawable micWithSettingsHintDrawable = new BitmapDrawable(this.mRes, drawSynthesizedSettingsHintImage(key.width, key.height, this.mMicIcon, this.mHintIcon));
        key.label = null;
        key.codes = new int[]{-102};
        key.popupResId = R.xml.popup_mic;
        key.icon = micWithSettingsHintDrawable;
        key.iconPreview = this.mMicPreviewIcon;
    }

    private void setNonMicF1Key(Key key, String label, int popupResId) {
        key.label = label;
        key.codes = new int[]{label.charAt(0)};
        key.popupResId = popupResId;
        key.icon = this.mHintIcon;
        key.iconPreview = null;
    }

    public boolean isF1Key(Key key) {
        return key == this.mF1Key ? true : DEBUG_PREFERRED_LETTER;
    }

    public static boolean hasPuncOrSmileysPopup(Key key) {
        return (key.popupResId == R.xml.popup_punctuation || key.popupResId == R.xml.popup_smileys) ? true : DEBUG_PREFERRED_LETTER;
    }

    public Key onAutoCompletionStateChanged(boolean isAutoCompletion) {
        updateSpaceBarForLocale(isAutoCompletion, this.mIsBlackSym);
        return this.mSpaceKey;
    }

    public boolean isLanguageSwitchEnabled() {
        return this.mLocale != null ? true : DEBUG_PREFERRED_LETTER;
    }

    private void updateSpaceBarForLocale(boolean isAutoCompletion, boolean isBlack) {
        this.mSpaceKey.icon = new BitmapDrawable(this.mRes, drawSpaceBar(255, isAutoCompletion, isBlack));
    }

    private static int getTextWidth(Paint paint, String text, float textSize, Rect bounds) {
        paint.setTextSize(textSize);
        paint.getTextBounds(text, 0, text.length(), bounds);
        return bounds.width();
    }

    private Bitmap drawSynthesizedSettingsHintImage(int width, int height, Drawable mainIcon, Drawable hintIcon) {
        if (mainIcon == null || hintIcon == null) {
            return null;
        }
        Rect hintIconPadding = new Rect(0, 0, 0, 0);
        hintIcon.getPadding(hintIconPadding);
        Bitmap buffer = Bitmap.createBitmap(width, height, Config.ARGB_8888);
        Canvas canvas = new Canvas(buffer);
        canvas.drawColor(this.mRes.getColor(R.color.latinkeyboard_transparent), Mode.CLEAR);
        int drawableX = (((hintIconPadding.left + width) - hintIconPadding.right) - mainIcon.getIntrinsicWidth()) / 2;
        int drawableY = (((hintIconPadding.top + height) - hintIconPadding.bottom) - mainIcon.getIntrinsicHeight()) / 2;
        setDefaultBounds(mainIcon);
        canvas.translate((float) drawableX, (float) drawableY);
        mainIcon.draw(canvas);
        canvas.translate((float) (-drawableX), (float) (-drawableY));
        hintIcon.setBounds(0, 0, width, height);
        hintIcon.draw(canvas);
        return buffer;
    }

    private static String layoutSpaceBar(Paint paint, Locale locale, Drawable lArrow, Drawable rArrow, int width, int height, float origTextSize, boolean allowVariableTextSize) {
        boolean useShortName;
        float arrowWidth = (float) lArrow.getIntrinsicWidth();
        float arrowHeight = (float) lArrow.getIntrinsicHeight();
        float maxTextWidth = ((float) width) - (arrowWidth + arrowWidth);
        Rect bounds = new Rect();
        String language = LanguageSwitcher.toTitleCase(locale.getDisplayLanguage(locale), locale);
        int textWidth = getTextWidth(paint, language, origTextSize, bounds);
        float textSize = origTextSize * Math.min(maxTextWidth / ((float) textWidth), 1.0f);
        if (allowVariableTextSize) {
            textWidth = getTextWidth(paint, language, textSize, bounds);
            useShortName = (textSize / origTextSize < 0.8f || ((float) textWidth) > maxTextWidth) ? true : DEBUG_PREFERRED_LETTER;
        } else {
            useShortName = ((float) textWidth) > maxTextWidth ? true : DEBUG_PREFERRED_LETTER;
            textSize = origTextSize;
        }
        if (useShortName) {
            textWidth = getTextWidth(paint, LanguageSwitcher.toTitleCase(locale.getLanguage(), locale), origTextSize, bounds);
            textSize = origTextSize * Math.min(maxTextWidth / ((float) textWidth), 1.0f);
        }
        paint.setTextSize(textSize);
        float baseline = ((float) height) * SPACEBAR_LANGUAGE_BASELINE;
        int top = (int) (baseline - arrowHeight);
        float remains = (float) ((width - textWidth) / 2);
        lArrow.setBounds((int) (remains - arrowWidth), top, (int) remains, (int) baseline);
        rArrow.setBounds((int) (((float) textWidth) + remains), top, (int) ((((float) textWidth) + remains) + arrowWidth), (int) baseline);
        if (LatinIME.useBanglaFont()) {
            if (LatinIME.langNow == 1) {
                return BANGLA_STRING_ASCII;
            }
            if (LatinIME.langNow == 2) {
                return "English";
            }
            if (KeyboardSwitcher.CURRENT_FIXED_LAYOUT == 1) {
                return UNIJOY_STRING_ASCII;
            }
            return NATIONAL_STRING_ASCII;
        } else if (LatinIME.langNow == 1) {
            return BANGLA_STRING_UNICODE;
        } else {
            if (LatinIME.langNow == 2) {
                return "English";
            }
            if (KeyboardSwitcher.CURRENT_FIXED_LAYOUT == 1) {
                return UNIJOY_STRING_UNICODE;
            }
            return NATIONAL_STRING_UNICODE;
        }
    }

    private Bitmap drawSpaceBar(int opacity, boolean isAutoCompletion, boolean isBlack) {
        int i;
        int width = this.mSpaceKey.width;
        int height = this.mSpaceIcon.getIntrinsicHeight();
        Bitmap buffer = Bitmap.createBitmap(width, height, Config.ARGB_8888);
        Canvas canvas = new Canvas(buffer);
        canvas.drawColor(this.mRes.getColor(R.color.latinkeyboard_transparent), Mode.CLEAR);
        Paint paint = new Paint();
        paint.setAlpha(opacity);
        paint.setAntiAlias(true);
        paint.setTextAlign(Align.CENTER);
        if (LatinIME.useBanglaFont()) {
            paint.setTypeface(Typefaces.get(this.mContext, LatinIME.BANGLA_ASCII_FONT));
        }
        String language = layoutSpaceBar(paint, this.mLanguageSwitcher.getInputLocale(), this.mButtonArrowLeftIcon, this.mButtonArrowRightIcon, width, height, (float) getTextSizeFromTheme(16973894, 14), true);
        float baseline = ((float) height) * SPACEBAR_LANGUAGE_BASELINE;
        float descent = paint.descent();
        Resources resources = this.mRes;
        if (isBlack) {
            i = R.color.latinkeyboard_key_color_black;
        } else {
            i = R.color.latinkeyboard_key_color_white;
        }
        paint.setColor(resources.getColor(i));
        canvas.drawText(language, (float) (width / 2), baseline - descent, paint);
        this.mButtonArrowLeftIcon.draw(canvas);
        this.mButtonArrowRightIcon.draw(canvas);
        int iconWidth = this.mSpaceIcon.getIntrinsicWidth();
        int iconHeight = this.mSpaceIcon.getIntrinsicHeight();
        int x = (width - iconWidth) / 2;
        int y = height - iconHeight;
        this.mSpaceIcon.setBounds(x, y, x + iconWidth, y + iconHeight);
        this.mSpaceIcon.draw(canvas);
        return buffer;
    }

    private void updateLocaleDrag(int diff) {
        if (this.mSlidingLocaleIcon == null) {
            int width = Math.max(this.mSpaceKey.width, (int) (((float) getMinWidth()) * SPACEBAR_POPUP_MIN_RATIO));
            int height = this.mSpacePreviewIcon.getIntrinsicHeight();
            this.mSlidingLocaleIcon = new SlidingLocaleDrawable(this.mSpacePreviewIcon, width, height);
            this.mSlidingLocaleIcon.setBounds(0, 0, width, height);
            this.mSpaceKey.iconPreview = this.mSlidingLocaleIcon;
        }
        this.mSlidingLocaleIcon.setDiff(diff);
        if (Math.abs(diff) == Integer.MAX_VALUE) {
            this.mSpaceKey.iconPreview = this.mSpacePreviewIcon;
        } else {
            this.mSpaceKey.iconPreview = this.mSlidingLocaleIcon;
        }
        this.mSpaceKey.iconPreview.invalidateSelf();
    }

    public int getLanguageChangeDirection() {
        if (this.mSpaceKey == null || ((float) Math.abs(this.mSpaceDragLastDiff)) < ((float) this.mSpaceKey.width) * 0.8f) {
            return 0;
        }
        return this.mSpaceDragLastDiff > 0 ? 1 : -1;
    }

    public void setLanguageSwitcher(LanguageSwitcher switcher, boolean isAutoCompletion, boolean isBlackSym) {
        Locale locale;
        this.mLanguageSwitcher = switcher;
        if (this.mLanguageSwitcher.getLocaleCount() > 0) {
            locale = this.mLanguageSwitcher.getInputLocale();
        } else {
            locale = null;
        }
        if (locale != null && this.mLanguageSwitcher.getLocaleCount() == 1 && this.mLanguageSwitcher.getSystemLocale().getLanguage().equalsIgnoreCase(locale.getLanguage())) {
            locale = null;
        }
        this.mLocale = locale;
        setColorOfSymbolIcons(isAutoCompletion, isBlackSym);
    }

    public Locale getInputLocale() {
        return this.mLocale != null ? this.mLocale : this.mLanguageSwitcher.getSystemLocale();
    }

    boolean isCurrentlyInSpace() {
        return this.mCurrentlyInSpace;
    }

    void setPreferredLetters(int[] frequencies) {
        this.mPrefLetterFrequencies = frequencies;
        this.mPrefLetter = 0;
    }

    void keyReleased() {
        this.mCurrentlyInSpace = DEBUG_PREFERRED_LETTER;
        this.mSpaceDragLastDiff = 0;
        this.mPrefLetter = 0;
        this.mPrefLetterX = 0;
        this.mPrefLetterY = 0;
        this.mPrefDistance = Integer.MAX_VALUE;
        if (this.mSpaceKey != null) {
            updateLocaleDrag(Integer.MAX_VALUE);
        }
    }

    boolean isInside(LatinKey key, int x, int y) {
        int code = key.codes[0];
        if (code == -1 || code == -5) {
            y -= key.height / 10;
            if (code == -1) {
                x += key.width / 6;
            }
            if (code == -5) {
                x -= key.width / 6;
            }
        } else if (code == 32) {
            y += sSpacebarVerticalCorrection;
            if (this.mCurrentlyInSpace) {
                int diff = x - this.mSpaceDragStartX;
                if (Math.abs(diff - this.mSpaceDragLastDiff) > 0) {
                    updateLocaleDrag(diff);
                }
                this.mSpaceDragLastDiff = diff;
                return true;
            }
            boolean insideSpace = key.isInsideSuper(x, y);
            if (!insideSpace) {
                return insideSpace;
            }
            this.mCurrentlyInSpace = true;
            this.mSpaceDragStartX = x;
            updateLocaleDrag(0);
            return insideSpace;
        } else if (this.mPrefLetterFrequencies != null) {
            if (!(this.mPrefLetterX == x && this.mPrefLetterY == y)) {
                this.mPrefLetter = 0;
                this.mPrefDistance = Integer.MAX_VALUE;
            }
            int[] pref = this.mPrefLetterFrequencies;
            if (this.mPrefLetter > 0) {
                return this.mPrefLetter == code ? true : DEBUG_PREFERRED_LETTER;
            } else {
                boolean inside = key.isInsideSuper(x, y);
                int[] nearby = getNearestKeys(x, y);
                List<Key> nearbyKeys = getKeys();
                Key k;
                int dist;
                if (inside && inPrefList(code, pref)) {
                    this.mPrefLetter = code;
                    this.mPrefLetterX = x;
                    this.mPrefLetterY = y;
                    for (int i : nearby) {
                        k = (Key) nearbyKeys.get(i);
                        if (k != key && inPrefList(k.codes[0], pref)) {
                            dist = distanceFrom(k, x, y);
                            if (dist < ((int) (((float) k.width) * OVERLAP_PERCENTAGE_LOW_PROB)) && pref[k.codes[0]] > pref[this.mPrefLetter] * 3) {
                                this.mPrefLetter = k.codes[0];
                                this.mPrefDistance = dist;
                                break;
                            }
                        }
                    }
                    if (this.mPrefLetter == code) {
                        return true;
                    }
                    return DEBUG_PREFERRED_LETTER;
                }
                for (int i2 : nearby) {
                    k = (Key) nearbyKeys.get(i2);
                    if (inPrefList(k.codes[0], pref)) {
                        dist = distanceFrom(k, x, y);
                        if (dist < ((int) (((float) k.width) * OVERLAP_PERCENTAGE_HIGH_PROB)) && dist < this.mPrefDistance) {
                            this.mPrefLetter = k.codes[0];
                            this.mPrefLetterX = x;
                            this.mPrefLetterY = y;
                            this.mPrefDistance = dist;
                        }
                    }
                }
                if (this.mPrefLetter == 0) {
                    return inside;
                }
                return this.mPrefLetter == code ? true : DEBUG_PREFERRED_LETTER;
            }
        }
        if (this.mCurrentlyInSpace) {
            return DEBUG_PREFERRED_LETTER;
        }
        return key.isInsideSuper(x, y);
    }

    private boolean inPrefList(int code, int[] pref) {
        return (code >= pref.length || code < 0 || pref[code] <= 0) ? DEBUG_PREFERRED_LETTER : true;
    }

    private int distanceFrom(Key k, int x, int y) {
        if (y <= k.y || y >= k.y + k.height) {
            return Integer.MAX_VALUE;
        }
        return Math.abs((k.x + (k.width / 2)) - x);
    }

    public int[] getNearestKeys(int x, int y) {
        if (this.mCurrentlyInSpace) {
            return this.mSpaceKeyIndexArray;
        }
        return super.getNearestKeys(Math.max(0, Math.min(x, getMinWidth() - 1)), Math.max(0, Math.min(y, getHeight() - 1)));
    }

    private int indexOf(int code) {
        List<Key> keys = getKeys();
        int count = keys.size();
        for (int i = 0; i < count; i++) {
            if (((Key) keys.get(i)).codes[0] == code) {
                return i;
            }
        }
        return -1;
    }

    private int getTextSizeFromTheme(int style, int defValue) {
        TypedArray array = this.mContext.getTheme().obtainStyledAttributes(style, new int[]{16842901});
        try {
            return array.getDimensionPixelSize(array.getResourceId(0, 0), defValue);
        } catch (ArrayIndexOutOfBoundsException e) {
            return defValue;
        }
    }
}
