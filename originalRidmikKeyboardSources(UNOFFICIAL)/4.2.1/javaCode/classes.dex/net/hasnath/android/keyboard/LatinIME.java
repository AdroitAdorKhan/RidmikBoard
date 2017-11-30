package net.hasnath.android.keyboard;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.inputmethodservice.InputMethodService;
import android.inputmethodservice.InputMethodService.Insets;
import android.media.AudioManager;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.preference.PreferenceActivity;
import android.preference.PreferenceManager;
import android.speech.SpeechRecognizer;
import android.support.v4.content.IntentCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.text.ClipboardManager;
import android.text.TextUtils;
import android.util.Log;
import android.util.PrintWriterPrinter;
import android.util.Printer;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import android.widget.Toast;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import net.hasnath.android.habijabi.WebViewActivity;
import net.hasnath.android.keyboard.EditingUtil.Range;
import net.hasnath.android.keyboard.EditingUtil.SelectedWord;
import net.hasnath.android.keyboard.Hints.Display;
import net.hasnath.android.keyboard.LatinIMEUtil.GCUtils;
import net.hasnath.android.keyboard.LatinKeyboardBaseView.OnKeyboardActionListener;
import net.hasnath.android.keyboard.TextEntryState.State;
import net.hasnath.android.ridmik.voice.FieldContext;
import net.hasnath.android.ridmik.voice.LoggingEvents;
import net.hasnath.android.ridmik.voice.LoggingEvents.VoiceIme;
import net.hasnath.android.ridmik.voice.SettingsUtil;
import net.hasnath.android.ridmik.voice.VoiceInput;
import net.hasnath.android.ridmik.voice.VoiceInput.UiListener;
import net.hasnath.ridmikparser.RidmikParser;
import ridmik.keyboard.R;

public class LatinIME extends InputMethodService implements OnKeyboardActionListener, UiListener, OnSharedPreferenceChangeListener {
    private static /* synthetic */ int[] $SWITCH_TABLE$net$hasnath$android$keyboard$TextEntryState$State = null;
    public static final int BANGLA = 1;
    public static final String BANGLA_ASCII_FONT = "Ridmik.ttf";
    public static final String BANGLA_UNICODE_FONT = "Siyamrupali.ttf";
    public static final int CONTROL_C = -945;
    public static final int CONTROL_V = -946;
    public static final int CONTROL_X = -947;
    private static final int CPS_BUFFER_SIZE = 16;
    public static int CURRENT_TOGGLER = 3;
    public static boolean CUT_COPY_PASTE = false;
    static final boolean DEBUG = true;
    public static final String DEFAULT_VOICE_INPUT_SUPPORTED_LOCALES = "en en_US en_GB en_AU en_CA en_IE en_IN en_NZ en_SG en_ZA ";
    private static final int DELETE_ACCELERATE_AT = 20;
    private static final int DOUBLE_SPACE_PERIOD_TIME_DELAY = 800;
    static final boolean ENABLE_VOICE_BUTTON = true;
    public static final int ENGLISH = 2;
    public static final int FIXED = 3;
    public static final int FIXED_BANGLA_NORMAL = -433;
    public static final int FIXED_BANGLA_SHIFTED = -434;
    public static int FONT_SETTINGS = 3;
    private static final int FREQUENCY_FOR_MYDIC = 150;
    private static final String IME_OPTION_NO_MICROPHONE = "nm";
    static final int KEYCODE_ENTER = 10;
    static final int KEYCODE_PERIOD = 46;
    static final int KEYCODE_SPACE = 32;
    public static int LOLIPOP_THEME_INDEX = 3;
    public static final int LONG_PRESSED_ENTER_FOR_CANDIDATE = -349;
    private static final int MSG_SPACE_TYPED = 5;
    private static final int MSG_START_TUTORIAL = 1;
    private static final int MSG_UPDATE_OLD_SUGGESTIONS = 4;
    private static final int MSG_UPDATE_SHIFT_STATE = 2;
    private static final int MSG_UPDATE_SUGGESTIONS = 0;
    private static final int MSG_VOICE_RESULTS = 3;
    private static final boolean PERF_DEBUG = false;
    private static final int POS_KEYMAP = 1;
    private static final int POS_METHOD = 0;
    private static final int POS_SETTINGS = 2;
    private static final String PREF_AUTO_CAP = "auto_cap";
    private static final String PREF_AUTO_COMPLETE = "auto_complete";
    private static final String PREF_HAS_USED_VOICE_INPUT = "has_used_voice_input";
    private static final String PREF_HAS_USED_VOICE_INPUT_UNSUPPORTED_LOCALE = "has_used_voice_input_unsupported_locale";
    private static final String PREF_HEIGHT_LANDSCAPE = "settings_height_landscape";
    private static final String PREF_HEIGHT_PORTRAIT = "settings_height_portrait";
    public static final String PREF_INPUT_LANGUAGE = "input_language";
    private static final String PREF_OBEY_HAPTIC = "obey_haptic";
    private static final String PREF_POPUP_ON = "popup_on";
    private static final String PREF_QUICK_FIXES = "quick_fixes";
    private static final String PREF_RECORRECTION_ENABLED = "recorrection_enabled";
    public static final String PREF_SELECTED_LANGUAGES = "selected_languages";
    private static final String PREF_SHOW_SUGGESTIONS = "show_suggestions";
    private static final String PREF_SOUND_ON = "sound_on";
    private static final String PREF_VIBRATE_ON = "vibrate_on";
    private static final String PREF_VOICE_MODE = "voice_mode";
    public static final String PREF_VOLUME_KEYS_AS_CURSOR = "volume_cursor";
    private static final int QUICK_PRESS = 200;
    public static final int SMILEY_KEYBOARD_1 = -331;
    public static final int SMILEY_KEYBOARD_2 = -332;
    public static final int SMILEY_KEYBOARD_3 = -333;
    public static final int SMILEY_TO_MAIN = -234;
    private static final String TAG = "LatinIME";
    static final boolean TRACE = false;
    static final boolean VOICE_INSTALLED = true;
    public static int langNow = 1;
    public static boolean shiftedBangla = false;
    private float FX_VOLUME = -1.0f;
    String bComposing = LoggingEvents.EXTRA_CALLING_APP_NAME;
    private boolean isHardwareKeyboardEnabled;
    private int keyboardLandscapeHeightPercentage = 100;
    private int keyboardPortraitHeightPercentage = 100;
    private boolean learnWordAsTyping = true;
    private boolean mAfterVoiceInput;
    private AudioManager mAudioManager;
    private boolean mAutoCap;
    private boolean mAutoCorrectEnabled;
    private boolean mAutoCorrectOn;
    private boolean mAutoSpace;
    private CharSequence mBestWord;
    private final boolean mBigramSuggestionEnabled = false;
    private CandidateView mCandidateView;
    private LinearLayout mCandidateViewContainer;
    private boolean mCapsLock;
    private int mCommittedLength;
    private boolean mCompletionOn;
    private CompletionInfo[] mCompletions;
    private StringBuilder mComposing = new StringBuilder();
    private boolean mConfigurationChanging;
    private int mCorrectionMode;
    private int mCpsIndex;
    private long[] mCpsIntervals = new long[16];
    private int mDeleteCount;
    private boolean mEnableVoice = true;
    private boolean mEnableVoiceButton;
    private boolean mEnableVolumeCursor;
    private CharSequence mEnteredText;
    public final Handler mHandler = new FooHandler(this);
    private boolean mHasDictionary;
    private boolean mHasUsedVoiceInput;
    private boolean mHasUsedVoiceInputUnsupportedLocale;
    private Hints mHints;
    private boolean mImmediatelyAfterVoiceInput;
    private String mInputLocale;
    private boolean mInputTypeNoAutoCorrect;
    private boolean mIsShowingHint;
    private boolean mJustAccepted;
    private boolean mJustAddedAutoSpace;
    private CharSequence mJustRevertedSeparator;
    KeyboardSwitcher mKeyboardSwitcher;
    private LanguageSwitcher mLanguageSwitcher;
    private long mLastCpsTime;
    private long mLastKeyTime;
    private int mLastSelectionEnd;
    private int mLastSelectionStart;
    private boolean mLocaleSupportedForVoiceInput;
    private int mLongPressDelay;
    private boolean mObeyHapticFeedback;
    private AlertDialog mOptionsDialog;
    private int mOrientation;
    private boolean mPasswordText;
    private boolean mPopupOn;
    private boolean mPredicting;
    private boolean mPredictionOn;
    private boolean mPuncSuggestion = false;
    private boolean mQuickFixes;
    private boolean mReCorrectionEnabled;
    private BroadcastReceiver mReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            LatinIME.this.updateRingerMode();
        }
    };
    private boolean mRecognizing;
    private boolean mRefreshKeyboardRequired;
    private Resources mResources;
    private String mSentenceSeparators;
    private ModifierKeyState mShiftKeyState = new ModifierKeyState();
    private boolean mShowCandidate = true;
    private boolean mShowSuggestions;
    private boolean mShowingVoiceSuggestions;
    private boolean mSilentMode;
    private boolean mSoundOn;
    private Suggest mSuggest;
    private List<CharSequence> mSuggestPuncList;
    private String mSuggestPuncs;
    private ModifierKeyState mSymbolKeyState = new ModifierKeyState();
    private String mSystemLocale;
    private Tutorial mTutorial;
    private boolean mVibrateOn;
    private VoiceInput mVoiceInput;
    private boolean mVoiceInputHighlighted;
    private boolean mVoiceOnPrimary;
    private VoiceResults mVoiceResults = new VoiceResults();
    private AlertDialog mVoiceWarningDialog;
    private WordComposer mWord = new WordComposer();
    private ArrayList<WordAlternatives> mWordHistory = new ArrayList();
    String mWordSeparators;
    private Map<String, List<CharSequence>> mWordToSuggestions = new HashMap();
    public RidmikParser parser;

    public static class FooHandler extends Handler {
        private final LatinIME outer;

        public FooHandler(LatinIME ot) {
            this.outer = ot;
        }

        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    this.outer.updateSuggestions();
                    return;
                case 1:
                    if (this.outer.mTutorial != null) {
                        return;
                    }
                    if (this.outer.mKeyboardSwitcher.getInputView().isShown()) {
                        this.outer.mTutorial = new Tutorial(this.outer, this.outer.mKeyboardSwitcher.getInputView());
                        this.outer.mTutorial.start();
                        return;
                    }
                    sendMessageDelayed(obtainMessage(1), 100);
                    return;
                case 2:
                    this.outer.updateShiftKeyState(this.outer.getCurrentInputEditorInfo());
                    return;
                case 3:
                    this.outer.handleVoiceResults();
                    return;
                case 4:
                    this.outer.setOldSuggestions();
                    return;
                default:
                    return;
            }
        }

        public void startDoubleSpacesTimer() {
            removeMessages(5);
            sendMessageDelayed(obtainMessage(5), 800);
        }

        public void cancelDoubleSpacesTimer() {
            removeMessages(5);
        }

        public boolean isAcceptingDoubleSpaces() {
            return hasMessages(5);
        }
    }

    private class VoiceResults {
        Map<String, List<CharSequence>> alternatives;
        List<String> candidates;

        private VoiceResults() {
        }
    }

    public static abstract class WordAlternatives {
        protected CharSequence mChosenWord;

        public abstract List<CharSequence> getAlternatives();

        public abstract CharSequence getOriginalWord();

        public WordAlternatives(CharSequence chosenWord) {
            this.mChosenWord = chosenWord;
        }

        public int hashCode() {
            return this.mChosenWord.hashCode();
        }

        public CharSequence getChosenWord() {
            return this.mChosenWord;
        }
    }

    public class TypedWordAlternatives extends WordAlternatives {
        private WordComposer word;

        public TypedWordAlternatives(CharSequence chosenWord, WordComposer wordComposer) {
            super(chosenWord);
            this.word = wordComposer;
        }

        public CharSequence getOriginalWord() {
            return this.word.getTypedWord();
        }

        public List<CharSequence> getAlternatives() {
            return LatinIME.this.getTypedSuggestions(this.word);
        }
    }

    static /* synthetic */ int[] $SWITCH_TABLE$net$hasnath$android$keyboard$TextEntryState$State() {
        int[] iArr = $SWITCH_TABLE$net$hasnath$android$keyboard$TextEntryState$State;
        if (iArr == null) {
            iArr = new int[State.values().length];
            try {
                iArr[State.ACCEPTED_DEFAULT.ordinal()] = 4;
            } catch (NoSuchFieldError e) {
            }
            try {
                iArr[State.CORRECTING.ordinal()] = 11;
            } catch (NoSuchFieldError e2) {
            }
            try {
                iArr[State.IN_WORD.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                iArr[State.PICKED_CORRECTION.ordinal()] = 12;
            } catch (NoSuchFieldError e4) {
            }
            try {
                iArr[State.PICKED_SUGGESTION.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                iArr[State.PUNCTUATION_AFTER_ACCEPTED.ordinal()] = 7;
            } catch (NoSuchFieldError e6) {
            }
            try {
                iArr[State.PUNCTUATION_AFTER_WORD.ordinal()] = 6;
            } catch (NoSuchFieldError e7) {
            }
            try {
                iArr[State.SPACE_AFTER_ACCEPTED.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                iArr[State.SPACE_AFTER_PICKED.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                iArr[State.START.ordinal()] = 2;
            } catch (NoSuchFieldError e10) {
            }
            try {
                iArr[State.UNDO_COMMIT.ordinal()] = 10;
            } catch (NoSuchFieldError e11) {
            }
            try {
                iArr[State.UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError e12) {
            }
            $SWITCH_TABLE$net$hasnath$android$keyboard$TextEntryState$State = iArr;
        }
        return iArr;
    }

    public boolean mQuicFixes() {
        return this.mQuickFixes;
    }

    public int getKeyboardHeightPercentage() {
        if (this.mOrientation == 1) {
            return this.keyboardPortraitHeightPercentage;
        }
        return this.keyboardLandscapeHeightPercentage;
    }

    public void onCreate() {
        LatinImeLogger.init(this);
        KeyboardSwitcher.init(this);
        super.onCreate();
        this.parser = new RidmikParser(this);
        this.mWord.bangla = LoggingEvents.EXTRA_CALLING_APP_NAME;
        this.mResources = getResources();
        Configuration conf = this.mResources.getConfiguration();
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(this);
        CURRENT_TOGGLER = Integer.valueOf(prefs.getString("pref_keyboard_layouts", "1")).intValue();
        if (langNow == 1 && CURRENT_TOGGLER == 2) {
            langNow = 3;
        } else if (langNow == 3 && CURRENT_TOGGLER == 3) {
            langNow = 1;
        }
        this.mLanguageSwitcher = new LanguageSwitcher(this);
        this.mLanguageSwitcher.loadLocales(prefs);
        this.mKeyboardSwitcher = KeyboardSwitcher.getInstance();
        this.mKeyboardSwitcher.setLanguageSwitcher(this.mLanguageSwitcher);
        this.mSystemLocale = conf.locale.toString();
        this.mLanguageSwitcher.setSystemLocale(conf.locale);
        String inputLanguage = this.mLanguageSwitcher.getInputLanguage();
        if (inputLanguage == null) {
            inputLanguage = conf.locale.toString();
        }
        this.mReCorrectionEnabled = prefs.getBoolean(PREF_RECORRECTION_ENABLED, getResources().getBoolean(R.bool.default_recorrection_enabled));
        this.mObeyHapticFeedback = prefs.getBoolean(PREF_OBEY_HAPTIC, false);
        this.mPuncSuggestion = prefs.getBoolean("punc_sugg", false);
        this.learnWordAsTyping = false;
        this.keyboardLandscapeHeightPercentage = (int) Float.valueOf(prefs.getString(PREF_HEIGHT_LANDSCAPE, "100")).floatValue();
        this.keyboardPortraitHeightPercentage = (int) Float.valueOf(prefs.getString(PREF_HEIGHT_PORTRAIT, "100")).floatValue();
        CUT_COPY_PASTE = prefs.getBoolean("cut_copy_paste", false);
        Suggest.suggestionFromContacts = prefs.getBoolean("contact_suggestion", false);
        KeyboardSwitcher.CURRENT_FIXED_LAYOUT = Integer.valueOf(prefs.getString("pref_bangla_fixed", "1")).intValue();
        GCUtils.getInstance().reset();
        boolean tryGC = true;
        for (int i = 0; i < 5 && tryGC; i++) {
            try {
                initSuggest(inputLanguage);
                tryGC = false;
            } catch (OutOfMemoryError e) {
                tryGC = GCUtils.getInstance().tryGCOrWait(inputLanguage, e);
            }
        }
        this.mOrientation = conf.orientation;
        initSuggestPuncList();
        registerReceiver(this.mReceiver, new IntentFilter("android.media.RINGER_MODE_CHANGED"));
        this.mVoiceInput = new VoiceInput(this, this);
        this.mHints = new Hints(this, new Display() {
            public void showHint(int viewResource) {
                LatinIME.this.setCandidatesView(((LayoutInflater) LatinIME.this.getSystemService("layout_inflater")).inflate(viewResource, null));
                LatinIME.this.setCandidatesViewShown(true);
                LatinIME.this.mIsShowingHint = true;
            }
        });
        prefs.registerOnSharedPreferenceChangeListener(this);
    }

    public static boolean useBanglaFont() {
        return FONT_SETTINGS == 2 || FONT_SETTINGS == 3;
    }

    public static boolean useBanglaFontInSuggestions() {
        return FONT_SETTINGS == 3;
    }

    static int[] getDictionary(Resources res) {
        int[] dict = new int[1];
        if (langNow == 1 || langNow == 3) {
            dict[0] = R.raw.words;
        } else {
            dict[0] = R.raw.main;
        }
        return dict;
    }

    private void initSuggest(String locale) {
        this.mInputLocale = locale;
        Resources orig = getResources();
        Configuration conf = orig.getConfiguration();
        Locale saveLocale = conf.locale;
        conf.locale = new Locale(locale);
        orig.updateConfiguration(conf, orig.getDisplayMetrics());
        if (this.mSuggest != null) {
            this.mSuggest.close();
        }
        this.mQuickFixes = PreferenceManager.getDefaultSharedPreferences(this).getBoolean(PREF_QUICK_FIXES, true);
        int[] dictionaries = getDictionary(orig);
        if (this.mSuggest != null) {
            this.mSuggest.close();
        }
        this.mSuggest = new Suggest(this, dictionaries);
        updateAutoTextEnabled(saveLocale);
        updateCorrectionMode();
        this.mWordSeparators = this.mResources.getString(R.string.word_separators);
        this.mSentenceSeparators = this.mResources.getString(R.string.sentence_separators);
        conf.locale = saveLocale;
        orig.updateConfiguration(conf, orig.getDisplayMetrics());
    }

    public void onDestroy() {
        unregisterReceiver(this.mReceiver);
        if (this.mVoiceInput != null) {
            this.mVoiceInput.destroy();
        }
        LatinImeLogger.commit();
        LatinImeLogger.onDestroy();
        super.onDestroy();
    }

    public void onConfigurationChanged(Configuration conf) {
        String systemLocale = conf.locale.toString();
        if (!TextUtils.equals(systemLocale, this.mSystemLocale)) {
            this.mSystemLocale = systemLocale;
            if (this.mLanguageSwitcher != null) {
                this.mLanguageSwitcher.loadLocales(PreferenceManager.getDefaultSharedPreferences(this));
                this.mLanguageSwitcher.setSystemLocale(conf.locale);
                toggleLanguage(true, true);
            } else {
                reloadKeyboards();
            }
        }
        if (conf.orientation != this.mOrientation) {
            InputConnection ic = getCurrentInputConnection();
            commitTyped(ic);
            if (ic != null) {
                ic.finishComposingText();
            }
            this.mOrientation = conf.orientation;
            reloadKeyboards();
        }
        this.mConfigurationChanging = true;
        super.onConfigurationChanged(conf);
        if (this.mRecognizing) {
            switchToRecognitionStatusView();
        }
        this.mConfigurationChanging = false;
        this.isHardwareKeyboardEnabled = isHardwareKeyboardAvailable();
    }

    public View onCreateInputView() {
        this.mKeyboardSwitcher.recreateInputView();
        this.mKeyboardSwitcher.makeKeyboards(true);
        this.mKeyboardSwitcher.setKeyboardMode(1, 0, shouldShowVoiceButton(makeFieldContext(), getCurrentInputEditorInfo()));
        return this.mKeyboardSwitcher.getInputView();
    }

    public View onCreateCandidatesView() {
        this.mKeyboardSwitcher.makeKeyboards(true);
        if (this.mKeyboardSwitcher.getLayoutId() == LOLIPOP_THEME_INDEX || this.mKeyboardSwitcher.getLayoutId() == LOLIPOP_THEME_INDEX + 1) {
            this.mCandidateViewContainer = (LinearLayout) getLayoutInflater().inflate(R.layout.candidates_lolipop, null);
        } else {
            this.mCandidateViewContainer = (LinearLayout) getLayoutInflater().inflate(R.layout.candidates, null);
        }
        this.mCandidateView = (CandidateView) this.mCandidateViewContainer.findViewById(R.id.candidates);
        this.mCandidateView.setService(this);
        setCandidatesViewShown(true);
        return this.mCandidateViewContainer;
    }

    public void onStartInputView(EditorInfo attribute, boolean restarting) {
        boolean z = true;
        LatinKeyboardView inputView = this.mKeyboardSwitcher.getInputView();
        if (inputView != null) {
            boolean enableVoiceButton;
            if (this.mRefreshKeyboardRequired) {
                this.mRefreshKeyboardRequired = false;
                toggleLanguage(true, true);
            }
            this.mKeyboardSwitcher.makeKeyboards(false);
            TextEntryState.newSession(this);
            this.mPasswordText = false;
            int variation = attribute.inputType & 4080;
            if (variation == 128 || variation == 144 || variation == 16 || variation == 224) {
                this.mPasswordText = true;
            }
            this.mEnableVoiceButton = shouldShowVoiceButton(makeFieldContext(), attribute);
            if (this.mEnableVoiceButton && this.mEnableVoice) {
                enableVoiceButton = true;
            } else {
                enableVoiceButton = false;
            }
            this.mAfterVoiceInput = false;
            this.mImmediatelyAfterVoiceInput = false;
            this.mShowingVoiceSuggestions = false;
            this.mVoiceInputHighlighted = false;
            this.mInputTypeNoAutoCorrect = false;
            this.mPredictionOn = false;
            this.mCompletionOn = false;
            this.mCompletions = null;
            this.mCapsLock = false;
            this.mEnteredText = null;
            boolean switchGo = true;
            if (langNow == 3 && (attribute.inputType & 15) != 3) {
                this.mKeyboardSwitcher.setKeyboardMode(11, attribute.imeOptions, enableVoiceButton);
                this.mPredictionOn = true;
                switchGo = false;
                if (variation == 128 || variation == 144) {
                    this.mPredictionOn = false;
                } else if (variation == 32) {
                    this.mPredictionOn = false;
                } else if (variation == 16) {
                    this.mPredictionOn = false;
                } else if (variation == 176) {
                    this.mPredictionOn = false;
                }
            }
            if (switchGo) {
                switch (attribute.inputType & 15) {
                    case 1:
                        this.mKeyboardSwitcher.setKeyboardMode(1, attribute.imeOptions, enableVoiceButton);
                        this.mPredictionOn = true;
                        if (variation == 128 || variation == 144 || variation == 16 || variation == 224) {
                            this.mPredictionOn = false;
                        }
                        if (variation == 32 || variation == 96) {
                            this.mAutoSpace = false;
                        } else {
                            this.mAutoSpace = true;
                        }
                        if (variation == 32) {
                            this.mPredictionOn = false;
                            this.mKeyboardSwitcher.setKeyboardMode(5, attribute.imeOptions, enableVoiceButton);
                        } else if (variation == 16) {
                            this.mPredictionOn = false;
                            this.mKeyboardSwitcher.setKeyboardMode(4, attribute.imeOptions, enableVoiceButton);
                        } else if (variation == 64) {
                            this.mKeyboardSwitcher.setKeyboardMode(6, attribute.imeOptions, enableVoiceButton);
                        } else if (variation == 176) {
                            this.mPredictionOn = false;
                        } else if (variation == 160) {
                            this.mKeyboardSwitcher.setKeyboardMode(7, attribute.imeOptions, enableVoiceButton);
                            if ((attribute.inputType & IntentCompat.FLAG_ACTIVITY_CLEAR_TASK) == 0) {
                                this.mInputTypeNoAutoCorrect = true;
                            }
                        }
                        if ((attribute.inputType & 524288) != 0) {
                            this.mPredictionOn = false;
                            this.mInputTypeNoAutoCorrect = true;
                        }
                        if ((attribute.inputType & IntentCompat.FLAG_ACTIVITY_CLEAR_TASK) == 0 && (attribute.inputType & 131072) == 0) {
                            this.mInputTypeNoAutoCorrect = true;
                        }
                        if ((attribute.inputType & 65536) != 0) {
                            this.mPredictionOn = false;
                            this.mCompletionOn = isFullscreenMode();
                            break;
                        }
                        break;
                    case 2:
                    case 3:
                    case 4:
                        this.mKeyboardSwitcher.setKeyboardMode(3, attribute.imeOptions, enableVoiceButton);
                        break;
                    default:
                        this.mKeyboardSwitcher.setKeyboardMode(1, attribute.imeOptions, enableVoiceButton);
                        break;
                }
            }
            inputView.closing();
            this.mComposing.setLength(0);
            this.bComposing = LoggingEvents.EXTRA_CALLING_APP_NAME;
            this.mWord.bangla = LoggingEvents.EXTRA_CALLING_APP_NAME;
            this.mPredicting = false;
            this.mDeleteCount = 0;
            this.mJustAddedAutoSpace = false;
            loadSettings();
            updateShiftKeyState(attribute);
            boolean z2 = isCandidateStripVisible() || this.mCompletionOn;
            setCandidatesViewShownInternal(z2, false);
            updateSuggestions();
            this.mHasDictionary = this.mSuggest.hasMainDictionary();
            updateCorrectionMode();
            inputView.setPreviewEnabled(this.mPopupOn);
            inputView.setLongPressDelay(this.mLongPressDelay);
            inputView.setProximityCorrectionEnabled(true);
            if (!this.mPredictionOn || (this.mCorrectionMode <= 0 && !this.mShowSuggestions)) {
                z = false;
            }
            this.mPredictionOn = z;
            checkReCorrectionOnStart();
            checkTutorial(attribute.privateImeOptions);
        }
    }

    private void checkReCorrectionOnStart() {
        if (this.mReCorrectionEnabled && isPredictionOn()) {
            InputConnection ic = getCurrentInputConnection();
            if (ic != null) {
                ExtractedTextRequest etr = new ExtractedTextRequest();
                etr.token = 0;
                ExtractedText et = ic.getExtractedText(etr, 0);
                if (et != null) {
                    this.mLastSelectionStart = et.startOffset + et.selectionStart;
                    this.mLastSelectionEnd = et.startOffset + et.selectionEnd;
                    if (!TextUtils.isEmpty(et.text) && isCursorTouchingWord()) {
                        postUpdateOldSuggestions();
                    }
                }
            }
        }
    }

    public void onWindowHidden() {
        super.onWindowHidden();
    }

    public void onFinishInput() {
        super.onFinishInput();
        LatinImeLogger.commit();
        onAutoCompletionStateChanged(false);
        if (!this.mConfigurationChanging) {
            if (this.mAfterVoiceInput) {
                this.mVoiceInput.flushAllTextModificationCounters();
                this.mVoiceInput.logInputEnded();
            }
            this.mVoiceInput.flushLogs();
            this.mVoiceInput.cancel();
        }
        if (this.mKeyboardSwitcher.getInputView() != null) {
            this.mKeyboardSwitcher.getInputView().closing();
        }
    }

    public void onFinishInputView(boolean finishingInput) {
        super.onFinishInputView(finishingInput);
        this.mHandler.removeMessages(0);
        this.mHandler.removeMessages(4);
    }

    public void onUpdateExtractedText(int token, ExtractedText text) {
        super.onUpdateExtractedText(token, text);
        InputConnection ic = getCurrentInputConnection();
        if (!this.mImmediatelyAfterVoiceInput && this.mAfterVoiceInput && ic != null && this.mHints.showPunctuationHintIfNecessary(ic)) {
            this.mVoiceInput.logPunctuationHintDisplayed();
        }
        this.mImmediatelyAfterVoiceInput = false;
    }

    public void onUpdateSelection(int oldSelStart, int oldSelEnd, int newSelStart, int newSelEnd, int candidatesStart, int candidatesEnd) {
        super.onUpdateSelection(oldSelStart, oldSelEnd, newSelStart, newSelEnd, candidatesStart, candidatesEnd);
        if (this.mAfterVoiceInput) {
            this.mVoiceInput.setCursorPos(newSelEnd);
            this.mVoiceInput.setSelectionSpan(newSelEnd - newSelStart);
        }
        if (((this.mComposing.length() > 0 && this.mPredicting) || this.mVoiceInputHighlighted) && ((newSelStart != candidatesEnd || newSelEnd != candidatesEnd) && this.mLastSelectionStart != newSelStart)) {
            this.mComposing.setLength(0);
            this.bComposing = LoggingEvents.EXTRA_CALLING_APP_NAME;
            this.mWord.bangla = LoggingEvents.EXTRA_CALLING_APP_NAME;
            this.mPredicting = false;
            postUpdateSuggestions();
            TextEntryState.reset();
            InputConnection ic = getCurrentInputConnection();
            if (ic != null) {
                ic.finishComposingText();
            }
            this.mVoiceInputHighlighted = false;
        } else if (!(this.mPredicting || this.mJustAccepted)) {
            switch ($SWITCH_TABLE$net$hasnath$android$keyboard$TextEntryState$State()[TextEntryState.getState().ordinal()]) {
                case 4:
                    TextEntryState.reset();
                    break;
                case 9:
                    break;
                default:
                    break;
            }
            this.mJustAddedAutoSpace = false;
        }
        this.mJustAccepted = false;
        postUpdateShiftKeyState();
        this.mLastSelectionStart = newSelStart;
        this.mLastSelectionEnd = newSelEnd;
        if (!this.mReCorrectionEnabled || this.mKeyboardSwitcher == null || this.mKeyboardSwitcher.getInputView() == null || !this.mKeyboardSwitcher.getInputView().isShown() || !isPredictionOn() || this.mJustRevertedSeparator != null) {
            return;
        }
        if (candidatesStart != candidatesEnd && newSelStart == oldSelStart && !TextEntryState.isCorrecting()) {
            return;
        }
        if ((newSelStart >= newSelEnd - 1 && this.mPredicting) || this.mVoiceInputHighlighted) {
            return;
        }
        if (isCursorTouchingWord() || this.mLastSelectionStart < this.mLastSelectionEnd) {
            postUpdateOldSuggestions();
            return;
        }
        abortCorrection(false);
        if (this.mCandidateView != null && !this.mSuggestPuncList.equals(this.mCandidateView.getSuggestions()) && !this.mCandidateView.isShowingAddToDictionaryHint()) {
            setNextSuggestions();
        }
    }

    public void onExtractedTextClicked() {
        if (!this.mReCorrectionEnabled || !isPredictionOn()) {
            super.onExtractedTextClicked();
        }
    }

    public void onExtractedCursorMovement(int dx, int dy) {
        if (!this.mReCorrectionEnabled || !isPredictionOn()) {
            super.onExtractedCursorMovement(dx, dy);
        }
    }

    public void hideWindow() {
        LatinImeLogger.commit();
        onAutoCompletionStateChanged(false);
        if (this.mOptionsDialog != null && this.mOptionsDialog.isShowing()) {
            this.mOptionsDialog.dismiss();
            this.mOptionsDialog = null;
        }
        if (!this.mConfigurationChanging) {
            if (this.mAfterVoiceInput) {
                this.mVoiceInput.logInputEnded();
            }
            if (this.mVoiceWarningDialog != null && this.mVoiceWarningDialog.isShowing()) {
                this.mVoiceInput.logKeyboardWarningDialogDismissed();
                this.mVoiceWarningDialog.dismiss();
                this.mVoiceWarningDialog = null;
            }
            if (this.mRecognizing) {
                this.mVoiceInput.cancel();
            }
        }
        this.mWordToSuggestions.clear();
        this.mWordHistory.clear();
        super.hideWindow();
        TextEntryState.endSession();
    }

    public void onDisplayCompletions(CompletionInfo[] completions) {
        Log.i("foo", "Received completions:");
        int i = 0;
        while (true) {
            int length;
            if (completions != null) {
                length = completions.length;
            } else {
                length = 0;
            }
            if (i >= length) {
                break;
            }
            Log.i("foo", "  #" + i + ": " + completions[i]);
            i++;
        }
        if (this.mCompletionOn) {
            this.mCompletions = completions;
            if (completions == null) {
                clearSuggestions();
                return;
            }
            List<CharSequence> stringList = new ArrayList();
            i = 0;
            while (true) {
                if (i >= (completions != null ? completions.length : 0)) {
                    setSuggestions(stringList, true, true, true);
                    this.mBestWord = null;
                    setCandidatesViewShown(this.mShowCandidate);
                    return;
                }
                CompletionInfo ci = completions[i];
                if (ci != null) {
                    stringList.add(ci.getText());
                }
                i++;
            }
        }
    }

    private void setCandidatesViewShownInternal(boolean shown, boolean needsInputViewShown) {
        if (onEvaluateInputViewShown()) {
            boolean z = shown && this.mKeyboardSwitcher.getInputView() != null && (!needsInputViewShown || this.mKeyboardSwitcher.getInputView().isShown());
            super.setCandidatesViewShown(z);
        }
    }

    public void setCandidatesViewShown(boolean shown) {
        if (shown) {
            this.mShowCandidate = true;
        } else {
            this.mShowCandidate = false;
        }
        setCandidatesViewShownInternal(shown, true);
    }

    public void onComputeInsets(Insets outInsets) {
        super.onComputeInsets(outInsets);
        if (!isFullscreenMode()) {
            outInsets.contentTopInsets = outInsets.visibleTopInsets;
        }
    }

    public boolean onEvaluateFullscreenMode() {
        if (((float) getResources().getDisplayMetrics().heightPixels) > getResources().getDimension(R.dimen.max_height_for_fullscreen)) {
            return false;
        }
        return super.onEvaluateFullscreenMode();
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (!this.isHardwareKeyboardEnabled) {
            switch (keyCode) {
                case 4:
                    if (event.getRepeatCount() == 0 && this.mKeyboardSwitcher.getInputView() != null) {
                        if (!this.mKeyboardSwitcher.getInputView().handleBack()) {
                            if (this.mTutorial != null) {
                                this.mTutorial.close();
                                this.mTutorial = null;
                                break;
                            }
                        }
                        return true;
                    }
                    break;
                case 19:
                case 20:
                case VoiceIme.IME_TEXT_ACCEPTED /*21*/:
                case 22:
                    if (this.mTutorial != null) {
                        return true;
                    }
                    break;
                case 24:
                case 25:
                    if (this.mKeyboardSwitcher.getInputView() != null && this.mKeyboardSwitcher.getInputView().isShown() && this.mEnableVolumeCursor) {
                        int i;
                        if (keyCode == 24) {
                            i = 22;
                        } else {
                            i = 21;
                        }
                        sendDownUpKeyEvents(i);
                        return true;
                    }
            }
        }
        if (event.getKeyCode() == 4) {
            return super.onKeyDown(keyCode, event);
        }
        if (!this.isHardwareKeyboardEnabled) {
            return super.onKeyDown(keyCode, event);
        }
        try {
            if (event.isCtrlPressed() || event.isAltPressed() || event.isFunctionPressed()) {
                return true;
            }
        } catch (NoSuchMethodError e) {
        }
        switch (keyCode) {
            case 19:
            case 20:
            case VoiceIme.IME_TEXT_ACCEPTED /*21*/:
            case 22:
                return false;
            default:
                return true;
        }
    }

    public boolean onKeyUp(int keyCode, KeyEvent event) {
        if (!this.isHardwareKeyboardEnabled) {
            switch (keyCode) {
                case 19:
                case 20:
                case VoiceIme.IME_TEXT_ACCEPTED /*21*/:
                case 22:
                    if (this.mTutorial != null) {
                        return true;
                    }
                    LatinKeyboardView inputView = this.mKeyboardSwitcher.getInputView();
                    if (inputView != null && inputView.isShown() && inputView.isShifted()) {
                        KeyEvent event2 = new KeyEvent(event.getDownTime(), event.getEventTime(), event.getAction(), event.getKeyCode(), event.getRepeatCount(), event.getDeviceId(), event.getScanCode(), 65);
                        InputConnection ic = getCurrentInputConnection();
                        if (ic != null) {
                            ic.sendKeyEvent(event2);
                        }
                        event = event2;
                        return true;
                    }
                case 24:
                case 25:
                    if (this.mKeyboardSwitcher.getInputView() != null && this.mKeyboardSwitcher.getInputView().isShown() && this.mEnableVolumeCursor) {
                        return true;
                    }
            }
        }
        if (event.getKeyCode() == 142) {
            langNow = langNow == 2 ? 1 : 2;
            return true;
        } else if (event.getKeyCode() == 4) {
            return super.onKeyUp(keyCode, event);
        } else {
            if (!this.isHardwareKeyboardEnabled) {
                return super.onKeyUp(keyCode, event);
            }
            int code = event.getKeyCharacterMap().get(keyCode, event.getMetaState());
            try {
                if (event.isCtrlPressed() || event.isAltPressed() || event.isFunctionPressed()) {
                    Log.e("LL", "Control pressed");
                    return false;
                }
            } catch (NoSuchMethodError e) {
            }
            if (event.getKeyCode() == 67) {
                code = -5;
            }
            switch (keyCode) {
                case 19:
                case 20:
                case VoiceIme.IME_TEXT_ACCEPTED /*21*/:
                case 22:
                    return false;
                default:
                    onKey(code, new int[]{code, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1}, 0, 0);
                    return true;
            }
        }
    }

    private void revertVoiceInput() {
        InputConnection ic = getCurrentInputConnection();
        if (ic != null) {
            ic.commitText(LoggingEvents.EXTRA_CALLING_APP_NAME, 1);
        }
        updateSuggestions();
        this.mVoiceInputHighlighted = false;
    }

    private void commitVoiceInput() {
        InputConnection ic = getCurrentInputConnection();
        if (ic != null) {
            ic.finishComposingText();
        }
        updateSuggestions();
        this.mVoiceInputHighlighted = false;
    }

    private void reloadKeyboards() {
        this.mKeyboardSwitcher.setLanguageSwitcher(this.mLanguageSwitcher);
        if (!(this.mKeyboardSwitcher.getInputView() == null || this.mKeyboardSwitcher.getKeyboardMode() == 0)) {
            KeyboardSwitcher keyboardSwitcher = this.mKeyboardSwitcher;
            boolean z = this.mEnableVoice && this.mEnableVoiceButton;
            keyboardSwitcher.setVoiceMode(z, this.mVoiceOnPrimary);
        }
        this.mKeyboardSwitcher.makeKeyboards(true);
    }

    private void commitTyped(InputConnection inputConnection) {
        if (this.mPredicting) {
            this.mPredicting = false;
            if (this.mComposing.length() > 0) {
                if (inputConnection != null) {
                    if (langNow == 1) {
                        inputConnection.commitText(this.bComposing, 1);
                    } else {
                        inputConnection.commitText(this.mComposing.toString(), 1);
                    }
                }
                if (langNow == 1) {
                    this.mCommittedLength = this.bComposing.length();
                } else {
                    this.mCommittedLength = this.mComposing.length();
                }
                TextEntryState.acceptedTyped(this.mComposing);
                addToDictionaries(this.mComposing, 1);
            }
            updateSuggestions();
        }
    }

    private void postUpdateShiftKeyState() {
        this.mHandler.removeMessages(2);
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(2), 300);
    }

    public void updateShiftKeyState(EditorInfo attr) {
        InputConnection ic = getCurrentInputConnection();
        if (ic != null && attr != null && this.mKeyboardSwitcher.isAlphabetMode()) {
            KeyboardSwitcher keyboardSwitcher = this.mKeyboardSwitcher;
            boolean z = this.mShiftKeyState.isMomentary() || this.mCapsLock || getCursorCapsMode(ic, attr) != 0;
            keyboardSwitcher.setShifted(z);
        }
    }

    private int getCursorCapsMode(InputConnection ic, EditorInfo attr) {
        EditorInfo ei = getCurrentInputEditorInfo();
        if (!this.mAutoCap || langNow != 2 || ei == null || ei.inputType == 0) {
            return 0;
        }
        return ic.getCursorCapsMode(attr.inputType);
    }

    private void swapPunctuationAndSpace() {
        InputConnection ic = getCurrentInputConnection();
        if (ic != null) {
            CharSequence lastTwo = ic.getTextBeforeCursor(2, 0);
            if (lastTwo != null && lastTwo.length() == 2 && lastTwo.charAt(0) == ' ' && isSentenceSeparator(lastTwo.charAt(1))) {
                ic.beginBatchEdit();
                ic.deleteSurroundingText(2, 0);
                ic.commitText(lastTwo.charAt(1) + " ", 1);
                ic.endBatchEdit();
                updateShiftKeyState(getCurrentInputEditorInfo());
                this.mJustAddedAutoSpace = true;
            }
        }
    }

    private void reswapPeriodAndSpace() {
        InputConnection ic = getCurrentInputConnection();
        if (ic != null) {
            CharSequence lastThree = ic.getTextBeforeCursor(3, 0);
            if (lastThree != null && lastThree.length() == 3 && lastThree.charAt(0) == '.' && lastThree.charAt(1) == ' ' && lastThree.charAt(2) == '.') {
                ic.beginBatchEdit();
                ic.deleteSurroundingText(3, 0);
                ic.commitText(" ..", 1);
                ic.endBatchEdit();
                updateShiftKeyState(getCurrentInputEditorInfo());
            }
        }
    }

    private void doubleSpace() {
        if (this.mCorrectionMode != 0) {
            InputConnection ic = getCurrentInputConnection();
            if (ic != null) {
                CharSequence lastThree = ic.getTextBeforeCursor(3, 0);
                if (lastThree != null && lastThree.length() == 3 && Character.isLetterOrDigit(lastThree.charAt(0)) && lastThree.charAt(1) == ' ' && lastThree.charAt(2) == ' ') {
                    ic.beginBatchEdit();
                    ic.deleteSurroundingText(2, 0);
                    ic.commitText("  ", 1);
                    ic.endBatchEdit();
                    updateShiftKeyState(getCurrentInputEditorInfo());
                    this.mJustAddedAutoSpace = true;
                }
            }
        }
    }

    private void maybeDoubleSpace() {
        if (this.mCorrectionMode != 0) {
            InputConnection ic = getCurrentInputConnection();
            if (ic != null) {
                CharSequence lastThree = ic.getTextBeforeCursor(3, 0);
                if (lastThree != null && lastThree.length() == 3 && Character.isLetterOrDigit(lastThree.charAt(0)) && lastThree.charAt(1) == ' ' && lastThree.charAt(2) == ' ' && ((FooHandler) this.mHandler).isAcceptingDoubleSpaces()) {
                    ((FooHandler) this.mHandler).cancelDoubleSpacesTimer();
                    ic.beginBatchEdit();
                    ic.deleteSurroundingText(2, 0);
                    if (langNow == 2) {
                        ic.commitText(". ", 1);
                    } else {
                        ic.commitText("। ", 1);
                    }
                    ic.endBatchEdit();
                    updateShiftKeyState(getCurrentInputEditorInfo());
                    this.mJustAddedAutoSpace = true;
                    return;
                }
                ((FooHandler) this.mHandler).startDoubleSpacesTimer();
            }
        }
    }

    private void maybeRemovePreviousPeriod(CharSequence text) {
        InputConnection ic = getCurrentInputConnection();
        if (ic != null) {
            CharSequence lastOne = ic.getTextBeforeCursor(1, 0);
            if (lastOne != null && lastOne.length() == 1 && lastOne.charAt(0) == '.' && text.charAt(0) == '.') {
                ic.deleteSurroundingText(1, 0);
            }
        }
    }

    private void removeTrailingSpace() {
        InputConnection ic = getCurrentInputConnection();
        if (ic != null) {
            CharSequence lastOne = ic.getTextBeforeCursor(1, 0);
            if (lastOne != null && lastOne.length() == 1 && lastOne.charAt(0) == ' ') {
                ic.deleteSurroundingText(1, 0);
            }
        }
    }

    public boolean addWordToDictionary(String word) {
        postUpdateSuggestions();
        return true;
    }

    private boolean isAlphabet(int code) {
        if (Character.isLetter(code)) {
            return true;
        }
        return false;
    }

    private void showInputMethodPicker() {
        ((InputMethodManager) getSystemService("input_method")).showInputMethodPicker();
    }

    private void onOptionKeyPressed() {
        if (!isShowingOptionDialog()) {
            if (LatinIMEUtil.hasMultipleEnabledIMEs(this)) {
                showOptionsMenu();
            } else {
                launchSettings();
            }
        }
    }

    private void onOptionKeyLongPressed() {
        if (!isShowingOptionDialog()) {
            if (LatinIMEUtil.hasMultipleEnabledIMEs(this)) {
                showInputMethodPicker();
            } else {
                launchSettings();
            }
        }
    }

    private boolean isShowingOptionDialog() {
        return this.mOptionsDialog != null && this.mOptionsDialog.isShowing();
    }

    public void onKey(int primaryCode, int[] keyCodes, int x, int y) {
        long when = SystemClock.uptimeMillis();
        if (primaryCode != -5 || when > this.mLastKeyTime + 200) {
            this.mDeleteCount = 0;
        }
        this.mLastKeyTime = when;
        if (useBanglaFont()) {
            primaryCode = getAsciiEquiv(primaryCode);
        }
        boolean distinctMultiTouch = this.mKeyboardSwitcher.hasDistinctMultitouch();
        switch (primaryCode) {
            case CONTROL_X /*-947*/:
                cutFromInputArea();
                break;
            case CONTROL_V /*-946*/:
                pasteFromClipBoard();
                break;
            case CONTROL_C /*-945*/:
                copyTextToClipBoard();
                Toast.makeText(getBaseContext(), "text copied", 0).show();
                break;
            case -588:
                handleCharacter(2480, new int[]{2480});
                handleCharacter(2509, new int[]{2509});
                updateBanglaShift();
                break;
            case -579:
                handleCharacter(2480, new int[]{2480});
                handleCharacter(8205, new int[]{8205});
                handleCharacter(2509, new int[]{2509});
                handleCharacter(2479, new int[]{2479});
                break;
            case -565:
                handleCharacter(2509, new int[]{2509});
                handleCharacter(2480, new int[]{2480});
                break;
            case -564:
                handleCharacter(2509, new int[]{2509});
                handleCharacter(2479, new int[]{2479});
                updateBanglaShift();
                break;
            case -494:
                handleSeparator(32);
                break;
            case FIXED_BANGLA_SHIFTED /*-434*/:
                this.mKeyboardSwitcher.setFixedKeyboard(primaryCode);
                shiftedBangla = true;
                break;
            case FIXED_BANGLA_NORMAL /*-433*/:
                this.mKeyboardSwitcher.setFixedKeyboard(primaryCode);
                break;
            case LONG_PRESSED_ENTER_FOR_CANDIDATE /*-349*/:
                this.mShowCandidate = !this.mShowCandidate;
                setCandidatesViewShown(this.mShowCandidate);
                break;
            case SMILEY_KEYBOARD_3 /*-333*/:
                manageSmileyKeyboard(primaryCode);
                break;
            case SMILEY_KEYBOARD_2 /*-332*/:
                manageSmileyKeyboard(primaryCode);
                break;
            case SMILEY_KEYBOARD_1 /*-331*/:
                manageSmileyKeyboard(primaryCode);
                break;
            case SMILEY_TO_MAIN /*-234*/:
                manageSmileyKeyboard(primaryCode);
                handleShiftInternal(true);
                break;
            case -105:
                toggleLanguage(false, false);
                break;
            case -104:
                toggleLanguage(false, true);
                break;
            case -102:
                startListening(false);
                break;
            case -101:
                onOptionKeyLongPressed();
                break;
            case -100:
                onOptionKeyPressed();
                break;
            case Keyboard.KEYCODE_DELETE /*-5*/:
                handleBackspace();
                this.mDeleteCount++;
                LatinImeLogger.logOnDelete();
                break;
            case Keyboard.KEYCODE_CANCEL /*-3*/:
                if (!isShowingOptionDialog()) {
                    handleClose();
                    break;
                }
                break;
            case -2:
                if (!distinctMultiTouch) {
                    changeKeyboardMode();
                    break;
                }
                break;
            case -1:
                if (!distinctMultiTouch) {
                    handleShift();
                    break;
                }
                break;
            case 9:
                sendDownUpKeyEvents(61);
                break;
            default:
                if (primaryCode != 10) {
                    this.mJustAddedAutoSpace = false;
                }
                RingCharBuffer.getInstance().push((char) primaryCode, x, y);
                LatinImeLogger.logOnInputChar();
                if (isWordSeparator(primaryCode)) {
                    handleSeparator(primaryCode);
                } else {
                    handleCharacter(primaryCode, keyCodes);
                    updateBanglaShift();
                }
                this.mJustRevertedSeparator = null;
                break;
        }
        this.mKeyboardSwitcher.onKey(primaryCode);
        this.mEnteredText = null;
    }

    private int getAsciiEquiv(int ascii) {
        switch (ascii) {
            case 161:
                return 2534;
            case 164:
                return 2535;
            case 165:
                return 2536;
            case 166:
                return 2537;
            case 167:
                return 2538;
            case 168:
                return 2539;
            case 170:
                return 2540;
            case 171:
                return 2541;
            case 172:
                return 2542;
            case 175:
                return 2543;
            case 177:
                return 2437;
            case 178:
                return 2439;
            case 179:
                return 2440;
            case 180:
                return 2441;
            case 181:
                return 2442;
            case 182:
                return 2443;
            case 183:
                return 2447;
            case 184:
                return 2448;
            case 185:
                return 2451;
            case 186:
                return 2452;
            case 188:
                return 2454;
            case 190:
                return 2456;
            case 191:
                return 2457;
            case 193:
                return 2459;
            case 195:
                return 2461;
            case 196:
                return 2462;
            case 198:
                return 2464;
            case QUICK_PRESS /*200*/:
                return 2466;
            case 201:
                return 2467;
            case 203:
                return 2469;
            case 205:
                return 2471;
            case 208:
                return 2475;
            case 210:
                return 2477;
            case 212:
                return 2479;
            case 214:
                return 2482;
            case 215:
                return 2486;
            case 216:
                return 2487;
            case 219:
                return 2524;
            case 220:
                return 2525;
            case 221:
                return 2527;
            case 222:
                return 2510;
            case 223:
                return 2434;
            case 224:
                return 2435;
            case 225:
                return 2433;
            case 234:
                return 2504;
            case 235:
                return 2508;
            case 236:
                return -564;
            case 237:
                return -588;
            case 238:
                return -565;
            case 240:
                return 2438;
            case 242:
                return -579;
            case 243:
                return 8377;
            default:
                return ascii;
        }
    }

    @TargetApi(11)
    private void copyTextToClipBoard() {
        try {
            InputConnection ic = getCurrentInputConnection();
            String text = new StringBuilder(String.valueOf(ic.getTextBeforeCursor(500, 0).toString())).append(ic.getTextAfterCursor(500, 0).toString()).toString();
            if (VERSION.SDK_INT < 11) {
                ((ClipboardManager) getSystemService("clipboard")).setText(text);
            } else {
                ((android.content.ClipboardManager) getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("Ridmik Keyboard", text));
            }
        } catch (Exception e) {
        }
    }

    @TargetApi(11)
    private void pasteFromClipBoard() {
        try {
            String text;
            InputConnection ic = getCurrentInputConnection();
            if (VERSION.SDK_INT < 11) {
                text = ((ClipboardManager) getSystemService("clipboard")).getText().toString();
            } else {
                text = ((android.content.ClipboardManager) getSystemService("clipboard")).getPrimaryClip().getItemAt(0).getText().toString();
            }
            if (text != null) {
                ic.commitText(text, 1);
            }
        } catch (Exception e) {
        }
    }

    private void cutFromInputArea() {
        copyTextToClipBoard();
        getCurrentInputConnection().deleteSurroundingText(500, 500);
    }

    public void updateBanglaShift() {
        if (shiftedBangla && langNow == 3) {
            this.mKeyboardSwitcher.setFixedKeyboard(FIXED_BANGLA_NORMAL);
            shiftedBangla = false;
        }
    }

    private void manageSmileyKeyboard(int primaryCode) {
        this.mKeyboardSwitcher.manageSmileyKeyboard(primaryCode);
    }

    public void onText(CharSequence text) {
        if (this.mVoiceInputHighlighted) {
            commitVoiceInput();
        }
        InputConnection ic = getCurrentInputConnection();
        if (ic != null) {
            abortCorrection(false);
            ic.beginBatchEdit();
            if (this.mPredicting) {
                commitTyped(ic);
            }
            maybeRemovePreviousPeriod(text);
            ic.commitText(text, 1);
            ic.endBatchEdit();
            updateShiftKeyState(getCurrentInputEditorInfo());
            this.mKeyboardSwitcher.onKey(0);
            this.mJustRevertedSeparator = null;
            this.mJustAddedAutoSpace = false;
            this.mEnteredText = text;
        }
    }

    public void onCancel() {
        this.mKeyboardSwitcher.onCancelInput();
    }

    private void backspaceWord(InputConnection ic) {
        CharSequence chars = ic.getTextBeforeCursor(AccessibilityEventCompat.TYPE_VIEW_HOVER_EXIT, 0);
        if (chars != null && chars.length() != 0) {
            int lastCharToDelete = chars.length() - 1;
            if (isWordSeparator(chars.charAt(lastCharToDelete))) {
                while (lastCharToDelete > 0 && isWordSeparator(chars.charAt(lastCharToDelete - 1))) {
                    lastCharToDelete--;
                }
            }
            while (lastCharToDelete > 0 && !isWordSeparator(chars.charAt(lastCharToDelete - 1))) {
                lastCharToDelete--;
            }
            int charsToDelete = chars.length() - lastCharToDelete;
            if (this.mEnteredText != null && sameAsTextBeforeCursor(ic, this.mEnteredText) && this.mEnteredText.length() > charsToDelete) {
                charsToDelete = this.mEnteredText.length();
            }
            Log.d(TAG, "Backspace " + charsToDelete + " chars");
            ic.deleteSurroundingText(charsToDelete, 0);
        }
    }

    private void handleBackspace() {
        if (this.mVoiceInputHighlighted) {
            this.mVoiceInput.incrementTextModificationDeleteCount(((String) this.mVoiceResults.candidates.get(0)).toString().length());
            revertVoiceInput();
            return;
        }
        boolean deleteChar = false;
        InputConnection ic = getCurrentInputConnection();
        if (ic != null) {
            ic.beginBatchEdit();
            if (this.mAfterVoiceInput && this.mVoiceInput.getCursorPos() > 0) {
                this.mVoiceInput.incrementTextModificationDeleteCount(this.mVoiceInput.getSelectionSpan() > 0 ? this.mVoiceInput.getSelectionSpan() : 1);
            }
            if (this.mShiftKeyState.isMomentary()) {
                this.mComposing.setLength(0);
                this.bComposing = LoggingEvents.EXTRA_CALLING_APP_NAME;
                this.mWord.bangla = LoggingEvents.EXTRA_CALLING_APP_NAME;
                ic.finishComposingText();
                this.mWord.reset();
                this.mVoiceInputHighlighted = false;
                this.mPredicting = false;
                this.mCandidateView.clear();
                TextEntryState.reset();
                backspaceWord(ic);
                this.mEnteredText = null;
            } else if (this.mPredicting) {
                int length = this.mComposing.length();
                if (length > 0) {
                    this.mComposing.delete(length - 1, length);
                    this.mWord.deleteLast();
                    this.bComposing = this.parser.toBangla(this.mComposing.toString());
                    this.mWord.bangla = this.bComposing;
                    if (langNow == 1) {
                        ic.setComposingText(this.bComposing, 1);
                    } else {
                        ic.setComposingText(this.mComposing, 1);
                    }
                    if (this.mComposing.length() == 0) {
                        this.mPredicting = false;
                    }
                    postUpdateSuggestions();
                } else {
                    ic.deleteSurroundingText(1, 0);
                }
            } else {
                deleteChar = true;
            }
            postUpdateShiftKeyState();
            TextEntryState.backspace();
            if (TextEntryState.getState() == State.UNDO_COMMIT) {
                revertLastWord(deleteChar);
                ic.endBatchEdit();
                return;
            }
            if (this.mEnteredText != null && sameAsTextBeforeCursor(ic, this.mEnteredText)) {
                ic.deleteSurroundingText(this.mEnteredText.length(), 0);
            } else if (deleteChar) {
                if (this.mCandidateView == null || !this.mCandidateView.dismissAddToDictionaryHint()) {
                    sendDownUpKeyEvents(67);
                    if (this.mDeleteCount > 20) {
                        sendDownUpKeyEvents(67);
                    }
                } else {
                    revertLastWord(deleteChar);
                }
            }
            this.mJustRevertedSeparator = null;
            ic.endBatchEdit();
        }
    }

    private void resetShift() {
        handleShiftInternal(true);
    }

    private boolean isHardwareKeyboardAvailable() {
        return getResources().getConfiguration().keyboard != 1;
    }

    private void handleShift() {
        handleShiftInternal(false);
    }

    private void handleShiftInternal(boolean forceNormal) {
        this.mHandler.removeMessages(2);
        KeyboardSwitcher switcher = this.mKeyboardSwitcher;
        LatinKeyboardView inputView = switcher.getInputView();
        if (!switcher.isAlphabetMode()) {
            switcher.toggleShift();
        } else if (this.mCapsLock || forceNormal) {
            this.mCapsLock = false;
            switcher.setShifted(false);
        } else if (inputView == null) {
        } else {
            if (inputView.isShifted()) {
                this.mCapsLock = true;
                switcher.setShiftLocked(true);
                return;
            }
            switcher.setShifted(true);
        }
    }

    private void abortCorrection(boolean force) {
        if (force || TextEntryState.isCorrecting()) {
            getCurrentInputConnection().finishComposingText();
            clearSuggestions();
        }
    }

    private void handleCharacter(int primaryCode, int[] keyCodes) {
        boolean z = false;
        if (this.mVoiceInputHighlighted) {
            commitVoiceInput();
        }
        if (this.mAfterVoiceInput) {
            this.mVoiceInput.incrementTextModificationInsertCount(1);
        }
        if (this.mLastSelectionStart == this.mLastSelectionEnd && TextEntryState.isCorrecting()) {
            abortCorrection(false);
        }
        if (isAlphabet(primaryCode) && isPredictionOn() && !isCursorTouchingWord() && !this.mPredicting) {
            this.mPredicting = true;
            this.mComposing.setLength(0);
            this.bComposing = LoggingEvents.EXTRA_CALLING_APP_NAME;
            this.mWord.bangla = LoggingEvents.EXTRA_CALLING_APP_NAME;
            saveWordInHistory(this.mBestWord);
            this.mWord.reset();
        }
        if (this.mKeyboardSwitcher != null && this.mKeyboardSwitcher.getInputView().isShifted()) {
            if (keyCodes != null && keyCodes[0] >= 0 && keyCodes[0] <= 1114111) {
                primaryCode = keyCodes[0];
                if (this.mKeyboardSwitcher.isAlphabetMode() && Character.isLowerCase(primaryCode)) {
                    String upperCaseString = new String(new int[]{primaryCode}, 0, 1).toUpperCase(this.mLanguageSwitcher.getInputLocale());
                    if (upperCaseString.codePointCount(0, upperCaseString.length()) == 1) {
                        primaryCode = upperCaseString.codePointAt(0);
                    } else {
                        onText(upperCaseString);
                        return;
                    }
                }
            }
            return;
        }
        if (this.mPredicting) {
            if (this.mKeyboardSwitcher.getInputView().isShifted() && this.mKeyboardSwitcher.isAlphabetMode() && this.mComposing.length() == 0 && langNow == 2) {
                this.mWord.setFirstCharCapitalized(true);
            }
            this.mComposing.append((char) primaryCode);
            this.bComposing = this.parser.toBangla(this.mComposing.toString());
            this.mWord.bangla = this.bComposing;
            this.mWord.add(primaryCode, keyCodes);
            InputConnection ic = getCurrentInputConnection();
            if (ic != null) {
                if (this.mWord.size() == 1 && langNow == 2) {
                    WordComposer wordComposer = this.mWord;
                    if (getCursorCapsMode(ic, getCurrentInputEditorInfo()) != 0) {
                        z = true;
                    }
                    wordComposer.setAutoCapitalized(z);
                }
                if (langNow == 1) {
                    ic.setComposingText(this.bComposing, 1);
                } else {
                    ic.setComposingText(this.mComposing, 1);
                }
            }
            postUpdateSuggestions();
            updateShiftKeyState(getCurrentInputEditorInfo());
            TextEntryState.typedCharacter((char) primaryCode, isWordSeparator(primaryCode));
        } else if (!Character.isLetter(primaryCode) || this.mPasswordText) {
            sendKeyChar((char) primaryCode);
            updateShiftKeyState(getCurrentInputEditorInfo());
        } else {
            this.mComposing.setLength(0);
            this.bComposing = LoggingEvents.EXTRA_CALLING_APP_NAME;
            this.mWord.bangla = LoggingEvents.EXTRA_CALLING_APP_NAME;
            this.mWord.reset();
            this.mPredicting = true;
            handleCharacter(primaryCode, keyCodes);
        }
    }

    private void handleSeparator(int primaryCode) {
        if (this.mVoiceInputHighlighted) {
            commitVoiceInput();
        }
        if (this.mAfterVoiceInput) {
            this.mVoiceInput.incrementTextModificationInsertPunctuationCount(1);
        }
        if (this.mCandidateView != null && this.mCandidateView.dismissAddToDictionaryHint()) {
            postUpdateSuggestions();
        }
        boolean pickedDefault = false;
        InputConnection ic = getCurrentInputConnection();
        if (ic != null) {
            ic.beginBatchEdit();
            abortCorrection(false);
        }
        if (this.mPredicting) {
            if (this.mAutoCorrectOn && primaryCode != 39 && (this.mJustRevertedSeparator == null || this.mJustRevertedSeparator.length() == 0 || this.mJustRevertedSeparator.charAt(0) != primaryCode)) {
                pickedDefault = pickDefaultSuggestion();
                if (primaryCode == 32) {
                    this.mJustAddedAutoSpace = true;
                }
            } else {
                commitTyped(ic);
            }
        }
        if (this.mJustAddedAutoSpace && primaryCode == 10) {
            removeTrailingSpace();
            this.mJustAddedAutoSpace = false;
        }
        sendKeyChar((char) primaryCode);
        TextEntryState.typedCharacter((char) primaryCode, true);
        if (primaryCode != 10) {
            swapPunctuationAndSpace();
        }
        if (isPredictionOn() && primaryCode == 32) {
            maybeDoubleSpace();
        }
        if (pickedDefault) {
            TextEntryState.backToAcceptedDefault(this.mWord.getTypedWord());
        }
        updateShiftKeyState(getCurrentInputEditorInfo());
        if (ic != null) {
            ic.endBatchEdit();
        }
    }

    private void handleClose() {
        commitTyped(getCurrentInputConnection());
        if (this.mRecognizing) {
            this.mVoiceInput.cancel();
        }
        requestHideSelf(0);
        if (this.mKeyboardSwitcher != null) {
            LatinKeyboardView inputView = this.mKeyboardSwitcher.getInputView();
            if (inputView != null) {
                inputView.closing();
            }
        }
        TextEntryState.endSession();
    }

    private void saveWordInHistory(CharSequence result) {
        if (this.mWord.size() <= 1) {
            this.mWord.reset();
        } else if (!TextUtils.isEmpty(result)) {
            this.mWordHistory.add(new TypedWordAlternatives(result.toString(), new WordComposer(this.mWord)));
        }
    }

    private void postUpdateSuggestions() {
        this.mHandler.removeMessages(0);
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(0), 100);
    }

    private void postUpdateOldSuggestions() {
        this.mHandler.removeMessages(4);
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(4), 300);
    }

    private boolean isPredictionOn() {
        return this.mPredictionOn;
    }

    private boolean isCandidateStripVisible() {
        return isPredictionOn() && this.mShowSuggestions;
    }

    public void onCancelVoice() {
        if (this.mRecognizing) {
            switchToKeyboardView();
        }
    }

    private void switchToKeyboardView() {
        this.mHandler.post(new Runnable() {
            public void run() {
                LatinIME.this.mRecognizing = false;
                if (LatinIME.this.mKeyboardSwitcher.getInputView() != null) {
                    LatinIME.this.setInputView(LatinIME.this.mKeyboardSwitcher.getInputView());
                }
                LatinIME.this.setCandidatesViewShown(true);
                LatinIME.this.updateInputViewShown();
                LatinIME.this.postUpdateSuggestions();
            }
        });
    }

    private void switchToRecognitionStatusView() {
        final boolean configChanged = this.mConfigurationChanging;
        this.mHandler.post(new Runnable() {
            public void run() {
                LatinIME.this.setCandidatesViewShown(false);
                LatinIME.this.mRecognizing = true;
                View v = LatinIME.this.mVoiceInput.getView();
                ViewParent p = v.getParent();
                if (p != null && (p instanceof ViewGroup)) {
                    ((ViewGroup) v.getParent()).removeView(v);
                }
                LatinIME.this.setInputView(v);
                LatinIME.this.updateInputViewShown();
                if (configChanged) {
                    LatinIME.this.mVoiceInput.onConfigurationChanged();
                }
            }
        });
    }

    private void startListening(boolean swipe) {
        if (this.mHasUsedVoiceInput && (this.mLocaleSupportedForVoiceInput || this.mHasUsedVoiceInputUnsupportedLocale)) {
            reallyStartListening(swipe);
        } else {
            showVoiceWarningDialog(swipe);
        }
    }

    private void reallyStartListening(boolean swipe) {
        if (!this.mHasUsedVoiceInput) {
            Editor editor = PreferenceManager.getDefaultSharedPreferences(this).edit();
            editor.putBoolean(PREF_HAS_USED_VOICE_INPUT, true);
            SharedPreferencesCompat.apply(editor);
            this.mHasUsedVoiceInput = true;
        }
        if (!(this.mLocaleSupportedForVoiceInput || this.mHasUsedVoiceInputUnsupportedLocale)) {
            editor = PreferenceManager.getDefaultSharedPreferences(this).edit();
            editor.putBoolean(PREF_HAS_USED_VOICE_INPUT_UNSUPPORTED_LOCALE, true);
            SharedPreferencesCompat.apply(editor);
            this.mHasUsedVoiceInputUnsupportedLocale = true;
        }
        clearSuggestions();
        this.mVoiceInput.startListening(new FieldContext(getCurrentInputConnection(), getCurrentInputEditorInfo(), this.mLanguageSwitcher.getInputLanguage(), this.mLanguageSwitcher.getEnabledLanguages()), swipe);
        switchToRecognitionStatusView();
    }

    private void showVoiceWarningDialog(final boolean swipe) {
        Builder builder = new Builder(this);
        builder.setCancelable(true);
        builder.setIcon(R.drawable.ic_mic_dialog);
        builder.setPositiveButton(17039370, new OnClickListener() {
            public void onClick(DialogInterface dialog, int whichButton) {
                LatinIME.this.mVoiceInput.logKeyboardWarningDialogOk();
                LatinIME.this.reallyStartListening(swipe);
            }
        });
        builder.setNegativeButton(17039360, new OnClickListener() {
            public void onClick(DialogInterface dialog, int whichButton) {
                LatinIME.this.mVoiceInput.logKeyboardWarningDialogCancel();
            }
        });
        if (this.mLocaleSupportedForVoiceInput) {
            builder.setMessage(getString(R.string.voice_warning_may_not_understand) + "\n\n" + getString(R.string.voice_warning_how_to_turn_off));
        } else {
            builder.setMessage(getString(R.string.voice_warning_locale_not_supported) + "\n\n" + getString(R.string.voice_warning_may_not_understand) + "\n\n" + getString(R.string.voice_warning_how_to_turn_off));
        }
        builder.setTitle(R.string.voice_warning_title);
        this.mVoiceWarningDialog = builder.create();
        Window window = this.mVoiceWarningDialog.getWindow();
        LayoutParams lp = window.getAttributes();
        lp.token = this.mKeyboardSwitcher.getInputView().getWindowToken();
        lp.type = 1003;
        window.setAttributes(lp);
        window.addFlags(131072);
        this.mVoiceInput.logKeyboardWarningDialogShown();
        this.mVoiceWarningDialog.show();
    }

    public void onVoiceResults(List<String> candidates, Map<String, List<CharSequence>> alternatives) {
        if (this.mRecognizing) {
            this.mVoiceResults.candidates = candidates;
            this.mVoiceResults.alternatives = alternatives;
            this.mHandler.sendMessage(this.mHandler.obtainMessage(3));
        }
    }

    private void handleVoiceResults() {
        boolean capitalizeFirstWord;
        this.mAfterVoiceInput = true;
        this.mImmediatelyAfterVoiceInput = true;
        InputConnection ic = getCurrentInputConnection();
        if (!(isFullscreenMode() || ic == null)) {
            ic.getExtractedText(new ExtractedTextRequest(), 1);
        }
        vibrate();
        switchToKeyboardView();
        List<CharSequence> nBest = new ArrayList();
        if (preferCapitalization() || (this.mKeyboardSwitcher.isAlphabetMode() && this.mKeyboardSwitcher.getInputView().isShifted() && langNow == 2)) {
            capitalizeFirstWord = true;
        } else {
            capitalizeFirstWord = false;
        }
        for (String c : this.mVoiceResults.candidates) {
            String c2;
            if (capitalizeFirstWord) {
                c2 = new StringBuilder(String.valueOf(Character.toUpperCase(c2.charAt(0)))).append(c2.substring(1, c2.length())).toString();
            }
            nBest.add(c2);
        }
        if (nBest.size() != 0) {
            String bestResult = ((CharSequence) nBest.get(0)).toString();
            this.mVoiceInput.logVoiceInputDelivered(bestResult.length());
            this.mHints.registerVoiceResult(bestResult);
            if (ic != null) {
                ic.beginBatchEdit();
            }
            commitTyped(ic);
            EditingUtil.appendText(ic, bestResult);
            if (ic != null) {
                ic.endBatchEdit();
            }
            this.mVoiceInputHighlighted = true;
            this.mWordToSuggestions.putAll(this.mVoiceResults.alternatives);
        }
    }

    private void clearSuggestions() {
        setSuggestions(null, false, false, false);
    }

    private void setSuggestions(List<CharSequence> suggestions, boolean completions, boolean typedWordValid, boolean haveMinimalSuggestion) {
        if (this.mIsShowingHint) {
            setCandidatesView(this.mCandidateViewContainer);
            this.mIsShowingHint = false;
        }
        if (langNow == 1 && suggestions != null && suggestions.size() > 0) {
            suggestions.set(0, this.bComposing);
        }
        if (this.mCandidateView != null) {
            this.mCandidateView.setSuggestions(suggestions, completions, typedWordValid, haveMinimalSuggestion);
        }
    }

    private void updateSuggestions() {
        LatinKeyboardView inputView = this.mKeyboardSwitcher.getInputView();
        if (inputView != null && inputView.getKeyboard() != null) {
            ((LatinKeyboard) inputView.getKeyboard()).setPreferredLetters(null);
            if ((this.mSuggest != null && isPredictionOn()) || this.mVoiceInputHighlighted) {
                if (this.mPredicting) {
                    showSuggestions(this.mWord);
                } else {
                    setNextSuggestions();
                }
            }
        }
    }

    private List<CharSequence> getTypedSuggestions(WordComposer word) {
        return this.mSuggest.getSuggestions(this.mKeyboardSwitcher.getInputView(), word, false, null);
    }

    private void showCorrections(WordAlternatives alternatives) {
        List<CharSequence> stringList = alternatives.getAlternatives();
        ((LatinKeyboard) this.mKeyboardSwitcher.getInputView().getKeyboard()).setPreferredLetters(null);
        showSuggestions(stringList, alternatives.getOriginalWord(), false, false);
    }

    private void showSuggestions(WordComposer word) {
        boolean correctionAvailable;
        boolean typedWordValid;
        int i;
        int i2 = 0;
        List<CharSequence> stringList = this.mSuggest.getSuggestions(this.mKeyboardSwitcher.getInputView(), word, false, EditingUtil.getPreviousWord(getCurrentInputConnection(), this.mWordSeparators));
        ((LatinKeyboard) this.mKeyboardSwitcher.getInputView().getKeyboard()).setPreferredLetters(this.mSuggest.getNextLettersFrequencies());
        if (this.mInputTypeNoAutoCorrect || !this.mSuggest.hasMinimalCorrection()) {
            correctionAvailable = false;
        } else {
            correctionAvailable = true;
        }
        CharSequence typedWord = word.getTypedWord();
        if (this.mSuggest.isValidWord(typedWord) || (preferCapitalization() && this.mSuggest.isValidWord(typedWord.toString().toLowerCase()) && langNow == 2)) {
            typedWordValid = true;
        } else {
            typedWordValid = false;
        }
        if (this.mCorrectionMode == 2 || this.mCorrectionMode == 3) {
            correctionAvailable |= typedWordValid;
        }
        if (word.isMostlyCaps()) {
            i = 0;
        } else {
            i = 1;
        }
        correctionAvailable &= i;
        if (!TextEntryState.isCorrecting()) {
            i2 = 1;
        }
        showSuggestions(stringList, typedWord, typedWordValid, correctionAvailable & i2);
    }

    private void showSuggestions(List<CharSequence> stringList, CharSequence typedWord, boolean typedWordValid, boolean correctionAvailable) {
        boolean z;
        setSuggestions(stringList, false, typedWordValid, correctionAvailable);
        if (stringList.size() <= 0) {
            this.mBestWord = null;
        } else if (!correctionAvailable || typedWordValid || stringList.size() <= 1 || langNow != 2) {
            this.mBestWord = typedWord;
        } else {
            this.mBestWord = (CharSequence) stringList.get(1);
        }
        if ((isCandidateStripVisible() || this.mCompletionOn) && this.mShowCandidate) {
            z = true;
        } else {
            z = false;
        }
        setCandidatesViewShown(z);
    }

    private boolean pickDefaultSuggestion() {
        if (this.mHandler.hasMessages(0)) {
            this.mHandler.removeMessages(0);
            updateSuggestions();
        }
        if (this.mBestWord == null || this.mBestWord.length() <= 0) {
            return false;
        }
        TextEntryState.acceptedDefault(this.mWord.getTypedWord(), this.mBestWord);
        this.mJustAccepted = true;
        pickSuggestion(this.mBestWord, false);
        addToDictionaries(this.mBestWord, 1);
        return true;
    }

    public void pickSuggestionManually(int index, CharSequence suggestion) {
        boolean showingAddToDictionaryHint = false;
        List<CharSequence> suggestions = this.mCandidateView.getSuggestions();
        if (this.mAfterVoiceInput && this.mShowingVoiceSuggestions) {
            this.mVoiceInput.flushAllTextModificationCounters();
            this.mVoiceInput.logTextModifiedByChooseSuggestion(suggestion.toString(), index, this.mWordSeparators, getCurrentInputConnection());
        }
        boolean correcting = TextEntryState.isCorrecting();
        InputConnection ic = getCurrentInputConnection();
        if (ic != null) {
            ic.beginBatchEdit();
        }
        if (this.mCompletionOn && this.mCompletions != null && index >= 0 && index < this.mCompletions.length) {
            CompletionInfo ci = this.mCompletions[index];
            if (ic != null) {
                ic.commitCompletion(ci);
            }
            this.mCommittedLength = suggestion.length();
            if (this.mCandidateView != null) {
                this.mCandidateView.clear();
            }
            updateShiftKeyState(getCurrentInputEditorInfo());
            if (ic != null) {
                ic.endBatchEdit();
            }
        } else if (suggestion.length() == 1 && (isWordSeparator(suggestion.charAt(0)) || isSuggestedPunctuation(suggestion.charAt(0)))) {
            LatinImeLogger.logOnManualSuggestion(LoggingEvents.EXTRA_CALLING_APP_NAME, suggestion.toString(), index, suggestions);
            onKey(suggestion.charAt(0), new int[]{suggestion.charAt(0)}, -1, -1);
            if (ic != null) {
                ic.endBatchEdit();
            }
        } else {
            this.mJustAccepted = true;
            pickSuggestion(suggestion, correcting);
            if (index == 0) {
                addToDictionaries(suggestion, 3);
            }
            LatinImeLogger.logOnManualSuggestion(this.mComposing.toString(), suggestion.toString(), index, suggestions);
            TextEntryState.acceptedSuggestion(this.mComposing.toString(), suggestion);
            if (this.mAutoSpace && !correcting) {
                sendSpace();
                this.mJustAddedAutoSpace = true;
            }
            if (index == 0 && this.mCorrectionMode > 0 && !this.mSuggest.isValidWord(suggestion) && !this.mSuggest.isValidWord(suggestion.toString().toLowerCase())) {
                showingAddToDictionaryHint = true;
            }
            if (!correcting) {
                TextEntryState.typedCharacter(' ', true);
                setNextSuggestions();
            } else if (!showingAddToDictionaryHint) {
                clearSuggestions();
                postUpdateOldSuggestions();
            }
            if (ic != null) {
                ic.endBatchEdit();
            }
        }
    }

    private void rememberReplacedWord(CharSequence suggestion) {
        if (this.mShowingVoiceSuggestions) {
            String wordToBeReplaced = EditingUtil.getWordAtCursor(getCurrentInputConnection(), this.mWordSeparators, new Range());
            if (!this.mWordToSuggestions.containsKey(wordToBeReplaced)) {
                wordToBeReplaced = wordToBeReplaced.toLowerCase();
            }
            if (this.mWordToSuggestions.containsKey(wordToBeReplaced)) {
                List<CharSequence> suggestions = (List) this.mWordToSuggestions.get(wordToBeReplaced);
                if (suggestions.contains(suggestion)) {
                    suggestions.remove(suggestion);
                }
                suggestions.add(wordToBeReplaced);
                this.mWordToSuggestions.remove(wordToBeReplaced);
                this.mWordToSuggestions.put(suggestion.toString(), suggestions);
            }
        }
    }

    private void pickSuggestion(CharSequence suggestion, boolean correcting) {
        LatinKeyboardView inputView = this.mKeyboardSwitcher.getInputView();
        Locale inputLocale = this.mLanguageSwitcher.getInputLocale();
        if (this.mCapsLock) {
            suggestion = suggestion.toString().toUpperCase(inputLocale);
        } else if (preferCapitalization() || (this.mKeyboardSwitcher.isAlphabetMode() && inputView.isShifted())) {
            suggestion = new StringBuilder(String.valueOf(suggestion.toString().toUpperCase(inputLocale).charAt(0))).append(suggestion.subSequence(1, suggestion.length()).toString()).toString();
        }
        InputConnection ic = getCurrentInputConnection();
        if (ic != null) {
            rememberReplacedWord(suggestion);
            if (langNow == 1) {
                ic.commitText(this.parser.toBangla(suggestion.toString()), 1);
            } else {
                ic.commitText(suggestion, 1);
            }
        }
        saveWordInHistory(suggestion);
        this.mPredicting = false;
        if (langNow == 1) {
            this.mCommittedLength = this.parser.toBangla(suggestion.toString()).length();
        } else {
            this.mCommittedLength = suggestion.length();
        }
        ((LatinKeyboard) inputView.getKeyboard()).setPreferredLetters(null);
        if (!correcting) {
            setNextSuggestions();
        }
        updateShiftKeyState(getCurrentInputEditorInfo());
    }

    private boolean applyVoiceAlternatives(SelectedWord touching) {
        String selectedWord = touching.word.toString().trim();
        if (!this.mWordToSuggestions.containsKey(selectedWord)) {
            selectedWord = selectedWord.toLowerCase();
        }
        if (!this.mWordToSuggestions.containsKey(selectedWord)) {
            return false;
        }
        this.mShowingVoiceSuggestions = true;
        List<CharSequence> suggestions = (List) this.mWordToSuggestions.get(selectedWord);
        if (Character.isUpperCase(touching.word.charAt(0))) {
            Locale inputLocale = this.mLanguageSwitcher.getInputLocale();
            for (int i = 0; i < suggestions.size(); i++) {
                String origSugg = (String) suggestions.get(i);
                suggestions.set(i, new StringBuilder(String.valueOf(origSugg.toUpperCase(inputLocale).charAt(0))).append(origSugg.subSequence(1, origSugg.length()).toString()).toString());
            }
        }
        setSuggestions(suggestions, false, true, true);
        setCandidatesViewShown(true);
        return true;
    }

    private boolean applyTypedAlternatives(SelectedWord touching) {
        int i;
        WordComposer foundWord = null;
        WordAlternatives alternatives = null;
        Iterator it = this.mWordHistory.iterator();
        while (it.hasNext()) {
            WordAlternatives entry = (WordAlternatives) it.next();
            if (TextUtils.equals(entry.getChosenWord(), touching.word)) {
                if (entry instanceof TypedWordAlternatives) {
                    foundWord = ((TypedWordAlternatives) entry).word;
                }
                alternatives = entry;
                if (foundWord == null && (this.mSuggest.isValidWord(touching.word) || this.mSuggest.isValidWord(touching.word.toString().toLowerCase()))) {
                    foundWord = new WordComposer();
                    for (i = 0; i < touching.word.length(); i++) {
                        foundWord.add(touching.word.charAt(i), new int[]{touching.word.charAt(i)});
                    }
                    foundWord.setFirstCharCapitalized(Character.isUpperCase(touching.word.charAt(0)));
                }
                if (foundWord != null && alternatives == null) {
                    return false;
                }
                if (alternatives == null) {
                    alternatives = new TypedWordAlternatives(touching.word, foundWord);
                }
                showCorrections(alternatives);
                if (foundWord == null) {
                    this.mWord = new WordComposer(foundWord);
                } else {
                    this.mWord.reset();
                }
                return true;
            }
        }
        foundWord = new WordComposer();
        for (i = 0; i < touching.word.length(); i++) {
            foundWord.add(touching.word.charAt(i), new int[]{touching.word.charAt(i)});
        }
        foundWord.setFirstCharCapitalized(Character.isUpperCase(touching.word.charAt(0)));
        if (foundWord != null) {
        }
        if (alternatives == null) {
            alternatives = new TypedWordAlternatives(touching.word, foundWord);
        }
        showCorrections(alternatives);
        if (foundWord == null) {
            this.mWord.reset();
        } else {
            this.mWord = new WordComposer(foundWord);
        }
        return true;
    }

    private void setOldSuggestions() {
        this.mShowingVoiceSuggestions = false;
        if (this.mCandidateView == null || !this.mCandidateView.isShowingAddToDictionaryHint()) {
            InputConnection ic = getCurrentInputConnection();
            if (ic == null) {
                return;
            }
            if (this.mPredicting) {
                abortCorrection(true);
                return;
            }
            SelectedWord touching = EditingUtil.getWordAtCursorOrSelection(ic, this.mLastSelectionStart, this.mLastSelectionEnd, this.mWordSeparators);
            if (touching == null || touching.word.length() <= 1) {
                abortCorrection(true);
                setNextSuggestions();
                return;
            }
            ic.beginBatchEdit();
            if (applyVoiceAlternatives(touching) || applyTypedAlternatives(touching)) {
                TextEntryState.selectedForCorrection();
                EditingUtil.underlineWord(ic, touching);
            } else {
                abortCorrection(true);
            }
            ic.endBatchEdit();
        }
    }

    private void setNextSuggestions() {
        if (this.mPuncSuggestion) {
            setSuggestions(this.mSuggestPuncList, false, false, false);
        } else {
            setSuggestions(new ArrayList(), false, false, false);
        }
    }

    private void addToDictionaries(CharSequence suggestion, int frequencyDelta) {
        checkAddToDictionary(suggestion, frequencyDelta, false);
    }

    private void addToBigramDictionary(CharSequence suggestion, int frequencyDelta) {
        checkAddToDictionary(suggestion, frequencyDelta, true);
    }

    private void checkAddToDictionary(CharSequence suggestion, int frequencyDelta, boolean addToBigramDictionary) {
        if (!this.mPasswordText && suggestion != null && suggestion.length() >= 1 && this.mCorrectionMode != 2 && this.mCorrectionMode != 3) {
        }
    }

    private boolean isCursorTouchingWord() {
        InputConnection ic = getCurrentInputConnection();
        if (ic == null) {
            return false;
        }
        CharSequence toLeft = ic.getTextBeforeCursor(1, 0);
        CharSequence toRight = ic.getTextAfterCursor(1, 0);
        if (!TextUtils.isEmpty(toLeft) && !isWordSeparator(toLeft.charAt(0)) && !isSuggestedPunctuation(toLeft.charAt(0))) {
            return true;
        }
        if (TextUtils.isEmpty(toRight) || isWordSeparator(toRight.charAt(0)) || isSuggestedPunctuation(toRight.charAt(0))) {
            return false;
        }
        return true;
    }

    private boolean sameAsTextBeforeCursor(InputConnection ic, CharSequence text) {
        return TextUtils.equals(text, ic.getTextBeforeCursor(text.length(), 0));
    }

    public void revertLastWord(boolean deleteChar) {
        int length = this.mComposing.length();
        if (this.mPredicting || length <= 0) {
            sendDownUpKeyEvents(67);
            this.mJustRevertedSeparator = null;
            return;
        }
        InputConnection ic = getCurrentInputConnection();
        this.mPredicting = true;
        this.mJustRevertedSeparator = ic.getTextBeforeCursor(1, 0);
        if (deleteChar) {
            ic.deleteSurroundingText(1, 0);
        }
        int toDelete = this.mCommittedLength;
        CharSequence toTheLeft = ic.getTextBeforeCursor(this.mCommittedLength, 0);
        if (toTheLeft != null && toTheLeft.length() > 0 && isWordSeparator(toTheLeft.charAt(0))) {
            toDelete--;
        }
        ic.deleteSurroundingText(toDelete, 0);
        if (langNow == 1) {
            ic.setComposingText(this.bComposing, 1);
        } else {
            ic.setComposingText(this.mComposing, 1);
        }
        TextEntryState.backspace();
        postUpdateSuggestions();
    }

    protected String getWordSeparators() {
        return this.mWordSeparators;
    }

    public boolean isWordSeparator(int code) {
        return getWordSeparators().contains(String.valueOf((char) code));
    }

    private boolean isSentenceSeparator(int code) {
        return this.mSentenceSeparators.contains(String.valueOf((char) code));
    }

    private void sendSpace() {
        sendKeyChar(' ');
        updateShiftKeyState(getCurrentInputEditorInfo());
    }

    public boolean preferCapitalization() {
        return this.mWord.isFirstCharCapitalized() && langNow == 2;
    }

    private void toggleLanguage(boolean reset, boolean next) {
        commitTyped(getCurrentInputConnection());
        int toggler = CURRENT_TOGGLER;
        if (reset) {
            if (toggler == 3) {
                langNow = 1;
            } else {
                langNow = 3;
            }
        } else if (toggler == 1) {
            if (langNow == 2) {
                if (next) {
                    langNow = 3;
                } else {
                    langNow = 1;
                }
            } else if (langNow == 1) {
                if (next) {
                    langNow = 2;
                } else {
                    langNow = 3;
                }
            } else if (langNow == 3) {
                if (next) {
                    langNow = 1;
                } else {
                    langNow = 2;
                }
            }
        } else if (toggler == 2) {
            if (langNow == 3) {
                langNow = 2;
            } else {
                langNow = 3;
            }
        } else if (toggler == 3) {
            if (langNow == 1) {
                langNow = 2;
            } else {
                langNow = 1;
            }
        }
        int currentKeyboardMode = this.mKeyboardSwitcher.getKeyboardMode();
        reloadKeyboards();
        this.mKeyboardSwitcher.makeKeyboards(true);
        KeyboardSwitcher keyboardSwitcher;
        boolean z;
        if (langNow == 3) {
            keyboardSwitcher = this.mKeyboardSwitcher;
            if (this.mEnableVoiceButton && this.mEnableVoice) {
                z = true;
            } else {
                z = false;
            }
            keyboardSwitcher.setKeyboardMode(11, 0, z);
        } else {
            keyboardSwitcher = this.mKeyboardSwitcher;
            if (this.mEnableVoiceButton && this.mEnableVoice) {
                z = true;
            } else {
                z = false;
            }
            keyboardSwitcher.setKeyboardMode(currentKeyboardMode, 0, z);
        }
        initSuggest(this.mLanguageSwitcher.getInputLanguage());
        updateShiftKeyState(getCurrentInputEditorInfo());
        if (langNow == 1) {
            this.mKeyboardSwitcher.setShifted(false);
        }
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {
        boolean needReloadView = false;
        if (PREF_SELECTED_LANGUAGES.equals(key)) {
            this.mLanguageSwitcher.loadLocales(sharedPreferences);
            this.mRefreshKeyboardRequired = true;
        } else if (PREF_RECORRECTION_ENABLED.equals(key)) {
            this.mReCorrectionEnabled = sharedPreferences.getBoolean(PREF_RECORRECTION_ENABLED, getResources().getBoolean(R.bool.default_recorrection_enabled));
        } else if (PREF_OBEY_HAPTIC.equals(key)) {
            this.mObeyHapticFeedback = sharedPreferences.getBoolean(PREF_OBEY_HAPTIC, false);
        } else if ("learn_word_as_typing".equals(key)) {
            this.learnWordAsTyping = sharedPreferences.getBoolean("learn_word_as_typing", true);
        } else if ("keypress_volume".equals(key)) {
            this.FX_VOLUME = (float) (((double) sharedPreferences.getInt("keypress_volume", 30)) / 100.0d);
        } else if ("cut_copy_paste".equals(key)) {
            CUT_COPY_PASTE = sharedPreferences.getBoolean("cut_copy_paste", true);
        } else if ("contact_suggestion".equals(key)) {
            Suggest.suggestionFromContacts = sharedPreferences.getBoolean("contact_suggestion", false);
        } else if ("pref_bangla_fixed".equals(key)) {
            KeyboardSwitcher.CURRENT_FIXED_LAYOUT = Integer.valueOf(sharedPreferences.getString("pref_bangla_fixed", "1")).intValue();
        } else if (PREF_HEIGHT_PORTRAIT.equals(key)) {
            needReloadView = true;
            this.keyboardPortraitHeightPercentage = (int) Float.valueOf(sharedPreferences.getString(PREF_HEIGHT_PORTRAIT, "100")).floatValue();
        } else if (PREF_HEIGHT_LANDSCAPE.equals(key)) {
            needReloadView = true;
            this.keyboardLandscapeHeightPercentage = (int) Float.valueOf(sharedPreferences.getString(PREF_HEIGHT_LANDSCAPE, "100")).floatValue();
        } else if ("pref_keyboard_layouts".equals(key)) {
            CURRENT_TOGGLER = Integer.valueOf(sharedPreferences.getString("pref_keyboard_layouts", "1")).intValue();
            toggleLanguage(true, true);
        } else if (!"pref_font_settings".equals(key) && "punc_sugg".equals(key)) {
            this.mPuncSuggestion = sharedPreferences.getBoolean("punc_sugg", false);
        }
        if (needReloadView) {
            this.mKeyboardSwitcher.makeKeyboards(true);
        }
    }

    public void swipeRight() {
        changeKeyboardMode();
    }

    public void swipeLeft() {
        changeKeyboardMode();
    }

    public void swipeDown() {
        handleClose();
    }

    public void swipeUp() {
        if (this.mCapsLock) {
            this.mCapsLock = false;
            this.mKeyboardSwitcher.setShifted(false);
            return;
        }
        this.mCapsLock = true;
        this.mKeyboardSwitcher.setShiftLocked(true);
    }

    public void onPress(int primaryCode) {
        if (this.mKeyboardSwitcher.isVibrateAndSoundFeedbackRequired()) {
            vibrate();
            playKeyClick(primaryCode);
        }
        boolean distinctMultiTouch = this.mKeyboardSwitcher.hasDistinctMultitouch();
        if (distinctMultiTouch && primaryCode == -1) {
            this.mShiftKeyState.onPress();
            handleShift();
        } else if (distinctMultiTouch && primaryCode == -2) {
            changeKeyboardMode();
            this.mSymbolKeyState.onPress();
            this.mKeyboardSwitcher.setAutoModeSwitchStateMomentary();
        } else {
            this.mShiftKeyState.onOtherKeyPressed(primaryCode);
            this.mSymbolKeyState.onOtherKeyPressed(primaryCode);
        }
    }

    public void onRelease(int primaryCode) {
        ((LatinKeyboard) this.mKeyboardSwitcher.getInputView().getKeyboard()).keyReleased();
        boolean distinctMultiTouch = this.mKeyboardSwitcher.hasDistinctMultitouch();
        if (distinctMultiTouch && primaryCode == -1) {
            if (this.mShiftKeyState.isMomentary() && this.mShiftKeyState.getOtherKeyCode() != -5) {
                resetShift();
            }
            this.mShiftKeyState.onRelease();
        } else if (distinctMultiTouch && primaryCode == -2) {
            if (this.mKeyboardSwitcher.isInChordingAutoModeSwitchState()) {
                changeKeyboardMode();
            }
            this.mSymbolKeyState.onRelease();
        }
    }

    private FieldContext makeFieldContext() {
        return new FieldContext(getCurrentInputConnection(), getCurrentInputEditorInfo(), this.mLanguageSwitcher.getInputLanguage(), this.mLanguageSwitcher.getEnabledLanguages());
    }

    private boolean fieldCanDoVoice(FieldContext fieldContext) {
        return (this.mPasswordText || this.mVoiceInput == null || this.mVoiceInput.isBlacklistedField(fieldContext)) ? false : true;
    }

    private boolean shouldShowVoiceButton(FieldContext fieldContext, EditorInfo attribute) {
        return fieldCanDoVoice(fieldContext) && ((attribute == null || !IME_OPTION_NO_MICROPHONE.equals(attribute.privateImeOptions)) && SpeechRecognizer.isRecognitionAvailable(this));
    }

    private void updateRingerMode() {
        if (this.mAudioManager == null) {
            this.mAudioManager = (AudioManager) getSystemService("audio");
        }
        if (this.mAudioManager != null) {
            this.mSilentMode = this.mAudioManager.getRingerMode() != 2;
        }
    }

    private void playKeyClick(int primaryCode) {
        if (this.mAudioManager == null && this.mKeyboardSwitcher.getInputView() != null) {
            updateRingerMode();
        }
        if (this.mSoundOn && !this.mSilentMode) {
            int sound = 5;
            switch (primaryCode) {
                case Keyboard.KEYCODE_DELETE /*-5*/:
                    sound = 7;
                    break;
                case 10:
                    sound = 8;
                    break;
                case 32:
                    sound = 6;
                    break;
            }
            this.mAudioManager.playSoundEffect(sound, this.FX_VOLUME);
        }
    }

    private void vibrate() {
        if (this.mVibrateOn && this.mKeyboardSwitcher.getInputView() != null) {
            this.mKeyboardSwitcher.getInputView().performHapticFeedback(3, this.mObeyHapticFeedback ? 0 : 2);
        }
    }

    private void checkTutorial(String privateImeOptions) {
        if (privateImeOptions != null) {
            if (privateImeOptions.equals("com.android.setupwizard:ShowTutorial")) {
                if (this.mTutorial == null) {
                    startTutorial();
                }
            } else if (privateImeOptions.equals("com.android.setupwizard:HideTutorial") && this.mTutorial != null && this.mTutorial.close()) {
                this.mTutorial = null;
            }
        }
    }

    private void startTutorial() {
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1), 500);
    }

    void tutorialDone() {
        this.mTutorial = null;
    }

    void promoteToUserDictionary(String word, int frequency) {
    }

    WordComposer getCurrentWord() {
        return this.mWord;
    }

    boolean getPopupOn() {
        return this.mPopupOn;
    }

    private void updateCorrectionMode() {
        boolean z;
        int i = 1;
        this.mHasDictionary = this.mSuggest != null ? this.mSuggest.hasMainDictionary() : false;
        if ((this.mAutoCorrectEnabled || this.mQuickFixes) && !this.mInputTypeNoAutoCorrect && this.mHasDictionary) {
            z = true;
        } else {
            z = false;
        }
        this.mAutoCorrectOn = z;
        if (this.mAutoCorrectOn && this.mAutoCorrectEnabled) {
            i = 2;
        } else if (!this.mAutoCorrectOn) {
            i = 0;
        }
        this.mCorrectionMode = i;
        this.mCorrectionMode = this.mCorrectionMode;
        if (this.mSuggest != null) {
            this.mSuggest.setCorrectionMode(this.mCorrectionMode);
        }
    }

    private void updateAutoTextEnabled(Locale systemLocale) {
        boolean z = true;
        if (this.mSuggest != null) {
            boolean different;
            if (systemLocale.getLanguage().equalsIgnoreCase(this.mInputLocale.substring(0, 2))) {
                different = false;
            } else {
                different = true;
            }
            Suggest suggest = this.mSuggest;
            if (different || !this.mQuickFixes) {
                z = false;
            }
            suggest.setAutoTextEnabled(z);
        }
    }

    protected void launchSettings() {
        launchSettings(LatinIMESettings.class);
    }

    public void launchDebugSettings() {
        launchSettings(LatinIMEDebugSettings.class);
    }

    protected void launchSettings(Class<? extends PreferenceActivity> settingsClass) {
        handleClose();
        Intent intent = new Intent();
        intent.setClass(this, settingsClass);
        intent.setFlags(268435456);
        startActivity(intent);
    }

    private void loadSettings() {
        boolean enableVoice = true;
        SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(this);
        this.mVibrateOn = sp.getBoolean(PREF_VIBRATE_ON, false);
        this.mSoundOn = sp.getBoolean(PREF_SOUND_ON, false);
        this.mPopupOn = sp.getBoolean(PREF_POPUP_ON, this.mResources.getBoolean(R.bool.default_popup_preview));
        this.mAutoCap = sp.getBoolean(PREF_AUTO_CAP, false);
        this.mEnableVolumeCursor = sp.getBoolean(PREF_VOLUME_KEYS_AS_CURSOR, false);
        this.mLongPressDelay = sp.getInt("long_press_delay", getResources().getInteger(R.integer.config_long_press_key_timeout));
        this.mQuickFixes = sp.getBoolean(PREF_QUICK_FIXES, true);
        this.mHasUsedVoiceInput = sp.getBoolean(PREF_HAS_USED_VOICE_INPUT, false);
        this.mHasUsedVoiceInputUnsupportedLocale = sp.getBoolean(PREF_HAS_USED_VOICE_INPUT_UNSUPPORTED_LOCALE, false);
        this.mLocaleSupportedForVoiceInput = newArrayList(SettingsUtil.getSettingsString(getContentResolver(), SettingsUtil.LATIN_IME_VOICE_INPUT_SUPPORTED_LOCALES, DEFAULT_VOICE_INPUT_SUPPORTED_LOCALES).split("\\s+")).contains(this.mInputLocale);
        this.mShowSuggestions = sp.getBoolean(PREF_SHOW_SUGGESTIONS, true);
        if (sp.getString(PREF_VOICE_MODE, getString(R.string.voice_mode_main)).equals(getString(R.string.voice_mode_off)) || !this.mEnableVoiceButton) {
            enableVoice = false;
        }
        if (!(this.mKeyboardSwitcher == null || (enableVoice == this.mEnableVoice && false == this.mVoiceOnPrimary))) {
            this.mKeyboardSwitcher.setVoiceMode(enableVoice, false);
        }
        this.mEnableVoice = enableVoice;
        this.mVoiceOnPrimary = false;
        this.mAutoCorrectEnabled = sp.getBoolean(PREF_AUTO_COMPLETE, this.mResources.getBoolean(R.bool.enable_autocorrect)) & this.mShowSuggestions;
        updateCorrectionMode();
        updateAutoTextEnabled(this.mResources.getConfiguration().locale);
        this.mLanguageSwitcher.loadLocales(sp);
    }

    private void initSuggestPuncList() {
        this.mSuggestPuncList = new ArrayList();
        this.mSuggestPuncs = this.mResources.getString(R.string.suggested_punctuations);
        if (this.mSuggestPuncs != null) {
            for (int i = 0; i < this.mSuggestPuncs.length(); i++) {
                this.mSuggestPuncList.add(this.mSuggestPuncs.subSequence(i, i + 1));
            }
        }
    }

    private boolean isSuggestedPunctuation(int code) {
        return this.mSuggestPuncs.contains(String.valueOf((char) code));
    }

    public boolean onEvaluateInputViewShown() {
        return super.onEvaluateInputViewShown();
    }

    private void showOptionsMenu() {
        Builder builder = new Builder(this);
        builder.setCancelable(true);
        builder.setIcon(R.drawable.ic_dialog_keyboard);
        builder.setNegativeButton(17039360, null);
        CharSequence itemSettings = getString(R.string.english_ime_settings);
        builder.setItems(new CharSequence[]{getString(R.string.selectInputMethod), "Ridmik Key Map", itemSettings}, new OnClickListener() {
            public void onClick(DialogInterface di, int position) {
                di.dismiss();
                switch (position) {
                    case 0:
                        ((InputMethodManager) LatinIME.this.getSystemService("input_method")).showInputMethodPicker();
                        return;
                    case 1:
                        Intent intent = new Intent();
                        intent.setClass(LatinIME.this, WebViewActivity.class);
                        intent.setFlags(268435456);
                        intent.putExtra("filename", "keymapview.html");
                        intent.putExtra("title", "Ridmik Keymap");
                        LatinIME.this.startActivity(intent);
                        return;
                    case 2:
                        LatinIME.this.launchSettings();
                        return;
                    default:
                        return;
                }
            }
        });
        builder.setTitle(this.mResources.getString(R.string.english_ime_input_options));
        this.mOptionsDialog = builder.create();
        Window window = this.mOptionsDialog.getWindow();
        LayoutParams lp = window.getAttributes();
        lp.token = this.mKeyboardSwitcher.getInputView().getWindowToken();
        lp.type = 1003;
        window.setAttributes(lp);
        window.addFlags(131072);
        this.mOptionsDialog.show();
    }

    public void changeKeyboardMode() {
        this.mKeyboardSwitcher.toggleSymbols();
        if (this.mCapsLock && this.mKeyboardSwitcher.isAlphabetMode()) {
            this.mKeyboardSwitcher.setShiftLocked(this.mCapsLock);
        }
        updateShiftKeyState(getCurrentInputEditorInfo());
    }

    public static <E> ArrayList<E> newArrayList(E... elements) {
        ArrayList<E> list = new ArrayList(((elements.length * 110) / 100) + 5);
        Collections.addAll(list, elements);
        return list;
    }

    protected void dump(FileDescriptor fd, PrintWriter fout, String[] args) {
        super.dump(fd, fout, args);
        Printer p = new PrintWriterPrinter(fout);
        p.println("LatinIME state :");
        p.println("  Keyboard mode = " + this.mKeyboardSwitcher.getKeyboardMode());
        p.println("  mCapsLock=" + this.mCapsLock);
        p.println("  mComposing=" + this.mComposing.toString());
        p.println("  mPredictionOn=" + this.mPredictionOn);
        p.println("  mCorrectionMode=" + this.mCorrectionMode);
        p.println("  mPredicting=" + this.mPredicting);
        p.println("  mAutoCorrectOn=" + this.mAutoCorrectOn);
        p.println("  mAutoSpace=" + this.mAutoSpace);
        p.println("  mCompletionOn=" + this.mCompletionOn);
        p.println("  TextEntryState.state=" + TextEntryState.getState());
        p.println("  mSoundOn=" + this.mSoundOn);
        p.println("  mVibrateOn=" + this.mVibrateOn);
        p.println("  mPopupOn=" + this.mPopupOn);
        p.println("  mEnableVolumeCursor=" + this.mEnableVolumeCursor);
    }

    private void measureCps() {
        long now = System.currentTimeMillis();
        if (this.mLastCpsTime == 0) {
            this.mLastCpsTime = now - 100;
        }
        this.mCpsIntervals[this.mCpsIndex] = now - this.mLastCpsTime;
        this.mLastCpsTime = now;
        this.mCpsIndex = (this.mCpsIndex + 1) % 16;
        long total = 0;
        for (int i = 0; i < 16; i++) {
            total += this.mCpsIntervals[i];
        }
        System.out.println("CPS = " + (16000.0f / ((float) total)));
    }

    public void onAutoCompletionStateChanged(boolean isAutoCompletion) {
        this.mKeyboardSwitcher.onAutoCompletionStateChanged(isAutoCompletion);
    }
}
