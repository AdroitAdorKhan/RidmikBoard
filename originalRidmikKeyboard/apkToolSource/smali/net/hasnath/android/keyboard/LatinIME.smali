.class public Lnet/hasnath/android/keyboard/LatinIME;
.super Landroid/inputmethodservice/InputMethodService;
.source "LatinIME.java"

# interfaces
.implements Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;
.implements Lnet/hasnath/android/ridmik/voice/VoiceInput$UiListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hasnath/android/keyboard/LatinIME$FooHandler;,
        Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;,
        Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;,
        Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$hasnath$android$keyboard$TextEntryState$State:[I = null

.field public static final BANGLA:I = 0x1

.field public static final BANGLA_ASCII_FONT:Ljava/lang/String; = "Ridmik.ttf"

.field public static final BANGLA_UNICODE_FONT:Ljava/lang/String; = "Siyamrupali.ttf"

.field public static final CONTROL_C:I = -0x3b1

.field public static final CONTROL_V:I = -0x3b2

.field public static final CONTROL_X:I = -0x3b3

.field private static final CPS_BUFFER_SIZE:I = 0x10

.field public static CURRENT_TOGGLER:I = 0x0

.field public static CUT_COPY_PASTE:Z = false

.field static final DEBUG:Z = true

.field public static final DEFAULT_VOICE_INPUT_SUPPORTED_LOCALES:Ljava/lang/String; = "en en_US en_GB en_AU en_CA en_IE en_IN en_NZ en_SG en_ZA "

.field private static final DELETE_ACCELERATE_AT:I = 0x14

.field private static final DOUBLE_SPACE_PERIOD_TIME_DELAY:I = 0x320

.field static final ENABLE_VOICE_BUTTON:Z = true

.field public static final ENGLISH:I = 0x2

.field public static final FIXED:I = 0x3

.field public static final FIXED_BANGLA_NORMAL:I = -0x1b1

.field public static final FIXED_BANGLA_SHIFTED:I = -0x1b2

.field public static FONT_SETTINGS:I = 0x0

.field private static final FREQUENCY_FOR_MYDIC:I = 0x96

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field static final KEYCODE_ENTER:I = 0xa

.field static final KEYCODE_PERIOD:I = 0x2e

.field static final KEYCODE_SPACE:I = 0x20

.field public static LOLIPOP_THEME_INDEX:I = 0x0

.field public static final LONG_PRESSED_ENTER_FOR_CANDIDATE:I = -0x15d

.field private static final MSG_SPACE_TYPED:I = 0x5

.field private static final MSG_START_TUTORIAL:I = 0x1

.field private static final MSG_UPDATE_OLD_SUGGESTIONS:I = 0x4

.field private static final MSG_UPDATE_SHIFT_STATE:I = 0x2

.field private static final MSG_UPDATE_SUGGESTIONS:I = 0x0

.field private static final MSG_VOICE_RESULTS:I = 0x3

.field private static final PERF_DEBUG:Z = false

.field private static final POS_KEYMAP:I = 0x1

.field private static final POS_METHOD:I = 0x0

.field private static final POS_SETTINGS:I = 0x2

.field private static final PREF_AUTO_CAP:Ljava/lang/String; = "auto_cap"

.field private static final PREF_AUTO_COMPLETE:Ljava/lang/String; = "auto_complete"

.field private static final PREF_HAS_USED_VOICE_INPUT:Ljava/lang/String; = "has_used_voice_input"

.field private static final PREF_HAS_USED_VOICE_INPUT_UNSUPPORTED_LOCALE:Ljava/lang/String; = "has_used_voice_input_unsupported_locale"

.field private static final PREF_HEIGHT_LANDSCAPE:Ljava/lang/String; = "settings_height_landscape"

.field private static final PREF_HEIGHT_PORTRAIT:Ljava/lang/String; = "settings_height_portrait"

.field public static final PREF_INPUT_LANGUAGE:Ljava/lang/String; = "input_language"

.field private static final PREF_OBEY_HAPTIC:Ljava/lang/String; = "obey_haptic"

.field private static final PREF_POPUP_ON:Ljava/lang/String; = "popup_on"

.field private static final PREF_QUICK_FIXES:Ljava/lang/String; = "quick_fixes"

.field private static final PREF_RECORRECTION_ENABLED:Ljava/lang/String; = "recorrection_enabled"

.field public static final PREF_SELECTED_LANGUAGES:Ljava/lang/String; = "selected_languages"

.field private static final PREF_SHOW_SUGGESTIONS:Ljava/lang/String; = "show_suggestions"

.field private static final PREF_SOUND_ON:Ljava/lang/String; = "sound_on"

.field private static final PREF_VIBRATE_ON:Ljava/lang/String; = "vibrate_on"

.field private static final PREF_VOICE_MODE:Ljava/lang/String; = "voice_mode"

.field public static final PREF_VOLUME_KEYS_AS_CURSOR:Ljava/lang/String; = "volume_cursor"

.field private static final QUICK_PRESS:I = 0xc8

.field public static final SMILEY_KEYBOARD_1:I = -0x14b

.field public static final SMILEY_KEYBOARD_2:I = -0x14c

.field public static final SMILEY_KEYBOARD_3:I = -0x14d

.field public static final SMILEY_TO_MAIN:I = -0xea

.field private static final TAG:Ljava/lang/String; = "LatinIME"

.field static final TRACE:Z = false

.field static final VOICE_INSTALLED:Z = true

.field public static langNow:I

.field public static shiftedBangla:Z


# instance fields
.field private FX_VOLUME:F

.field bComposing:Ljava/lang/String;

.field private isHardwareKeyboardEnabled:Z

.field private keyboardLandscapeHeightPercentage:I

.field private keyboardPortraitHeightPercentage:I

.field private learnWordAsTyping:Z

.field private mAfterVoiceInput:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoCap:Z

.field private mAutoCorrectEnabled:Z

.field private mAutoCorrectOn:Z

.field private mAutoSpace:Z

.field private mBestWord:Ljava/lang/CharSequence;

.field private final mBigramSuggestionEnabled:Z

.field private mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

.field private mCandidateViewContainer:Landroid/widget/LinearLayout;

.field private mCapsLock:Z

.field private mCommittedLength:I

.field private mCompletionOn:Z

.field private mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private mComposing:Ljava/lang/StringBuilder;

.field private mConfigurationChanging:Z

.field private mCorrectionMode:I

.field private mCpsIndex:I

.field private mCpsIntervals:[J

.field private mDeleteCount:I

.field private mEnableVoice:Z

.field private mEnableVoiceButton:Z

.field private mEnableVolumeCursor:Z

.field private mEnteredText:Ljava/lang/CharSequence;

.field public final mHandler:Landroid/os/Handler;

.field private mHasDictionary:Z

.field private mHasUsedVoiceInput:Z

.field private mHasUsedVoiceInputUnsupportedLocale:Z

.field private mHints:Lnet/hasnath/android/keyboard/Hints;

.field private mImmediatelyAfterVoiceInput:Z

.field private mInputLocale:Ljava/lang/String;

.field private mInputTypeNoAutoCorrect:Z

.field private mIsShowingHint:Z

.field private mJustAccepted:Z

.field private mJustAddedAutoSpace:Z

.field private mJustRevertedSeparator:Ljava/lang/CharSequence;

.field mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

.field private mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

.field private mLastCpsTime:J

.field private mLastKeyTime:J

.field private mLastSelectionEnd:I

.field private mLastSelectionStart:I

.field private mLocaleSupportedForVoiceInput:Z

.field private mLongPressDelay:I

.field private mObeyHapticFeedback:Z

.field private mOptionsDialog:Landroid/app/AlertDialog;

.field private mOrientation:I

.field private mPasswordText:Z

.field private mPopupOn:Z

.field private mPredicting:Z

.field private mPredictionOn:Z

.field private mPuncSuggestion:Z

.field private mQuickFixes:Z

.field private mReCorrectionEnabled:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecognizing:Z

.field private mRefreshKeyboardRequired:Z

.field private mResources:Landroid/content/res/Resources;

.field private mSentenceSeparators:Ljava/lang/String;

.field private mShiftKeyState:Lnet/hasnath/android/keyboard/ModifierKeyState;

.field private mShowCandidate:Z

.field private mShowSuggestions:Z

.field private mShowingVoiceSuggestions:Z

.field private mSilentMode:Z

.field private mSoundOn:Z

.field private mSuggest:Lnet/hasnath/android/keyboard/Suggest;

.field private mSuggestPuncList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestPuncs:Ljava/lang/String;

.field private mSymbolKeyState:Lnet/hasnath/android/keyboard/ModifierKeyState;

.field private mSystemLocale:Ljava/lang/String;

.field private mTutorial:Lnet/hasnath/android/keyboard/Tutorial;

.field private mVibrateOn:Z

.field private mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

.field private mVoiceInputHighlighted:Z

.field private mVoiceOnPrimary:Z

.field private mVoiceResults:Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;

.field private mVoiceWarningDialog:Landroid/app/AlertDialog;

.field private mWord:Lnet/hasnath/android/keyboard/WordComposer;

.field private mWordHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;",
            ">;"
        }
    .end annotation
.end field

.field mWordSeparators:Ljava/lang/String;

.field private mWordToSuggestions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field public parser:Lnet/hasnath/ridmikparser/RidmikParser;


# direct methods
.method static synthetic $SWITCH_TABLE$net$hasnath$android$keyboard$TextEntryState$State()[I
    .locals 3

    .prologue
    .line 82
    sget-object v0, Lnet/hasnath/android/keyboard/LatinIME;->$SWITCH_TABLE$net$hasnath$android$keyboard$TextEntryState$State:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState$State;->values()[Lnet/hasnath/android/keyboard/TextEntryState$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->ACCEPTED_DEFAULT:Lnet/hasnath/android/keyboard/TextEntryState$State;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/TextEntryState$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_1
    :try_start_1
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->CORRECTING:Lnet/hasnath/android/keyboard/TextEntryState$State;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/TextEntryState$State;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_2
    :try_start_2
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->IN_WORD:Lnet/hasnath/android/keyboard/TextEntryState$State;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/TextEntryState$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_3
    :try_start_3
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->PICKED_CORRECTION:Lnet/hasnath/android/keyboard/TextEntryState$State;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/TextEntryState$State;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_4
    :try_start_4
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->PICKED_SUGGESTION:Lnet/hasnath/android/keyboard/TextEntryState$State;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/TextEntryState$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_5
    :try_start_5
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->PUNCTUATION_AFTER_ACCEPTED:Lnet/hasnath/android/keyboard/TextEntryState$State;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/TextEntryState$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_6
    :try_start_6
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->PUNCTUATION_AFTER_WORD:Lnet/hasnath/android/keyboard/TextEntryState$State;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/TextEntryState$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_7
    :try_start_7
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->SPACE_AFTER_ACCEPTED:Lnet/hasnath/android/keyboard/TextEntryState$State;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/TextEntryState$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_8
    :try_start_8
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->SPACE_AFTER_PICKED:Lnet/hasnath/android/keyboard/TextEntryState$State;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/TextEntryState$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_9
    :try_start_9
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->START:Lnet/hasnath/android/keyboard/TextEntryState$State;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/TextEntryState$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_a
    :try_start_a
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->UNDO_COMMIT:Lnet/hasnath/android/keyboard/TextEntryState$State;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/TextEntryState$State;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_b
    :try_start_b
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->UNKNOWN:Lnet/hasnath/android/keyboard/TextEntryState$State;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/TextEntryState$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_c
    sput-object v0, Lnet/hasnath/android/keyboard/LatinIME;->$SWITCH_TABLE$net$hasnath$android$keyboard$TextEntryState$State:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_c

    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_2

    :catch_b
    move-exception v1

    goto/16 :goto_1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x3

    .line 94
    sput v1, Lnet/hasnath/android/keyboard/LatinIME;->LOLIPOP_THEME_INDEX:I

    .line 107
    const/4 v0, 0x1

    sput v0, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    .line 109
    sput v1, Lnet/hasnath/android/keyboard/LatinIME;->CURRENT_TOGGLER:I

    .line 111
    sput v1, Lnet/hasnath/android/keyboard/LatinIME;->FONT_SETTINGS:I

    .line 115
    sput-boolean v2, Lnet/hasnath/android/keyboard/LatinIME;->shiftedBangla:Z

    .line 120
    sput-boolean v2, Lnet/hasnath/android/keyboard/LatinIME;->CUT_COPY_PASTE:Z

    .line 3555
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 82
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    .line 100
    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowCandidate:Z

    .line 224
    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->learnWordAsTyping:Z

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    .line 234
    new-instance v0, Lnet/hasnath/android/keyboard/WordComposer;

    invoke-direct {v0}, Lnet/hasnath/android/keyboard/WordComposer;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    .line 252
    iput-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mBigramSuggestionEnabled:Z

    .line 254
    iput-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPuncSuggestion:Z

    .line 279
    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoice:Z

    .line 297
    new-instance v0, Lnet/hasnath/android/keyboard/ModifierKeyState;

    invoke-direct {v0}, Lnet/hasnath/android/keyboard/ModifierKeyState;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShiftKeyState:Lnet/hasnath/android/keyboard/ModifierKeyState;

    .line 298
    new-instance v0, Lnet/hasnath/android/keyboard/ModifierKeyState;

    invoke-direct {v0}, Lnet/hasnath/android/keyboard/ModifierKeyState;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSymbolKeyState:Lnet/hasnath/android/keyboard/ModifierKeyState;

    .line 304
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->FX_VOLUME:F

    .line 311
    new-instance v0, Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;-><init>(Lnet/hasnath/android/keyboard/LatinIME;Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;)V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceResults:Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;

    .line 313
    iput v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->keyboardPortraitHeightPercentage:I

    .line 314
    iput v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->keyboardLandscapeHeightPercentage:I

    .line 322
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordHistory:Ljava/util/ArrayList;

    .line 331
    const-string v0, ""

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->bComposing:Ljava/lang/String;

    .line 382
    new-instance v0, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;

    invoke-direct {v0, p0}, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;-><init>(Lnet/hasnath/android/keyboard/LatinIME;)V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    .line 3255
    new-instance v0, Lnet/hasnath/android/keyboard/LatinIME$1;

    invoke-direct {v0, p0}, Lnet/hasnath/android/keyboard/LatinIME$1;-><init>(Lnet/hasnath/android/keyboard/LatinIME;)V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3556
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCpsIntervals:[J

    .line 82
    return-void
.end method

.method private abortCorrection(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 2100
    if-nez p1, :cond_0

    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->isCorrecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2101
    :cond_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2102
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->clearSuggestions()V

    .line 2104
    :cond_1
    return-void
.end method

.method static synthetic access$0(Lnet/hasnath/android/keyboard/LatinIME;)V
    .locals 0

    .prologue
    .line 3263
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$1(Lnet/hasnath/android/keyboard/LatinIME;Lnet/hasnath/android/keyboard/WordComposer;)Ljava/util/List;
    .locals 1

    .prologue
    .line 2569
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->getTypedSuggestions(Lnet/hasnath/android/keyboard/WordComposer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lnet/hasnath/android/keyboard/LatinIME;)V
    .locals 0

    .prologue
    .line 2328
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->postUpdateSuggestions()V

    return-void
.end method

.method static synthetic access$11(Lnet/hasnath/android/keyboard/LatinIME;)Lnet/hasnath/android/ridmik/voice/VoiceInput;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    return-object v0
.end method

.method static synthetic access$12(Lnet/hasnath/android/keyboard/LatinIME;Z)V
    .locals 0

    .prologue
    .line 2394
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->reallyStartListening(Z)V

    return-void
.end method

.method static synthetic access$2(Lnet/hasnath/android/keyboard/LatinIME;)V
    .locals 0

    .prologue
    .line 2549
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateSuggestions()V

    return-void
.end method

.method static synthetic access$3(Lnet/hasnath/android/keyboard/LatinIME;)V
    .locals 0

    .prologue
    .line 2894
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->setOldSuggestions()V

    return-void
.end method

.method static synthetic access$4(Lnet/hasnath/android/keyboard/LatinIME;)Lnet/hasnath/android/keyboard/Tutorial;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mTutorial:Lnet/hasnath/android/keyboard/Tutorial;

    return-object v0
.end method

.method static synthetic access$5(Lnet/hasnath/android/keyboard/LatinIME;Lnet/hasnath/android/keyboard/Tutorial;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mTutorial:Lnet/hasnath/android/keyboard/Tutorial;

    return-void
.end method

.method static synthetic access$6(Lnet/hasnath/android/keyboard/LatinIME;)V
    .locals 0

    .prologue
    .line 2477
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->handleVoiceResults()V

    return-void
.end method

.method static synthetic access$7(Lnet/hasnath/android/keyboard/LatinIME;Z)V
    .locals 0

    .prologue
    .line 277
    iput-boolean p1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mIsShowingHint:Z

    return-void
.end method

.method static synthetic access$9(Lnet/hasnath/android/keyboard/LatinIME;Z)V
    .locals 0

    .prologue
    .line 237
    iput-boolean p1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mRecognizing:Z

    return-void
.end method

.method private addToBigramDictionary(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "suggestion"    # Ljava/lang/CharSequence;
    .param p2, "frequencyDelta"    # I

    .prologue
    .line 2938
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lnet/hasnath/android/keyboard/LatinIME;->checkAddToDictionary(Ljava/lang/CharSequence;IZ)V

    .line 2939
    return-void
.end method

.method private addToDictionaries(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "suggestion"    # Ljava/lang/CharSequence;
    .param p2, "frequencyDelta"    # I

    .prologue
    .line 2934
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/hasnath/android/keyboard/LatinIME;->checkAddToDictionary(Ljava/lang/CharSequence;IZ)V

    .line 2935
    return-void
.end method

.method private applyTypedAlternatives(Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;)Z
    .locals 9
    .param p1, "touching"    # Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2855
    const/4 v2, 0x0

    .line 2856
    .local v2, "foundWord":Lnet/hasnath/android/keyboard/WordComposer;
    const/4 v0, 0x0

    .line 2857
    .local v0, "alternatives":Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 2867
    :goto_0
    if-nez v2, :cond_2

    .line 2868
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    iget-object v7, p1, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Lnet/hasnath/android/keyboard/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2869
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    iget-object v7, p1, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lnet/hasnath/android/keyboard/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2870
    :cond_1
    new-instance v2, Lnet/hasnath/android/keyboard/WordComposer;

    .end local v2    # "foundWord":Lnet/hasnath/android/keyboard/WordComposer;
    invoke-direct {v2}, Lnet/hasnath/android/keyboard/WordComposer;-><init>()V

    .line 2871
    .restart local v2    # "foundWord":Lnet/hasnath/android/keyboard/WordComposer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p1, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt v3, v4, :cond_7

    .line 2876
    iget-object v4, p1, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    invoke-virtual {v2, v4}, Lnet/hasnath/android/keyboard/WordComposer;->setFirstCharCapitalized(Z)V

    .line 2879
    .end local v3    # "i":I
    :cond_2
    if-nez v2, :cond_3

    if-eqz v0, :cond_9

    .line 2880
    :cond_3
    if-nez v0, :cond_4

    .line 2881
    new-instance v0, Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;

    .end local v0    # "alternatives":Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;
    iget-object v4, p1, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-direct {v0, p0, v4, v2}, Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;-><init>(Lnet/hasnath/android/keyboard/LatinIME;Ljava/lang/CharSequence;Lnet/hasnath/android/keyboard/WordComposer;)V

    .line 2883
    .restart local v0    # "alternatives":Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;
    :cond_4
    invoke-direct {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->showCorrections(Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;)V

    .line 2884
    if-eqz v2, :cond_8

    .line 2885
    new-instance v4, Lnet/hasnath/android/keyboard/WordComposer;

    invoke-direct {v4, v2}, Lnet/hasnath/android/keyboard/WordComposer;-><init>(Lnet/hasnath/android/keyboard/WordComposer;)V

    iput-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    :goto_2
    move v4, v6

    .line 2891
    :goto_3
    return v4

    .line 2857
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;

    .line 2858
    .local v1, "entry":Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;
    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;->getChosenWord()Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p1, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2859
    instance-of v4, v1, Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;

    if-eqz v4, :cond_6

    move-object v4, v1

    .line 2860
    check-cast v4, Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;

    # getter for: Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;->word:Lnet/hasnath/android/keyboard/WordComposer;
    invoke-static {v4}, Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;->access$0(Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;)Lnet/hasnath/android/keyboard/WordComposer;

    move-result-object v2

    .line 2862
    :cond_6
    move-object v0, v1

    .line 2863
    goto :goto_0

    .line 2872
    .end local v1    # "entry":Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;
    .restart local v3    # "i":I
    :cond_7
    iget-object v4, p1, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    new-array v7, v6, [I

    .line 2873
    iget-object v8, p1, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-interface {v8, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    aput v8, v7, v5

    .line 2872
    invoke-virtual {v2, v4, v7}, Lnet/hasnath/android/keyboard/WordComposer;->add(I[I)V

    .line 2871
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2887
    .end local v3    # "i":I
    :cond_8
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/WordComposer;->reset()V

    goto :goto_2

    :cond_9
    move v4, v5

    .line 2891
    goto :goto_3
.end method

.method private applyVoiceAlternatives(Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;)Z
    .locals 10
    .param p1, "touching"    # Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2822
    iget-object v8, p1, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2823
    .local v4, "selectedWord":Ljava/lang/String;
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2824
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 2826
    :cond_0
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2827
    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowingVoiceSuggestions:Z

    .line 2828
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2831
    .local v5, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v8, p1, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-interface {v8, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2832
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v2

    .line 2833
    .local v2, "inputLocale":Ljava/util/Locale;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lt v1, v8, :cond_2

    .line 2840
    .end local v1    # "i":I
    .end local v2    # "inputLocale":Ljava/util/Locale;
    :cond_1
    invoke-direct {p0, v5, v7, v6, v6}, Lnet/hasnath/android/keyboard/LatinIME;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 2841
    invoke-virtual {p0, v6}, Lnet/hasnath/android/keyboard/LatinIME;->setCandidatesViewShown(Z)V

    .line 2844
    .end local v5    # "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :goto_1
    return v6

    .line 2834
    .restart local v1    # "i":I
    .restart local v2    # "inputLocale":Ljava/util/Locale;
    .restart local v5    # "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_2
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2835
    .local v3, "origSugg":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2836
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v6, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2835
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2837
    .local v0, "capsSugg":Ljava/lang/String;
    invoke-interface {v5, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2833
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "capsSugg":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "inputLocale":Ljava/util/Locale;
    .end local v3    # "origSugg":Ljava/lang/String;
    .end local v5    # "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_3
    move v6, v7

    .line 2844
    goto :goto_1
.end method

.method private backspaceWord(Landroid/view/inputmethod/InputConnection;)V
    .locals 8
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v7, 0x0

    .line 1921
    const/16 v4, 0x100

    invoke-interface {p1, v4, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1922
    .local v1, "chars":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1958
    :cond_0
    :goto_0
    return-void

    .line 1928
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 1931
    .local v3, "lastCharToDelete":I
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lnet/hasnath/android/keyboard/LatinIME;->isWordSeparator(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1932
    :goto_1
    if-gtz v3, :cond_5

    .line 1941
    :cond_2
    :goto_2
    if-gtz v3, :cond_6

    .line 1948
    :cond_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v2, v4, v3

    .line 1951
    .local v2, "charsToDelete":I
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v4}, Lnet/hasnath/android/keyboard/LatinIME;->sameAsTextBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1952
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v4, v2, :cond_4

    .line 1953
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1956
    :cond_4
    const-string v4, "LatinIME"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Backspace "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " chars"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    invoke-interface {p1, v2, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    .line 1933
    .end local v2    # "charsToDelete":I
    :cond_5
    add-int/lit8 v4, v3, -0x1

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1934
    .local v0, "c":C
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->isWordSeparator(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1936
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1942
    .end local v0    # "c":C
    :cond_6
    add-int/lit8 v4, v3, -0x1

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1943
    .restart local v0    # "c":C
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->isWordSeparator(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1945
    add-int/lit8 v3, v3, -0x1

    goto :goto_2
.end method

.method private checkAddToDictionary(Ljava/lang/CharSequence;IZ)V
    .locals 2
    .param p1, "suggestion"    # Ljava/lang/CharSequence;
    .param p2, "frequencyDelta"    # I
    .param p3, "addToBigramDictionary"    # Z

    .prologue
    .line 2948
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPasswordText:Z

    if-eqz v0, :cond_1

    .line 2985
    :cond_0
    :goto_0
    return-void

    .line 2949
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 2963
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2964
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0
.end method

.method private checkReCorrectionOnStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 934
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mReCorrectionEnabled:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isPredictionOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 939
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 940
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_1

    .line 954
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    return-void

    .line 941
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 942
    .local v1, "etr":Landroid/view/inputmethod/ExtractedTextRequest;
    iput v4, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 943
    invoke-interface {v2, v1, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 944
    .local v0, "et":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    .line 946
    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/2addr v3, v4

    iput v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastSelectionStart:I

    .line 947
    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v3, v4

    iput v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastSelectionEnd:I

    .line 950
    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isCursorTouchingWord()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 951
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->postUpdateOldSuggestions()V

    goto :goto_0
.end method

.method private checkTutorial(Ljava/lang/String;)V
    .locals 1
    .param p1, "privateImeOptions"    # Ljava/lang/String;

    .prologue
    .line 3311
    if-nez p1, :cond_1

    .line 3321
    :cond_0
    :goto_0
    return-void

    .line 3312
    :cond_1
    const-string v0, "com.android.setupwizard:ShowTutorial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3313
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mTutorial:Lnet/hasnath/android/keyboard/Tutorial;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->startTutorial()V

    goto :goto_0

    .line 3314
    :cond_2
    const-string v0, "com.android.setupwizard:HideTutorial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3315
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mTutorial:Lnet/hasnath/android/keyboard/Tutorial;

    if-eqz v0, :cond_0

    .line 3316
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mTutorial:Lnet/hasnath/android/keyboard/Tutorial;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/Tutorial;->close()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3317
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mTutorial:Lnet/hasnath/android/keyboard/Tutorial;

    goto :goto_0
.end method

.method private clearSuggestions()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2526
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Lnet/hasnath/android/keyboard/LatinIME;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 2527
    return-void
.end method

.method private commitTyped(Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .param p1, "inputConnection"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v1, 0x1

    .line 1427
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    if-eqz v0, :cond_2

    .line 1428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    .line 1429
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1430
    if-eqz p1, :cond_0

    .line 1432
    sget v0, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v0, v1, :cond_3

    .line 1433
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->bComposing:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1438
    :cond_0
    :goto_0
    sget v0, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v0, v1, :cond_4

    .line 1439
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->bComposing:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCommittedLength:I

    .line 1442
    :goto_1
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lnet/hasnath/android/keyboard/TextEntryState;->acceptedTyped(Ljava/lang/CharSequence;)V

    .line 1444
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->addToDictionaries(Ljava/lang/CharSequence;I)V

    .line 1446
    :cond_1
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateSuggestions()V

    .line 1448
    :cond_2
    return-void

    .line 1435
    :cond_3
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 1441
    :cond_4
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCommittedLength:I

    goto :goto_1
.end method

.method private commitVoiceInput()V
    .locals 2

    .prologue
    .line 1405
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1406
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1407
    :cond_0
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateSuggestions()V

    .line 1408
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInputHighlighted:Z

    .line 1409
    return-void
.end method

.method private copyTextToClipBoard()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1834
    :try_start_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 1835
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x1f4

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x1f4

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1836
    .local v4, "text":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1837
    .local v3, "sdk":I
    const/16 v5, 0xb

    if-ge v3, v5, :cond_0

    .line 1839
    const-string v5, "clipboard"

    invoke-virtual {p0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 1840
    .local v1, "clipboard":Landroid/text/ClipboardManager;
    invoke-virtual {v1, v4}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1851
    .end local v1    # "clipboard":Landroid/text/ClipboardManager;
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v3    # "sdk":I
    .end local v4    # "text":Ljava/lang/String;
    :goto_0
    return-void

    .line 1843
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v3    # "sdk":I
    .restart local v4    # "text":Ljava/lang/String;
    :cond_0
    const-string v5, "clipboard"

    invoke-virtual {p0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 1844
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string v5, "Ridmik Keyboard"

    invoke-static {v5, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 1845
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1848
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v3    # "sdk":I
    .end local v4    # "text":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private cutFromInputArea()V
    .locals 2

    .prologue
    const/16 v1, 0x1f4

    .line 1877
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->copyTextToClipBoard()V

    .line 1878
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1879
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-interface {v0, v1, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1881
    return-void
.end method

.method private doubleSpace()V
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1506
    iget v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    if-nez v2, :cond_1

    .line 1520
    :cond_0
    :goto_0
    return-void

    .line 1507
    :cond_1
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1508
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1509
    invoke-interface {v0, v6, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1510
    .local v1, "lastThree":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 1511
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1512
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_0

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_0

    .line 1513
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1514
    invoke-interface {v0, v5, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1515
    const-string v2, "  "

    invoke-interface {v0, v2, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1516
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1517
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1518
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAddedAutoSpace:Z

    goto :goto_0
.end method

.method private fieldCanDoVoice(Lnet/hasnath/android/ridmik/voice/FieldContext;)Z
    .locals 1
    .param p1, "fieldContext"    # Lnet/hasnath/android/ridmik/voice/FieldContext;

    .prologue
    .line 3242
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPasswordText:Z

    if-nez v0, :cond_0

    .line 3243
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    if-eqz v0, :cond_0

    .line 3244
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->isBlacklistedField(Lnet/hasnath/android/ridmik/voice/FieldContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3242
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAsciiEquiv(I)I
    .locals 0
    .param p1, "ascii"    # I

    .prologue
    .line 1762
    packed-switch p1, :pswitch_data_0

    .line 1827
    .end local p1    # "ascii":I
    :goto_0
    :pswitch_0
    return p1

    .line 1765
    .restart local p1    # "ascii":I
    :pswitch_1
    const/16 p1, 0x9e6

    goto :goto_0

    .line 1766
    :pswitch_2
    const/16 p1, 0x9e7

    goto :goto_0

    .line 1767
    :pswitch_3
    const/16 p1, 0x9e8

    goto :goto_0

    .line 1768
    :pswitch_4
    const/16 p1, 0x9e9

    goto :goto_0

    .line 1769
    :pswitch_5
    const/16 p1, 0x9ea

    goto :goto_0

    .line 1770
    :pswitch_6
    const/16 p1, 0x9eb

    goto :goto_0

    .line 1771
    :pswitch_7
    const/16 p1, 0x9ec

    goto :goto_0

    .line 1772
    :pswitch_8
    const/16 p1, 0x9ed

    goto :goto_0

    .line 1773
    :pswitch_9
    const/16 p1, 0x9ee

    goto :goto_0

    .line 1774
    :pswitch_a
    const/16 p1, 0x9ef

    goto :goto_0

    .line 1778
    :pswitch_b
    const/16 p1, 0x982

    goto :goto_0

    .line 1779
    :pswitch_c
    const/16 p1, 0x9df

    goto :goto_0

    .line 1780
    :pswitch_d
    const/16 p1, 0x9a2

    goto :goto_0

    .line 1781
    :pswitch_e
    const/16 p1, 0x9ab

    goto :goto_0

    .line 1782
    :pswitch_f
    const/16 p1, 0x9a0

    goto :goto_0

    .line 1783
    :pswitch_10
    const/16 p1, 0x99b

    goto :goto_0

    .line 1784
    :pswitch_11
    const/16 p1, 0x99d

    goto :goto_0

    .line 1785
    :pswitch_12
    const/16 p1, 0x99e

    goto :goto_0

    .line 1786
    :pswitch_13
    const/16 p1, 0x998

    goto :goto_0

    .line 1787
    :pswitch_14
    const/16 p1, 0x9dd

    goto :goto_0

    .line 1788
    :pswitch_15
    const/16 p1, 0x990

    goto :goto_0

    .line 1789
    :pswitch_16
    const/16 p1, 0x989

    goto :goto_0

    .line 1790
    :pswitch_17
    const/16 p1, 0x987

    goto :goto_0

    .line 1791
    :pswitch_18
    const/16 p1, 0x9ad

    goto :goto_0

    .line 1792
    :pswitch_19
    const/16 p1, 0x986

    goto :goto_0

    .line 1793
    :pswitch_1a
    const/16 p1, 0x996

    goto :goto_0

    .line 1794
    :pswitch_1b
    const/16 p1, 0x9ce

    goto :goto_0

    .line 1795
    :pswitch_1c
    const/16 p1, 0x9a7

    goto :goto_0

    .line 1796
    :pswitch_1d
    const/16 p1, 0x983

    goto :goto_0

    .line 1800
    :pswitch_1e
    const/16 p1, 0x993

    goto :goto_0

    .line 1801
    :pswitch_1f
    const/16 p1, 0x98f

    goto :goto_0

    .line 1802
    :pswitch_20
    const/16 p1, 0x9b2

    goto :goto_0

    .line 1803
    :pswitch_21
    const/16 p1, 0x9a3

    goto :goto_0

    .line 1804
    :pswitch_22
    const/16 p1, 0x9b7

    goto :goto_0

    .line 1805
    :pswitch_23
    const/16 p1, 0x9b6

    goto :goto_0

    .line 1806
    :pswitch_24
    const/16 p1, 0x98a

    goto :goto_0

    .line 1807
    :pswitch_25
    const/16 p1, 0x988

    goto :goto_0

    .line 1808
    :pswitch_26
    const/16 p1, 0x994

    goto :goto_0

    .line 1809
    :pswitch_27
    const/16 p1, -0x234

    goto :goto_0

    .line 1810
    :pswitch_28
    const/16 p1, 0x20b9

    goto :goto_0

    .line 1812
    :pswitch_29
    const/16 p1, 0x98b

    goto :goto_0

    .line 1813
    :pswitch_2a
    const/16 p1, 0x9dc

    goto :goto_0

    .line 1815
    :pswitch_2b
    const/16 p1, 0x9c8

    goto/16 :goto_0

    .line 1816
    :pswitch_2c
    const/16 p1, 0x9cc

    goto/16 :goto_0

    .line 1817
    :pswitch_2d
    const/16 p1, 0x9a5

    goto/16 :goto_0

    .line 1818
    :pswitch_2e
    const/16 p1, 0x9af

    goto/16 :goto_0

    .line 1819
    :pswitch_2f
    const/16 p1, 0x985

    goto/16 :goto_0

    .line 1820
    :pswitch_30
    const/16 p1, 0x999

    goto/16 :goto_0

    .line 1821
    :pswitch_31
    const/16 p1, 0x981

    goto/16 :goto_0

    .line 1822
    :pswitch_32
    const/16 p1, -0x24c

    goto/16 :goto_0

    .line 1823
    :pswitch_33
    const/16 p1, -0x235

    goto/16 :goto_0

    .line 1824
    :pswitch_34
    const/16 p1, -0x243

    goto/16 :goto_0

    .line 1762
    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_2f
        :pswitch_17
        :pswitch_25
        :pswitch_16
        :pswitch_24
        :pswitch_29
        :pswitch_1f
        :pswitch_15
        :pswitch_1e
        :pswitch_26
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_13
        :pswitch_30
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_d
        :pswitch_21
        :pswitch_0
        :pswitch_2d
        :pswitch_0
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_2e
        :pswitch_0
        :pswitch_20
        :pswitch_23
        :pswitch_22
        :pswitch_0
        :pswitch_0
        :pswitch_2a
        :pswitch_14
        :pswitch_c
        :pswitch_1b
        :pswitch_b
        :pswitch_1d
        :pswitch_31
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2b
        :pswitch_2c
        :pswitch_27
        :pswitch_32
        :pswitch_33
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_34
        :pswitch_28
    .end packed-switch
.end method

.method private getCursorCapsMode(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)I
    .locals 4
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "attr"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 1465
    const/4 v0, 0x0

    .line 1466
    .local v0, "caps":I
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 1467
    .local v1, "ei":Landroid/view/inputmethod/EditorInfo;
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoCap:Z

    if-eqz v2, :cond_0

    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v2, :cond_0

    .line 1468
    iget v2, p2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-interface {p1, v2}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v0

    .line 1470
    :cond_0
    return v0
.end method

.method static getDictionary(Landroid/content/res/Resources;)[I
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 587
    new-array v0, v2, [I

    .line 588
    .local v0, "dict":[I
    sget v1, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-eq v1, v2, :cond_0

    sget v1, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 589
    :cond_0
    const v1, 0x7f060003

    aput v1, v0, v3

    .line 593
    :goto_0
    return-object v0

    .line 591
    :cond_1
    const v1, 0x7f060001

    aput v1, v0, v3

    goto :goto_0
.end method

.method private getTypedSuggestions(Lnet/hasnath/android/keyboard/WordComposer;)Ljava/util/List;
    .locals 5
    .param p1, "word"    # Lnet/hasnath/android/keyboard/WordComposer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/hasnath/android/keyboard/WordComposer;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2571
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    .line 2572
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2571
    invoke-virtual {v1, v2, p1, v3, v4}, Lnet/hasnath/android/keyboard/Suggest;->getSuggestions(Landroid/view/View;Lnet/hasnath/android/keyboard/WordComposer;ZLjava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 2574
    .local v0, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    return-object v0
.end method

.method private handleBackspace()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x43

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 1961
    iget-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInputHighlighted:Z

    if-eqz v5, :cond_1

    .line 1962
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    .line 1963
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceResults:Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;

    iget-object v4, v4, Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;->candidates:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 1962
    invoke-virtual {v5, v4}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->incrementTextModificationDeleteCount(I)V

    .line 1964
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->revertVoiceInput()V

    .line 2064
    :cond_0
    :goto_0
    return-void

    .line 1967
    :cond_1
    const/4 v0, 0x0

    .line 1968
    .local v0, "deleteChar":Z
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 1969
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    .line 1971
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1973
    iget-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAfterVoiceInput:Z

    if-eqz v5, :cond_2

    .line 1976
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v5}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->getCursorPos()I

    move-result v5

    if-lez v5, :cond_2

    .line 1979
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v5}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->getSelectionSpan()I

    move-result v5

    if-lez v5, :cond_3

    .line 1980
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v5}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->getSelectionSpan()I

    move-result v1

    .line 1981
    .local v1, "deleteLen":I
    :goto_1
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v5, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->incrementTextModificationDeleteCount(I)V

    .line 1986
    .end local v1    # "deleteLen":I
    :cond_2
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShiftKeyState:Lnet/hasnath/android/keyboard/ModifierKeyState;

    invoke-virtual {v5}, Lnet/hasnath/android/keyboard/ModifierKeyState;->isMomentary()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1988
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1989
    const-string v4, ""

    iput-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->bComposing:Ljava/lang/String;

    .line 1990
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    const-string v5, ""

    iput-object v5, v4, Lnet/hasnath/android/keyboard/WordComposer;->bangla:Ljava/lang/String;

    .line 1991
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1992
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/WordComposer;->reset()V

    .line 1993
    iput-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInputHighlighted:Z

    .line 1994
    iput-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    .line 1997
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/CandidateView;->clear()V

    .line 1999
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->reset()V

    .line 2001
    invoke-direct {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->backspaceWord(Landroid/view/inputmethod/InputConnection;)V

    .line 2004
    iput-object v9, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    .line 2033
    :goto_2
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->postUpdateShiftKeyState()V

    .line 2034
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->backspace()V

    .line 2035
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->getState()Lnet/hasnath/android/keyboard/TextEntryState$State;

    move-result-object v4

    sget-object v5, Lnet/hasnath/android/keyboard/TextEntryState$State;->UNDO_COMMIT:Lnet/hasnath/android/keyboard/TextEntryState$State;

    if-ne v4, v5, :cond_9

    .line 2036
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->revertLastWord(Z)V

    .line 2037
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    :cond_3
    move v1, v4

    .line 1980
    goto :goto_1

    .line 2005
    :cond_4
    iget-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    if-eqz v5, :cond_8

    .line 2006
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 2007
    .local v3, "length":I
    if-lez v3, :cond_7

    .line 2008
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v5, v6, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2009
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v5}, Lnet/hasnath/android/keyboard/WordComposer;->deleteLast()V

    .line 2011
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->parser:Lnet/hasnath/ridmikparser/RidmikParser;

    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/hasnath/ridmikparser/RidmikParser;->toBangla(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->bComposing:Ljava/lang/String;

    .line 2012
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->bComposing:Ljava/lang/String;

    iput-object v6, v5, Lnet/hasnath/android/keyboard/WordComposer;->bangla:Ljava/lang/String;

    .line 2015
    sget v5, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v5, v4, :cond_6

    .line 2016
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->bComposing:Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2020
    :goto_3
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 2021
    iput-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    .line 2024
    :cond_5
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->postUpdateSuggestions()V

    goto :goto_2

    .line 2017
    :cond_6
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v2, v5, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_3

    .line 2026
    :cond_7
    invoke-interface {v2, v4, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_2

    .line 2030
    .end local v3    # "length":I
    :cond_8
    const/4 v0, 0x1

    goto :goto_2

    .line 2040
    :cond_9
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v4}, Lnet/hasnath/android/keyboard/LatinIME;->sameAsTextBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2041
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {v2, v4, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2062
    :cond_a
    :goto_4
    iput-object v9, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    .line 2063
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 2043
    :cond_b
    if-eqz v0, :cond_a

    .line 2044
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/CandidateView;->dismissAddToDictionaryHint()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2052
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->revertLastWord(Z)V

    goto :goto_4

    .line 2055
    :cond_c
    invoke-virtual {p0, v8}, Lnet/hasnath/android/keyboard/LatinIME;->sendDownUpKeyEvents(I)V

    .line 2056
    iget v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mDeleteCount:I

    const/16 v5, 0x14

    if-le v4, v5, :cond_a

    .line 2057
    invoke-virtual {p0, v8}, Lnet/hasnath/android/keyboard/LatinIME;->sendDownUpKeyEvents(I)V

    goto :goto_4
.end method

.method private handleCharacter(I[I)V
    .locals 7
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2107
    iget-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInputHighlighted:Z

    if-eqz v4, :cond_0

    .line 2108
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->commitVoiceInput()V

    .line 2111
    :cond_0
    iget-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAfterVoiceInput:Z

    if-eqz v4, :cond_1

    .line 2113
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v4, v3}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->incrementTextModificationInsertCount(I)V

    .line 2115
    :cond_1
    iget v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastSelectionStart:I

    iget v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastSelectionEnd:I

    if-ne v4, v5, :cond_2

    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->isCorrecting()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2116
    invoke-direct {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->abortCorrection(Z)V

    .line 2119
    :cond_2
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->isAlphabet(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isPredictionOn()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isCursorTouchingWord()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2120
    iget-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    if-nez v4, :cond_3

    .line 2121
    iput-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    .line 2122
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2123
    const-string v4, ""

    iput-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->bComposing:Ljava/lang/String;

    .line 2124
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    const-string v5, ""

    iput-object v5, v4, Lnet/hasnath/android/keyboard/WordComposer;->bangla:Ljava/lang/String;

    .line 2125
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-direct {p0, v4}, Lnet/hasnath/android/keyboard/LatinIME;->saveWordInHistory(Ljava/lang/CharSequence;)V

    .line 2126
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/WordComposer;->reset()V

    .line 2129
    :cond_3
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v4

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->isShifted()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2130
    if-eqz p2, :cond_4

    aget v4, p2, v2

    if-ltz v4, :cond_4

    .line 2131
    aget v4, p2, v2

    const v5, 0x10ffff

    if-le v4, v5, :cond_5

    .line 2209
    :cond_4
    :goto_0
    return-void

    .line 2134
    :cond_5
    aget p1, p2, v2

    .line 2135
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2138
    new-instance v4, Ljava/lang/String;

    new-array v5, v3, [I

    aput p1, v5, v2

    invoke-direct {v4, v5, v2, v3}, Ljava/lang/String;-><init>([III)V

    .line 2139
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v5}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2140
    .local v1, "upperCaseString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->codePointCount(II)I

    move-result v4

    if-ne v4, v3, :cond_b

    .line 2141
    invoke-virtual {v1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    .line 2149
    .end local v1    # "upperCaseString":Ljava/lang/String;
    :cond_6
    iget-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    if-eqz v4, :cond_d

    .line 2150
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v4

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->isShifted()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2151
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2152
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_7

    sget v4, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v4, v6, :cond_7

    .line 2153
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v4, v3}, Lnet/hasnath/android/keyboard/WordComposer;->setFirstCharCapitalized(Z)V

    .line 2155
    :cond_7
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    int-to-char v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2157
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->parser:Lnet/hasnath/ridmikparser/RidmikParser;

    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/hasnath/ridmikparser/RidmikParser;->toBangla(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->bComposing:Ljava/lang/String;

    .line 2159
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->bComposing:Ljava/lang/String;

    iput-object v5, v4, Lnet/hasnath/android/keyboard/WordComposer;->bangla:Ljava/lang/String;

    .line 2161
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v4, p1, p2}, Lnet/hasnath/android/keyboard/WordComposer;->add(I[I)V

    .line 2162
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2163
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_a

    .line 2165
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/WordComposer;->size()I

    move-result v4

    if-ne v4, v3, :cond_9

    sget v4, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v4, v6, :cond_9

    .line 2166
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    .line 2167
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->getCursorCapsMode(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)I

    move-result v5

    if-eqz v5, :cond_8

    move v2, v3

    .line 2166
    :cond_8
    invoke-virtual {v4, v2}, Lnet/hasnath/android/keyboard/WordComposer;->setAutoCapitalized(Z)V

    .line 2176
    :cond_9
    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v2, v3, :cond_c

    .line 2177
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->bComposing:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2183
    :cond_a
    :goto_1
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->postUpdateSuggestions()V

    .line 2206
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 2208
    int-to-char v2, p1

    invoke-virtual {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->isWordSeparator(I)Z

    move-result v3

    invoke-static {v2, v3}, Lnet/hasnath/android/keyboard/TextEntryState;->typedCharacter(CZ)V

    goto/16 :goto_0

    .line 2144
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v1    # "upperCaseString":Ljava/lang/String;
    :cond_b
    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->onText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2179
    .end local v1    # "upperCaseString":Ljava/lang/String;
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_c
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_1

    .line 2186
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_d
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPasswordText:Z

    if-eqz v4, :cond_f

    .line 2187
    :cond_e
    int-to-char v2, p1

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->sendKeyChar(C)V

    .line 2188
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    goto/16 :goto_0

    .line 2193
    :cond_f
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2194
    const-string v2, ""

    iput-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->bComposing:Ljava/lang/String;

    .line 2195
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    const-string v4, ""

    iput-object v4, v2, Lnet/hasnath/android/keyboard/WordComposer;->bangla:Ljava/lang/String;

    .line 2196
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/WordComposer;->reset()V

    .line 2197
    iput-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    .line 2200
    invoke-direct {p0, p1, p2}, Lnet/hasnath/android/keyboard/LatinIME;->handleCharacter(I[I)V

    goto/16 :goto_0
.end method

.method private handleClose()V
    .locals 2

    .prologue
    .line 2296
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 2297
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mRecognizing:Z

    if-eqz v1, :cond_0

    .line 2298
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v1}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->cancel()V

    .line 2300
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->requestHideSelf(I)V

    .line 2301
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    if-eqz v1, :cond_1

    .line 2302
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 2303
    .local v0, "inputView":Lnet/hasnath/android/keyboard/LatinKeyboardView;
    if-eqz v0, :cond_1

    .line 2304
    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->closing()V

    .line 2307
    .end local v0    # "inputView":Lnet/hasnath/android/keyboard/LatinKeyboardView;
    :cond_1
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->endSession()V

    .line 2309
    return-void
.end method

.method private handleSeparator(I)V
    .locals 7
    .param p1, "primaryCode"    # I

    .prologue
    const/16 v6, 0x20

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2212
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInputHighlighted:Z

    if-eqz v2, :cond_0

    .line 2213
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->commitVoiceInput()V

    .line 2216
    :cond_0
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAfterVoiceInput:Z

    if-eqz v2, :cond_1

    .line 2218
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v2, v4}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->incrementTextModificationInsertPunctuationCount(I)V

    .line 2222
    :cond_1
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/CandidateView;->dismissAddToDictionaryHint()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2223
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->postUpdateSuggestions()V

    .line 2226
    :cond_2
    const/4 v1, 0x0

    .line 2228
    .local v1, "pickedDefault":Z
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2231
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_3

    .line 2232
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2233
    invoke-direct {p0, v3}, Lnet/hasnath/android/keyboard/LatinIME;->abortCorrection(Z)V

    .line 2235
    :cond_3
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    if-eqz v2, :cond_5

    .line 2240
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoCorrectOn:Z

    if-eqz v2, :cond_b

    const/16 v2, 0x27

    if-eq p1, v2, :cond_b

    .line 2241
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    .line 2242
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 2243
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, p1, :cond_b

    .line 2245
    :cond_4
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->pickDefaultSuggestion()Z

    move-result v1

    .line 2249
    if-ne p1, v6, :cond_5

    .line 2250
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAddedAutoSpace:Z

    .line 2256
    :cond_5
    :goto_0
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAddedAutoSpace:Z

    if-eqz v2, :cond_6

    if-ne p1, v5, :cond_6

    .line 2257
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->removeTrailingSpace()V

    .line 2258
    iput-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAddedAutoSpace:Z

    .line 2261
    :cond_6
    int-to-char v2, p1

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->sendKeyChar(C)V

    .line 2269
    int-to-char v2, p1

    invoke-static {v2, v4}, Lnet/hasnath/android/keyboard/TextEntryState;->typedCharacter(CZ)V

    .line 2275
    if-eq p1, v5, :cond_7

    .line 2276
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->swapPunctuationAndSpace()V

    .line 2279
    :cond_7
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isPredictionOn()Z

    move-result v2

    if-eqz v2, :cond_8

    if-ne p1, v6, :cond_8

    .line 2280
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->maybeDoubleSpace()V

    .line 2283
    :cond_8
    if-eqz v1, :cond_9

    .line 2284
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lnet/hasnath/android/keyboard/TextEntryState;->backToAcceptedDefault(Ljava/lang/CharSequence;)V

    .line 2286
    :cond_9
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 2287
    if-eqz v0, :cond_a

    .line 2288
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2290
    :cond_a
    return-void

    .line 2253
    :cond_b
    invoke-direct {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_0
.end method

.method private handleShift()V
    .locals 1

    .prologue
    .line 2075
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->handleShiftInternal(Z)V

    .line 2076
    return-void
.end method

.method private handleShiftInternal(Z)V
    .locals 6
    .param p1, "forceNormal"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2079
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2080
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    .line 2081
    .local v1, "switcher":Lnet/hasnath/android/keyboard/KeyboardSwitcher;
    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 2082
    .local v0, "inputView":Lnet/hasnath/android/keyboard/LatinKeyboardView;
    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2083
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCapsLock:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_2

    .line 2084
    :cond_0
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCapsLock:Z

    .line 2085
    invoke-virtual {v1, v5}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setShifted(Z)V

    .line 2097
    :cond_1
    :goto_0
    return-void

    .line 2086
    :cond_2
    if-eqz v0, :cond_1

    .line 2087
    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->isShifted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2088
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCapsLock:Z

    .line 2089
    invoke-virtual {v1, v4}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setShiftLocked(Z)V

    goto :goto_0

    .line 2091
    :cond_3
    invoke-virtual {v1, v4}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setShifted(Z)V

    goto :goto_0

    .line 2095
    :cond_4
    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->toggleShift()V

    goto :goto_0
.end method

.method private handleVoiceResults()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 2478
    iput-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAfterVoiceInput:Z

    .line 2479
    iput-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mImmediatelyAfterVoiceInput:Z

    .line 2481
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 2482
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isFullscreenMode()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2484
    if-eqz v3, :cond_0

    .line 2485
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 2486
    .local v5, "req":Landroid/view/inputmethod/ExtractedTextRequest;
    invoke-interface {v3, v5, v7}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    .line 2490
    .end local v5    # "req":Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_0
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->vibrate()V

    .line 2491
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->switchToKeyboardView()V

    .line 2493
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2494
    .local v4, "nBest":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->preferCapitalization()Z

    move-result v8

    if-nez v8, :cond_2

    .line 2495
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2496
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v8

    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->isShifted()Z

    move-result v8

    if-eqz v8, :cond_1

    sget v8, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    :cond_1
    move v2, v6

    .line 2497
    .local v2, "capitalizeFirstWord":Z
    :goto_0
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceResults:Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;

    iget-object v8, v8, Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;->candidates:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 2504
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_5

    .line 2523
    :goto_2
    return-void

    .end local v2    # "capitalizeFirstWord":Z
    :cond_2
    move v2, v7

    .line 2494
    goto :goto_0

    .line 2497
    .restart local v2    # "capitalizeFirstWord":Z
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2498
    .local v1, "c":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 2499
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v1, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2501
    :cond_4
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2508
    .end local v1    # "c":Ljava/lang/String;
    :cond_5
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2510
    .local v0, "bestResult":Ljava/lang/String;
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v8}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->logVoiceInputDelivered(I)V

    .line 2512
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHints:Lnet/hasnath/android/keyboard/Hints;

    invoke-virtual {v6, v0}, Lnet/hasnath/android/keyboard/Hints;->registerVoiceResult(Ljava/lang/String;)V

    .line 2514
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2516
    :cond_6
    invoke-direct {p0, v3}, Lnet/hasnath/android/keyboard/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 2517
    invoke-static {v3, v0}, Lnet/hasnath/android/keyboard/EditingUtil;->appendText(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 2519
    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2521
    :cond_7
    iput-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInputHighlighted:Z

    .line 2522
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceResults:Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;

    iget-object v7, v7, Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;->alternatives:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_2
.end method

.method private initSuggest(Ljava/lang/String;)V
    .locals 7
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 597
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mInputLocale:Ljava/lang/String;

    .line 598
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 599
    .local v2, "orig":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 600
    .local v0, "conf":Landroid/content/res/Configuration;
    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 601
    .local v3, "saveLocale":Ljava/util/Locale;
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v5, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 602
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 603
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    if-eqz v5, :cond_0

    .line 604
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    invoke-virtual {v5}, Lnet/hasnath/android/keyboard/Suggest;->close()V

    .line 606
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 607
    .local v4, "sp":Landroid/content/SharedPreferences;
    const-string v5, "quick_fixes"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mQuickFixes:Z

    .line 609
    invoke-static {v2}, Lnet/hasnath/android/keyboard/LatinIME;->getDictionary(Landroid/content/res/Resources;)[I

    move-result-object v1

    .line 611
    .local v1, "dictionaries":[I
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    if-eqz v5, :cond_1

    .line 612
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    invoke-virtual {v5}, Lnet/hasnath/android/keyboard/Suggest;->close()V

    .line 614
    :cond_1
    new-instance v5, Lnet/hasnath/android/keyboard/Suggest;

    invoke-direct {v5, p0, v1}, Lnet/hasnath/android/keyboard/Suggest;-><init>(Lnet/hasnath/android/keyboard/LatinIME;[I)V

    iput-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    .line 615
    invoke-direct {p0, v3}, Lnet/hasnath/android/keyboard/LatinIME;->updateAutoTextEnabled(Ljava/util/Locale;)V

    .line 647
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateCorrectionMode()V

    .line 648
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f07007d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordSeparators:Ljava/lang/String;

    .line 649
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f07007e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSentenceSeparators:Ljava/lang/String;

    .line 651
    iput-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 652
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 653
    return-void
.end method

.method private initSuggestPuncList()V
    .locals 4

    .prologue
    .line 3439
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggestPuncList:Ljava/util/List;

    .line 3440
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f07007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggestPuncs:Ljava/lang/String;

    .line 3441
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggestPuncs:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3442
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggestPuncs:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 3447
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 3443
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggestPuncList:Ljava/util/List;

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggestPuncs:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3442
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isAlphabet(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 1582
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1583
    const/4 v0, 0x1

    .line 1585
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCandidateStripVisible()Z
    .locals 1

    .prologue
    .line 2343
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isPredictionOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowSuggestions:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCursorTouchingWord()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2988
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2989
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 3002
    :cond_0
    :goto_0
    return v3

    .line 2990
    :cond_1
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2991
    .local v1, "toLeft":Ljava/lang/CharSequence;
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2992
    .local v2, "toRight":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2993
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->isWordSeparator(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2994
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->isSuggestedPunctuation(I)Z

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    .line 2995
    goto :goto_0

    .line 2997
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2998
    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->isWordSeparator(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2999
    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->isSuggestedPunctuation(I)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    .line 3000
    goto :goto_0
.end method

.method private isHardwareKeyboardAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2071
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPredictionOn()Z
    .locals 1

    .prologue
    .line 2339
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    return v0
.end method

.method private isSentenceSeparator(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 3046
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSentenceSeparators:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isShowingOptionDialog()Z
    .locals 1

    .prologue
    .line 1615
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSuggestedPunctuation(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 3450
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggestPuncs:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private loadSettings()V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 3385
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3386
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v7, "vibrate_on"

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVibrateOn:Z

    .line 3387
    const-string v7, "sound_on"

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSoundOn:Z

    .line 3388
    const-string v7, "popup_on"

    .line 3389
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f090004

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 3388
    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPopupOn:Z

    .line 3390
    const-string v7, "auto_cap"

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoCap:Z

    .line 3391
    const-string v7, "volume_cursor"

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVolumeCursor:Z

    .line 3392
    const-string v7, "long_press_delay"

    .line 3393
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080054

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 3392
    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLongPressDelay:I

    .line 3395
    const-string v7, "quick_fixes"

    invoke-interface {v1, v7, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mQuickFixes:Z

    .line 3396
    const-string v7, "has_used_voice_input"

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHasUsedVoiceInput:Z

    .line 3398
    const-string v7, "has_used_voice_input_unsupported_locale"

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 3397
    iput-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHasUsedVoiceInputUnsupportedLocale:Z

    .line 3406
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 3407
    const-string v8, "latin_ime_voice_input_supported_locales"

    .line 3408
    const-string v9, "en en_US en_GB en_AU en_CA en_IE en_IN en_NZ en_SG en_ZA "

    .line 3405
    invoke-static {v7, v8, v9}, Lnet/hasnath/android/ridmik/voice/SettingsUtil;->getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3410
    .local v2, "supportedLocalesString":Ljava/lang/String;
    const-string v7, "\\s+"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnet/hasnath/android/keyboard/LatinIME;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3412
    .local v3, "voiceInputSupportedLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mInputLocale:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLocaleSupportedForVoiceInput:Z

    .line 3414
    const-string v7, "show_suggestions"

    invoke-interface {v1, v7, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowSuggestions:Z

    .line 3417
    const-string v7, "voice_mode"

    .line 3418
    const v8, 0x7f0700de

    invoke-virtual {p0, v8}, Lnet/hasnath/android/keyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3417
    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3419
    .local v4, "voiceMode":Ljava/lang/String;
    const v7, 0x7f0700e0

    invoke-virtual {p0, v7}, Lnet/hasnath/android/keyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 3420
    iget-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoiceButton:Z

    if-eqz v7, :cond_2

    .line 3421
    .local v0, "enableVoice":Z
    :goto_0
    const/4 v5, 0x0

    .line 3422
    .local v5, "voiceOnPrimary":Z
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    if-eqz v6, :cond_1

    .line 3423
    iget-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoice:Z

    if-ne v0, v6, :cond_0

    iget-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceOnPrimary:Z

    if-eq v5, v6, :cond_1

    .line 3424
    :cond_0
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v6, v0, v5}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setVoiceMode(ZZ)V

    .line 3426
    :cond_1
    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoice:Z

    .line 3427
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceOnPrimary:Z

    .line 3429
    const-string v6, "auto_complete"

    .line 3430
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    const/high16 v8, 0x7f090000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 3429
    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 3430
    iget-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowSuggestions:Z

    and-int/2addr v6, v7

    .line 3429
    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoCorrectEnabled:Z

    .line 3433
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateCorrectionMode()V

    .line 3434
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v6}, Lnet/hasnath/android/keyboard/LatinIME;->updateAutoTextEnabled(Ljava/util/Locale;)V

    .line 3435
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v6, v1}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;)Z

    .line 3436
    return-void

    .end local v0    # "enableVoice":Z
    .end local v5    # "voiceOnPrimary":Z
    :cond_2
    move v0, v6

    .line 3419
    goto :goto_0
.end method

.method private makeFieldContext()Lnet/hasnath/android/ridmik/voice/FieldContext;
    .locals 5

    .prologue
    .line 3234
    new-instance v0, Lnet/hasnath/android/ridmik/voice/FieldContext;

    .line 3235
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 3236
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    .line 3237
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v3

    .line 3238
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getEnabledLanguages()[Ljava/lang/String;

    move-result-object v4

    .line 3234
    invoke-direct {v0, v1, v2, v3, v4}, Lnet/hasnath/android/ridmik/voice/FieldContext;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method private manageSmileyKeyboard(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 1889
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->manageSmileyKeyboard(I)V

    .line 1890
    return-void
.end method

.method private maybeDoubleSpace()V
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1524
    iget v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    if-nez v2, :cond_1

    .line 1545
    :cond_0
    :goto_0
    return-void

    .line 1525
    :cond_1
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1526
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1527
    invoke-interface {v0, v6, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1528
    .local v1, "lastThree":Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 1529
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1530
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_3

    .line 1531
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_3

    .line 1532
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    check-cast v2, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;->isAcceptingDoubleSpaces()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1533
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    check-cast v2, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;->cancelDoubleSpacesTimer()V

    .line 1534
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1535
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1536
    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v2, v5, :cond_2

    .line 1537
    const-string v2, ". "

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1539
    :goto_1
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1540
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1541
    iput-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAddedAutoSpace:Z

    goto :goto_0

    .line 1538
    :cond_2
    const-string v2, "\u0964 "

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_1

    .line 1543
    :cond_3
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    check-cast v2, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;->startDoubleSpacesTimer()V

    goto :goto_0
.end method

.method private maybeRemovePreviousPeriod(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v5, 0x2e

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1549
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1550
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1560
    :cond_0
    :goto_0
    return-void

    .line 1554
    :cond_1
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1555
    .local v1, "lastOne":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1556
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1557
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1558
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0
.end method

.method private measureCps()V
    .locals 10

    .prologue
    .line 3560
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3561
    .local v2, "now":J
    iget-wide v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastCpsTime:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_0

    const-wide/16 v6, 0x64

    sub-long v6, v2, v6

    iput-wide v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastCpsTime:J

    .line 3562
    :cond_0
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCpsIntervals:[J

    iget v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCpsIndex:I

    iget-wide v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastCpsTime:J

    sub-long v8, v2, v8

    aput-wide v8, v1, v6

    .line 3563
    iput-wide v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastCpsTime:J

    .line 3564
    iget v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCpsIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x10

    iput v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCpsIndex:I

    .line 3565
    const-wide/16 v4, 0x0

    .line 3566
    .local v4, "total":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 3567
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CPS = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x467a0000    # 16000.0f

    long-to-float v8, v4

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3568
    return-void

    .line 3566
    :cond_1
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCpsIntervals:[J

    aget-wide v6, v1, v0

    add-long/2addr v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static varargs newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 3
    .param p0, "elements"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3524
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6e

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v0, v2, 0x5

    .line 3525
    .local v0, "capacity":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3526
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3527
    return-object v1
.end method

.method private onOptionKeyLongPressed()V
    .locals 1

    .prologue
    .line 1605
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isShowingOptionDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1606
    invoke-static {p0}, Lnet/hasnath/android/keyboard/LatinIMEUtil;->hasMultipleEnabledIMEs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1607
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->showInputMethodPicker()V

    .line 1612
    :cond_0
    :goto_0
    return-void

    .line 1609
    :cond_1
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->launchSettings()V

    goto :goto_0
.end method

.method private onOptionKeyPressed()V
    .locals 1

    .prologue
    .line 1595
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isShowingOptionDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1596
    invoke-static {p0}, Lnet/hasnath/android/keyboard/LatinIMEUtil;->hasMultipleEnabledIMEs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1597
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->showOptionsMenu()V

    .line 1602
    :cond_0
    :goto_0
    return-void

    .line 1599
    :cond_1
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->launchSettings()V

    goto :goto_0
.end method

.method private pasteFromClipBoard()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1856
    :try_start_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1857
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1858
    .local v3, "sdk":I
    const/4 v4, 0x0

    .line 1859
    .local v4, "text":Ljava/lang/String;
    const/16 v5, 0xb

    if-ge v3, v5, :cond_1

    .line 1861
    const-string v5, "clipboard"

    invoke-virtual {p0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1862
    .local v0, "clipboard":Landroid/text/ClipboardManager;
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1870
    .end local v0    # "clipboard":Landroid/text/ClipboardManager;
    :goto_0
    if-eqz v4, :cond_0

    .line 1871
    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1875
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v3    # "sdk":I
    .end local v4    # "text":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 1866
    .restart local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v3    # "sdk":I
    .restart local v4    # "text":Ljava/lang/String;
    :cond_1
    const-string v5, "clipboard"

    invoke-virtual {p0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 1867
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    .line 1868
    .local v2, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 1872
    .end local v0    # "clipboard":Landroid/content/ClipboardManager;
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "item":Landroid/content/ClipData$Item;
    .end local v3    # "sdk":I
    .end local v4    # "text":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private pickDefaultSuggestion()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2637
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2638
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2639
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateSuggestions()V

    .line 2641
    :cond_0
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 2642
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lnet/hasnath/android/keyboard/TextEntryState;->acceptedDefault(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2643
    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAccepted:Z

    .line 2644
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v1}, Lnet/hasnath/android/keyboard/LatinIME;->pickSuggestion(Ljava/lang/CharSequence;Z)V

    .line 2647
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v0}, Lnet/hasnath/android/keyboard/LatinIME;->addToDictionaries(Ljava/lang/CharSequence;I)V

    .line 2651
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private pickSuggestion(Ljava/lang/CharSequence;Z)V
    .locals 7
    .param p1, "suggestion"    # Ljava/lang/CharSequence;
    .param p2, "correcting"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2779
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v2

    .line 2780
    .local v2, "inputView":Lnet/hasnath/android/keyboard/LatinKeyboardView;
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v1

    .line 2781
    .local v1, "inputLocale":Ljava/util/Locale;
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCapsLock:Z

    if-eqz v3, :cond_3

    .line 2782
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 2789
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2790
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 2791
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->rememberReplacedWord(Ljava/lang/CharSequence;)V

    .line 2793
    sget v3, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v3, v5, :cond_5

    .line 2794
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->parser:Lnet/hasnath/ridmikparser/RidmikParser;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/hasnath/ridmikparser/RidmikParser;->toBangla(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2798
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->saveWordInHistory(Ljava/lang/CharSequence;)V

    .line 2799
    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    .line 2802
    sget v3, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v3, v5, :cond_6

    .line 2803
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->parser:Lnet/hasnath/ridmikparser/RidmikParser;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/hasnath/ridmikparser/RidmikParser;->toBangla(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCommittedLength:I

    .line 2806
    :goto_2
    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getKeyboard()Lnet/hasnath/android/keyboard/Keyboard;

    move-result-object v3

    check-cast v3, Lnet/hasnath/android/keyboard/LatinKeyboard;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setPreferredLetters([I)V

    .line 2808
    if-nez p2, :cond_2

    .line 2809
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->setNextSuggestions()V

    .line 2811
    :cond_2
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 2812
    return-void

    .line 2783
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_3
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->preferCapitalization()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2784
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2785
    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->isShifted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2786
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2787
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {p1, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2786
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 2796
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_5
    invoke-interface {v0, p1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_1

    .line 2804
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iput v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCommittedLength:I

    goto :goto_2
.end method

.method private playKeyClick(I)V
    .locals 3
    .param p1, "primaryCode"    # I

    .prologue
    .line 3275
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 3276
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3277
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateRingerMode()V

    .line 3280
    :cond_0
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSoundOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSilentMode:Z

    if-nez v1, :cond_1

    .line 3283
    const/4 v0, 0x5

    .line 3284
    .local v0, "sound":I
    sparse-switch p1, :sswitch_data_0

    .line 3295
    :goto_0
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->FX_VOLUME:F

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 3297
    .end local v0    # "sound":I
    :cond_1
    return-void

    .line 3286
    .restart local v0    # "sound":I
    :sswitch_0
    const/4 v0, 0x7

    .line 3287
    goto :goto_0

    .line 3289
    :sswitch_1
    const/16 v0, 0x8

    .line 3290
    goto :goto_0

    .line 3292
    :sswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 3284
    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_0
        0xa -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method private postUpdateOldSuggestions()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    .line 2334
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2335
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2336
    return-void
.end method

.method private postUpdateShiftKeyState()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 1451
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1453
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1454
    return-void
.end method

.method private postUpdateSuggestions()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2329
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2330
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2331
    return-void
.end method

.method private reallyStartListening(Z)V
    .locals 6
    .param p1, "swipe"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2395
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHasUsedVoiceInput:Z

    if-nez v2, :cond_0

    .line 2399
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2400
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "has_used_voice_input"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2401
    invoke-static {v1}, Lnet/hasnath/android/keyboard/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 2402
    iput-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHasUsedVoiceInput:Z

    .line 2405
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLocaleSupportedForVoiceInput:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHasUsedVoiceInputUnsupportedLocale:Z

    if-nez v2, :cond_1

    .line 2409
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2410
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "has_used_voice_input_unsupported_locale"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2411
    invoke-static {v1}, Lnet/hasnath/android/keyboard/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 2412
    iput-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHasUsedVoiceInputUnsupportedLocale:Z

    .line 2416
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->clearSuggestions()V

    .line 2418
    new-instance v0, Lnet/hasnath/android/ridmik/voice/FieldContext;

    .line 2419
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 2420
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    .line 2421
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v4

    .line 2422
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v5}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getEnabledLanguages()[Ljava/lang/String;

    move-result-object v5

    .line 2418
    invoke-direct {v0, v2, v3, v4, v5}, Lnet/hasnath/android/ridmik/voice/FieldContext;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2423
    .local v0, "context":Lnet/hasnath/android/ridmik/voice/FieldContext;
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v2, v0, p1}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->startListening(Lnet/hasnath/android/ridmik/voice/FieldContext;Z)V

    .line 2424
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->switchToRecognitionStatusView()V

    .line 2425
    return-void
.end method

.method private reloadKeyboards()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1412
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v0, v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setLanguageSwitcher(Lnet/hasnath/android/keyboard/LanguageSwitcher;)V

    .line 1413
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1414
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getKeyboardMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1415
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoice:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoiceButton:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceOnPrimary:Z

    invoke-virtual {v2, v0, v3}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setVoiceMode(ZZ)V

    .line 1417
    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->makeKeyboards(Z)V

    .line 1418
    return-void

    .line 1415
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rememberReplacedWord(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    .line 2748
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowingVoiceSuggestions:Z

    if-eqz v3, :cond_2

    .line 2750
    new-instance v0, Lnet/hasnath/android/keyboard/EditingUtil$Range;

    invoke-direct {v0}, Lnet/hasnath/android/keyboard/EditingUtil$Range;-><init>()V

    .line 2751
    .local v0, "range":Lnet/hasnath/android/keyboard/EditingUtil$Range;
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 2752
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordSeparators:Ljava/lang/String;

    .line 2751
    invoke-static {v3, v4, v0}, Lnet/hasnath/android/keyboard/EditingUtil;->getWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Lnet/hasnath/android/keyboard/EditingUtil$Range;)Ljava/lang/String;

    move-result-object v2

    .line 2753
    .local v2, "wordToBeReplaced":Ljava/lang/String;
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2754
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 2756
    :cond_0
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2757
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2758
    .local v1, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2759
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2761
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2762
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2763
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2766
    .end local v0    # "range":Lnet/hasnath/android/keyboard/EditingUtil$Range;
    .end local v1    # "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v2    # "wordToBeReplaced":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private removeTrailingSpace()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1563
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1564
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1571
    :cond_0
    :goto_0
    return-void

    .line 1566
    :cond_1
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1567
    .local v1, "lastOne":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1568
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 1569
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0
.end method

.method private resetShift()V
    .locals 1

    .prologue
    .line 2067
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->handleShiftInternal(Z)V

    .line 2068
    return-void
.end method

.method private reswapPeriodAndSpace()V
    .locals 8

    .prologue
    const/16 v7, 0x2e

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1489
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1490
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1502
    :cond_0
    :goto_0
    return-void

    .line 1491
    :cond_1
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1492
    .local v1, "lastThree":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1493
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_0

    .line 1494
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 1495
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_0

    .line 1496
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1497
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1498
    const-string v2, " .."

    invoke-interface {v0, v2, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1499
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1500
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_0
.end method

.method private revertVoiceInput()V
    .locals 3

    .prologue
    .line 1398
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1399
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1400
    :cond_0
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateSuggestions()V

    .line 1401
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInputHighlighted:Z

    .line 1402
    return-void
.end method

.method private sameAsTextBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 3006
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3007
    .local v0, "beforeText":Ljava/lang/CharSequence;
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private saveWordInHistory(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/CharSequence;

    .prologue
    .line 2312
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/WordComposer;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 2313
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/WordComposer;->reset()V

    .line 2326
    :cond_0
    :goto_0
    return-void

    .line 2317
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2322
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2323
    .local v1, "resultCopy":Ljava/lang/String;
    new-instance v0, Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;

    .line 2324
    new-instance v2, Lnet/hasnath/android/keyboard/WordComposer;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-direct {v2, v3}, Lnet/hasnath/android/keyboard/WordComposer;-><init>(Lnet/hasnath/android/keyboard/WordComposer;)V

    .line 2323
    invoke-direct {v0, p0, v1, v2}, Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;-><init>(Lnet/hasnath/android/keyboard/LatinIME;Ljava/lang/CharSequence;Lnet/hasnath/android/keyboard/WordComposer;)V

    .line 2325
    .local v0, "entry":Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private sendSpace()V
    .locals 1

    .prologue
    .line 3050
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->sendKeyChar(C)V

    .line 3051
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 3053
    return-void
.end method

.method private setCandidatesViewShownInternal(ZZ)V
    .locals 1
    .param p1, "shown"    # Z
    .param p2, "needsInputViewShown"    # Z

    .prologue
    .line 1202
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->onEvaluateInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1203
    if-eqz p1, :cond_2

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1204
    if-eqz p2, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1203
    :goto_0
    invoke-super {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 1206
    :cond_1
    return-void

    .line 1204
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNextSuggestions()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2927
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPuncSuggestion:Z

    if-eqz v0, :cond_0

    .line 2928
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggestPuncList:Ljava/util/List;

    invoke-direct {p0, v0, v1, v1, v1}, Lnet/hasnath/android/keyboard/LatinIME;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 2931
    :goto_0
    return-void

    .line 2930
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1, v1, v1}, Lnet/hasnath/android/keyboard/LatinIME;->setSuggestions(Ljava/util/List;ZZZ)V

    goto :goto_0
.end method

.method private setOldSuggestions()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2895
    const/4 v2, 0x0

    iput-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowingVoiceSuggestions:Z

    .line 2896
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/CandidateView;->isShowingAddToDictionaryHint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2924
    :cond_0
    :goto_0
    return-void

    .line 2899
    :cond_1
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2900
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2901
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    if-nez v2, :cond_4

    .line 2904
    iget v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastSelectionStart:I

    iget v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastSelectionEnd:I

    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordSeparators:Ljava/lang/String;

    .line 2903
    invoke-static {v0, v2, v3, v4}, Lnet/hasnath/android/keyboard/EditingUtil;->getWordAtCursorOrSelection(Landroid/view/inputmethod/InputConnection;IILjava/lang/String;)Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;

    move-result-object v1

    .line 2906
    .local v1, "touching":Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;
    if-eqz v1, :cond_3

    iget-object v2, v1, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v5, :cond_3

    .line 2907
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2909
    invoke-direct {p0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->applyVoiceAlternatives(Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->applyTypedAlternatives(Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2910
    invoke-direct {p0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->abortCorrection(Z)V

    .line 2916
    :goto_1
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 2912
    :cond_2
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->selectedForCorrection()V

    .line 2913
    invoke-static {v0, v1}, Lnet/hasnath/android/keyboard/EditingUtil;->underlineWord(Landroid/view/inputmethod/InputConnection;Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;)V

    goto :goto_1

    .line 2918
    :cond_3
    invoke-direct {p0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->abortCorrection(Z)V

    .line 2919
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->setNextSuggestions()V

    goto :goto_0

    .line 2922
    .end local v1    # "touching":Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;
    :cond_4
    invoke-direct {p0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->abortCorrection(Z)V

    goto :goto_0
.end method

.method private setSuggestions(Ljava/util/List;ZZZ)V
    .locals 3
    .param p2, "completions"    # Z
    .param p3, "typedWordValid"    # Z
    .param p4, "haveMinimalSuggestion"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .line 2535
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mIsShowingHint:Z

    if-eqz v0, :cond_0

    .line 2536
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->setCandidatesView(Landroid/view/View;)V

    .line 2537
    iput-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mIsShowingHint:Z

    .line 2540
    :cond_0
    sget v0, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2541
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->bComposing:Ljava/lang/String;

    invoke-interface {p1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2543
    :cond_1
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    if-eqz v0, :cond_2

    .line 2544
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/hasnath/android/keyboard/CandidateView;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 2547
    :cond_2
    return-void
.end method

.method private shouldShowVoiceButton(Lnet/hasnath/android/ridmik/voice/FieldContext;Landroid/view/inputmethod/EditorInfo;)Z
    .locals 2
    .param p1, "fieldContext"    # Lnet/hasnath/android/ridmik/voice/FieldContext;
    .param p2, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 3248
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->fieldCanDoVoice(Lnet/hasnath/android/ridmik/voice/FieldContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3249
    if-eqz p2, :cond_0

    .line 3250
    const-string v0, "nm"

    iget-object v1, p2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3251
    :cond_0
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3248
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showCorrections(Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;)V
    .locals 4
    .param p1, "alternatives"    # Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;

    .prologue
    const/4 v3, 0x0

    .line 2578
    invoke-virtual {p1}, Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;->getAlternatives()Ljava/util/List;

    move-result-object v0

    .line 2579
    .local v0, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getKeyboard()Lnet/hasnath/android/keyboard/Keyboard;

    move-result-object v1

    check-cast v1, Lnet/hasnath/android/keyboard/LatinKeyboard;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setPreferredLetters([I)V

    .line 2580
    invoke-virtual {p1}, Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;->getOriginalWord()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3, v3}, Lnet/hasnath/android/keyboard/LatinIME;->showSuggestions(Ljava/util/List;Ljava/lang/CharSequence;ZZ)V

    .line 2581
    return-void
.end method

.method private showInputMethodPicker()V
    .locals 1

    .prologue
    .line 1590
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1591
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 1592
    return-void
.end method

.method private showOptionsMenu()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 3460
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3461
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3462
    const v6, 0x7f02004d

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3463
    const/high16 v6, 0x1040000

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3464
    const v6, 0x7f07008a

    invoke-virtual {p0, v6}, Lnet/hasnath/android/keyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3465
    .local v3, "itemSettings":Ljava/lang/CharSequence;
    const v6, 0x7f0700ec

    invoke-virtual {p0, v6}, Lnet/hasnath/android/keyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3466
    .local v1, "itemInputMethod":Ljava/lang/CharSequence;
    const-string v2, "Ridmik Key Map"

    .line 3468
    .local v2, "itemKeymap":Ljava/lang/CharSequence;
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    .line 3469
    aput-object v1, v6, v7

    aput-object v2, v6, v8

    const/4 v7, 0x2

    aput-object v3, v6, v7

    .line 3470
    new-instance v7, Lnet/hasnath/android/keyboard/LatinIME$7;

    invoke-direct {v7, p0}, Lnet/hasnath/android/keyboard/LatinIME$7;-><init>(Lnet/hasnath/android/keyboard/LatinIME;)V

    .line 3468
    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3503
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f07008b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3504
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 3505
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 3506
    .local v5, "window":Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 3507
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v6}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v6

    invoke-virtual {v6}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3508
    const/16 v6, 0x3eb

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3509
    invoke-virtual {v5, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3510
    const/high16 v6, 0x20000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 3511
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 3512
    return-void
.end method

.method private showSuggestions(Ljava/util/List;Ljava/lang/CharSequence;ZZ)V
    .locals 4
    .param p2, "typedWord"    # Ljava/lang/CharSequence;
    .param p3, "typedWordValid"    # Z
    .param p4, "correctionAvailable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/CharSequence;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .local p1, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2619
    invoke-direct {p0, p1, v2, p3, p4}, Lnet/hasnath/android/keyboard/LatinIME;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 2620
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2621
    if-eqz p4, :cond_1

    if-nez p3, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    sget v0, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 2622
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    .line 2629
    :goto_0
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isCandidateStripVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCompletionOn:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowCandidate:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->setCandidatesViewShown(Z)V

    .line 2630
    return-void

    .line 2624
    :cond_1
    iput-object p2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    goto :goto_0

    .line 2627
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_3
    move v0, v2

    .line 2629
    goto :goto_1
.end method

.method private showSuggestions(Lnet/hasnath/android/keyboard/WordComposer;)V
    .locals 11
    .param p1, "word"    # Lnet/hasnath/android/keyboard/WordComposer;

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2586
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 2587
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordSeparators:Ljava/lang/String;

    .line 2586
    invoke-static {v6, v9}, Lnet/hasnath/android/keyboard/EditingUtil;->getPreviousWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2588
    .local v2, "prevWord":Ljava/lang/CharSequence;
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    .line 2589
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v9}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v9

    .line 2588
    invoke-virtual {v6, v9, p1, v8, v2}, Lnet/hasnath/android/keyboard/Suggest;->getSuggestions(Landroid/view/View;Lnet/hasnath/android/keyboard/WordComposer;ZLjava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    .line 2594
    .local v3, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    invoke-virtual {v6}, Lnet/hasnath/android/keyboard/Suggest;->getNextLettersFrequencies()[I

    move-result-object v1

    .line 2596
    .local v1, "nextLettersFrequencies":[I
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v6}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v6

    invoke-virtual {v6}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getKeyboard()Lnet/hasnath/android/keyboard/Keyboard;

    move-result-object v6

    check-cast v6, Lnet/hasnath/android/keyboard/LatinKeyboard;

    invoke-virtual {v6, v1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setPreferredLetters([I)V

    .line 2599
    iget-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mInputTypeNoAutoCorrect:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    invoke-virtual {v6}, Lnet/hasnath/android/keyboard/Suggest;->hasMinimalCorrection()Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v7

    .line 2601
    .local v0, "correctionAvailable":Z
    :goto_0
    invoke-virtual {p1}, Lnet/hasnath/android/keyboard/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v4

    .line 2603
    .local v4, "typedWord":Ljava/lang/CharSequence;
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    invoke-virtual {v6, v4}, Lnet/hasnath/android/keyboard/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2604
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->preferCapitalization()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2605
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lnet/hasnath/android/keyboard/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget v6, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-eq v6, v10, :cond_4

    :cond_0
    move v5, v8

    .line 2606
    .local v5, "typedWordValid":Z
    :goto_1
    iget v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    if-eq v6, v10, :cond_1

    .line 2607
    iget v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    const/4 v9, 0x3

    if-ne v6, v9, :cond_2

    .line 2608
    :cond_1
    or-int/2addr v0, v5

    .line 2611
    :cond_2
    invoke-virtual {p1}, Lnet/hasnath/android/keyboard/WordComposer;->isMostlyCaps()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v8

    :goto_2
    and-int/2addr v0, v6

    .line 2612
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->isCorrecting()Z

    move-result v6

    if-eqz v6, :cond_6

    :goto_3
    and-int/2addr v0, v8

    .line 2614
    invoke-direct {p0, v3, v4, v5, v0}, Lnet/hasnath/android/keyboard/LatinIME;->showSuggestions(Ljava/util/List;Ljava/lang/CharSequence;ZZ)V

    .line 2615
    return-void

    .end local v0    # "correctionAvailable":Z
    .end local v4    # "typedWord":Ljava/lang/CharSequence;
    .end local v5    # "typedWordValid":Z
    :cond_3
    move v0, v8

    .line 2599
    goto :goto_0

    .restart local v0    # "correctionAvailable":Z
    .restart local v4    # "typedWord":Ljava/lang/CharSequence;
    :cond_4
    move v5, v7

    .line 2603
    goto :goto_1

    .restart local v5    # "typedWordValid":Z
    :cond_5
    move v6, v7

    .line 2611
    goto :goto_2

    :cond_6
    move v8, v7

    .line 2612
    goto :goto_3
.end method

.method private showVoiceWarningDialog(Z)V
    .locals 8
    .param p1, "swipe"    # Z

    .prologue
    const v7, 0x7f0700cc

    const v6, 0x7f0700cb

    .line 2428
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2429
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2430
    const v4, 0x7f020050

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2431
    const v4, 0x104000a

    new-instance v5, Lnet/hasnath/android/keyboard/LatinIME$5;

    invoke-direct {v5, p0, p1}, Lnet/hasnath/android/keyboard/LatinIME$5;-><init>(Lnet/hasnath/android/keyboard/LatinIME;Z)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2437
    const/high16 v4, 0x1040000

    new-instance v5, Lnet/hasnath/android/keyboard/LatinIME$6;

    invoke-direct {v5, p0}, Lnet/hasnath/android/keyboard/LatinIME$6;-><init>(Lnet/hasnath/android/keyboard/LatinIME;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2443
    iget-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLocaleSupportedForVoiceInput:Z

    if-eqz v4, :cond_0

    .line 2444
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lnet/hasnath/android/keyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2445
    invoke-virtual {p0, v7}, Lnet/hasnath/android/keyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2444
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2446
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2454
    :goto_0
    const v4, 0x7f0700c9

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2455
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    .line 2457
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 2458
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2459
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v4

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2460
    const/16 v4, 0x3eb

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2461
    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2462
    const/high16 v4, 0x20000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 2463
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v4}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->logKeyboardWarningDialogShown()V

    .line 2464
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 2465
    return-void

    .line 2448
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "window":Landroid/view/Window;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x7f0700ca

    invoke-virtual {p0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2449
    invoke-virtual {p0, v6}, Lnet/hasnath/android/keyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2450
    invoke-virtual {p0, v7}, Lnet/hasnath/android/keyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2448
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2451
    .restart local v2    # "message":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private startListening(Z)V
    .locals 1
    .param p1, "swipe"    # Z

    .prologue
    .line 2385
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHasUsedVoiceInput:Z

    if-eqz v0, :cond_0

    .line 2386
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLocaleSupportedForVoiceInput:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHasUsedVoiceInputUnsupportedLocale:Z

    if-nez v0, :cond_1

    .line 2388
    :cond_0
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->showVoiceWarningDialog(Z)V

    .line 2392
    :goto_0
    return-void

    .line 2390
    :cond_1
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->reallyStartListening(Z)V

    goto :goto_0
.end method

.method private startTutorial()V
    .locals 4

    .prologue
    .line 3324
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3325
    return-void
.end method

.method private swapPunctuationAndSpace()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1474
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1475
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1486
    :cond_0
    :goto_0
    return-void

    .line 1476
    :cond_1
    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1477
    .local v1, "lastTwo":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 1478
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->isSentenceSeparator(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1479
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1480
    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1481
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1482
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1483
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1484
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAddedAutoSpace:Z

    goto :goto_0
.end method

.method private switchToKeyboardView()V
    .locals 2

    .prologue
    .line 2353
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/hasnath/android/keyboard/LatinIME$3;

    invoke-direct {v1, p0}, Lnet/hasnath/android/keyboard/LatinIME$3;-><init>(Lnet/hasnath/android/keyboard/LatinIME;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2363
    return-void
.end method

.method private switchToRecognitionStatusView()V
    .locals 3

    .prologue
    .line 2366
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mConfigurationChanging:Z

    .line 2367
    .local v0, "configChanged":Z
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    new-instance v2, Lnet/hasnath/android/keyboard/LatinIME$4;

    invoke-direct {v2, p0, v0}, Lnet/hasnath/android/keyboard/LatinIME$4;-><init>(Lnet/hasnath/android/keyboard/LatinIME;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2382
    return-void
.end method

.method private toggleLanguage(ZZ)V
    .locals 7
    .param p1, "reset"    # Z
    .param p2, "next"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v3, 0x1

    .line 3061
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 3063
    sget v1, Lnet/hasnath/android/keyboard/LatinIME;->CURRENT_TOGGLER:I

    .line 3065
    .local v1, "toggler":I
    if-eqz p1, :cond_3

    .line 3066
    if-ne v1, v5, :cond_2

    .line 3067
    sput v3, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    .line 3102
    :cond_0
    :goto_0
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getKeyboardMode()I

    move-result v0

    .line 3103
    .local v0, "currentKeyboardMode":I
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->reloadKeyboards()V

    .line 3104
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v2, v3}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->makeKeyboards(Z)V

    .line 3105
    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v2, v5, :cond_e

    .line 3106
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    const/16 v6, 0xb

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoiceButton:Z

    if-eqz v2, :cond_d

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoice:Z

    if-eqz v2, :cond_d

    move v2, v3

    :goto_1
    invoke-virtual {v5, v6, v4, v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 3110
    :goto_2
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->initSuggest(Ljava/lang/String;)V

    .line 3112
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 3113
    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v2, v3, :cond_1

    .line 3114
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v2, v4}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setShifted(Z)V

    .line 3115
    :cond_1
    return-void

    .line 3068
    .end local v0    # "currentKeyboardMode":I
    :cond_2
    sput v5, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    goto :goto_0

    .line 3070
    :cond_3
    if-ne v1, v3, :cond_9

    .line 3072
    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v2, v6, :cond_5

    .line 3073
    if-eqz p2, :cond_4

    .line 3074
    sput v5, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    goto :goto_0

    .line 3075
    :cond_4
    sput v3, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    goto :goto_0

    .line 3077
    :cond_5
    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v2, v3, :cond_7

    .line 3078
    if-eqz p2, :cond_6

    .line 3079
    sput v6, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    goto :goto_0

    .line 3080
    :cond_6
    sput v5, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    goto :goto_0

    .line 3082
    :cond_7
    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v2, v5, :cond_0

    .line 3083
    if-eqz p2, :cond_8

    .line 3084
    sput v3, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    goto :goto_0

    .line 3085
    :cond_8
    sput v6, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    goto :goto_0

    .line 3087
    :cond_9
    if-ne v1, v6, :cond_b

    .line 3088
    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v2, v5, :cond_a

    .line 3089
    sput v6, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    goto :goto_0

    .line 3090
    :cond_a
    sput v5, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    goto :goto_0

    .line 3092
    :cond_b
    if-ne v1, v5, :cond_0

    .line 3093
    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v2, v3, :cond_c

    .line 3094
    sput v6, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    goto :goto_0

    .line 3095
    :cond_c
    sput v3, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    goto :goto_0

    .restart local v0    # "currentKeyboardMode":I
    :cond_d
    move v2, v4

    .line 3106
    goto :goto_1

    .line 3108
    :cond_e
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    .line 3109
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoiceButton:Z

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoice:Z

    if-eqz v2, :cond_f

    move v2, v3

    .line 3108
    :goto_3
    invoke-virtual {v5, v0, v4, v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    goto :goto_2

    :cond_f
    move v2, v4

    .line 3109
    goto :goto_3
.end method

.method private updateAutoTextEnabled(Ljava/util/Locale;)V
    .locals 6
    .param p1, "systemLocale"    # Ljava/util/Locale;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3361
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    if-nez v3, :cond_0

    .line 3365
    :goto_0
    return-void

    .line 3363
    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mInputLocale:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 3364
    .local v0, "different":Z
    :goto_1
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    if-nez v0, :cond_2

    iget-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mQuickFixes:Z

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {v3, v2}, Lnet/hasnath/android/keyboard/Suggest;->setAutoTextEnabled(Z)V

    goto :goto_0

    .end local v0    # "different":Z
    :cond_1
    move v0, v2

    .line 3363
    goto :goto_1

    .restart local v0    # "different":Z
    :cond_2
    move v2, v1

    .line 3364
    goto :goto_2
.end method

.method private updateCorrectionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3347
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/Suggest;->hasMainDictionary()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHasDictionary:Z

    .line 3348
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoCorrectEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mQuickFixes:Z

    if-eqz v0, :cond_4

    .line 3349
    :cond_0
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mInputTypeNoAutoCorrect:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHasDictionary:Z

    if-eqz v0, :cond_4

    move v0, v2

    .line 3348
    :goto_1
    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoCorrectOn:Z

    .line 3350
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoCorrectOn:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoCorrectEnabled:Z

    if-eqz v0, :cond_5

    .line 3351
    const/4 v2, 0x2

    .line 3350
    :cond_1
    :goto_2
    iput v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    .line 3354
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    .line 3353
    iput v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    .line 3355
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    if-eqz v0, :cond_2

    .line 3356
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    iget v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/Suggest;->setCorrectionMode(I)V

    .line 3358
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 3347
    goto :goto_0

    :cond_4
    move v0, v1

    .line 3349
    goto :goto_1

    .line 3352
    :cond_5
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoCorrectOn:Z

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_2
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 3264
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 3265
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    .line 3267
    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 3268
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSilentMode:Z

    .line 3270
    :cond_1
    return-void

    .line 3268
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSuggestions()V
    .locals 3

    .prologue
    .line 2550
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 2551
    .local v0, "inputView":Lnet/hasnath/android/keyboard/LatinKeyboardView;
    if-nez v0, :cond_1

    .line 2567
    :cond_0
    :goto_0
    return-void

    .line 2553
    :cond_1
    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getKeyboard()Lnet/hasnath/android/keyboard/Keyboard;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2554
    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getKeyboard()Lnet/hasnath/android/keyboard/Keyboard;

    move-result-object v1

    check-cast v1, Lnet/hasnath/android/keyboard/LatinKeyboard;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setPreferredLetters([I)V

    .line 2558
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isPredictionOn()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInputHighlighted:Z

    if-eqz v1, :cond_0

    .line 2562
    :cond_3
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    if-nez v1, :cond_4

    .line 2563
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->setNextSuggestions()V

    goto :goto_0

    .line 2566
    :cond_4
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-direct {p0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->showSuggestions(Lnet/hasnath/android/keyboard/WordComposer;)V

    goto :goto_0
.end method

.method public static useBanglaFont()Z
    .locals 2

    .prologue
    .line 578
    sget v0, Lnet/hasnath/android/keyboard/LatinIME;->FONT_SETTINGS:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget v0, Lnet/hasnath/android/keyboard/LatinIME;->FONT_SETTINGS:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static useBanglaFontInSuggestions()Z
    .locals 2

    .prologue
    .line 582
    sget v0, Lnet/hasnath/android/keyboard/LatinIME;->FONT_SETTINGS:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private vibrate()V
    .locals 3

    .prologue
    .line 3300
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVibrateOn:Z

    if-nez v0, :cond_1

    .line 3308
    :cond_0
    :goto_0
    return-void

    .line 3303
    :cond_1
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3304
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v1

    .line 3305
    const/4 v2, 0x3

    .line 3306
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mObeyHapticFeedback:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 3304
    :goto_1
    invoke-virtual {v1, v2, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->performHapticFeedback(II)Z

    goto :goto_0

    .line 3306
    :cond_2
    const/4 v0, 0x2

    goto :goto_1
.end method


# virtual methods
.method public addWordToDictionary(Ljava/lang/String;)Z
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 1577
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->postUpdateSuggestions()V

    .line 1578
    const/4 v0, 0x1

    return v0
.end method

.method public changeKeyboardMode()V
    .locals 2

    .prologue
    .line 3515
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->toggleSymbols()V

    .line 3516
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCapsLock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3517
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCapsLock:Z

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setShiftLocked(Z)V

    .line 3520
    :cond_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 3521
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3532
    invoke-super {p0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3534
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 3535
    .local v0, "p":Landroid/util/Printer;
    const-string v1, "LatinIME state :"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3536
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Keyboard mode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getKeyboardMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3537
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mCapsLock="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCapsLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3538
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mComposing="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3539
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mPredictionOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3540
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mCorrectionMode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3541
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mPredicting="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3542
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mAutoCorrectOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoCorrectOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3543
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mAutoSpace="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoSpace:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3544
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mCompletionOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCompletionOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3545
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  TextEntryState.state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->getState()Lnet/hasnath/android/keyboard/TextEntryState$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3546
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mSoundOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSoundOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3547
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mVibrateOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVibrateOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3548
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mPopupOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPopupOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3549
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mEnableVolumeCursor="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVolumeCursor:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3550
    return-void
.end method

.method getCurrentWord()Lnet/hasnath/android/keyboard/WordComposer;
    .locals 1

    .prologue
    .line 3339
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    return-object v0
.end method

.method public getKeyboardHeightPercentage()I
    .locals 2

    .prologue
    .line 387
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 388
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->keyboardPortraitHeightPercentage:I

    .line 389
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->keyboardLandscapeHeightPercentage:I

    goto :goto_0
.end method

.method getPopupOn()Z
    .locals 1

    .prologue
    .line 3343
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPopupOn:Z

    return v0
.end method

.method protected getWordSeparators()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3037
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordSeparators:Ljava/lang/String;

    return-object v0
.end method

.method public hideWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1148
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinImeLogger;->commit()V

    .line 1149
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->onAutoCompletionStateChanged(Z)V

    .line 1152
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1154
    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 1156
    :cond_0
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mConfigurationChanging:Z

    if-nez v0, :cond_3

    .line 1157
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAfterVoiceInput:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->logInputEnded()V

    .line 1158
    :cond_1
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1159
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->logKeyboardWarningDialogDismissed()V

    .line 1160
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1161
    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    .line 1163
    :cond_2
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mRecognizing:Z

    if-eqz v0, :cond_3

    .line 1164
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->cancel()V

    .line 1167
    :cond_3
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1168
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1169
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 1170
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->endSession()V

    .line 1171
    return-void
.end method

.method public isWordSeparator(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 3041
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getWordSeparators()Ljava/lang/String;

    move-result-object v0

    .line 3042
    .local v0, "separators":Ljava/lang/String;
    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public launchDebugSettings()V
    .locals 1

    .prologue
    .line 3372
    const-class v0, Lnet/hasnath/android/keyboard/LatinIMEDebugSettings;

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->launchSettings(Ljava/lang/Class;)V

    .line 3373
    return-void
.end method

.method protected launchSettings()V
    .locals 1

    .prologue
    .line 3368
    const-class v0, Lnet/hasnath/android/keyboard/LatinIMESettings;

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->launchSettings(Ljava/lang/Class;)V

    .line 3369
    return-void
.end method

.method protected launchSettings(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/preference/PreferenceActivity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3376
    .local p1, "settingsClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/preference/PreferenceActivity;>;"
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->handleClose()V

    .line 3377
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3378
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3379
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3380
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->startActivity(Landroid/content/Intent;)V

    .line 3381
    return-void
.end method

.method public mQuicFixes()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mQuickFixes:Z

    return v0
.end method

.method public onAutoCompletionStateChanged(Z)V
    .locals 1
    .param p1, "isAutoCompletion"    # Z

    .prologue
    .line 3571
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->onAutoCompletionStateChanged(Z)V

    .line 3572
    return-void
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 1917
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->onCancelInput()V

    .line 1918
    return-void
.end method

.method public onCancelVoice()V
    .locals 1

    .prologue
    .line 2347
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mRecognizing:Z

    if-eqz v0, :cond_0

    .line 2348
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->switchToKeyboardView()V

    .line 2350
    :cond_0
    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 1
    .param p1, "outInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;

    .prologue
    .line 1218
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 1219
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1220
    iget v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 1222
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "conf"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x1

    .line 683
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, "systemLocale":Ljava/lang/String;
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSystemLocale:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 685
    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSystemLocale:Ljava/lang/String;

    .line 686
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    if-eqz v2, :cond_4

    .line 687
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    .line 688
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 687
    invoke-virtual {v2, v3}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;)Z

    .line 689
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->setSystemLocale(Ljava/util/Locale;)V

    .line 690
    invoke-direct {p0, v4, v4}, Lnet/hasnath/android/keyboard/LatinIME;->toggleLanguage(ZZ)V

    .line 696
    :cond_0
    :goto_0
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mOrientation:I

    if-eq v2, v3, :cond_2

    .line 697
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 698
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-direct {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 699
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 700
    :cond_1
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mOrientation:I

    .line 701
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->reloadKeyboards()V

    .line 703
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mConfigurationChanging:Z

    .line 704
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 705
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mRecognizing:Z

    if-eqz v2, :cond_3

    .line 706
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->switchToRecognitionStatusView()V

    .line 708
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mConfigurationChanging:Z

    .line 710
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isHardwareKeyboardAvailable()Z

    move-result v2

    iput-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->isHardwareKeyboardEnabled:Z

    .line 711
    return-void

    .line 692
    :cond_4
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->reloadKeyboards()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v10, 0x3

    const/4 v11, 0x0

    .line 482
    invoke-static {p0}, Lnet/hasnath/android/keyboard/LatinImeLogger;->init(Landroid/content/Context;)V

    .line 483
    invoke-static {p0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->init(Lnet/hasnath/android/keyboard/LatinIME;)V

    .line 484
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 488
    new-instance v8, Lnet/hasnath/ridmikparser/RidmikParser;

    invoke-direct {v8, p0}, Lnet/hasnath/ridmikparser/RidmikParser;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->parser:Lnet/hasnath/ridmikparser/RidmikParser;

    .line 489
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    const-string v9, ""

    iput-object v9, v8, Lnet/hasnath/android/keyboard/WordComposer;->bangla:Ljava/lang/String;

    .line 491
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    .line 492
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 493
    .local v0, "conf":Landroid/content/res/Configuration;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 495
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v8, "pref_keyboard_layouts"

    const-string v9, "1"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sput v8, Lnet/hasnath/android/keyboard/LatinIME;->CURRENT_TOGGLER:I

    .line 497
    sget v8, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v8, v12, :cond_3

    sget v8, Lnet/hasnath/android/keyboard/LatinIME;->CURRENT_TOGGLER:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 498
    sput v10, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    .line 503
    :cond_0
    :goto_0
    new-instance v8, Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-direct {v8, p0}, Lnet/hasnath/android/keyboard/LanguageSwitcher;-><init>(Lnet/hasnath/android/keyboard/LatinIME;)V

    iput-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    .line 504
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v8, v5}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;)Z

    .line 505
    invoke-static {}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInstance()Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    move-result-object v8

    iput-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    .line 506
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v8, v9}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setLanguageSwitcher(Lnet/hasnath/android/keyboard/LanguageSwitcher;)V

    .line 507
    iget-object v8, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSystemLocale:Ljava/lang/String;

    .line 508
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    iget-object v9, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->setSystemLocale(Ljava/util/Locale;)V

    .line 509
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v4

    .line 510
    .local v4, "inputLanguage":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 511
    iget-object v8, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    .line 513
    :cond_1
    const-string v8, "recorrection_enabled"

    .line 514
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 513
    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mReCorrectionEnabled:Z

    .line 515
    const-string v8, "obey_haptic"

    invoke-interface {v5, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mObeyHapticFeedback:Z

    .line 517
    const-string v8, "punc_sugg"

    invoke-interface {v5, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPuncSuggestion:Z

    .line 519
    iput-boolean v11, p0, Lnet/hasnath/android/keyboard/LatinIME;->learnWordAsTyping:Z

    .line 520
    const-string v8, "settings_height_landscape"

    const-string v9, "100"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 521
    .local v6, "psy":F
    float-to-int v8, v6

    iput v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->keyboardLandscapeHeightPercentage:I

    .line 522
    const-string v8, "settings_height_portrait"

    const-string v9, "100"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 523
    float-to-int v8, v6

    iput v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->keyboardPortraitHeightPercentage:I

    .line 525
    const-string v8, "cut_copy_paste"

    invoke-interface {v5, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lnet/hasnath/android/keyboard/LatinIME;->CUT_COPY_PASTE:Z

    .line 526
    const-string v8, "contact_suggestion"

    invoke-interface {v5, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lnet/hasnath/android/keyboard/Suggest;->suggestionFromContacts:Z

    .line 530
    const-string v8, "pref_bangla_fixed"

    const-string v9, "1"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sput v8, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->CURRENT_FIXED_LAYOUT:I

    .line 532
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;->getInstance()Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;

    move-result-object v8

    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;->reset()V

    .line 533
    const/4 v7, 0x1

    .line 534
    .local v7, "tryGC":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v8, 0x5

    if-ge v3, v8, :cond_2

    if-nez v7, :cond_4

    .line 545
    :cond_2
    iget v8, v0, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mOrientation:I

    .line 546
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->initSuggestPuncList()V

    .line 549
    new-instance v2, Landroid/content/IntentFilter;

    const-string v8, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v2, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 550
    .local v2, "filter":Landroid/content/IntentFilter;
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v2}, Lnet/hasnath/android/keyboard/LatinIME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 552
    new-instance v8, Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-direct {v8, p0, p0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;-><init>(Landroid/content/Context;Lnet/hasnath/android/ridmik/voice/VoiceInput$UiListener;)V

    iput-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    .line 553
    new-instance v8, Lnet/hasnath/android/keyboard/Hints;

    new-instance v9, Lnet/hasnath/android/keyboard/LatinIME$2;

    invoke-direct {v9, p0}, Lnet/hasnath/android/keyboard/LatinIME$2;-><init>(Lnet/hasnath/android/keyboard/LatinIME;)V

    invoke-direct {v8, p0, v9}, Lnet/hasnath/android/keyboard/Hints;-><init>(Landroid/content/Context;Lnet/hasnath/android/keyboard/Hints$Display;)V

    iput-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHints:Lnet/hasnath/android/keyboard/Hints;

    .line 564
    invoke-interface {v5, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 565
    return-void

    .line 499
    .end local v2    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "i":I
    .end local v4    # "inputLanguage":Ljava/lang/String;
    .end local v6    # "psy":F
    .end local v7    # "tryGC":Z
    :cond_3
    sget v8, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v8, v10, :cond_0

    sget v8, Lnet/hasnath/android/keyboard/LatinIME;->CURRENT_TOGGLER:I

    if-ne v8, v10, :cond_0

    .line 500
    sput v12, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    goto/16 :goto_0

    .line 536
    .restart local v3    # "i":I
    .restart local v4    # "inputLanguage":Ljava/lang/String;
    .restart local v6    # "psy":F
    .restart local v7    # "tryGC":Z
    :cond_4
    :try_start_0
    invoke-direct {p0, v4}, Lnet/hasnath/android/keyboard/LatinIME;->initSuggest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    const/4 v7, 0x0

    .line 534
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 538
    :catch_0
    move-exception v1

    .line 539
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;->getInstance()Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;

    move-result-object v8

    invoke-virtual {v8, v4, v1}, Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v7

    goto :goto_2
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 727
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0, v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->makeKeyboards(Z)V

    .line 730
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getLayoutId()I

    move-result v0

    sget v1, Lnet/hasnath/android/keyboard/LatinIME;->LOLIPOP_THEME_INDEX:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getLayoutId()I

    move-result v0

    sget v1, Lnet/hasnath/android/keyboard/LatinIME;->LOLIPOP_THEME_INDEX:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_1

    .line 731
    :cond_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 732
    const v1, 0x7f030004

    .line 731
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    .line 739
    :goto_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0f000f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/hasnath/android/keyboard/CandidateView;

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    .line 740
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v0, p0}, Lnet/hasnath/android/keyboard/CandidateView;->setService(Lnet/hasnath/android/keyboard/LatinIME;)V

    .line 741
    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->setCandidatesViewShown(Z)V

    .line 742
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    return-object v0

    .line 734
    :cond_1
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 735
    const v1, 0x7f030003

    .line 734
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 715
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->recreateInputView()V

    .line 716
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0, v4}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->makeKeyboards(Z)V

    .line 717
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    .line 718
    const/4 v1, 0x0

    .line 719
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->makeFieldContext()Lnet/hasnath/android/ridmik/voice/FieldContext;

    move-result-object v2

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lnet/hasnath/android/keyboard/LatinIME;->shouldShowVoiceButton(Lnet/hasnath/android/ridmik/voice/FieldContext;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v2

    .line 717
    invoke-virtual {v0, v4, v1, v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 721
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 669
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->destroy()V

    .line 672
    :cond_0
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinImeLogger;->commit()V

    .line 673
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinImeLogger;->onDestroy()V

    .line 674
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 675
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 8
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 1176
    const-string v3, "foo"

    const-string v5, "Received completions:"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz p1, :cond_2

    array-length v3, p1

    :goto_1
    if-lt v1, v3, :cond_1

    .line 1181
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCompletionOn:Z

    if-eqz v3, :cond_0

    .line 1182
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1183
    if-nez p1, :cond_3

    .line 1184
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->clearSuggestions()V

    .line 1198
    :cond_0
    :goto_2
    return-void

    .line 1178
    :cond_1
    const-string v3, "foo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  #"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    .line 1188
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1189
    .local v2, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    :goto_3
    if-eqz p1, :cond_6

    array-length v3, p1

    :goto_4
    if-lt v1, v3, :cond_4

    .line 1194
    invoke-direct {p0, v2, v7, v7, v7}, Lnet/hasnath/android/keyboard/LatinIME;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 1195
    const/4 v3, 0x0

    iput-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    .line 1196
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowCandidate:Z

    invoke-virtual {p0, v3}, Lnet/hasnath/android/keyboard/LatinIME;->setCandidatesViewShown(Z)V

    goto :goto_2

    .line 1190
    :cond_4
    aget-object v0, p1, v1

    .line 1191
    .local v0, "ci":Landroid/view/inputmethod/CompletionInfo;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1189
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0    # "ci":Landroid/view/inputmethod/CompletionInfo;
    :cond_6
    move v3, v4

    goto :goto_4
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 5

    .prologue
    .line 1226
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1227
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v3

    .line 1229
    .local v1, "displayHeight":F
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 1230
    .local v0, "dimen":F
    cmpl-float v3, v1, v0

    if-lez v3, :cond_0

    .line 1231
    const/4 v3, 0x0

    .line 1233
    :goto_0
    return v3

    :cond_0
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v3

    goto :goto_0
.end method

.method public onEvaluateInputViewShown()Z
    .locals 1

    .prologue
    .line 3456
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v0

    return v0
.end method

.method public onExtractedCursorMovement(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 1141
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mReCorrectionEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isPredictionOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1144
    :goto_0
    return-void

    .line 1143
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedCursorMovement(II)V

    goto :goto_0
.end method

.method public onExtractedTextClicked()V
    .locals 1

    .prologue
    .line 1125
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mReCorrectionEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isPredictionOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    :goto_0
    return-void

    .line 1127
    :cond_0
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onExtractedTextClicked()V

    goto :goto_0
.end method

.method public onFinishInput()V
    .locals 1

    .prologue
    .line 976
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 978
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinImeLogger;->commit()V

    .line 979
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->onAutoCompletionStateChanged(Z)V

    .line 981
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mConfigurationChanging:Z

    if-nez v0, :cond_1

    .line 982
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAfterVoiceInput:Z

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->flushAllTextModificationCounters()V

    .line 984
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->logInputEnded()V

    .line 986
    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->flushLogs()V

    .line 987
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->cancel()V

    .line 989
    :cond_1
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 990
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->closing()V

    .line 994
    :cond_2
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 2
    .param p1, "finishingInput"    # Z

    .prologue
    .line 998
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 1000
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1001
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1002
    return-void
.end method

.method public onKey(I[III)V
    .locals 8
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 1621
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1622
    .local v2, "when":J
    const/4 v1, -0x5

    if-ne p1, v1, :cond_0

    .line 1623
    iget-wide v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastKeyTime:J

    const-wide/16 v6, 0xc8

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 1624
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mDeleteCount:I

    .line 1626
    :cond_1
    iput-wide v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastKeyTime:J

    .line 1629
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIME;->useBanglaFont()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1630
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->getAsciiEquiv(I)I

    move-result p1

    .line 1632
    :cond_2
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v0

    .line 1633
    .local v0, "distinctMultiTouch":Z
    sparse-switch p1, :sswitch_data_0

    .line 1736
    const/16 v1, 0xa

    if-eq p1, v1, :cond_3

    .line 1737
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAddedAutoSpace:Z

    .line 1740
    :cond_3
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->getInstance()Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;

    move-result-object v1

    int-to-char v4, p1

    invoke-virtual {v1, v4, p3, p4}, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->push(CII)V

    .line 1741
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinImeLogger;->logOnInputChar()V

    .line 1742
    invoke-virtual {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->isWordSeparator(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1743
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->handleSeparator(I)V

    .line 1751
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    .line 1753
    :cond_4
    :goto_1
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1, p1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->onKey(I)V

    .line 1755
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    .line 1756
    return-void

    .line 1635
    :sswitch_0
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->handleBackspace()V

    .line 1636
    iget v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mDeleteCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mDeleteCount:I

    .line 1637
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinImeLogger;->logOnDelete()V

    goto :goto_1

    .line 1641
    :sswitch_1
    if-nez v0, :cond_4

    .line 1642
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->handleShift()V

    goto :goto_1

    .line 1646
    :sswitch_2
    if-nez v0, :cond_4

    .line 1647
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->changeKeyboardMode()V

    goto :goto_1

    .line 1650
    :sswitch_3
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isShowingOptionDialog()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1651
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->handleClose()V

    goto :goto_1

    .line 1655
    :sswitch_4
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->onOptionKeyPressed()V

    goto :goto_1

    .line 1658
    :sswitch_5
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->manageSmileyKeyboard(I)V

    .line 1659
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->handleShiftInternal(Z)V

    goto :goto_1

    .line 1662
    :sswitch_6
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1, p1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setFixedKeyboard(I)V

    goto :goto_1

    .line 1665
    :sswitch_7
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1, p1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setFixedKeyboard(I)V

    .line 1666
    const/4 v1, 0x1

    sput-boolean v1, Lnet/hasnath/android/keyboard/LatinIME;->shiftedBangla:Z

    goto :goto_1

    .line 1669
    :sswitch_8
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->manageSmileyKeyboard(I)V

    goto :goto_1

    .line 1672
    :sswitch_9
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->manageSmileyKeyboard(I)V

    goto :goto_1

    .line 1675
    :sswitch_a
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->manageSmileyKeyboard(I)V

    goto :goto_1

    .line 1678
    :sswitch_b
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->onOptionKeyLongPressed()V

    goto :goto_1

    .line 1681
    :sswitch_c
    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v1, v4}, Lnet/hasnath/android/keyboard/LatinIME;->toggleLanguage(ZZ)V

    goto :goto_1

    .line 1684
    :sswitch_d
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lnet/hasnath/android/keyboard/LatinIME;->toggleLanguage(ZZ)V

    goto :goto_1

    .line 1687
    :sswitch_e
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowCandidate:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowCandidate:Z

    .line 1688
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowCandidate:Z

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->setCandidatesViewShown(Z)V

    goto :goto_1

    .line 1687
    :cond_5
    const/4 v1, 0x1

    goto :goto_2

    .line 1692
    :sswitch_f
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->startListening(Z)V

    goto :goto_1

    .line 1696
    :sswitch_10
    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->sendDownUpKeyEvents(I)V

    goto :goto_1

    .line 1699
    :sswitch_11
    const/16 v1, 0x9cd

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x9cd

    aput v6, v4, v5

    invoke-direct {p0, v1, v4}, Lnet/hasnath/android/keyboard/LatinIME;->handleCharacter(I[I)V

    .line 1700
    const/16 v1, 0x9b0

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x9b0

    aput v6, v4, v5

    invoke-direct {p0, v1, v4}, Lnet/hasnath/android/keyboard/LatinIME;->handleCharacter(I[I)V

    goto/16 :goto_1

    .line 1705
    :sswitch_12
    const/16 v1, 0x9cd

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x9cd

    aput v6, v4, v5

    invoke-direct {p0, v1, v4}, Lnet/hasnath/android/keyboard/LatinIME;->handleCharacter(I[I)V

    .line 1706
    const/16 v1, 0x9af

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x9af

    aput v6, v4, v5

    invoke-direct {p0, v1, v4}, Lnet/hasnath/android/keyboard/LatinIME;->handleCharacter(I[I)V

    .line 1707
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateBanglaShift()V

    goto/16 :goto_1

    .line 1710
    :sswitch_13
    const/16 v1, 0x9b0

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x9b0

    aput v6, v4, v5

    invoke-direct {p0, v1, v4}, Lnet/hasnath/android/keyboard/LatinIME;->handleCharacter(I[I)V

    .line 1711
    const/16 v1, 0x200d

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x200d

    aput v6, v4, v5

    invoke-direct {p0, v1, v4}, Lnet/hasnath/android/keyboard/LatinIME;->handleCharacter(I[I)V

    .line 1712
    const/16 v1, 0x9cd

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x9cd

    aput v6, v4, v5

    invoke-direct {p0, v1, v4}, Lnet/hasnath/android/keyboard/LatinIME;->handleCharacter(I[I)V

    .line 1713
    const/16 v1, 0x9af

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x9af

    aput v6, v4, v5

    invoke-direct {p0, v1, v4}, Lnet/hasnath/android/keyboard/LatinIME;->handleCharacter(I[I)V

    goto/16 :goto_1

    .line 1716
    :sswitch_14
    const/16 v1, 0x9b0

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x9b0

    aput v6, v4, v5

    invoke-direct {p0, v1, v4}, Lnet/hasnath/android/keyboard/LatinIME;->handleCharacter(I[I)V

    .line 1717
    const/16 v1, 0x9cd

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x9cd

    aput v6, v4, v5

    invoke-direct {p0, v1, v4}, Lnet/hasnath/android/keyboard/LatinIME;->handleCharacter(I[I)V

    .line 1719
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateBanglaShift()V

    goto/16 :goto_1

    .line 1722
    :sswitch_15
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->copyTextToClipBoard()V

    .line 1723
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "text copied"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1726
    :sswitch_16
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->handleSeparator(I)V

    goto/16 :goto_1

    .line 1729
    :sswitch_17
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->pasteFromClipBoard()V

    goto/16 :goto_1

    .line 1732
    :sswitch_18
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->cutFromInputArea()V

    goto/16 :goto_1

    .line 1747
    :cond_6
    invoke-direct {p0, p1, p2}, Lnet/hasnath/android/keyboard/LatinIME;->handleCharacter(I[I)V

    .line 1748
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateBanglaShift()V

    goto/16 :goto_0

    .line 1633
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3b3 -> :sswitch_18
        -0x3b2 -> :sswitch_17
        -0x3b1 -> :sswitch_15
        -0x24c -> :sswitch_14
        -0x243 -> :sswitch_13
        -0x235 -> :sswitch_11
        -0x234 -> :sswitch_12
        -0x1ee -> :sswitch_16
        -0x1b2 -> :sswitch_7
        -0x1b1 -> :sswitch_6
        -0x15d -> :sswitch_e
        -0x14d -> :sswitch_a
        -0x14c -> :sswitch_9
        -0x14b -> :sswitch_8
        -0xea -> :sswitch_5
        -0x69 -> :sswitch_d
        -0x68 -> :sswitch_c
        -0x66 -> :sswitch_f
        -0x65 -> :sswitch_b
        -0x64 -> :sswitch_4
        -0x5 -> :sswitch_0
        -0x3 -> :sswitch_3
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x9 -> :sswitch_10
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1240
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->isHardwareKeyboardEnabled:Z

    if-nez v0, :cond_0

    .line 1241
    sparse-switch p1, :sswitch_data_0

    .line 1273
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 1274
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1307
    :goto_1
    return v0

    .line 1243
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->handleBack()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1245
    goto :goto_1

    .line 1246
    :cond_1
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mTutorial:Lnet/hasnath/android/keyboard/Tutorial;

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mTutorial:Lnet/hasnath/android/keyboard/Tutorial;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/Tutorial;->close()Z

    .line 1248
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mTutorial:Lnet/hasnath/android/keyboard/Tutorial;

    goto :goto_0

    .line 1257
    :sswitch_1
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mTutorial:Lnet/hasnath/android/keyboard/Tutorial;

    if-eqz v0, :cond_0

    move v0, v1

    .line 1258
    goto :goto_1

    .line 1263
    :sswitch_2
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVolumeCursor:Z

    if-eqz v0, :cond_0

    .line 1265
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    const/16 v0, 0x16

    :goto_2
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->sendDownUpKeyEvents(I)V

    move v0, v1

    .line 1267
    goto :goto_1

    .line 1266
    :cond_2
    const/16 v0, 0x15

    goto :goto_2

    .line 1280
    :cond_3
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->isHardwareKeyboardEnabled:Z

    if-eqz v0, :cond_6

    .line 1283
    :try_start_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isFunctionPressed()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v1

    .line 1288
    goto :goto_1

    .line 1291
    :catch_0
    move-exception v0

    .line 1295
    :cond_5
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 1303
    goto :goto_1

    .line 1301
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1307
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 1241
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
    .end sparse-switch

    .line 1295
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 14
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1313
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->isHardwareKeyboardEnabled:Z

    if-nez v2, :cond_0

    .line 1314
    packed-switch p1, :pswitch_data_0

    .line 1345
    :cond_0
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x8e

    if-ne v2, v3, :cond_4

    .line 1346
    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    :goto_0
    sput v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    .line 1347
    const/4 v2, 0x1

    .line 1394
    :goto_1
    return v2

    .line 1320
    :pswitch_1
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mTutorial:Lnet/hasnath/android/keyboard/Tutorial;

    if-eqz v2, :cond_1

    .line 1321
    const/4 v2, 0x1

    goto :goto_1

    .line 1323
    :cond_1
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v13

    .line 1325
    .local v13, "inputView":Lnet/hasnath/android/keyboard/LatinKeyboardView;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1326
    invoke-virtual {v13}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->isShifted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1327
    new-instance v1, Landroid/view/KeyEvent;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    .line 1328
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    .line 1329
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v10

    .line 1330
    const/16 v11, 0x41

    .line 1327
    invoke-direct/range {v1 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    .line 1331
    .end local p2    # "event":Landroid/view/KeyEvent;
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v12

    .line 1332
    .local v12, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v12, :cond_2

    invoke-interface {v12, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1333
    :cond_2
    const/4 v2, 0x1

    move-object/from16 p2, v1

    .end local v1    # "event":Landroid/view/KeyEvent;
    .restart local p2    # "event":Landroid/view/KeyEvent;
    goto :goto_1

    .line 1338
    .end local v12    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v13    # "inputView":Lnet/hasnath/android/keyboard/LatinKeyboardView;
    :pswitch_2
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1339
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v2

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVolumeCursor:Z

    if-eqz v2, :cond_0

    .line 1340
    const/4 v2, 0x1

    goto :goto_1

    .line 1346
    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    .line 1348
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 1349
    invoke-super/range {p0 .. p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1

    .line 1353
    :cond_5
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->isHardwareKeyboardEnabled:Z

    if-eqz v2, :cond_9

    .line 1354
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v0

    .line 1357
    .local v0, "code":I
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isFunctionPressed()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1366
    :cond_6
    const-string v2, "LL"

    const-string v3, "Control pressed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1368
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1370
    :catch_0
    move-exception v2

    .line 1374
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x43

    if-ne v2, v3, :cond_8

    .line 1375
    const/4 v0, -0x5

    .line 1377
    :cond_8
    packed-switch p1, :pswitch_data_1

    .line 1388
    const/16 v2, 0xc

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    const/4 v4, -0x1

    aput v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, -0x1

    aput v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v2, v3

    const/4 v3, 0x4

    const/4 v4, -0x1

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, -0x1

    aput v4, v2, v3

    const/4 v3, 0x6

    const/4 v4, -0x1

    aput v4, v2, v3

    const/4 v3, 0x7

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, 0x8

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, 0x9

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, 0xa

    const/4 v4, -0x1

    aput v4, v2, v3

    const/16 v3, 0xb

    const/4 v4, -0x1

    aput v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lnet/hasnath/android/keyboard/LatinIME;->onKey(I[III)V

    .line 1389
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 1383
    :pswitch_3
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1394
    .end local v0    # "code":I
    :cond_9
    invoke-super/range {p0 .. p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_1

    .line 1314
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1377
    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onPress(I)V
    .locals 2
    .param p1, "primaryCode"    # I

    .prologue
    .line 3197
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->isVibrateAndSoundFeedbackRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3198
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->vibrate()V

    .line 3199
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->playKeyClick(I)V

    .line 3201
    :cond_0
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v0

    .line 3202
    .local v0, "distinctMultiTouch":Z
    if-eqz v0, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 3203
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShiftKeyState:Lnet/hasnath/android/keyboard/ModifierKeyState;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/ModifierKeyState;->onPress()V

    .line 3204
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->handleShift()V

    .line 3213
    :goto_0
    return-void

    .line 3205
    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, -0x2

    if-ne p1, v1, :cond_2

    .line 3206
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->changeKeyboardMode()V

    .line 3207
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSymbolKeyState:Lnet/hasnath/android/keyboard/ModifierKeyState;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/ModifierKeyState;->onPress()V

    .line 3208
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setAutoModeSwitchStateMomentary()V

    goto :goto_0

    .line 3210
    :cond_2
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShiftKeyState:Lnet/hasnath/android/keyboard/ModifierKeyState;

    invoke-virtual {v1, p1}, Lnet/hasnath/android/keyboard/ModifierKeyState;->onOtherKeyPressed(I)V

    .line 3211
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSymbolKeyState:Lnet/hasnath/android/keyboard/ModifierKeyState;

    invoke-virtual {v1, p1}, Lnet/hasnath/android/keyboard/ModifierKeyState;->onOtherKeyPressed(I)V

    goto :goto_0
.end method

.method public onRelease(I)V
    .locals 3
    .param p1, "primaryCode"    # I

    .prologue
    .line 3217
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getKeyboard()Lnet/hasnath/android/keyboard/Keyboard;

    move-result-object v1

    check-cast v1, Lnet/hasnath/android/keyboard/LatinKeyboard;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->keyReleased()V

    .line 3219
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v0

    .line 3220
    .local v0, "distinctMultiTouch":Z
    if-eqz v0, :cond_2

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 3221
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShiftKeyState:Lnet/hasnath/android/keyboard/ModifierKeyState;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/ModifierKeyState;->isMomentary()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShiftKeyState:Lnet/hasnath/android/keyboard/ModifierKeyState;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/ModifierKeyState;->getOtherKeyCode()I

    move-result v1

    const/4 v2, -0x5

    if-eq v1, v2, :cond_0

    .line 3222
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->resetShift()V

    .line 3223
    :cond_0
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShiftKeyState:Lnet/hasnath/android/keyboard/ModifierKeyState;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/ModifierKeyState;->onRelease()V

    .line 3231
    :cond_1
    :goto_0
    return-void

    .line 3224
    :cond_2
    if-eqz v0, :cond_1

    const/4 v1, -0x2

    if-ne p1, v1, :cond_1

    .line 3227
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->isInChordingAutoModeSwitchState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3228
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->changeKeyboardMode()V

    .line 3229
    :cond_3
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSymbolKeyState:Lnet/hasnath/android/keyboard/ModifierKeyState;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/ModifierKeyState;->onRelease()V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 3121
    const/4 v0, 0x0

    .line 3123
    .local v0, "needReloadView":Z
    const-string v2, "selected_languages"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3124
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v2, p1}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;)Z

    .line 3125
    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mRefreshKeyboardRequired:Z

    .line 3159
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 3160
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v2, v6}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->makeKeyboards(Z)V

    .line 3163
    :cond_1
    return-void

    .line 3126
    :cond_2
    const-string v2, "recorrection_enabled"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3127
    const-string v2, "recorrection_enabled"

    .line 3128
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 3127
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mReCorrectionEnabled:Z

    goto :goto_0

    .line 3129
    :cond_3
    const-string v2, "obey_haptic"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3130
    const-string v2, "obey_haptic"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mObeyHapticFeedback:Z

    goto :goto_0

    .line 3131
    :cond_4
    const-string v2, "learn_word_as_typing"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3132
    const-string v2, "learn_word_as_typing"

    invoke-interface {p1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->learnWordAsTyping:Z

    goto :goto_0

    .line 3133
    :cond_5
    const-string v2, "keypress_volume"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3134
    const-string v2, "keypress_volume"

    const/16 v3, 0x1e

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->FX_VOLUME:F

    goto :goto_0

    .line 3135
    :cond_6
    const-string v2, "cut_copy_paste"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3136
    const-string v2, "cut_copy_paste"

    invoke-interface {p1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lnet/hasnath/android/keyboard/LatinIME;->CUT_COPY_PASTE:Z

    goto :goto_0

    .line 3137
    :cond_7
    const-string v2, "contact_suggestion"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3138
    const-string v2, "contact_suggestion"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lnet/hasnath/android/keyboard/Suggest;->suggestionFromContacts:Z

    goto :goto_0

    .line 3139
    :cond_8
    const-string v2, "pref_bangla_fixed"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3140
    const-string v2, "pref_bangla_fixed"

    const-string v3, "1"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->CURRENT_FIXED_LAYOUT:I

    goto/16 :goto_0

    .line 3141
    :cond_9
    const-string v2, "settings_height_portrait"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3142
    const/4 v0, 0x1

    .line 3143
    const-string v2, "settings_height_portrait"

    const-string v3, "100"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 3144
    .local v1, "psy":F
    float-to-int v2, v1

    iput v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->keyboardPortraitHeightPercentage:I

    goto/16 :goto_0

    .line 3145
    .end local v1    # "psy":F
    :cond_a
    const-string v2, "settings_height_landscape"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3146
    const/4 v0, 0x1

    .line 3147
    const-string v2, "settings_height_landscape"

    const-string v3, "100"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 3148
    .restart local v1    # "psy":F
    float-to-int v2, v1

    iput v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->keyboardLandscapeHeightPercentage:I

    goto/16 :goto_0

    .line 3149
    .end local v1    # "psy":F
    :cond_b
    const-string v2, "pref_keyboard_layouts"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3150
    const-string v2, "pref_keyboard_layouts"

    const-string v3, "1"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lnet/hasnath/android/keyboard/LatinIME;->CURRENT_TOGGLER:I

    .line 3151
    invoke-direct {p0, v6, v6}, Lnet/hasnath/android/keyboard/LatinIME;->toggleLanguage(ZZ)V

    goto/16 :goto_0

    .line 3152
    :cond_c
    const-string v2, "pref_font_settings"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3154
    const-string v2, "punc_sugg"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3155
    const-string v2, "punc_sugg"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPuncSuggestion:Z

    goto/16 :goto_0
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 12
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x3

    const/16 v9, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 747
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v6}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v1

    .line 749
    .local v1, "inputView":Lnet/hasnath/android/keyboard/LatinKeyboardView;
    if-nez v1, :cond_0

    .line 931
    :goto_0
    return-void

    .line 754
    :cond_0
    iget-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mRefreshKeyboardRequired:Z

    if-eqz v6, :cond_1

    .line 755
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mRefreshKeyboardRequired:Z

    .line 756
    invoke-direct {p0, v4, v4}, Lnet/hasnath/android/keyboard/LatinIME;->toggleLanguage(ZZ)V

    .line 762
    :cond_1
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v6, v5}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->makeKeyboards(Z)V

    .line 764
    invoke-static {p0}, Lnet/hasnath/android/keyboard/TextEntryState;->newSession(Landroid/content/Context;)V

    .line 769
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPasswordText:Z

    .line 770
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v3, v6, 0xff0

    .line 771
    .local v3, "variation":I
    const/16 v6, 0x80

    if-eq v3, v6, :cond_2

    .line 772
    const/16 v6, 0x90

    if-eq v3, v6, :cond_2

    .line 773
    if-eq v3, v9, :cond_2

    .line 774
    const/16 v6, 0xe0

    if-ne v3, v6, :cond_3

    .line 775
    :cond_2
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPasswordText:Z

    .line 788
    :cond_3
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->makeFieldContext()Lnet/hasnath/android/ridmik/voice/FieldContext;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lnet/hasnath/android/keyboard/LatinIME;->shouldShowVoiceButton(Lnet/hasnath/android/ridmik/voice/FieldContext;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v6

    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoiceButton:Z

    .line 789
    iget-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoiceButton:Z

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoice:Z

    if-eqz v6, :cond_8

    move v0, v4

    .line 791
    .local v0, "enableVoiceButton":Z
    :goto_1
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAfterVoiceInput:Z

    .line 792
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mImmediatelyAfterVoiceInput:Z

    .line 793
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowingVoiceSuggestions:Z

    .line 794
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInputHighlighted:Z

    .line 795
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mInputTypeNoAutoCorrect:Z

    .line 796
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    .line 797
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCompletionOn:Z

    .line 798
    const/4 v6, 0x0

    iput-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 799
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCapsLock:Z

    .line 800
    const/4 v6, 0x0

    iput-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    .line 802
    const/4 v2, 0x1

    .line 804
    .local v2, "switchGo":Z
    sget v6, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v6, v10, :cond_5

    .line 806
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v6, v6, 0xf

    if-eq v6, v10, :cond_5

    .line 809
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    const/16 v7, 0xb

    iget v8, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v6, v7, v8, v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 810
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    .line 811
    const/4 v2, 0x0

    .line 813
    const/16 v6, 0x80

    if-eq v3, v6, :cond_4

    .line 814
    const/16 v6, 0x90

    if-ne v3, v6, :cond_9

    .line 815
    :cond_4
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    .line 827
    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    .line 828
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v6, v6, 0xf

    packed-switch v6, :pswitch_data_0

    .line 896
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    .line 897
    iget v7, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 896
    invoke-virtual {v6, v4, v7, v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 900
    :cond_6
    :goto_3
    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->closing()V

    .line 901
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 902
    const-string v6, ""

    iput-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->bComposing:Ljava/lang/String;

    .line 903
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    const-string v7, ""

    iput-object v7, v6, Lnet/hasnath/android/keyboard/WordComposer;->bangla:Ljava/lang/String;

    .line 906
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    .line 907
    iput v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mDeleteCount:I

    .line 908
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAddedAutoSpace:Z

    .line 909
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->loadSettings()V

    .line 910
    invoke-virtual {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 912
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isCandidateStripVisible()Z

    move-result v6

    if-nez v6, :cond_17

    iget-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCompletionOn:Z

    if-nez v6, :cond_17

    move v6, v5

    :goto_4
    invoke-direct {p0, v6, v5}, Lnet/hasnath/android/keyboard/LatinIME;->setCandidatesViewShownInternal(ZZ)V

    .line 914
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateSuggestions()V

    .line 918
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    invoke-virtual {v6}, Lnet/hasnath/android/keyboard/Suggest;->hasMainDictionary()Z

    move-result v6

    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHasDictionary:Z

    .line 921
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateCorrectionMode()V

    .line 923
    iget-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPopupOn:Z

    invoke-virtual {v1, v6}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->setPreviewEnabled(Z)V

    .line 924
    iget v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLongPressDelay:I

    invoke-virtual {v1, v6}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->setLongPressDelay(I)V

    .line 925
    invoke-virtual {v1, v4}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->setProximityCorrectionEnabled(Z)V

    .line 926
    iget-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    if-eqz v6, :cond_18

    iget v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    if-gtz v6, :cond_7

    iget-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowSuggestions:Z

    if-eqz v6, :cond_18

    :cond_7
    :goto_5
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    .line 928
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->checkReCorrectionOnStart()V

    .line 929
    iget-object v4, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnet/hasnath/android/keyboard/LatinIME;->checkTutorial(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "enableVoiceButton":Z
    .end local v2    # "switchGo":Z
    :cond_8
    move v0, v5

    .line 789
    goto/16 :goto_1

    .line 816
    .restart local v0    # "enableVoiceButton":Z
    .restart local v2    # "switchGo":Z
    :cond_9
    if-ne v3, v11, :cond_a

    .line 817
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    goto :goto_2

    .line 818
    :cond_a
    if-ne v3, v9, :cond_b

    .line 819
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    goto :goto_2

    .line 820
    :cond_b
    const/16 v6, 0xb0

    if-ne v3, v6, :cond_5

    .line 821
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    goto/16 :goto_2

    .line 836
    :pswitch_0
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    .line 837
    iget v7, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 836
    invoke-virtual {v6, v10, v7, v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    goto :goto_3

    .line 840
    :pswitch_1
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    .line 841
    iget v7, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 840
    invoke-virtual {v6, v4, v7, v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 843
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    .line 845
    const/16 v6, 0x80

    if-eq v3, v6, :cond_c

    .line 846
    const/16 v6, 0x90

    if-eq v3, v6, :cond_c

    .line 847
    if-eq v3, v9, :cond_c

    .line 848
    const/16 v6, 0xe0

    if-ne v3, v6, :cond_d

    .line 849
    :cond_c
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    .line 851
    :cond_d
    if-eq v3, v11, :cond_e

    .line 852
    const/16 v6, 0x60

    if-ne v3, v6, :cond_12

    .line 853
    :cond_e
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoSpace:Z

    .line 857
    :goto_6
    if-ne v3, v11, :cond_13

    .line 858
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    .line 859
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    const/4 v7, 0x5

    .line 860
    iget v8, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 859
    invoke-virtual {v6, v7, v8, v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 881
    :cond_f
    :goto_7
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v7, 0x80000

    and-int/2addr v6, v7

    if-eqz v6, :cond_10

    .line 882
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    .line 883
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mInputTypeNoAutoCorrect:Z

    .line 886
    :cond_10
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v7, 0x8000

    and-int/2addr v6, v7

    if-nez v6, :cond_11

    .line 887
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v7, 0x20000

    and-int/2addr v6, v7

    if-nez v6, :cond_11

    .line 888
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mInputTypeNoAutoCorrect:Z

    .line 890
    :cond_11
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v7, 0x10000

    and-int/2addr v6, v7

    if-eqz v6, :cond_6

    .line 891
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    .line 892
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isFullscreenMode()Z

    move-result v6

    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCompletionOn:Z

    goto/16 :goto_3

    .line 855
    :cond_12
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoSpace:Z

    goto :goto_6

    .line 861
    :cond_13
    if-ne v3, v9, :cond_14

    .line 862
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    .line 863
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    const/4 v7, 0x4

    .line 864
    iget v8, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 863
    invoke-virtual {v6, v7, v8, v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    goto :goto_7

    .line 865
    :cond_14
    const/16 v6, 0x40

    if-ne v3, v6, :cond_15

    .line 866
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    const/4 v7, 0x6

    .line 867
    iget v8, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 866
    invoke-virtual {v6, v7, v8, v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    goto :goto_7

    .line 868
    :cond_15
    const/16 v6, 0xb0

    if-ne v3, v6, :cond_16

    .line 869
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    goto :goto_7

    .line 870
    :cond_16
    const/16 v6, 0xa0

    if-ne v3, v6, :cond_f

    .line 871
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    const/4 v7, 0x7

    .line 872
    iget v8, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 871
    invoke-virtual {v6, v7, v8, v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 875
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v7, 0x8000

    and-int/2addr v6, v7

    if-nez v6, :cond_f

    .line 876
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mInputTypeNoAutoCorrect:Z

    goto :goto_7

    :cond_17
    move v6, v4

    .line 912
    goto/16 :goto_4

    :cond_18
    move v4, v5

    .line 926
    goto/16 :goto_5

    .line 828
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 1893
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInputHighlighted:Z

    if-eqz v1, :cond_0

    .line 1894
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->commitVoiceInput()V

    .line 1896
    :cond_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1897
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1912
    :goto_0
    return-void

    .line 1898
    :cond_1
    invoke-direct {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->abortCorrection(Z)V

    .line 1899
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1900
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    if-eqz v1, :cond_2

    .line 1901
    invoke-direct {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 1903
    :cond_2
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->maybeRemovePreviousPeriod(Ljava/lang/CharSequence;)V

    .line 1905
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1906
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1907
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1908
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1, v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->onKey(I)V

    .line 1909
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    .line 1910
    iput-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAddedAutoSpace:Z

    .line 1911
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 1006
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 1007
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1008
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mImmediatelyAfterVoiceInput:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAfterVoiceInput:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1009
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHints:Lnet/hasnath/android/keyboard/Hints;

    invoke-virtual {v1, v0}, Lnet/hasnath/android/keyboard/Hints;->showPunctuationHintIfNecessary(Landroid/view/inputmethod/InputConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1010
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v1}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->logPunctuationHintDisplayed()V

    .line 1013
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mImmediatelyAfterVoiceInput:Z

    .line 1023
    return-void
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 4
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .prologue
    const/4 v3, 0x0

    .line 1030
    invoke-super/range {p0 .. p6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 1046
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAfterVoiceInput:Z

    if-eqz v1, :cond_0

    .line 1047
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v1, p4}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->setCursorPos(I)V

    .line 1048
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    sub-int v2, p4, p3

    invoke-virtual {v1, v2}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->setSelectionSpan(I)V

    .line 1053
    :cond_0
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInputHighlighted:Z

    if-eqz v1, :cond_a

    .line 1054
    :cond_2
    if-ne p3, p6, :cond_3

    .line 1055
    if-eq p4, p6, :cond_a

    .line 1056
    :cond_3
    iget v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastSelectionStart:I

    if-eq v1, p3, :cond_a

    .line 1057
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1058
    const-string v1, ""

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->bComposing:Ljava/lang/String;

    .line 1059
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    const-string v2, ""

    iput-object v2, v1, Lnet/hasnath/android/keyboard/WordComposer;->bangla:Ljava/lang/String;

    .line 1062
    iput-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    .line 1063
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->postUpdateSuggestions()V

    .line 1064
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->reset()V

    .line 1065
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1066
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_4

    .line 1067
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1069
    :cond_4
    iput-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInputHighlighted:Z

    .line 1080
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_5
    :goto_0
    iput-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAccepted:Z

    .line 1081
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->postUpdateShiftKeyState()V

    .line 1084
    iput p3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastSelectionStart:I

    .line 1085
    iput p4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastSelectionEnd:I

    .line 1087
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mReCorrectionEnabled:Z

    if-eqz v1, :cond_9

    .line 1089
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1090
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1092
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isPredictionOn()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1093
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    if-nez v1, :cond_9

    .line 1094
    if-eq p5, p6, :cond_6

    if-ne p3, p1, :cond_6

    .line 1095
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->isCorrecting()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1096
    :cond_6
    add-int/lit8 v1, p4, -0x1

    if-lt p3, v1, :cond_7

    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    if-nez v1, :cond_9

    .line 1097
    :cond_7
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInputHighlighted:Z

    if-nez v1, :cond_9

    .line 1098
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isCursorTouchingWord()Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastSelectionStart:I

    iget v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastSelectionEnd:I

    if-ge v1, v2, :cond_b

    .line 1099
    :cond_8
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->postUpdateOldSuggestions()V

    .line 1113
    :cond_9
    :goto_1
    return-void

    .line 1070
    :cond_a
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAccepted:Z

    if-nez v1, :cond_5

    .line 1071
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIME;->$SWITCH_TABLE$net$hasnath$android$keyboard$TextEntryState$State()[I

    move-result-object v1

    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->getState()Lnet/hasnath/android/keyboard/TextEntryState$State;

    move-result-object v2

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/TextEntryState$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1073
    :sswitch_0
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->reset()V

    .line 1076
    :sswitch_1
    iput-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAddedAutoSpace:Z

    goto :goto_0

    .line 1101
    :cond_b
    invoke-direct {p0, v3}, Lnet/hasnath/android/keyboard/LatinIME;->abortCorrection(Z)V

    .line 1104
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    if-eqz v1, :cond_9

    .line 1105
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggestPuncList:Ljava/util/List;

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/CandidateView;->getSuggestions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1106
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/CandidateView;->isShowingAddToDictionaryHint()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1107
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->setNextSuggestions()V

    goto :goto_1

    .line 1071
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public onVoiceResults(Ljava/util/List;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 2469
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "alternatives":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/CharSequence;>;>;"
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mRecognizing:Z

    if-nez v0, :cond_0

    .line 2475
    :goto_0
    return-void

    .line 2472
    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceResults:Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;

    iput-object p1, v0, Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;->candidates:Ljava/util/List;

    .line 2473
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceResults:Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;

    iput-object p2, v0, Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;->alternatives:Ljava/util/Map;

    .line 2474
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onWindowHidden()V
    .locals 0

    .prologue
    .line 959
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    .line 964
    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 12
    .param p1, "index"    # I
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v11, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 2657
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v7}, Lnet/hasnath/android/keyboard/CandidateView;->getSuggestions()Ljava/util/List;

    move-result-object v5

    .line 2659
    .local v5, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAfterVoiceInput:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowingVoiceSuggestions:Z

    if-eqz v7, :cond_0

    .line 2660
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v7}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->flushAllTextModificationCounters()V

    .line 2662
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2663
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordSeparators:Ljava/lang/String;

    .line 2664
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v10

    .line 2662
    invoke-virtual {v7, v8, p1, v9, v10}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->logTextModifiedByChooseSuggestion(Ljava/lang/String;ILjava/lang/String;Landroid/view/inputmethod/InputConnection;)V

    .line 2667
    :cond_0
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->isCorrecting()Z

    move-result v1

    .line 2668
    .local v1, "correcting":Z
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 2669
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_1

    .line 2670
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2672
    :cond_1
    iget-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCompletionOn:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v7, :cond_5

    if-ltz p1, :cond_5

    .line 2673
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v7, v7

    if-ge p1, v7, :cond_5

    .line 2674
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v0, v6, p1

    .line 2675
    .local v0, "ci":Landroid/view/inputmethod/CompletionInfo;
    if-eqz v2, :cond_2

    .line 2676
    invoke-interface {v2, v0}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 2678
    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iput v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCommittedLength:I

    .line 2679
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    if-eqz v6, :cond_3

    .line 2680
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v6}, Lnet/hasnath/android/keyboard/CandidateView;->clear()V

    .line 2682
    :cond_3
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v6

    invoke-virtual {p0, v6}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 2683
    if-eqz v2, :cond_4

    .line 2684
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2745
    .end local v0    # "ci":Landroid/view/inputmethod/CompletionInfo;
    :cond_4
    :goto_0
    return-void

    .line 2690
    :cond_5
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ne v7, v6, :cond_7

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v7}, Lnet/hasnath/android/keyboard/LatinIME;->isWordSeparator(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 2691
    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-direct {p0, v7}, Lnet/hasnath/android/keyboard/LatinIME;->isSuggestedPunctuation(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2695
    :cond_6
    const-string v7, ""

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2694
    invoke-static {v7, v8, p1, v5}, Lnet/hasnath/android/keyboard/LatinImeLogger;->logOnManualSuggestion(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 2696
    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 2697
    .local v3, "primaryCode":C
    new-array v6, v6, [I

    aput v3, v6, v4

    invoke-virtual {p0, v3, v6, v11, v11}, Lnet/hasnath/android/keyboard/LatinIME;->onKey(I[III)V

    .line 2699
    if-eqz v2, :cond_4

    .line 2700
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 2704
    .end local v3    # "primaryCode":C
    :cond_7
    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAccepted:Z

    .line 2705
    invoke-direct {p0, p2, v1}, Lnet/hasnath/android/keyboard/LatinIME;->pickSuggestion(Ljava/lang/CharSequence;Z)V

    .line 2707
    if-nez p1, :cond_8

    .line 2708
    const/4 v7, 0x3

    invoke-direct {p0, p2, v7}, Lnet/hasnath/android/keyboard/LatinIME;->addToDictionaries(Ljava/lang/CharSequence;I)V

    .line 2712
    :cond_8
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, p1, v5}, Lnet/hasnath/android/keyboard/LatinImeLogger;->logOnManualSuggestion(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 2714
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p2}, Lnet/hasnath/android/keyboard/TextEntryState;->acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2716
    iget-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoSpace:Z

    if-eqz v7, :cond_9

    if-nez v1, :cond_9

    .line 2717
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->sendSpace()V

    .line 2718
    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAddedAutoSpace:Z

    .line 2721
    :cond_9
    if-nez p1, :cond_a

    iget v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    if-lez v7, :cond_a

    .line 2722
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    invoke-virtual {v7, p2}, Lnet/hasnath/android/keyboard/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 2723
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/hasnath/android/keyboard/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    move v4, v6

    .line 2725
    .local v4, "showingAddToDictionaryHint":Z
    :cond_a
    if-nez v1, :cond_c

    .line 2729
    const/16 v7, 0x20

    invoke-static {v7, v6}, Lnet/hasnath/android/keyboard/TextEntryState;->typedCharacter(CZ)V

    .line 2730
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->setNextSuggestions()V

    .line 2742
    :cond_b
    :goto_1
    if-eqz v2, :cond_4

    .line 2743
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 2731
    :cond_c
    if-nez v4, :cond_b

    .line 2734
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->clearSuggestions()V

    .line 2735
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->postUpdateOldSuggestions()V

    goto :goto_1
.end method

.method public preferCapitalization()Z
    .locals 2

    .prologue
    .line 3056
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/WordComposer;->isFirstCharCapitalized()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method promoteToUserDictionary(Ljava/lang/String;I)V
    .locals 0
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "frequency"    # I

    .prologue
    .line 3336
    return-void
.end method

.method public revertLastWord(Z)V
    .locals 7
    .param p1, "deleteChar"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3011
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 3012
    .local v1, "length":I
    iget-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    if-nez v4, :cond_3

    if-lez v1, :cond_3

    .line 3013
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3014
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    .line 3015
    invoke-interface {v0, v5, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    .line 3016
    if-eqz p1, :cond_0

    invoke-interface {v0, v5, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3017
    :cond_0
    iget v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCommittedLength:I

    .line 3018
    .local v2, "toDelete":I
    iget v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCommittedLength:I

    invoke-interface {v0, v4, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 3019
    .local v3, "toTheLeft":Ljava/lang/CharSequence;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 3020
    invoke-interface {v3, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lnet/hasnath/android/keyboard/LatinIME;->isWordSeparator(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3021
    add-int/lit8 v2, v2, -0x1

    .line 3023
    :cond_1
    invoke-interface {v0, v2, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3024
    sget v4, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v4, v5, :cond_2

    .line 3025
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->bComposing:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 3028
    :goto_0
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->backspace()V

    .line 3029
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->postUpdateSuggestions()V

    .line 3034
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "toDelete":I
    .end local v3    # "toTheLeft":Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 3027
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v2    # "toDelete":I
    .restart local v3    # "toTheLeft":Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v0, v4, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 3031
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "toDelete":I
    .end local v3    # "toTheLeft":Ljava/lang/CharSequence;
    :cond_3
    const/16 v4, 0x43

    invoke-virtual {p0, v4}, Lnet/hasnath/android/keyboard/LatinIME;->sendDownUpKeyEvents(I)V

    .line 3032
    const/4 v4, 0x0

    iput-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public setCandidatesViewShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1210
    if-eqz p1, :cond_0

    .line 1211
    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowCandidate:Z

    .line 1213
    :goto_0
    invoke-direct {p0, p1, v1}, Lnet/hasnath/android/keyboard/LatinIME;->setCandidatesViewShownInternal(ZZ)V

    .line 1214
    return-void

    .line 1212
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowCandidate:Z

    goto :goto_0
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 3182
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->handleClose()V

    .line 3183
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 3178
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->changeKeyboardMode()V

    .line 3179
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 3173
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->changeKeyboardMode()V

    .line 3175
    return-void
.end method

.method public swipeUp()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3187
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCapsLock:Z

    if-eqz v0, :cond_0

    .line 3188
    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCapsLock:Z

    .line 3189
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setShifted(Z)V

    .line 3194
    :goto_0
    return-void

    .line 3191
    :cond_0
    iput-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCapsLock:Z

    .line 3192
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0, v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setShiftLocked(Z)V

    goto :goto_0
.end method

.method tutorialDone()V
    .locals 1

    .prologue
    .line 3328
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mTutorial:Lnet/hasnath/android/keyboard/Tutorial;

    .line 3329
    return-void
.end method

.method public updateBanglaShift()V
    .locals 2

    .prologue
    .line 1883
    sget-boolean v0, Lnet/hasnath/android/keyboard/LatinIME;->shiftedBangla:Z

    if-eqz v0, :cond_0

    sget v0, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1884
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    const/16 v1, -0x1b1

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setFixedKeyboard(I)V

    .line 1885
    const/4 v0, 0x0

    sput-boolean v0, Lnet/hasnath/android/keyboard/LatinIME;->shiftedBangla:Z

    .line 1887
    :cond_0
    return-void
.end method

.method public updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .param p1, "attr"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 1457
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1458
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1459
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShiftKeyState:Lnet/hasnath/android/keyboard/ModifierKeyState;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/ModifierKeyState;->isMomentary()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCapsLock:Z

    if-nez v1, :cond_1

    .line 1460
    invoke-direct {p0, v0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->getCursorCapsMode(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 1459
    :goto_0
    invoke-virtual {v2, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setShifted(Z)V

    .line 1462
    :cond_0
    return-void

    .line 1460
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
