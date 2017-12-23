package net.hasnath.android.keyboard;

import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.preference.PreferenceManager;
import android.view.InflateException;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.ref.SoftReference;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import net.hasnath.android.keyboard.LatinIMEUtil.GCUtils;
import ridmik.keyboard.R;

public class KeyboardSwitcher implements OnSharedPreferenceChangeListener {
    private static final int[] ALPHABET_MODES = new int[]{2131689506, 2131689507, 2131689508, 2131689509, 2131689510, 2131689511, 2131689512, 2131689513, 2131689514, 2131689515};
    private static final int AUTO_MODE_SWITCH_STATE_ALPHA = 0;
    private static final int AUTO_MODE_SWITCH_STATE_CHORDING = 4;
    private static final int AUTO_MODE_SWITCH_STATE_MOMENTARY = 3;
    private static final int AUTO_MODE_SWITCH_STATE_SYMBOL = 2;
    private static final int AUTO_MODE_SWITCH_STATE_SYMBOL_BEGIN = 1;
    private static final int CHAR_THEME_COLOR_BLACK = 1;
    private static final int CHAR_THEME_COLOR_WHITE = 0;
    public static int CURRENT_FIXED_LAYOUT = 1;
    public static final String DEFAULT_LAYOUT_ID = "3";
    private static final int DEFAULT_SETTINGS_KEY_MODE = 2131165312;
    private static final int[] KBD_PHONE = new int[]{R.xml.kbd_phone, R.xml.kbd_phone_black};
    private static final int[] KBD_PHONE_SYMBOLS = new int[]{R.xml.kbd_phone_symbols, R.xml.kbd_phone_symbols_black};
    private static final int[] KBD_QWERTY = new int[]{R.xml.kbd_qwerty, R.xml.kbd_qwerty_black};
    private static final int[] KBD_QWERTY_BANGLA = new int[]{R.xml.kbd_qwerty_bangla, R.xml.kbd_qwerty_bangla_black};
    private static final int[] KBD_QWERTY_BANGLA_ASCII = new int[]{R.xml.kbd_qwerty_bangla_ascii, R.xml.kbd_qwerty_bangla_black};
    private static final int[] KBD_SMILEY = new int[]{R.xml.kbd_smileys1, R.xml.kbd_smileys2, R.xml.kbd_smileys3};
    private static final int[] KBD_SYMBOLS = new int[]{R.xml.kbd_symbols, R.xml.kbd_symbols_black};
    private static final int KBD_SYMBOLS_ASCII = 2131034132;
    private static final int KBD_SYMBOLS_BANGLA_ASCII = 2131034133;
    private static final int[] KBD_SYMBOLS_SHIFT = new int[]{R.xml.kbd_symbols_shift, R.xml.kbd_symbols_shift_black};
    private static final int KBD_SYMBOLS_SHIFT_ASCII = 2131034136;
    public static final int KEYBOARDMODE_EMAIL = 2131689508;
    public static final int KEYBOARDMODE_EMAIL_WITH_SETTINGS_KEY = 2131689513;
    public static final int KEYBOARDMODE_IM = 2131689509;
    public static final int KEYBOARDMODE_IM_WITH_SETTINGS_KEY = 2131689514;
    public static final int KEYBOARDMODE_NORMAL = 2131689506;
    public static final int KEYBOARDMODE_NORMAL_WITH_SETTINGS_KEY = 2131689511;
    public static final int KEYBOARDMODE_SYMBOLS = 2131689516;
    public static final int KEYBOARDMODE_SYMBOLS_WITH_SETTINGS_KEY = 2131689517;
    public static final int KEYBOARDMODE_URL = 2131689507;
    public static final int KEYBOARDMODE_URL_WITH_SETTINGS_KEY = 2131689512;
    public static final int KEYBOARDMODE_WEB = 2131689510;
    public static final int KEYBOARDMODE_WEB_WITH_SETTINGS_KEY = 2131689515;
    public static final int MODE_EMAIL = 5;
    public static final int MODE_FIXED_BANGLA = 11;
    public static final int MODE_FIXED_BANGLA_SHIFTED = 12;
    public static final int MODE_IM = 6;
    public static final int MODE_NONE = 0;
    public static final int MODE_PHONE = 3;
    public static final int MODE_SMILEY1 = 8;
    public static final int MODE_SMILEY2 = 9;
    public static final int MODE_SMILEY3 = 10;
    public static final int MODE_SYMBOLS = 2;
    public static final int MODE_TEXT = 1;
    public static final int MODE_URL = 4;
    public static final int MODE_WEB = 7;
    public static final int NATIONAL_LAYOUT = 2;
    public static final String PREF_KEYBOARD_LAYOUT = "pref_keyboard_layout100";
    private static final int SETTINGS_KEY_MODE_ALWAYS_SHOW = 2131165313;
    private static final int SETTINGS_KEY_MODE_AUTO = 2131165312;
    private static final int[] THEMES = new int[]{R.layout.input_ics, R.layout.input_iphone, R.layout.input_ridmik_blue, R.layout.input_lolipop, R.layout.input_lolipop_light};
    public static final int UNIJOY_LAYOUT = 1;
    private static final KeyboardSwitcher sInstance = new KeyboardSwitcher();
    private int mAutoModeSwitchState = 0;
    private KeyboardId mCurrentId;
    private boolean mHasSettingsKey;
    private boolean mHasVoice;
    private int mImeOptions;
    private Locale mInputLocale;
    private LatinIME mInputMethodService;
    private LatinKeyboardView mInputView;
    private boolean mIsAutoCompletionActive;
    private boolean mIsSymbols;
    private final HashMap<KeyboardId, SoftReference<LatinKeyboard>> mKeyboards = new HashMap();
    private LanguageSwitcher mLanguageSwitcher;
    private int mLastDisplayWidth;
    private int mLayoutId;
    private int mMode = 0;
    private boolean mPreferSymbols;
    private KeyboardId mSymbolsId;
    private KeyboardId mSymbolsShiftedId;
    private boolean mVoiceOnPrimary;
    private int prevMode = 0;

    private static class KeyboardId {
        public final boolean mEnableShiftLock;
        public final boolean mHasVoice;
        private final int mHashCode;
        public final int mKeyboardMode;
        public final int mXml;

        public KeyboardId(int xml, int mode, boolean enableShiftLock, boolean hasVoice) {
            this.mXml = xml;
            this.mKeyboardMode = mode;
            this.mEnableShiftLock = enableShiftLock;
            this.mHasVoice = hasVoice;
            this.mHashCode = Arrays.hashCode(new Object[]{Integer.valueOf(xml), Integer.valueOf(mode), Boolean.valueOf(enableShiftLock), Boolean.valueOf(hasVoice)});
        }

        public KeyboardId(int xml, boolean hasVoice) {
            this(xml, 0, false, hasVoice);
        }

        public boolean equals(Object other) {
            return (other instanceof KeyboardId) && equals((KeyboardId) other);
        }

        private boolean equals(KeyboardId other) {
            return other.mXml == this.mXml && other.mKeyboardMode == this.mKeyboardMode && other.mEnableShiftLock == this.mEnableShiftLock && other.mHasVoice == this.mHasVoice;
        }

        public int hashCode() {
            return this.mHashCode;
        }
    }

    public static KeyboardSwitcher getInstance() {
        return sInstance;
    }

    private KeyboardSwitcher() {
    }

    private boolean useAsciiLayout() {
        return LatinIME.useBanglaFont();
    }

    public void manageSmileyKeyboard(int primaryCode) {
        if (primaryCode == LatinIME.SMILEY_KEYBOARD_1) {
            if (this.prevMode == 0) {
                this.prevMode = this.mMode;
            }
            setKeyboardMode(8, this.mImeOptions, this.mHasVoice);
        } else if (primaryCode == LatinIME.SMILEY_TO_MAIN) {
            if (LatinIME.langNow == 3) {
                setKeyboardMode(11, this.mImeOptions, this.mHasVoice, false);
            } else {
                setKeyboardMode(this.prevMode, this.mImeOptions, this.mHasVoice, false);
            }
            this.prevMode = 0;
        } else if (primaryCode == LatinIME.SMILEY_KEYBOARD_2) {
            setKeyboardMode(9, this.mImeOptions, this.mHasVoice);
        } else if (primaryCode == LatinIME.SMILEY_KEYBOARD_3) {
            setKeyboardMode(10, this.mImeOptions, this.mHasVoice);
        }
    }

    public static void init(LatinIME ims) {
        sInstance.mInputMethodService = ims;
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(ims);
        sInstance.mLayoutId = Integer.valueOf(prefs.getString(PREF_KEYBOARD_LAYOUT, DEFAULT_LAYOUT_ID)).intValue();
        sInstance.updateSettingsKeyState(prefs);
        prefs.registerOnSharedPreferenceChangeListener(sInstance);
        sInstance.mSymbolsId = sInstance.makeSymbolsId(false);
        sInstance.mSymbolsShiftedId = sInstance.makeSymbolsShiftedId(false);
    }

    public void setLanguageSwitcher(LanguageSwitcher languageSwitcher) {
        this.mLanguageSwitcher = languageSwitcher;
        this.mInputLocale = this.mLanguageSwitcher.getInputLocale();
    }

    private KeyboardId makeSymbolsId(boolean hasVoice) {
        int i = 2131689517;
        if (!useAsciiLayout()) {
            int i2 = KBD_SYMBOLS[getCharColorId()];
            if (!this.mHasSettingsKey) {
                i = 2131689516;
            }
            return new KeyboardId(i2, i, false, hasVoice);
        } else if (LatinIME.langNow == 2) {
            if (!this.mHasSettingsKey) {
                i = 2131689516;
            }
            return new KeyboardId(2131034132, i, false, hasVoice);
        } else {
            if (!this.mHasSettingsKey) {
                i = 2131689516;
            }
            return new KeyboardId(2131034133, i, false, hasVoice);
        }
    }

    private KeyboardId makeSymbolsShiftedId(boolean hasVoice) {
        int i = 2131689517;
        if (useAsciiLayout()) {
            if (!this.mHasSettingsKey) {
                i = 2131689516;
            }
            return new KeyboardId(2131034136, i, false, hasVoice);
        }
        int i2 = KBD_SYMBOLS_SHIFT[getCharColorId()];
        if (!this.mHasSettingsKey) {
            i = 2131689516;
        }
        return new KeyboardId(i2, i, false, hasVoice);
    }

    public void makeKeyboards(boolean forceCreate) {
        boolean z;
        boolean z2 = true;
        if (!this.mHasVoice || this.mVoiceOnPrimary) {
            z = false;
        } else {
            z = true;
        }
        this.mSymbolsId = makeSymbolsId(z);
        if (!this.mHasVoice || this.mVoiceOnPrimary) {
            z2 = false;
        }
        this.mSymbolsShiftedId = makeSymbolsShiftedId(z2);
        if (forceCreate) {
            this.mKeyboards.clear();
        }
        int displayWidth = this.mInputMethodService.getMaxWidth();
        if (displayWidth != this.mLastDisplayWidth) {
            this.mLastDisplayWidth = displayWidth;
            if (!forceCreate) {
                this.mKeyboards.clear();
            }
        }
    }

    public int getLayoutId() {
        return this.mLayoutId;
    }

    public void setVoiceMode(boolean enableVoice, boolean voiceOnPrimary) {
        if (!(enableVoice == this.mHasVoice && voiceOnPrimary == this.mVoiceOnPrimary)) {
            this.mKeyboards.clear();
        }
        this.mHasVoice = enableVoice;
        this.mVoiceOnPrimary = voiceOnPrimary;
        setKeyboardMode(this.mMode, this.mImeOptions, this.mHasVoice, this.mIsSymbols);
    }

    private boolean hasVoiceButton(boolean isSymbols) {
        return this.mHasVoice && isSymbols != this.mVoiceOnPrimary;
    }

    public void setKeyboardMode(int mode, int imeOptions, boolean enableVoice) {
        boolean z = false;
        this.mAutoModeSwitchState = 0;
        if (mode == 2) {
            z = true;
        }
        this.mPreferSymbols = z;
        if (mode == 2) {
            mode = 1;
        }
        try {
            setKeyboardMode(mode, imeOptions, enableVoice, this.mPreferSymbols);
        } catch (RuntimeException e) {
            LatinImeLogger.logOnException(new StringBuilder(String.valueOf(mode)).append(",").append(imeOptions).append(",").append(this.mPreferSymbols).toString(), e);
        }
    }

    private void setKeyboardMode(int mode, int imeOptions, boolean enableVoice, boolean isSymbols) {
        if (this.mInputView != null) {
            if (!(mode == 11 || mode == 8 || mode == 3 || mode == 9 || mode == 10 || mode == 12)) {
                this.mMode = mode;
            }
            this.mImeOptions = imeOptions;
            if (enableVoice != this.mHasVoice) {
                setVoiceMode(enableVoice, this.mVoiceOnPrimary);
            }
            this.mIsSymbols = isSymbols;
            this.mInputView.setPreviewEnabled(this.mInputMethodService.getPopupOn());
            KeyboardId id = getKeyboardId(mode, imeOptions, isSymbols);
            LatinKeyboard keyboard = getKeyboard(id);
            if (mode == 3) {
                this.mInputView.setPhoneKeyboard(keyboard);
            }
            this.mCurrentId = id;
            this.mInputView.setKeyboard(keyboard);
            keyboard.setShifted(false);
            keyboard.setThemeIndex(this.mLayoutId);
            keyboard.setShiftLocked(keyboard.isShiftLocked());
            keyboard.setImeOptions(this.mInputMethodService.getResources(), this.mMode, imeOptions);
            keyboard.setColorOfSymbolIcons(this.mIsAutoCompletionActive, isBlackSym());
            updateSettingsKeyState(PreferenceManager.getDefaultSharedPreferences(this.mInputMethodService));
        }
    }

    private LatinKeyboard getKeyboard(KeyboardId id) {
        SoftReference<LatinKeyboard> ref = (SoftReference) this.mKeyboards.get(id);
        LatinKeyboard keyboard = ref == null ? null : (LatinKeyboard) ref.get();
        if (keyboard == null) {
            Resources orig = this.mInputMethodService.getResources();
            Configuration conf = orig.getConfiguration();
            Locale saveLocale = conf.locale;
            conf.locale = this.mInputLocale;
            orig.updateConfiguration(conf, null);
            keyboard = new LatinKeyboard(this.mInputMethodService, id.mXml, id.mKeyboardMode, this.mInputMethodService.getKeyboardHeightPercentage());
            boolean z = id.mXml == R.xml.kbd_symbols || id.mXml == R.xml.kbd_symbols_black || id.mXml == 2131034132 || id.mXml == 2131034133;
            keyboard.setVoiceMode(hasVoiceButton(z), this.mHasVoice);
            keyboard.setLanguageSwitcher(this.mLanguageSwitcher, this.mIsAutoCompletionActive, isBlackSym());
            if (id.mEnableShiftLock) {
                keyboard.enableShiftLock();
            }
            this.mKeyboards.put(id, new SoftReference(keyboard));
            conf.locale = saveLocale;
            orig.updateConfiguration(conf, null);
        }
        return keyboard;
    }

    private KeyboardId getKeyboardId(int mode, int imeOptions, boolean isSymbols) {
        int i = 2131689517;
        boolean hasVoice = hasVoiceButton(isSymbols);
        int charColorId = getCharColorId();
        int keyboardRowsResId = KBD_QWERTY[0];
        if (LatinIME.langNow == 1) {
            if (useAsciiLayout()) {
                keyboardRowsResId = KBD_QWERTY_BANGLA_ASCII[0];
            } else {
                keyboardRowsResId = KBD_QWERTY_BANGLA[0];
            }
        }
        int i2;
        if (!isSymbols) {
            this.mHasSettingsKey = false;
            switch (mode) {
                case 0:
                    LatinImeLogger.logOnWarning("getKeyboardId:" + mode + "," + imeOptions + "," + isSymbols);
                    break;
                case 1:
                    break;
                case 2:
                    if (useAsciiLayout()) {
                        if (!this.mHasSettingsKey) {
                            i = 2131689516;
                        }
                        return new KeyboardId(2131034132, i, false, hasVoice);
                    }
                    i2 = KBD_SYMBOLS[charColorId];
                    if (!this.mHasSettingsKey) {
                        i = 2131689516;
                    }
                    return new KeyboardId(i2, i, false, hasVoice);
                case 3:
                    return new KeyboardId(KBD_PHONE[charColorId], hasVoice);
                case 4:
                    return new KeyboardId(keyboardRowsResId, this.mHasSettingsKey ? 2131689512 : 2131689507, true, hasVoice);
                case 5:
                    return new KeyboardId(keyboardRowsResId, this.mHasSettingsKey ? 2131689513 : 2131689508, true, hasVoice);
                case 6:
                    return new KeyboardId(keyboardRowsResId, this.mHasSettingsKey ? 2131689514 : 2131689509, true, hasVoice);
                case 7:
                    return new KeyboardId(keyboardRowsResId, this.mHasSettingsKey ? 2131689515 : 2131689510, true, hasVoice);
                case 8:
                    return new KeyboardId(KBD_SMILEY[0], 2131689506, false, hasVoice);
                case 9:
                    return new KeyboardId(KBD_SMILEY[1], 2131689506, false, hasVoice);
                case 10:
                    return new KeyboardId(KBD_SMILEY[2], 2131689506, false, hasVoice);
                case 11:
                    int xmlResId = 0;
                    if (CURRENT_FIXED_LAYOUT == 1) {
                        if (useAsciiLayout()) {
                            xmlResId = R.xml.kbd_unijoy_ascii;
                        } else {
                            xmlResId = R.xml.kbd_unijoy;
                        }
                    } else if (CURRENT_FIXED_LAYOUT == 2) {
                        if (useAsciiLayout()) {
                            xmlResId = R.xml.kbd_national_ascii;
                        } else {
                            xmlResId = R.xml.kbd_national;
                        }
                    }
                    return new KeyboardId(xmlResId, 2131689506, false, hasVoice);
                case 12:
                    int xmlResId1 = 0;
                    if (CURRENT_FIXED_LAYOUT == 1) {
                        if (useAsciiLayout()) {
                            xmlResId1 = R.xml.kbd_unijoy_shift_ascii;
                        } else {
                            xmlResId1 = R.xml.kbd_unijoy_shift;
                        }
                    } else if (CURRENT_FIXED_LAYOUT == 2) {
                        if (useAsciiLayout()) {
                            xmlResId1 = R.xml.kbd_national_shift_ascii;
                        } else {
                            xmlResId1 = R.xml.kbd_national_shift;
                        }
                    }
                    return new KeyboardId(xmlResId1, 2131689506, false, hasVoice);
                default:
                    return null;
            }
            if (this.mHasSettingsKey) {
                i = 2131689511;
            } else {
                i = 2131689506;
            }
            return new KeyboardId(keyboardRowsResId, i, true, hasVoice);
        } else if (mode == 3) {
            return new KeyboardId(KBD_PHONE_SYMBOLS[charColorId], hasVoice);
        } else {
            if (!useAsciiLayout()) {
                i2 = KBD_SYMBOLS[charColorId];
                if (!this.mHasSettingsKey) {
                    i = 2131689516;
                }
                return new KeyboardId(i2, i, false, hasVoice);
            } else if (LatinIME.langNow == 2) {
                if (!this.mHasSettingsKey) {
                    i = 2131689516;
                }
                return new KeyboardId(2131034132, i, false, hasVoice);
            } else {
                if (!this.mHasSettingsKey) {
                    i = 2131689516;
                }
                return new KeyboardId(2131034133, i, false, hasVoice);
            }
        }
    }

    public void setFixedKeyboard(int primaryCode) {
        if (primaryCode == LatinIME.FIXED_BANGLA_NORMAL) {
            setKeyboardMode(11, this.mImeOptions, this.mHasVoice);
        } else if (primaryCode == LatinIME.FIXED_BANGLA_SHIFTED) {
            setKeyboardMode(12, this.mImeOptions, this.mHasVoice);
        }
    }

    public int getKeyboardMode() {
        if (this.prevMode == 0) {
            return this.mMode;
        }
        return this.prevMode;
    }

    public boolean isAlphabetMode() {
        if (this.mCurrentId == null) {
            return false;
        }
        int currentMode = this.mCurrentId.mKeyboardMode;
        for (int valueOf : ALPHABET_MODES) {
            if (currentMode == Integer.valueOf(valueOf).intValue()) {
                return true;
            }
        }
        return false;
    }

    public void setShifted(boolean shifted) {
        if (this.mInputView != null) {
            this.mInputView.setShifted(shifted);
        }
    }

    public void setShiftLocked(boolean shiftLocked) {
        if (this.mInputView != null) {
            this.mInputView.setShiftLocked(shiftLocked);
        }
    }

    public void toggleShift() {
        if (!isAlphabetMode()) {
            if (this.mCurrentId.equals(this.mSymbolsId) || !this.mCurrentId.equals(this.mSymbolsShiftedId)) {
                LatinKeyboard symbolsShiftedKeyboard = getKeyboard(this.mSymbolsShiftedId);
                this.mCurrentId = this.mSymbolsShiftedId;
                this.mInputView.setKeyboard(symbolsShiftedKeyboard);
                symbolsShiftedKeyboard.enableShiftLock();
                symbolsShiftedKeyboard.setShiftLocked(true);
                symbolsShiftedKeyboard.setImeOptions(this.mInputMethodService.getResources(), this.mMode, this.mImeOptions);
                return;
            }
            LatinKeyboard symbolsKeyboard = getKeyboard(this.mSymbolsId);
            this.mCurrentId = this.mSymbolsId;
            this.mInputView.setKeyboard(symbolsKeyboard);
            symbolsKeyboard.enableShiftLock();
            symbolsKeyboard.setShifted(false);
            symbolsKeyboard.setImeOptions(this.mInputMethodService.getResources(), this.mMode, this.mImeOptions);
        }
    }

    public void onCancelInput() {
        if (this.mAutoModeSwitchState == 3 && getPointerCount() == 1) {
            this.mInputMethodService.changeKeyboardMode();
        }
    }

    public void toggleSymbols() {
        if (LatinIME.langNow == 3 && this.mIsSymbols) {
            setKeyboardMode(11, this.mImeOptions, this.mHasVoice, !this.mIsSymbols);
        } else {
            setKeyboardMode(this.mMode, this.mImeOptions, this.mHasVoice, !this.mIsSymbols);
        }
        if (!this.mIsSymbols || this.mPreferSymbols) {
            this.mAutoModeSwitchState = 0;
        } else {
            this.mAutoModeSwitchState = 1;
        }
    }

    public boolean hasDistinctMultitouch() {
        return this.mInputView != null && this.mInputView.hasDistinctMultitouch();
    }

    public void setAutoModeSwitchStateMomentary() {
        this.mAutoModeSwitchState = 3;
    }

    public boolean isInMomentaryAutoModeSwitchState() {
        return this.mAutoModeSwitchState == 3;
    }

    public boolean isInChordingAutoModeSwitchState() {
        return this.mAutoModeSwitchState == 4;
    }

    public boolean isVibrateAndSoundFeedbackRequired() {
        return (this.mInputView == null || this.mInputView.isInSlidingKeyInput()) ? false : true;
    }

    private int getPointerCount() {
        return this.mInputView == null ? 0 : this.mInputView.getPointerCount();
    }

    public void onKey(int key) {
        switch (this.mAutoModeSwitchState) {
            case 1:
                if (key != 32 && key != 10 && key >= 0) {
                    this.mAutoModeSwitchState = 2;
                    return;
                }
                return;
            case 2:
                if (key == 10 || key == 32) {
                    this.mInputMethodService.changeKeyboardMode();
                    return;
                }
                return;
            case 3:
                if (key == -2) {
                    if (this.mIsSymbols) {
                        this.mAutoModeSwitchState = 1;
                        return;
                    } else {
                        this.mAutoModeSwitchState = 0;
                        return;
                    }
                } else if (getPointerCount() == 1) {
                    this.mInputMethodService.changeKeyboardMode();
                    return;
                } else {
                    this.mAutoModeSwitchState = 4;
                    return;
                }
            default:
                return;
        }
    }

    public LatinKeyboardView getInputView() {
        return this.mInputView;
    }

    public void recreateInputView() {
        changeLatinKeyboardView(this.mLayoutId, true);
    }

    private void changeLatinKeyboardView(int newLayout, boolean forceReset) {
        if (this.mLayoutId != newLayout || this.mInputView == null || forceReset) {
            if (this.mInputView != null) {
                this.mInputView.closing();
            }
            if (THEMES.length <= newLayout) {
                newLayout = Integer.valueOf(DEFAULT_LAYOUT_ID).intValue();
            }
            GCUtils.getInstance().reset();
            boolean tryGC = true;
            for (int i = 0; i < 5 && tryGC; i++) {
                try {
                    this.mInputView = (LatinKeyboardView) this.mInputMethodService.getLayoutInflater().inflate(THEMES[newLayout], null);
                    tryGC = false;
                } catch (OutOfMemoryError e) {
                    tryGC = GCUtils.getInstance().tryGCOrWait(this.mLayoutId + "," + newLayout, e);
                } catch (InflateException e2) {
                    tryGC = GCUtils.getInstance().tryGCOrWait(this.mLayoutId + "," + newLayout, e2);
                }
            }
            this.mInputView.setOnKeyboardActionListener(this.mInputMethodService);
            this.mInputView.setThemeIndex(newLayout);
            this.mLayoutId = newLayout;
        }
        this.mInputMethodService.mHandler.post(new Runnable() {
            public void run() {
                if (KeyboardSwitcher.this.mInputView != null) {
                    ViewParent p = KeyboardSwitcher.this.mInputView.getParent();
                    if (p != null && (p instanceof ViewGroup)) {
                        ((ViewGroup) KeyboardSwitcher.this.mInputView.getParent()).removeView(KeyboardSwitcher.this.mInputView);
                    }
                    KeyboardSwitcher.this.mInputMethodService.setInputView(KeyboardSwitcher.this.mInputView);
                }
                KeyboardSwitcher.this.mInputMethodService.updateInputViewShown();
            }
        });
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {
        if (PREF_KEYBOARD_LAYOUT.equals(key)) {
            changeLatinKeyboardView(Integer.valueOf(sharedPreferences.getString(key, DEFAULT_LAYOUT_ID)).intValue(), false);
        } else if ("settings_key".equals(key)) {
            updateSettingsKeyState(sharedPreferences);
            recreateInputView();
        }
    }

    public boolean isBlackSym() {
        if (this.mInputView == null || this.mInputView.getSymbolColorScheme() != 1) {
            return false;
        }
        return true;
    }

    private int getCharColorId() {
        if (isBlackSym()) {
            return 1;
        }
        return 0;
    }

    public void onAutoCompletionStateChanged(boolean isAutoCompletion) {
        if (isAutoCompletion != this.mIsAutoCompletionActive) {
            LatinKeyboardView keyboardView = getInputView();
            this.mIsAutoCompletionActive = isAutoCompletion;
            keyboardView.invalidateKey(((LatinKeyboard) keyboardView.getKeyboard()).onAutoCompletionStateChanged(isAutoCompletion));
        }
    }

    private void updateSettingsKeyState(SharedPreferences prefs) {
        Resources resources = this.mInputMethodService.getResources();
        String settingsKeyMode = prefs.getString("settings_key", resources.getString(R.string.settings_key_mode_auto));
        if (settingsKeyMode.equals(resources.getString(2131165313)) || (settingsKeyMode.equals(resources.getString(R.string.settings_key_mode_auto)) && LatinIMEUtil.hasMultipleEnabledIMEs(this.mInputMethodService))) {
            this.mHasSettingsKey = true;
        } else {
            this.mHasSettingsKey = false;
        }
    }
}
