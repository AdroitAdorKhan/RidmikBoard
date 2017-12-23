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

.field public static final BANGLA_UNICODE_FONT:Ljava/lang/String; = "BengaliOTS.ttf"

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

.field private mContactsDictionary:Lnet/hasnath/android/keyboard/ContactsDictionary;

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

.field private mMyDictionary:Lnet/hasnath/android/keyboard/MyDictionary;

.field private mObeyHapticFeedback:Z

.field private mOptionsDialog:Landroid/app/AlertDialog;

.field private mOrientation:I

.field private mPasswordText:Z

.field private mPopupOn:Z

.field private mPredicting:Z

.field private mPredictionOn:Z

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
    .line 81
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
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 102
    const/4 v0, 0x1

    sput v0, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    .line 104
    sput v2, Lnet/hasnath/android/keyboard/LatinIME;->CURRENT_TOGGLER:I

    .line 106
    sput v2, Lnet/hasnath/android/keyboard/LatinIME;->FONT_SETTINGS:I

    .line 110
    sput-boolean v1, Lnet/hasnath/android/keyboard/LatinIME;->shiftedBangla:Z

    .line 115
    sput-boolean v1, Lnet/hasnath/android/keyboard/LatinIME;->CUT_COPY_PASTE:Z

    .line 3342
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x1

    .line 81
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    .line 96
    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowCandidate:Z

    .line 113
    new-instance v0, Lnet/hasnath/ridmikparser/RidmikParser;

    invoke-direct {v0}, Lnet/hasnath/ridmikparser/RidmikParser;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->parser:Lnet/hasnath/ridmikparser/RidmikParser;

    .line 219
    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->learnWordAsTyping:Z

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    .line 229
    new-instance v0, Lnet/hasnath/android/keyboard/WordComposer;

    invoke-direct {v0}, Lnet/hasnath/android/keyboard/WordComposer;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mBigramSuggestionEnabled:Z

    .line 272
    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoice:Z

    .line 290
    new-instance v0, Lnet/hasnath/android/keyboard/ModifierKeyState;

    invoke-direct {v0}, Lnet/hasnath/android/keyboard/ModifierKeyState;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShiftKeyState:Lnet/hasnath/android/keyboard/ModifierKeyState;

    .line 291
    new-instance v0, Lnet/hasnath/android/keyboard/ModifierKeyState;

    invoke-direct {v0}, Lnet/hasnath/android/keyboard/ModifierKeyState;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSymbolKeyState:Lnet/hasnath/android/keyboard/ModifierKeyState;

    .line 297
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->FX_VOLUME:F

    .line 304
    new-instance v0, Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;-><init>(Lnet/hasnath/android/keyboard/LatinIME;Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;)V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceResults:Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;

    .line 306
    iput v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->keyboardPortraitHeightPercentage:I

    .line 307
    iput v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->keyboardLandscapeHeightPercentage:I

    .line 315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordHistory:Ljava/util/ArrayList;

    .line 373
    new-instance v0, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;

    invoke-direct {v0, p0}, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;-><init>(Lnet/hasnath/android/keyboard/LatinIME;)V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    .line 3049
    new-instance v0, Lnet/hasnath/android/keyboard/LatinIME$1;

    invoke-direct {v0, p0}, Lnet/hasnath/android/keyboard/LatinIME$1;-><init>(Lnet/hasnath/android/keyboard/LatinIME;)V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3343
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCpsIntervals:[J

    .line 81
    return-void
.end method

.method private abortCorrection(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 1925
    if-nez p1, :cond_0

    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->isCorrecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1926
    :cond_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1927
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->clearSuggestions()V

    .line 1929
    :cond_1
    return-void
.end method

.method static synthetic access$0(Lnet/hasnath/android/keyboard/LatinIME;)V
    .locals 0

    .prologue
    .line 3057
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$1(Lnet/hasnath/android/keyboard/LatinIME;Lnet/hasnath/android/keyboard/WordComposer;)Ljava/util/List;
    .locals 1

    .prologue
    .line 2380
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->getTypedSuggestions(Lnet/hasnath/android/keyboard/WordComposer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lnet/hasnath/android/keyboard/LatinIME;)V
    .locals 0

    .prologue
    .line 2144
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->postUpdateSuggestions()V

    return-void
.end method

.method static synthetic access$11(Lnet/hasnath/android/keyboard/LatinIME;)Lnet/hasnath/android/ridmik/voice/VoiceInput;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    return-object v0
.end method

.method static synthetic access$12(Lnet/hasnath/android/keyboard/LatinIME;Z)V
    .locals 0

    .prologue
    .line 2210
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->reallyStartListening(Z)V

    return-void
.end method

.method static synthetic access$2(Lnet/hasnath/android/keyboard/LatinIME;)V
    .locals 0

    .prologue
    .line 2362
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateSuggestions()V

    return-void
.end method

.method static synthetic access$3(Lnet/hasnath/android/keyboard/LatinIME;)V
    .locals 0

    .prologue
    .line 2698
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->setOldSuggestions()V

    return-void
.end method

.method static synthetic access$4(Lnet/hasnath/android/keyboard/LatinIME;)Lnet/hasnath/android/keyboard/Tutorial;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mTutorial:Lnet/hasnath/android/keyboard/Tutorial;

    return-object v0
.end method

.method static synthetic access$5(Lnet/hasnath/android/keyboard/LatinIME;Lnet/hasnath/android/keyboard/Tutorial;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mTutorial:Lnet/hasnath/android/keyboard/Tutorial;

    return-void
.end method

.method static synthetic access$6(Lnet/hasnath/android/keyboard/LatinIME;)V
    .locals 0

    .prologue
    .line 2293
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->handleVoiceResults()V

    return-void
.end method

.method static synthetic access$7(Lnet/hasnath/android/keyboard/LatinIME;Z)V
    .locals 0

    .prologue
    .line 270
    iput-boolean p1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mIsShowingHint:Z

    return-void
.end method

.method static synthetic access$9(Lnet/hasnath/android/keyboard/LatinIME;Z)V
    .locals 0

    .prologue
    .line 232
    iput-boolean p1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mRecognizing:Z

    return-void
.end method

.method private addToBigramDictionary(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "suggestion"    # Ljava/lang/CharSequence;
    .param p2, "frequencyDelta"    # I

    .prologue
    .line 2739
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lnet/hasnath/android/keyboard/LatinIME;->checkAddToDictionary(Ljava/lang/CharSequence;IZ)V

    .line 2740
    return-void
.end method

.method private addToDictionaries(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "suggestion"    # Ljava/lang/CharSequence;
    .param p2, "frequencyDelta"    # I

    .prologue
    .line 2735
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/hasnath/android/keyboard/LatinIME;->checkAddToDictionary(Ljava/lang/CharSequence;IZ)V

    .line 2736
    return-void
.end method

.method private applyTypedAlternatives(Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;)Z
    .locals 9
    .param p1, "touching"    # Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2659
    const/4 v2, 0x0

    .line 2660
    .local v2, "foundWord":Lnet/hasnath/android/keyboard/WordComposer;
    const/4 v0, 0x0

    .line 2661
    .local v0, "alternatives":Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 2671
    :goto_0
    if-nez v2, :cond_2

    .line 2672
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    iget-object v7, p1, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Lnet/hasnath/android/keyboard/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2673
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    iget-object v7, p1, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lnet/hasnath/android/keyboard/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2674
    :cond_1
    new-instance v2, Lnet/hasnath/android/keyboard/WordComposer;

    .end local v2    # "foundWord":Lnet/hasnath/android/keyboard/WordComposer;
    invoke-direct {v2}, Lnet/hasnath/android/keyboard/WordComposer;-><init>()V

    .line 2675
    .restart local v2    # "foundWord":Lnet/hasnath/android/keyboard/WordComposer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p1, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt v3, v4, :cond_7

    .line 2680
    iget-object v4, p1, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    invoke-virtual {v2, v4}, Lnet/hasnath/android/keyboard/WordComposer;->setFirstCharCapitalized(Z)V

    .line 2683
    .end local v3    # "i":I
    :cond_2
    if-nez v2, :cond_3

    if-eqz v0, :cond_9

    .line 2684
    :cond_3
    if-nez v0, :cond_4

    .line 2685
    new-instance v0, Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;

    .end local v0    # "alternatives":Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;
    iget-object v4, p1, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-direct {v0, p0, v4, v2}, Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;-><init>(Lnet/hasnath/android/keyboard/LatinIME;Ljava/lang/CharSequence;Lnet/hasnath/android/keyboard/WordComposer;)V

    .line 2687
    .restart local v0    # "alternatives":Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;
    :cond_4
    invoke-direct {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->showCorrections(Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;)V

    .line 2688
    if-eqz v2, :cond_8

    .line 2689
    new-instance v4, Lnet/hasnath/android/keyboard/WordComposer;

    invoke-direct {v4, v2}, Lnet/hasnath/android/keyboard/WordComposer;-><init>(Lnet/hasnath/android/keyboard/WordComposer;)V

    iput-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    :goto_2
    move v4, v6

    .line 2695
    :goto_3
    return v4

    .line 2661
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;

    .line 2662
    .local v1, "entry":Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;
    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;->getChosenWord()Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p1, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2663
    instance-of v4, v1, Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;

    if-eqz v4, :cond_6

    move-object v4, v1

    .line 2664
    check-cast v4, Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;

    invoke-static {v4}, Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;->access$0(Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;)Lnet/hasnath/android/keyboard/WordComposer;

    move-result-object v2

    .line 2666
    :cond_6
    move-object v0, v1

    .line 2667
    goto :goto_0

    .line 2676
    .end local v1    # "entry":Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;
    .restart local v3    # "i":I
    :cond_7
    iget-object v4, p1, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    new-array v7, v6, [I

    .line 2677
    iget-object v8, p1, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-interface {v8, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    aput v8, v7, v5

    .line 2676
    invoke-virtual {v2, v4, v7}, Lnet/hasnath/android/keyboard/WordComposer;->add(I[I)V

    .line 2675
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2691
    .end local v3    # "i":I
    :cond_8
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/WordComposer;->reset()V

    goto :goto_2

    :cond_9
    move v4, v5

    .line 2695
    goto :goto_3
.end method

.method private applyVoiceAlternatives(Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;)Z
    .locals 10
    .param p1, "touching"    # Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2626
    iget-object v8, p1, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 2627
    .local v4, "selectedWord":Ljava/lang/String;
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2628
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 2630
    :cond_0
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2631
    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowingVoiceSuggestions:Z

    .line 2632
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2635
    .local v5, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v8, p1, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-interface {v8, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2636
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v2

    .line 2637
    .local v2, "inputLocale":Ljava/util/Locale;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lt v1, v8, :cond_2

    .line 2644
    .end local v1    # "i":I
    .end local v2    # "inputLocale":Ljava/util/Locale;
    :cond_1
    invoke-direct {p0, v5, v7, v6, v6}, Lnet/hasnath/android/keyboard/LatinIME;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 2645
    invoke-virtual {p0, v6}, Lnet/hasnath/android/keyboard/LatinIME;->setCandidatesViewShown(Z)V

    .line 2648
    .end local v5    # "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :goto_1
    return v6

    .line 2638
    .restart local v1    # "i":I
    .restart local v2    # "inputLocale":Ljava/util/Locale;
    .restart local v5    # "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_2
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2639
    .local v3, "origSugg":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2640
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3, v6, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2639
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2641
    .local v0, "capsSugg":Ljava/lang/String;
    invoke-interface {v5, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2637
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "capsSugg":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "inputLocale":Ljava/util/Locale;
    .end local v3    # "origSugg":Ljava/lang/String;
    .end local v5    # "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_3
    move v6, v7

    .line 2648
    goto :goto_1
.end method

.method private backspaceWord(Landroid/view/inputmethod/InputConnection;)V
    .locals 8
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v7, 0x0

    .line 1757
    const/16 v4, 0x100

    invoke-interface {p1, v4, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1758
    .local v1, "chars":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1794
    :cond_0
    :goto_0
    return-void

    .line 1764
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 1767
    .local v3, "lastCharToDelete":I
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lnet/hasnath/android/keyboard/LatinIME;->isWordSeparator(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1768
    :goto_1
    if-gtz v3, :cond_5

    .line 1777
    :cond_2
    :goto_2
    if-gtz v3, :cond_6

    .line 1784
    :cond_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v2, v4, v3

    .line 1787
    .local v2, "charsToDelete":I
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v4}, Lnet/hasnath/android/keyboard/LatinIME;->sameAsTextBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1788
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v4, v2, :cond_4

    .line 1789
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1792
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

    .line 1793
    invoke-interface {p1, v2, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    .line 1769
    .end local v2    # "charsToDelete":I
    :cond_5
    add-int/lit8 v4, v3, -0x1

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1770
    .local v0, "c":C
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->isWordSeparator(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1772
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1778
    .end local v0    # "c":C
    :cond_6
    add-int/lit8 v4, v3, -0x1

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1779
    .restart local v0    # "c":C
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->isWordSeparator(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1781
    add-int/lit8 v3, v3, -0x1

    goto :goto_2
.end method

.method private checkAddToDictionary(Ljava/lang/CharSequence;IZ)V
    .locals 3
    .param p1, "suggestion"    # Ljava/lang/CharSequence;
    .param p2, "frequencyDelta"    # I
    .param p3, "addToBigramDictionary"    # Z

    .prologue
    .line 2749
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPasswordText:Z

    if-eqz v0, :cond_1

    .line 2786
    :cond_0
    :goto_0
    return-void

    .line 2750
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 2756
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2758
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mMyDictionary:Lnet/hasnath/android/keyboard/MyDictionary;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/keyboard/MyDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->learnWordAsTyping:Z

    if-eqz v0, :cond_2

    .line 2759
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mMyDictionary:Lnet/hasnath/android/keyboard/MyDictionary;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Lnet/hasnath/android/keyboard/MyDictionary;->addWord(Ljava/lang/String;I)V

    .line 2764
    :cond_2
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2765
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0
.end method

.method private checkReCorrectionOnStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 901
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mReCorrectionEnabled:Z

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isPredictionOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 906
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 907
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_1

    .line 921
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    :goto_0
    return-void

    .line 908
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_1
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 909
    .local v1, "etr":Landroid/view/inputmethod/ExtractedTextRequest;
    iput v4, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 910
    invoke-interface {v2, v1, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 911
    .local v0, "et":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    .line 913
    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/2addr v3, v4

    iput v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastSelectionStart:I

    .line 914
    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v3, v4

    iput v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastSelectionEnd:I

    .line 917
    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isCursorTouchingWord()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 918
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->postUpdateOldSuggestions()V

    goto :goto_0
.end method

.method private checkTutorial(Ljava/lang/String;)V
    .locals 1
    .param p1, "privateImeOptions"    # Ljava/lang/String;

    .prologue
    .line 3105
    if-nez p1, :cond_1

    .line 3115
    :cond_0
    :goto_0
    return-void

    .line 3106
    :cond_1
    const-string v0, "com.android.setupwizard:ShowTutorial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3107
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mTutorial:Lnet/hasnath/android/keyboard/Tutorial;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->startTutorial()V

    goto :goto_0

    .line 3108
    :cond_2
    const-string v0, "com.android.setupwizard:HideTutorial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3109
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mTutorial:Lnet/hasnath/android/keyboard/Tutorial;

    if-eqz v0, :cond_0

    .line 3110
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mTutorial:Lnet/hasnath/android/keyboard/Tutorial;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/Tutorial;->close()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3111
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mTutorial:Lnet/hasnath/android/keyboard/Tutorial;

    goto :goto_0
.end method

.method private clearSuggestions()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2342
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Lnet/hasnath/android/keyboard/LatinIME;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 2343
    return-void
.end method

.method private commitTyped(Landroid/view/inputmethod/InputConnection;)V
    .locals 3
    .param p1, "inputConnection"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v2, 0x1

    .line 1295
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    if-eqz v0, :cond_2

    .line 1296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    .line 1297
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1298
    if-eqz p1, :cond_0

    .line 1300
    sget v0, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v0, v2, :cond_3

    .line 1301
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->parser:Lnet/hasnath/ridmikparser/RidmikParser;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/hasnath/ridmikparser/RidmikParser;->toBangla(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1306
    :cond_0
    :goto_0
    sget v0, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v0, v2, :cond_4

    .line 1307
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->parser:Lnet/hasnath/ridmikparser/RidmikParser;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/hasnath/ridmikparser/RidmikParser;->toBangla(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCommittedLength:I

    .line 1310
    :goto_1
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lnet/hasnath/android/keyboard/TextEntryState;->acceptedTyped(Ljava/lang/CharSequence;)V

    .line 1312
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->addToDictionaries(Ljava/lang/CharSequence;I)V

    .line 1314
    :cond_1
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateSuggestions()V

    .line 1316
    :cond_2
    return-void

    .line 1303
    :cond_3
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 1309
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
    .line 1273
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1274
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1275
    :cond_0
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateSuggestions()V

    .line 1276
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInputHighlighted:Z

    .line 1277
    return-void
.end method

.method private copyTextToClipBoard()V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/16 v8, 0x1f4

    const/4 v7, 0x0

    .line 1679
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 1680
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-interface {v2, v8, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v8, v7}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1681
    .local v4, "text":Ljava/lang/String;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1682
    .local v3, "sdk":I
    const/16 v5, 0xb

    if-ge v3, v5, :cond_0

    .line 1684
    const-string v5, "clipboard"

    invoke-virtual {p0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 1685
    .local v1, "clipboard":Landroid/text/ClipboardManager;
    invoke-virtual {v1, v4}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1692
    .end local v1    # "clipboard":Landroid/text/ClipboardManager;
    :goto_0
    return-void

    .line 1688
    :cond_0
    const-string v5, "clipboard"

    invoke-virtual {p0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 1689
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string v5, "Ridmik Board PLUS"

    invoke-static {v5, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 1690
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0
.end method

.method private cutFromInputArea()V
    .locals 2

    .prologue
    const/16 v1, 0x1f4

    .line 1713
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->copyTextToClipBoard()V

    .line 1714
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1715
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-interface {v0, v1, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1717
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

    .line 1374
    iget v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    if-nez v2, :cond_1

    .line 1388
    :cond_0
    :goto_0
    return-void

    .line 1375
    :cond_1
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1376
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1377
    invoke-interface {v0, v6, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1378
    .local v1, "lastThree":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 1379
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1380
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_0

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_0

    .line 1381
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1382
    invoke-interface {v0, v5, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1383
    const-string v2, "  "

    invoke-interface {v0, v2, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1384
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1385
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1386
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAddedAutoSpace:Z

    goto :goto_0
.end method

.method private fieldCanDoVoice(Lnet/hasnath/android/ridmik/voice/FieldContext;)Z
    .locals 1
    .param p1, "fieldContext"    # Lnet/hasnath/android/ridmik/voice/FieldContext;

    .prologue
    .line 3036
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPasswordText:Z

    if-nez v0, :cond_0

    .line 3037
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    if-eqz v0, :cond_0

    .line 3038
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->isBlacklistedField(Lnet/hasnath/android/ridmik/voice/FieldContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3036
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
    .line 1621
    packed-switch p1, :pswitch_data_0

    .line 1673
    .end local p1    # "ascii":I
    :goto_0
    :pswitch_0
    return p1

    .line 1624
    .restart local p1    # "ascii":I
    :pswitch_1
    const/16 p1, 0x9e6

    goto :goto_0

    .line 1625
    :pswitch_2
    const/16 p1, 0x9e7

    goto :goto_0

    .line 1626
    :pswitch_3
    const/16 p1, 0x9e8

    goto :goto_0

    .line 1627
    :pswitch_4
    const/16 p1, 0x9e9

    goto :goto_0

    .line 1628
    :pswitch_5
    const/16 p1, 0x9ea

    goto :goto_0

    .line 1629
    :pswitch_6
    const/16 p1, 0x9eb

    goto :goto_0

    .line 1630
    :pswitch_7
    const/16 p1, 0x9ec

    goto :goto_0

    .line 1631
    :pswitch_8
    const/16 p1, 0x9ed

    goto :goto_0

    .line 1632
    :pswitch_9
    const/16 p1, 0x9ee

    goto :goto_0

    .line 1633
    :pswitch_a
    const/16 p1, 0x9ef

    goto :goto_0

    .line 1637
    :pswitch_b
    const/16 p1, 0x982

    goto :goto_0

    .line 1638
    :pswitch_c
    const/16 p1, 0x9df

    goto :goto_0

    .line 1639
    :pswitch_d
    const/16 p1, 0x9a2

    goto :goto_0

    .line 1640
    :pswitch_e
    const/16 p1, 0x9ab

    goto :goto_0

    .line 1641
    :pswitch_f
    const/16 p1, 0x9a0

    goto :goto_0

    .line 1642
    :pswitch_10
    const/16 p1, 0x99b

    goto :goto_0

    .line 1643
    :pswitch_11
    const/16 p1, 0x99d

    goto :goto_0

    .line 1644
    :pswitch_12
    const/16 p1, 0x99e

    goto :goto_0

    .line 1645
    :pswitch_13
    const/16 p1, 0x998

    goto :goto_0

    .line 1646
    :pswitch_14
    const/16 p1, 0x9dd

    goto :goto_0

    .line 1647
    :pswitch_15
    const/16 p1, 0x990

    goto :goto_0

    .line 1648
    :pswitch_16
    const/16 p1, 0x989

    goto :goto_0

    .line 1649
    :pswitch_17
    const/16 p1, 0x987

    goto :goto_0

    .line 1650
    :pswitch_18
    const/16 p1, 0x9ad

    goto :goto_0

    .line 1651
    :pswitch_19
    const/16 p1, 0x986

    goto :goto_0

    .line 1652
    :pswitch_1a
    const/16 p1, 0x996

    goto :goto_0

    .line 1653
    :pswitch_1b
    const/16 p1, 0x9ce

    goto :goto_0

    .line 1654
    :pswitch_1c
    const/16 p1, 0x9a7

    goto :goto_0

    .line 1655
    :pswitch_1d
    const/16 p1, 0x983

    goto :goto_0

    .line 1659
    :pswitch_1e
    const/16 p1, 0x993

    goto :goto_0

    .line 1660
    :pswitch_1f
    const/16 p1, 0x98f

    goto :goto_0

    .line 1661
    :pswitch_20
    const/16 p1, 0x9b2

    goto :goto_0

    .line 1662
    :pswitch_21
    const/16 p1, 0x9a3

    goto :goto_0

    .line 1663
    :pswitch_22
    const/16 p1, 0x9b7

    goto :goto_0

    .line 1664
    :pswitch_23
    const/16 p1, 0x9b6

    goto :goto_0

    .line 1665
    :pswitch_24
    const/16 p1, 0x98a

    goto :goto_0

    .line 1666
    :pswitch_25
    const/16 p1, 0x988

    goto :goto_0

    .line 1667
    :pswitch_26
    const/16 p1, 0x994

    goto :goto_0

    .line 1668
    :pswitch_27
    const/16 p1, -0x234

    goto :goto_0

    .line 1669
    :pswitch_28
    const/16 p1, 0x20b9

    goto :goto_0

    .line 1671
    :pswitch_29
    const/16 p1, 0x98b

    goto :goto_0

    .line 1672
    :pswitch_2a
    const/16 p1, 0x9dc

    goto :goto_0

    .line 1621
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
        :pswitch_0
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
        :pswitch_0
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
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_0
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_28
    .end packed-switch
.end method

.method private getCursorCapsMode(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)I
    .locals 4
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "attr"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 1333
    const/4 v0, 0x0

    .line 1334
    .local v0, "caps":I
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 1335
    .local v1, "ei":Landroid/view/inputmethod/EditorInfo;
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoCap:Z

    if-eqz v2, :cond_0

    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v2, :cond_0

    .line 1336
    iget v2, p2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-interface {p1, v2}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v0

    .line 1338
    :cond_0
    return v0
.end method

.method static getDictionary(Landroid/content/res/Resources;)[I
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 573
    new-array v0, v2, [I

    .line 574
    .local v0, "dict":[I
    sget v1, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-eq v1, v2, :cond_0

    sget v1, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 575
    :cond_0
    const v1, 0x7f060002

    aput v1, v0, v3

    .line 579
    :goto_0
    return-object v0

    .line 577
    :cond_1
    const/high16 v1, 0x7f060000

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
    .line 2382
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    .line 2383
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2382
    invoke-virtual {v1, v2, p1, v3, v4}, Lnet/hasnath/android/keyboard/Suggest;->getSuggestions(Landroid/view/View;Lnet/hasnath/android/keyboard/WordComposer;ZLjava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 2385
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

    .line 1797
    iget-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInputHighlighted:Z

    if-eqz v5, :cond_1

    .line 1798
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    .line 1799
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceResults:Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;

    iget-object v4, v4, Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;->candidates:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 1798
    invoke-virtual {v5, v4}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->incrementTextModificationDeleteCount(I)V

    .line 1800
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->revertVoiceInput()V

    .line 1893
    :cond_0
    :goto_0
    return-void

    .line 1803
    :cond_1
    const/4 v0, 0x0

    .line 1804
    .local v0, "deleteChar":Z
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 1805
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    .line 1807
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1809
    iget-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAfterVoiceInput:Z

    if-eqz v5, :cond_2

    .line 1812
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v5}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->getCursorPos()I

    move-result v5

    if-lez v5, :cond_2

    .line 1815
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v5}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->getSelectionSpan()I

    move-result v5

    if-lez v5, :cond_3

    .line 1816
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v5}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->getSelectionSpan()I

    move-result v1

    .line 1817
    .local v1, "deleteLen":I
    :goto_1
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v5, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->incrementTextModificationDeleteCount(I)V

    .line 1822
    .end local v1    # "deleteLen":I
    :cond_2
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShiftKeyState:Lnet/hasnath/android/keyboard/ModifierKeyState;

    invoke-virtual {v5}, Lnet/hasnath/android/keyboard/ModifierKeyState;->isMomentary()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1824
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1825
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1826
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/WordComposer;->reset()V

    .line 1827
    iput-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInputHighlighted:Z

    .line 1828
    iput-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    .line 1831
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/CandidateView;->clear()V

    .line 1833
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->reset()V

    .line 1835
    invoke-direct {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->backspaceWord(Landroid/view/inputmethod/InputConnection;)V

    .line 1838
    iput-object v9, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    .line 1862
    :goto_2
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->postUpdateShiftKeyState()V

    .line 1863
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->backspace()V

    .line 1864
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->getState()Lnet/hasnath/android/keyboard/TextEntryState$State;

    move-result-object v4

    sget-object v5, Lnet/hasnath/android/keyboard/TextEntryState$State;->UNDO_COMMIT:Lnet/hasnath/android/keyboard/TextEntryState$State;

    if-ne v4, v5, :cond_9

    .line 1865
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->revertLastWord(Z)V

    .line 1866
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    :cond_3
    move v1, v4

    .line 1816
    goto :goto_1

    .line 1839
    :cond_4
    iget-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    if-eqz v5, :cond_8

    .line 1840
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 1841
    .local v3, "length":I
    if-lez v3, :cond_7

    .line 1842
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v5, v6, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1843
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v5}, Lnet/hasnath/android/keyboard/WordComposer;->deleteLast()V

    .line 1844
    sget v5, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v5, v4, :cond_6

    .line 1845
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->parser:Lnet/hasnath/ridmikparser/RidmikParser;

    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/hasnath/ridmikparser/RidmikParser;->toBangla(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1849
    :goto_3
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 1850
    iput-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    .line 1853
    :cond_5
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->postUpdateSuggestions()V

    goto :goto_2

    .line 1846
    :cond_6
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v2, v5, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_3

    .line 1855
    :cond_7
    invoke-interface {v2, v4, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_2

    .line 1859
    .end local v3    # "length":I
    :cond_8
    const/4 v0, 0x1

    goto :goto_2

    .line 1869
    :cond_9
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v4}, Lnet/hasnath/android/keyboard/LatinIME;->sameAsTextBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1870
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {v2, v4, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1891
    :cond_a
    :goto_4
    iput-object v9, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    .line 1892
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 1872
    :cond_b
    if-eqz v0, :cond_a

    .line 1873
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/CandidateView;->dismissAddToDictionaryHint()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1881
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->revertLastWord(Z)V

    goto :goto_4

    .line 1884
    :cond_c
    invoke-virtual {p0, v8}, Lnet/hasnath/android/keyboard/LatinIME;->sendDownUpKeyEvents(I)V

    .line 1885
    iget v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mDeleteCount:I

    const/16 v5, 0x14

    if-le v4, v5, :cond_a

    .line 1886
    invoke-virtual {p0, v8}, Lnet/hasnath/android/keyboard/LatinIME;->sendDownUpKeyEvents(I)V

    goto :goto_4
.end method

.method private handleCharacter(I[I)V
    .locals 6
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1932
    iget-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInputHighlighted:Z

    if-eqz v4, :cond_0

    .line 1933
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->commitVoiceInput()V

    .line 1936
    :cond_0
    iget-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAfterVoiceInput:Z

    if-eqz v4, :cond_1

    .line 1938
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v4, v3}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->incrementTextModificationInsertCount(I)V

    .line 1940
    :cond_1
    iget v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastSelectionStart:I

    iget v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastSelectionEnd:I

    if-ne v4, v5, :cond_2

    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->isCorrecting()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1941
    invoke-direct {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->abortCorrection(Z)V

    .line 1944
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

    .line 1945
    iget-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    if-nez v4, :cond_3

    .line 1946
    iput-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    .line 1947
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1948
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-direct {p0, v4}, Lnet/hasnath/android/keyboard/LatinIME;->saveWordInHistory(Ljava/lang/CharSequence;)V

    .line 1949
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/WordComposer;->reset()V

    .line 1952
    :cond_3
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v4

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->isShifted()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1953
    if-eqz p2, :cond_4

    aget v4, p2, v2

    if-ltz v4, :cond_4

    .line 1954
    aget v4, p2, v2

    const v5, 0x10ffff

    if-le v4, v5, :cond_5

    .line 2025
    :cond_4
    :goto_0
    return-void

    .line 1957
    :cond_5
    aget p1, p2, v2

    .line 1958
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1961
    new-instance v4, Ljava/lang/String;

    new-array v5, v3, [I

    aput p1, v5, v2

    invoke-direct {v4, v5, v2, v3}, Ljava/lang/String;-><init>([III)V

    .line 1962
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v5}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1963
    .local v1, "upperCaseString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->codePointCount(II)I

    move-result v4

    if-ne v4, v3, :cond_b

    .line 1964
    invoke-virtual {v1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    .line 1972
    .end local v1    # "upperCaseString":Ljava/lang/String;
    :cond_6
    iget-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    if-eqz v4, :cond_d

    .line 1973
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v4

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->isShifted()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1974
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1975
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_7

    .line 1976
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v4, v3}, Lnet/hasnath/android/keyboard/WordComposer;->setFirstCharCapitalized(Z)V

    .line 1978
    :cond_7
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    int-to-char v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1979
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v4, p1, p2}, Lnet/hasnath/android/keyboard/WordComposer;->add(I[I)V

    .line 1980
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1981
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_a

    .line 1983
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/WordComposer;->size()I

    move-result v4

    if-ne v4, v3, :cond_9

    sget v4, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    .line 1984
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    .line 1985
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->getCursorCapsMode(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)I

    move-result v5

    if-eqz v5, :cond_8

    move v2, v3

    .line 1984
    :cond_8
    invoke-virtual {v4, v2}, Lnet/hasnath/android/keyboard/WordComposer;->setAutoCapitalized(Z)V

    .line 1994
    :cond_9
    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v2, v3, :cond_c

    .line 1995
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->parser:Lnet/hasnath/ridmikparser/RidmikParser;

    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/hasnath/ridmikparser/RidmikParser;->toBangla(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2001
    :cond_a
    :goto_1
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->postUpdateSuggestions()V

    .line 2022
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 2024
    int-to-char v2, p1

    invoke-virtual {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->isWordSeparator(I)Z

    move-result v3

    invoke-static {v2, v3}, Lnet/hasnath/android/keyboard/TextEntryState;->typedCharacter(CZ)V

    goto/16 :goto_0

    .line 1967
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v1    # "upperCaseString":Ljava/lang/String;
    :cond_b
    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->onText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1997
    .end local v1    # "upperCaseString":Ljava/lang/String;
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_c
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_1

    .line 2004
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_d
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPasswordText:Z

    if-eqz v4, :cond_f

    .line 2005
    :cond_e
    int-to-char v2, p1

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->sendKeyChar(C)V

    .line 2006
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    goto/16 :goto_0

    .line 2011
    :cond_f
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2012
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/WordComposer;->reset()V

    .line 2013
    iput-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    .line 2016
    invoke-direct {p0, p1, p2}, Lnet/hasnath/android/keyboard/LatinIME;->handleCharacter(I[I)V

    goto/16 :goto_0
.end method

.method private handleClose()V
    .locals 2

    .prologue
    .line 2112
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 2113
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mRecognizing:Z

    if-eqz v1, :cond_0

    .line 2114
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v1}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->cancel()V

    .line 2116
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->requestHideSelf(I)V

    .line 2117
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    if-eqz v1, :cond_1

    .line 2118
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 2119
    .local v0, "inputView":Lnet/hasnath/android/keyboard/LatinKeyboardView;
    if-eqz v0, :cond_1

    .line 2120
    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->closing()V

    .line 2123
    .end local v0    # "inputView":Lnet/hasnath/android/keyboard/LatinKeyboardView;
    :cond_1
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->endSession()V

    .line 2125
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

    .line 2028
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInputHighlighted:Z

    if-eqz v2, :cond_0

    .line 2029
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->commitVoiceInput()V

    .line 2032
    :cond_0
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAfterVoiceInput:Z

    if-eqz v2, :cond_1

    .line 2034
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v2, v4}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->incrementTextModificationInsertPunctuationCount(I)V

    .line 2038
    :cond_1
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/CandidateView;->dismissAddToDictionaryHint()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2039
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->postUpdateSuggestions()V

    .line 2042
    :cond_2
    const/4 v1, 0x0

    .line 2044
    .local v1, "pickedDefault":Z
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2047
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_3

    .line 2048
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2049
    invoke-direct {p0, v3}, Lnet/hasnath/android/keyboard/LatinIME;->abortCorrection(Z)V

    .line 2051
    :cond_3
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    if-eqz v2, :cond_5

    .line 2056
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoCorrectOn:Z

    if-eqz v2, :cond_b

    const/16 v2, 0x27

    if-eq p1, v2, :cond_b

    .line 2057
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    .line 2058
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 2059
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, p1, :cond_b

    .line 2061
    :cond_4
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->pickDefaultSuggestion()Z

    move-result v1

    .line 2065
    if-ne p1, v6, :cond_5

    .line 2066
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAddedAutoSpace:Z

    .line 2072
    :cond_5
    :goto_0
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAddedAutoSpace:Z

    if-eqz v2, :cond_6

    if-ne p1, v5, :cond_6

    .line 2073
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->removeTrailingSpace()V

    .line 2074
    iput-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAddedAutoSpace:Z

    .line 2077
    :cond_6
    int-to-char v2, p1

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->sendKeyChar(C)V

    .line 2085
    int-to-char v2, p1

    invoke-static {v2, v4}, Lnet/hasnath/android/keyboard/TextEntryState;->typedCharacter(CZ)V

    .line 2091
    if-eq p1, v5, :cond_7

    .line 2092
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->swapPunctuationAndSpace()V

    .line 2095
    :cond_7
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isPredictionOn()Z

    move-result v2

    if-eqz v2, :cond_8

    if-ne p1, v6, :cond_8

    .line 2096
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->maybeDoubleSpace()V

    .line 2099
    :cond_8
    if-eqz v1, :cond_9

    .line 2100
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lnet/hasnath/android/keyboard/TextEntryState;->backToAcceptedDefault(Ljava/lang/CharSequence;)V

    .line 2102
    :cond_9
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 2103
    if-eqz v0, :cond_a

    .line 2104
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2106
    :cond_a
    return-void

    .line 2069
    :cond_b
    invoke-direct {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_0
.end method

.method private handleShift()V
    .locals 1

    .prologue
    .line 1900
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->handleShiftInternal(Z)V

    .line 1901
    return-void
.end method

.method private handleShiftInternal(Z)V
    .locals 6
    .param p1, "forceNormal"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1904
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1905
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    .line 1906
    .local v1, "switcher":Lnet/hasnath/android/keyboard/KeyboardSwitcher;
    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 1907
    .local v0, "inputView":Lnet/hasnath/android/keyboard/LatinKeyboardView;
    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1908
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCapsLock:Z

    if-nez v2, :cond_0

    if-eqz p1, :cond_2

    .line 1909
    :cond_0
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCapsLock:Z

    .line 1910
    invoke-virtual {v1, v5}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setShifted(Z)V

    .line 1922
    :cond_1
    :goto_0
    return-void

    .line 1911
    :cond_2
    if-eqz v0, :cond_1

    .line 1912
    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->isShifted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1913
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCapsLock:Z

    .line 1914
    invoke-virtual {v1, v4}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setShiftLocked(Z)V

    goto :goto_0

    .line 1916
    :cond_3
    invoke-virtual {v1, v4}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setShifted(Z)V

    goto :goto_0

    .line 1920
    :cond_4
    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->toggleShift()V

    goto :goto_0
.end method

.method private handleVoiceResults()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 2294
    iput-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAfterVoiceInput:Z

    .line 2295
    iput-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mImmediatelyAfterVoiceInput:Z

    .line 2297
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 2298
    .local v3, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isFullscreenMode()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2300
    if-eqz v3, :cond_0

    .line 2301
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 2302
    .local v5, "req":Landroid/view/inputmethod/ExtractedTextRequest;
    invoke-interface {v3, v5, v7}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    .line 2306
    .end local v5    # "req":Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_0
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->vibrate()V

    .line 2307
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->switchToKeyboardView()V

    .line 2309
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2310
    .local v4, "nBest":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->preferCapitalization()Z

    move-result v8

    if-nez v8, :cond_2

    .line 2311
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2312
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v8

    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->isShifted()Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    move v2, v6

    .line 2313
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

    .line 2320
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_5

    .line 2339
    :goto_2
    return-void

    .end local v2    # "capitalizeFirstWord":Z
    :cond_2
    move v2, v7

    .line 2310
    goto :goto_0

    .line 2313
    .restart local v2    # "capitalizeFirstWord":Z
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2314
    .local v1, "c":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 2315
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

    .line 2317
    :cond_4
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2324
    .end local v1    # "c":Ljava/lang/String;
    :cond_5
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2326
    .local v0, "bestResult":Ljava/lang/String;
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v8}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->logVoiceInputDelivered(I)V

    .line 2328
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHints:Lnet/hasnath/android/keyboard/Hints;

    invoke-virtual {v6, v0}, Lnet/hasnath/android/keyboard/Hints;->registerVoiceResult(Ljava/lang/String;)V

    .line 2330
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2332
    :cond_6
    invoke-direct {p0, v3}, Lnet/hasnath/android/keyboard/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 2333
    invoke-static {v3, v0}, Lnet/hasnath/android/keyboard/EditingUtil;->appendText(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 2335
    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2337
    :cond_7
    iput-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInputHighlighted:Z

    .line 2338
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceResults:Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;

    iget-object v7, v7, Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;->alternatives:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_2
.end method

.method private initSuggest(Ljava/lang/String;)V
    .locals 8
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 583
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mInputLocale:Ljava/lang/String;

    .line 584
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 585
    .local v3, "orig":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 586
    .local v1, "conf":Landroid/content/res/Configuration;
    iget-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 587
    .local v4, "saveLocale":Ljava/util/Locale;
    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v6, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 588
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 589
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    if-eqz v6, :cond_0

    .line 590
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    invoke-virtual {v6}, Lnet/hasnath/android/keyboard/Suggest;->close()V

    .line 592
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 593
    .local v5, "sp":Landroid/content/SharedPreferences;
    const-string v6, "quick_fixes"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mQuickFixes:Z

    .line 595
    invoke-static {v3}, Lnet/hasnath/android/keyboard/LatinIME;->getDictionary(Landroid/content/res/Resources;)[I

    move-result-object v2

    .line 596
    .local v2, "dictionaries":[I
    new-instance v6, Lnet/hasnath/android/keyboard/Suggest;

    invoke-direct {v6, p0, v2}, Lnet/hasnath/android/keyboard/Suggest;-><init>(Landroid/content/Context;[I)V

    iput-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    .line 597
    invoke-direct {p0, v4}, Lnet/hasnath/android/keyboard/LatinIME;->updateAutoTextEnabled(Ljava/util/Locale;)V

    .line 602
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mContactsDictionary:Lnet/hasnath/android/keyboard/ContactsDictionary;

    if-nez v6, :cond_1

    .line 603
    new-instance v6, Lnet/hasnath/android/keyboard/ContactsDictionary;

    const/4 v7, 0x4

    invoke-direct {v6, p0, v7}, Lnet/hasnath/android/keyboard/ContactsDictionary;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mContactsDictionary:Lnet/hasnath/android/keyboard/ContactsDictionary;

    .line 610
    :cond_1
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mMyDictionary:Lnet/hasnath/android/keyboard/MyDictionary;

    if-eqz v6, :cond_2

    .line 611
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mMyDictionary:Lnet/hasnath/android/keyboard/MyDictionary;

    invoke-virtual {v6}, Lnet/hasnath/android/keyboard/MyDictionary;->close()V

    .line 613
    :cond_2
    sget v6, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-eq v6, v0, :cond_3

    sget v6, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3

    const/4 v0, 0x0

    .line 614
    .local v0, "bangla":Z
    :cond_3
    new-instance v6, Lnet/hasnath/android/keyboard/MyDictionary;

    const/4 v7, 0x2

    invoke-direct {v6, p0, v7, v0}, Lnet/hasnath/android/keyboard/MyDictionary;-><init>(Landroid/content/Context;IZ)V

    iput-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mMyDictionary:Lnet/hasnath/android/keyboard/MyDictionary;

    .line 626
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mContactsDictionary:Lnet/hasnath/android/keyboard/ContactsDictionary;

    invoke-virtual {v6, v7}, Lnet/hasnath/android/keyboard/Suggest;->setContactsDictionary(Lnet/hasnath/android/keyboard/Dictionary;)V

    .line 628
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mMyDictionary:Lnet/hasnath/android/keyboard/MyDictionary;

    invoke-virtual {v6, v7}, Lnet/hasnath/android/keyboard/Suggest;->setMyDictionary(Lnet/hasnath/android/keyboard/Dictionary;)V

    .line 629
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateCorrectionMode()V

    .line 630
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f080077

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordSeparators:Ljava/lang/String;

    .line 631
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f080078

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSentenceSeparators:Ljava/lang/String;

    .line 633
    iput-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 634
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 635
    return-void
.end method

.method private initSuggestPuncList()V
    .locals 4

    .prologue
    .line 3233
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggestPuncList:Ljava/util/List;

    .line 3234
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f080079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggestPuncs:Ljava/lang/String;

    .line 3235
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggestPuncs:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3236
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggestPuncs:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 3240
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 3237
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggestPuncList:Ljava/util/List;

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggestPuncs:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isAlphabet(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 1450
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1451
    const/4 v0, 0x1

    .line 1453
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCandidateStripVisible()Z
    .locals 1

    .prologue
    .line 2159
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

    .line 2789
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2790
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 2803
    :cond_0
    :goto_0
    return v3

    .line 2791
    :cond_1
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2792
    .local v1, "toLeft":Ljava/lang/CharSequence;
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2793
    .local v2, "toRight":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2794
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->isWordSeparator(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2795
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->isSuggestedPunctuation(I)Z

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    .line 2796
    goto :goto_0

    .line 2798
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2799
    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->isWordSeparator(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2800
    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->isSuggestedPunctuation(I)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    .line 2801
    goto :goto_0
.end method

.method private isPredictionOn()Z
    .locals 1

    .prologue
    .line 2155
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    return v0
.end method

.method private isSentenceSeparator(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 2847
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
    .line 1483
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
    .line 3243
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggestPuncs:Ljava/lang/String;

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private loadSettings()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3179
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3180
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v6, "vibrate_on"

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVibrateOn:Z

    .line 3181
    const-string v6, "sound_on"

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSoundOn:Z

    .line 3182
    const-string v6, "popup_on"

    .line 3183
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0a0004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 3182
    invoke-interface {v1, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPopupOn:Z

    .line 3184
    const-string v6, "auto_cap"

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    sget v6, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoCap:Z

    .line 3185
    const-string v6, "volume_cursor"

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVolumeCursor:Z

    .line 3186
    const-string v6, "long_press_delay"

    .line 3187
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090053

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 3186
    invoke-interface {v1, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLongPressDelay:I

    .line 3189
    const-string v6, "quick_fixes"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mQuickFixes:Z

    .line 3190
    const-string v6, "has_used_voice_input"

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHasUsedVoiceInput:Z

    .line 3192
    const-string v6, "has_used_voice_input_unsupported_locale"

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 3191
    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHasUsedVoiceInputUnsupportedLocale:Z

    .line 3200
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 3201
    const-string v9, "latin_ime_voice_input_supported_locales"

    .line 3202
    const-string v10, "en en_US en_GB en_AU en_CA en_IE en_IN en_NZ en_SG en_ZA "

    .line 3199
    invoke-static {v6, v9, v10}, Lnet/hasnath/android/ridmik/voice/SettingsUtil;->getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3204
    .local v2, "supportedLocalesString":Ljava/lang/String;
    const-string v6, "\\s+"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnet/hasnath/android/keyboard/LatinIME;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3206
    .local v3, "voiceInputSupportedLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mInputLocale:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLocaleSupportedForVoiceInput:Z

    .line 3208
    const-string v6, "show_suggestions"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowSuggestions:Z

    .line 3211
    const-string v6, "voice_mode"

    .line 3212
    const v9, 0x7f0800d5

    invoke-virtual {p0, v9}, Lnet/hasnath/android/keyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3211
    invoke-interface {v1, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3213
    .local v4, "voiceMode":Ljava/lang/String;
    const v6, 0x7f0800d7

    invoke-virtual {p0, v6}, Lnet/hasnath/android/keyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3214
    iget-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoiceButton:Z

    if-eqz v6, :cond_3

    move v0, v7

    .line 3215
    .local v0, "enableVoice":Z
    :goto_1
    const/4 v5, 0x0

    .line 3216
    .local v5, "voiceOnPrimary":Z
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    if-eqz v6, :cond_1

    .line 3217
    iget-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoice:Z

    if-ne v0, v6, :cond_0

    iget-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceOnPrimary:Z

    if-eq v5, v6, :cond_1

    .line 3218
    :cond_0
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v6, v0, v5}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setVoiceMode(ZZ)V

    .line 3220
    :cond_1
    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoice:Z

    .line 3221
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceOnPrimary:Z

    .line 3223
    const-string v6, "auto_complete"

    .line 3224
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    const/high16 v8, 0x7f0a0000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 3223
    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 3224
    iget-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowSuggestions:Z

    and-int/2addr v6, v7

    .line 3223
    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoCorrectEnabled:Z

    .line 3227
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateCorrectionMode()V

    .line 3228
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v6}, Lnet/hasnath/android/keyboard/LatinIME;->updateAutoTextEnabled(Ljava/util/Locale;)V

    .line 3229
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v6, v1}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;)Z

    .line 3230
    return-void

    .end local v0    # "enableVoice":Z
    .end local v2    # "supportedLocalesString":Ljava/lang/String;
    .end local v3    # "voiceInputSupportedLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "voiceMode":Ljava/lang/String;
    .end local v5    # "voiceOnPrimary":Z
    :cond_2
    move v6, v8

    .line 3184
    goto/16 :goto_0

    .restart local v2    # "supportedLocalesString":Ljava/lang/String;
    .restart local v3    # "voiceInputSupportedLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "voiceMode":Ljava/lang/String;
    :cond_3
    move v0, v8

    .line 3213
    goto :goto_1
.end method

.method private makeFieldContext()Lnet/hasnath/android/ridmik/voice/FieldContext;
    .locals 5

    .prologue
    .line 3028
    new-instance v0, Lnet/hasnath/android/ridmik/voice/FieldContext;

    .line 3029
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 3030
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    .line 3031
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v3

    .line 3032
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getEnabledLanguages()[Ljava/lang/String;

    move-result-object v4

    .line 3028
    invoke-direct {v0, v1, v2, v3, v4}, Lnet/hasnath/android/ridmik/voice/FieldContext;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method private manageSmileyKeyboard(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 1725
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->manageSmileyKeyboard(I)V

    .line 1726
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

    .line 1392
    iget v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    if-nez v2, :cond_1

    .line 1413
    :cond_0
    :goto_0
    return-void

    .line 1393
    :cond_1
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1394
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1395
    invoke-interface {v0, v6, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1396
    .local v1, "lastThree":Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 1397
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1398
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_3

    .line 1399
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_3

    .line 1400
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    check-cast v2, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;->isAcceptingDoubleSpaces()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1401
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    check-cast v2, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;->cancelDoubleSpacesTimer()V

    .line 1402
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1403
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1404
    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v2, v5, :cond_2

    .line 1405
    const-string v2, ". "

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1407
    :goto_1
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1408
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1409
    iput-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAddedAutoSpace:Z

    goto :goto_0

    .line 1406
    :cond_2
    const-string v2, "\u0964 "

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_1

    .line 1411
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

    .line 1417
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1418
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1428
    :cond_0
    :goto_0
    return-void

    .line 1422
    :cond_1
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1423
    .local v1, "lastOne":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1424
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1425
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1426
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0
.end method

.method private measureCps()V
    .locals 9

    .prologue
    .line 3347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3348
    .local v1, "now":J
    iget-wide v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastCpsTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    const-wide/16 v5, 0x64

    sub-long v5, v1, v5

    iput-wide v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastCpsTime:J

    .line 3349
    :cond_0
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCpsIntervals:[J

    iget v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCpsIndex:I

    iget-wide v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastCpsTime:J

    sub-long v7, v1, v7

    aput-wide v7, v5, v6

    .line 3350
    iput-wide v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastCpsTime:J

    .line 3351
    iget v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCpsIndex:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x10

    iput v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCpsIndex:I

    .line 3352
    const-wide/16 v3, 0x0

    .line 3353
    .local v3, "total":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v5, 0x10

    if-lt v0, v5, :cond_1

    .line 3354
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CPS = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x467a0000    # 16000.0f

    long-to-float v8, v3

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3355
    return-void

    .line 3353
    :cond_1
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCpsIntervals:[J

    aget-wide v5, v5, v0

    add-long/2addr v3, v5

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
    .line 3311
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6e

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v0, v2, 0x5

    .line 3312
    .local v0, "capacity":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3313
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3314
    return-object v1
.end method

.method private onOptionKeyLongPressed()V
    .locals 1

    .prologue
    .line 1473
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isShowingOptionDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1474
    invoke-static {p0}, Lnet/hasnath/android/keyboard/LatinIMEUtil;->hasMultipleEnabledIMEs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1475
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->showInputMethodPicker()V

    .line 1480
    :cond_0
    :goto_0
    return-void

    .line 1477
    :cond_1
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->launchSettings()V

    goto :goto_0
.end method

.method private onOptionKeyPressed()V
    .locals 1

    .prologue
    .line 1463
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isShowingOptionDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1464
    invoke-static {p0}, Lnet/hasnath/android/keyboard/LatinIMEUtil;->hasMultipleEnabledIMEs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1465
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->showOptionsMenu()V

    .line 1470
    :cond_0
    :goto_0
    return-void

    .line 1467
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
    .line 1695
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1696
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1697
    .local v3, "sdk":I
    const/4 v4, 0x0

    .line 1698
    .local v4, "text":Ljava/lang/String;
    const/16 v5, 0xb

    if-ge v3, v5, :cond_1

    .line 1700
    const-string v5, "clipboard"

    invoke-virtual {p0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1701
    .local v0, "clipboard":Landroid/text/ClipboardManager;
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1709
    .end local v0    # "clipboard":Landroid/text/ClipboardManager;
    :goto_0
    if-eqz v4, :cond_0

    .line 1710
    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1711
    :cond_0
    return-void

    .line 1705
    :cond_1
    const-string v5, "clipboard"

    invoke-virtual {p0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 1706
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    .line 1707
    .local v2, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private pickDefaultSuggestion()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2445
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2446
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2447
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateSuggestions()V

    .line 2449
    :cond_0
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 2450
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lnet/hasnath/android/keyboard/TextEntryState;->acceptedDefault(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2451
    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAccepted:Z

    .line 2452
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v1}, Lnet/hasnath/android/keyboard/LatinIME;->pickSuggestion(Ljava/lang/CharSequence;Z)V

    .line 2455
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v0}, Lnet/hasnath/android/keyboard/LatinIME;->addToDictionaries(Ljava/lang/CharSequence;I)V

    .line 2459
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

    .line 2583
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v2

    .line 2584
    .local v2, "inputView":Lnet/hasnath/android/keyboard/LatinKeyboardView;
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v1

    .line 2585
    .local v1, "inputLocale":Ljava/util/Locale;
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCapsLock:Z

    if-eqz v3, :cond_3

    .line 2586
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 2593
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2594
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 2595
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->rememberReplacedWord(Ljava/lang/CharSequence;)V

    .line 2597
    sget v3, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v3, v5, :cond_5

    .line 2598
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->parser:Lnet/hasnath/ridmikparser/RidmikParser;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/hasnath/ridmikparser/RidmikParser;->toBangla(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2602
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->saveWordInHistory(Ljava/lang/CharSequence;)V

    .line 2603
    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    .line 2606
    sget v3, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v3, v5, :cond_6

    .line 2607
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->parser:Lnet/hasnath/ridmikparser/RidmikParser;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/hasnath/ridmikparser/RidmikParser;->toBangla(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCommittedLength:I

    .line 2610
    :goto_2
    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getKeyboard()Lnet/hasnath/android/keyboard/Keyboard;

    move-result-object v3

    check-cast v3, Lnet/hasnath/android/keyboard/LatinKeyboard;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setPreferredLetters([I)V

    .line 2612
    if-nez p2, :cond_2

    .line 2613
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->setNextSuggestions()V

    .line 2615
    :cond_2
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 2616
    return-void

    .line 2587
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_3
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->preferCapitalization()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2588
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2589
    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->isShifted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2590
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

    .line 2591
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {p1, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2590
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 2600
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_5
    invoke-interface {v0, p1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_1

    .line 2608
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
    .line 3069
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 3070
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3071
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateRingerMode()V

    .line 3074
    :cond_0
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSoundOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSilentMode:Z

    if-nez v1, :cond_1

    .line 3077
    const/4 v0, 0x5

    .line 3078
    .local v0, "sound":I
    sparse-switch p1, :sswitch_data_0

    .line 3089
    :goto_0
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->FX_VOLUME:F

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 3091
    .end local v0    # "sound":I
    :cond_1
    return-void

    .line 3080
    .restart local v0    # "sound":I
    :sswitch_0
    const/4 v0, 0x7

    .line 3081
    goto :goto_0

    .line 3083
    :sswitch_1
    const/16 v0, 0x8

    .line 3084
    goto :goto_0

    .line 3086
    :sswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 3078
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

    .line 2150
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2151
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2152
    return-void
.end method

.method private postUpdateShiftKeyState()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 1319
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1321
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1322
    return-void
.end method

.method private postUpdateSuggestions()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2145
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2146
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2147
    return-void
.end method

.method private reallyStartListening(Z)V
    .locals 6
    .param p1, "swipe"    # Z

    .prologue
    const/4 v3, 0x1

    .line 2211
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHasUsedVoiceInput:Z

    if-nez v2, :cond_0

    .line 2215
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2216
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "has_used_voice_input"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2217
    invoke-static {v1}, Lnet/hasnath/android/keyboard/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 2218
    iput-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHasUsedVoiceInput:Z

    .line 2221
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLocaleSupportedForVoiceInput:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHasUsedVoiceInputUnsupportedLocale:Z

    if-nez v2, :cond_1

    .line 2225
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2226
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "has_used_voice_input_unsupported_locale"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2227
    invoke-static {v1}, Lnet/hasnath/android/keyboard/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 2228
    iput-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHasUsedVoiceInputUnsupportedLocale:Z

    .line 2232
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->clearSuggestions()V

    .line 2234
    new-instance v0, Lnet/hasnath/android/ridmik/voice/FieldContext;

    .line 2235
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 2236
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    .line 2237
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v4

    .line 2238
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v5}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getEnabledLanguages()[Ljava/lang/String;

    move-result-object v5

    .line 2234
    invoke-direct {v0, v2, v3, v4, v5}, Lnet/hasnath/android/ridmik/voice/FieldContext;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2239
    .local v0, "context":Lnet/hasnath/android/ridmik/voice/FieldContext;
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v2, v0, p1}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->startListening(Lnet/hasnath/android/ridmik/voice/FieldContext;Z)V

    .line 2240
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->switchToRecognitionStatusView()V

    .line 2241
    return-void
.end method

.method private reloadKeyboards()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1280
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v0, v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setLanguageSwitcher(Lnet/hasnath/android/keyboard/LanguageSwitcher;)V

    .line 1281
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1282
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getKeyboardMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1283
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoice:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoiceButton:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceOnPrimary:Z

    invoke-virtual {v2, v0, v3}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setVoiceMode(ZZ)V

    .line 1285
    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->makeKeyboards(Z)V

    .line 1286
    return-void

    .line 1283
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rememberReplacedWord(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    .line 2554
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowingVoiceSuggestions:Z

    if-eqz v3, :cond_2

    .line 2556
    new-instance v0, Lnet/hasnath/android/keyboard/EditingUtil$Range;

    invoke-direct {v0}, Lnet/hasnath/android/keyboard/EditingUtil$Range;-><init>()V

    .line 2557
    .local v0, "range":Lnet/hasnath/android/keyboard/EditingUtil$Range;
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 2558
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordSeparators:Ljava/lang/String;

    .line 2557
    invoke-static {v3, v4, v0}, Lnet/hasnath/android/keyboard/EditingUtil;->getWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Lnet/hasnath/android/keyboard/EditingUtil$Range;)Ljava/lang/String;

    move-result-object v2

    .line 2559
    .local v2, "wordToBeReplaced":Ljava/lang/String;
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2560
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 2562
    :cond_0
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2563
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2564
    .local v1, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2565
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2567
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2568
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2569
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2572
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

    .line 1431
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1432
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1439
    :cond_0
    :goto_0
    return-void

    .line 1434
    :cond_1
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1435
    .local v1, "lastOne":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1436
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 1437
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0
.end method

.method private resetShift()V
    .locals 1

    .prologue
    .line 1896
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->handleShiftInternal(Z)V

    .line 1897
    return-void
.end method

.method private reswapPeriodAndSpace()V
    .locals 8

    .prologue
    const/16 v7, 0x2e

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1357
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1358
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1370
    :cond_0
    :goto_0
    return-void

    .line 1359
    :cond_1
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1360
    .local v1, "lastThree":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1361
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_0

    .line 1362
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 1363
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_0

    .line 1364
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1365
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1366
    const-string v2, " .."

    invoke-interface {v0, v2, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1367
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1368
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_0
.end method

.method private revertVoiceInput()V
    .locals 3

    .prologue
    .line 1266
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1267
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1268
    :cond_0
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateSuggestions()V

    .line 1269
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInputHighlighted:Z

    .line 1270
    return-void
.end method

.method private sameAsTextBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2807
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2808
    .local v0, "beforeText":Ljava/lang/CharSequence;
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private saveWordInHistory(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/CharSequence;

    .prologue
    .line 2128
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/WordComposer;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 2129
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/WordComposer;->reset()V

    .line 2142
    :cond_0
    :goto_0
    return-void

    .line 2133
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2138
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2139
    .local v1, "resultCopy":Ljava/lang/String;
    new-instance v0, Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;

    .line 2140
    new-instance v2, Lnet/hasnath/android/keyboard/WordComposer;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-direct {v2, v3}, Lnet/hasnath/android/keyboard/WordComposer;-><init>(Lnet/hasnath/android/keyboard/WordComposer;)V

    .line 2139
    invoke-direct {v0, p0, v1, v2}, Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;-><init>(Lnet/hasnath/android/keyboard/LatinIME;Ljava/lang/CharSequence;Lnet/hasnath/android/keyboard/WordComposer;)V

    .line 2141
    .local v0, "entry":Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private sendSpace()V
    .locals 1

    .prologue
    .line 2851
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->sendKeyChar(C)V

    .line 2852
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 2854
    return-void
.end method

.method private setCandidatesViewShownInternal(ZZ)V
    .locals 1
    .param p1, "shown"    # Z
    .param p2, "needsInputViewShown"    # Z

    .prologue
    .line 1160
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->onEvaluateInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1161
    if-eqz p1, :cond_2

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1162
    if-eqz p2, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1161
    :goto_0
    invoke-super {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 1164
    :cond_1
    return-void

    .line 1162
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNextSuggestions()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2731
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggestPuncList:Ljava/util/List;

    invoke-direct {p0, v0, v1, v1, v1}, Lnet/hasnath/android/keyboard/LatinIME;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 2732
    return-void
.end method

.method private setOldSuggestions()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2699
    const/4 v2, 0x0

    iput-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowingVoiceSuggestions:Z

    .line 2700
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/CandidateView;->isShowingAddToDictionaryHint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2728
    :cond_0
    :goto_0
    return-void

    .line 2703
    :cond_1
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2704
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2705
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    if-nez v2, :cond_4

    .line 2708
    iget v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastSelectionStart:I

    iget v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastSelectionEnd:I

    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordSeparators:Ljava/lang/String;

    .line 2707
    invoke-static {v0, v2, v3, v4}, Lnet/hasnath/android/keyboard/EditingUtil;->getWordAtCursorOrSelection(Landroid/view/inputmethod/InputConnection;IILjava/lang/String;)Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;

    move-result-object v1

    .line 2710
    .local v1, "touching":Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;
    if-eqz v1, :cond_3

    iget-object v2, v1, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v5, :cond_3

    .line 2711
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2713
    invoke-direct {p0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->applyVoiceAlternatives(Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->applyTypedAlternatives(Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2714
    invoke-direct {p0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->abortCorrection(Z)V

    .line 2720
    :goto_1
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 2716
    :cond_2
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->selectedForCorrection()V

    .line 2717
    invoke-static {v0, v1}, Lnet/hasnath/android/keyboard/EditingUtil;->underlineWord(Landroid/view/inputmethod/InputConnection;Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;)V

    goto :goto_1

    .line 2722
    :cond_3
    invoke-direct {p0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->abortCorrection(Z)V

    .line 2723
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->setNextSuggestions()V

    goto :goto_0

    .line 2726
    .end local v1    # "touching":Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;
    :cond_4
    invoke-direct {p0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->abortCorrection(Z)V

    goto :goto_0
.end method

.method private setSuggestions(Ljava/util/List;ZZZ)V
    .locals 1
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
    .line 2351
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mIsShowingHint:Z

    if-eqz v0, :cond_0

    .line 2352
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->setCandidatesView(Landroid/view/View;)V

    .line 2353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mIsShowingHint:Z

    .line 2356
    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    if-eqz v0, :cond_1

    .line 2357
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/hasnath/android/keyboard/CandidateView;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 2360
    :cond_1
    return-void
.end method

.method private shouldShowVoiceButton(Lnet/hasnath/android/ridmik/voice/FieldContext;Landroid/view/inputmethod/EditorInfo;)Z
    .locals 2
    .param p1, "fieldContext"    # Lnet/hasnath/android/ridmik/voice/FieldContext;
    .param p2, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 3042
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->fieldCanDoVoice(Lnet/hasnath/android/ridmik/voice/FieldContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3043
    if-eqz p2, :cond_0

    .line 3044
    const-string v0, "nm"

    iget-object v1, p2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3045
    :cond_0
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3042
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

    .line 2389
    invoke-virtual {p1}, Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;->getAlternatives()Ljava/util/List;

    move-result-object v0

    .line 2390
    .local v0, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getKeyboard()Lnet/hasnath/android/keyboard/Keyboard;

    move-result-object v1

    check-cast v1, Lnet/hasnath/android/keyboard/LatinKeyboard;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setPreferredLetters([I)V

    .line 2391
    invoke-virtual {p1}, Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;->getOriginalWord()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3, v3}, Lnet/hasnath/android/keyboard/LatinIME;->showSuggestions(Ljava/util/List;Ljava/lang/CharSequence;ZZ)V

    .line 2392
    return-void
.end method

.method private showInputMethodPicker()V
    .locals 1

    .prologue
    .line 1458
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1459
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 1460
    return-void
.end method

.method private showOptionsMenu()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 3247
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3248
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3249
    const v6, 0x7f020039

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 3250
    const/high16 v6, 0x1040000

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3251
    const v6, 0x7f080083

    invoke-virtual {p0, v6}, Lnet/hasnath/android/keyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3252
    .local v3, "itemSettings":Ljava/lang/CharSequence;
    const v6, 0x7f0800e3

    invoke-virtual {p0, v6}, Lnet/hasnath/android/keyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3253
    .local v1, "itemInputMethod":Ljava/lang/CharSequence;
    const-string v2, "Ridmik Key Map"

    .line 3255
    .local v2, "itemKeymap":Ljava/lang/CharSequence;
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    .line 3256
    aput-object v1, v6, v7

    aput-object v2, v6, v8

    const/4 v7, 0x2

    aput-object v3, v6, v7

    .line 3257
    new-instance v7, Lnet/hasnath/android/keyboard/LatinIME$7;

    invoke-direct {v7, p0}, Lnet/hasnath/android/keyboard/LatinIME$7;-><init>(Lnet/hasnath/android/keyboard/LatinIME;)V

    .line 3255
    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3290
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f080084

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3291
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 3292
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 3293
    .local v5, "window":Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 3294
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v6}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v6

    invoke-virtual {v6}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3295
    const/16 v6, 0x3eb

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3296
    invoke-virtual {v5, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3297
    const/high16 v6, 0x20000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 3298
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 3299
    return-void
.end method

.method private showSuggestions(Ljava/util/List;Ljava/lang/CharSequence;ZZ)V
    .locals 3
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

    .line 2430
    invoke-direct {p0, p1, v2, p3, p4}, Lnet/hasnath/android/keyboard/LatinIME;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 2431
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2432
    if-eqz p4, :cond_1

    if-nez p3, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 2433
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    .line 2440
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

    .line 2441
    return-void

    .line 2435
    :cond_1
    iput-object p2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    goto :goto_0

    .line 2438
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_3
    move v0, v2

    .line 2440
    goto :goto_1
.end method

.method private showSuggestions(Lnet/hasnath/android/keyboard/WordComposer;)V
    .locals 10
    .param p1, "word"    # Lnet/hasnath/android/keyboard/WordComposer;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2397
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 2398
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordSeparators:Ljava/lang/String;

    .line 2397
    invoke-static {v6, v9}, Lnet/hasnath/android/keyboard/EditingUtil;->getPreviousWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2399
    .local v2, "prevWord":Ljava/lang/CharSequence;
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    .line 2400
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v9}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v9

    .line 2399
    invoke-virtual {v6, v9, p1, v8, v2}, Lnet/hasnath/android/keyboard/Suggest;->getSuggestions(Landroid/view/View;Lnet/hasnath/android/keyboard/WordComposer;ZLjava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    .line 2405
    .local v3, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    invoke-virtual {v6}, Lnet/hasnath/android/keyboard/Suggest;->getNextLettersFrequencies()[I

    move-result-object v1

    .line 2407
    .local v1, "nextLettersFrequencies":[I
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v6}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v6

    invoke-virtual {v6}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getKeyboard()Lnet/hasnath/android/keyboard/Keyboard;

    move-result-object v6

    check-cast v6, Lnet/hasnath/android/keyboard/LatinKeyboard;

    invoke-virtual {v6, v1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setPreferredLetters([I)V

    .line 2410
    iget-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mInputTypeNoAutoCorrect:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    invoke-virtual {v6}, Lnet/hasnath/android/keyboard/Suggest;->hasMinimalCorrection()Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v7

    .line 2412
    .local v0, "correctionAvailable":Z
    :goto_0
    invoke-virtual {p1}, Lnet/hasnath/android/keyboard/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v4

    .line 2414
    .local v4, "typedWord":Ljava/lang/CharSequence;
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    invoke-virtual {v6, v4}, Lnet/hasnath/android/keyboard/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2415
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->preferCapitalization()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2416
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lnet/hasnath/android/keyboard/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_0
    move v5, v8

    .line 2417
    .local v5, "typedWordValid":Z
    :goto_1
    iget v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    const/4 v9, 0x2

    if-eq v6, v9, :cond_1

    .line 2418
    iget v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    const/4 v9, 0x3

    if-ne v6, v9, :cond_2

    .line 2419
    :cond_1
    or-int/2addr v0, v5

    .line 2422
    :cond_2
    invoke-virtual {p1}, Lnet/hasnath/android/keyboard/WordComposer;->isMostlyCaps()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v8

    :goto_2
    and-int/2addr v0, v6

    .line 2423
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->isCorrecting()Z

    move-result v6

    if-eqz v6, :cond_6

    :goto_3
    and-int/2addr v0, v8

    .line 2425
    invoke-direct {p0, v3, v4, v5, v0}, Lnet/hasnath/android/keyboard/LatinIME;->showSuggestions(Ljava/util/List;Ljava/lang/CharSequence;ZZ)V

    .line 2426
    return-void

    .end local v0    # "correctionAvailable":Z
    .end local v4    # "typedWord":Ljava/lang/CharSequence;
    .end local v5    # "typedWordValid":Z
    :cond_3
    move v0, v8

    .line 2410
    goto :goto_0

    .restart local v0    # "correctionAvailable":Z
    .restart local v4    # "typedWord":Ljava/lang/CharSequence;
    :cond_4
    move v5, v7

    .line 2414
    goto :goto_1

    .restart local v5    # "typedWordValid":Z
    :cond_5
    move v6, v7

    .line 2422
    goto :goto_2

    :cond_6
    move v8, v7

    .line 2423
    goto :goto_3
.end method

.method private showVoiceWarningDialog(Z)V
    .locals 8
    .param p1, "swipe"    # Z

    .prologue
    const v7, 0x7f0800c3

    const v6, 0x7f0800c2

    .line 2244
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2245
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2246
    const v4, 0x7f02003a

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2247
    const v4, 0x104000a

    new-instance v5, Lnet/hasnath/android/keyboard/LatinIME$5;

    invoke-direct {v5, p0, p1}, Lnet/hasnath/android/keyboard/LatinIME$5;-><init>(Lnet/hasnath/android/keyboard/LatinIME;Z)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2253
    const/high16 v4, 0x1040000

    new-instance v5, Lnet/hasnath/android/keyboard/LatinIME$6;

    invoke-direct {v5, p0}, Lnet/hasnath/android/keyboard/LatinIME$6;-><init>(Lnet/hasnath/android/keyboard/LatinIME;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2259
    iget-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLocaleSupportedForVoiceInput:Z

    if-eqz v4, :cond_0

    .line 2260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lnet/hasnath/android/keyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2261
    invoke-virtual {p0, v7}, Lnet/hasnath/android/keyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2260
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2262
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2270
    :goto_0
    const v4, 0x7f0800c0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2271
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    .line 2273
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 2274
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2275
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v4

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2276
    const/16 v4, 0x3eb

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2277
    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2278
    const/high16 v4, 0x20000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 2279
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v4}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->logKeyboardWarningDialogShown()V

    .line 2280
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 2281
    return-void

    .line 2264
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "window":Landroid/view/Window;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x7f0800c1

    invoke-virtual {p0, v5}, Lnet/hasnath/android/keyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2265
    invoke-virtual {p0, v6}, Lnet/hasnath/android/keyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2266
    invoke-virtual {p0, v7}, Lnet/hasnath/android/keyboard/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2264
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2267
    .restart local v2    # "message":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private startListening(Z)V
    .locals 1
    .param p1, "swipe"    # Z

    .prologue
    .line 2201
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHasUsedVoiceInput:Z

    if-eqz v0, :cond_0

    .line 2202
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLocaleSupportedForVoiceInput:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHasUsedVoiceInputUnsupportedLocale:Z

    if-nez v0, :cond_1

    .line 2204
    :cond_0
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->showVoiceWarningDialog(Z)V

    .line 2208
    :goto_0
    return-void

    .line 2206
    :cond_1
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->reallyStartListening(Z)V

    goto :goto_0
.end method

.method private startTutorial()V
    .locals 4

    .prologue
    .line 3118
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3119
    return-void
.end method

.method private swapPunctuationAndSpace()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1342
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1343
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1354
    :cond_0
    :goto_0
    return-void

    .line 1344
    :cond_1
    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1345
    .local v1, "lastTwo":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 1346
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->isSentenceSeparator(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1347
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1348
    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1349
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

    .line 1350
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1351
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1352
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAddedAutoSpace:Z

    goto :goto_0
.end method

.method private switchToKeyboardView()V
    .locals 2

    .prologue
    .line 2169
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/hasnath/android/keyboard/LatinIME$3;

    invoke-direct {v1, p0}, Lnet/hasnath/android/keyboard/LatinIME$3;-><init>(Lnet/hasnath/android/keyboard/LatinIME;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2179
    return-void
.end method

.method private switchToRecognitionStatusView()V
    .locals 3

    .prologue
    .line 2182
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mConfigurationChanging:Z

    .line 2183
    .local v0, "configChanged":Z
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    new-instance v2, Lnet/hasnath/android/keyboard/LatinIME$4;

    invoke-direct {v2, p0, v0}, Lnet/hasnath/android/keyboard/LatinIME$4;-><init>(Lnet/hasnath/android/keyboard/LatinIME;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2198
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

    .line 2862
    sget v1, Lnet/hasnath/android/keyboard/LatinIME;->CURRENT_TOGGLER:I

    .line 2864
    .local v1, "toggler":I
    if-eqz p1, :cond_3

    .line 2865
    if-ne v1, v5, :cond_2

    .line 2866
    sput v3, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    .line 2899
    :cond_0
    :goto_0
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getKeyboardMode()I

    move-result v0

    .line 2900
    .local v0, "currentKeyboardMode":I
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->reloadKeyboards()V

    .line 2901
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v2, v3}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->makeKeyboards(Z)V

    .line 2902
    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v2, v5, :cond_e

    .line 2903
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    const/16 v6, 0xb

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoiceButton:Z

    if-eqz v2, :cond_d

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoice:Z

    if-eqz v2, :cond_d

    move v2, v3

    :goto_1
    invoke-virtual {v5, v6, v4, v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 2907
    :goto_2
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->initSuggest(Ljava/lang/String;)V

    .line 2909
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 2910
    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v2, v3, :cond_1

    .line 2911
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v2, v4}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setShifted(Z)V

    .line 2912
    :cond_1
    return-void

    .line 2867
    .end local v0    # "currentKeyboardMode":I
    :cond_2
    sput v5, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    goto :goto_0

    .line 2869
    :cond_3
    if-ne v1, v3, :cond_9

    .line 2871
    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v2, v6, :cond_5

    .line 2872
    if-eqz p2, :cond_4

    .line 2873
    sput v5, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    goto :goto_0

    .line 2874
    :cond_4
    sput v3, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    goto :goto_0

    .line 2876
    :cond_5
    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v2, v3, :cond_7

    .line 2877
    if-eqz p2, :cond_6

    .line 2878
    sput v6, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    goto :goto_0

    .line 2879
    :cond_6
    sput v5, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    goto :goto_0

    .line 2881
    :cond_7
    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v2, v5, :cond_0

    .line 2882
    if-eqz p2, :cond_8

    .line 2883
    sput v3, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    goto :goto_0

    .line 2884
    :cond_8
    sput v6, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    goto :goto_0

    .line 2886
    :cond_9
    if-ne v1, v6, :cond_b

    .line 2887
    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v2, v5, :cond_a

    .line 2888
    sput v6, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    goto :goto_0

    .line 2889
    :cond_a
    sput v5, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    goto :goto_0

    .line 2891
    :cond_b
    if-ne v1, v5, :cond_0

    .line 2892
    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v2, v3, :cond_c

    .line 2893
    sput v6, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    goto :goto_0

    .line 2894
    :cond_c
    sput v3, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    goto :goto_0

    .restart local v0    # "currentKeyboardMode":I
    :cond_d
    move v2, v4

    .line 2903
    goto :goto_1

    .line 2905
    :cond_e
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    .line 2906
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoiceButton:Z

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoice:Z

    if-eqz v2, :cond_f

    move v2, v3

    .line 2905
    :goto_3
    invoke-virtual {v5, v0, v4, v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    goto :goto_2

    :cond_f
    move v2, v4

    .line 2906
    goto :goto_3
.end method

.method private updateAutoTextEnabled(Ljava/util/Locale;)V
    .locals 6
    .param p1, "systemLocale"    # Ljava/util/Locale;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3155
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    if-nez v3, :cond_0

    .line 3159
    :goto_0
    return-void

    .line 3157
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

    .line 3158
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

    .line 3157
    goto :goto_1

    .restart local v0    # "different":Z
    :cond_2
    move v2, v1

    .line 3158
    goto :goto_2
.end method

.method private updateCorrectionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3141
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/Suggest;->hasMainDictionary()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHasDictionary:Z

    .line 3142
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoCorrectEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mQuickFixes:Z

    if-eqz v0, :cond_4

    .line 3143
    :cond_0
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mInputTypeNoAutoCorrect:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHasDictionary:Z

    if-eqz v0, :cond_4

    move v0, v2

    .line 3142
    :goto_1
    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoCorrectOn:Z

    .line 3144
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoCorrectOn:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoCorrectEnabled:Z

    if-eqz v0, :cond_5

    .line 3145
    const/4 v2, 0x2

    .line 3144
    :cond_1
    :goto_2
    iput v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    .line 3148
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    .line 3147
    iput v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    .line 3149
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    if-eqz v0, :cond_2

    .line 3150
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    iget v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/Suggest;->setCorrectionMode(I)V

    .line 3152
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 3141
    goto :goto_0

    :cond_4
    move v0, v1

    .line 3143
    goto :goto_1

    .line 3146
    :cond_5
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoCorrectOn:Z

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_2
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 3058
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 3059
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    .line 3061
    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 3062
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSilentMode:Z

    .line 3064
    :cond_1
    return-void

    .line 3062
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSuggestions()V
    .locals 3

    .prologue
    .line 2363
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 2364
    .local v0, "inputView":Lnet/hasnath/android/keyboard/LatinKeyboardView;
    if-nez v0, :cond_1

    .line 2378
    :cond_0
    :goto_0
    return-void

    .line 2366
    :cond_1
    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getKeyboard()Lnet/hasnath/android/keyboard/Keyboard;

    move-result-object v1

    check-cast v1, Lnet/hasnath/android/keyboard/LatinKeyboard;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setPreferredLetters([I)V

    .line 2369
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isPredictionOn()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInputHighlighted:Z

    if-eqz v1, :cond_0

    .line 2373
    :cond_3
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    if-nez v1, :cond_4

    .line 2374
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->setNextSuggestions()V

    goto :goto_0

    .line 2377
    :cond_4
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-direct {p0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->showSuggestions(Lnet/hasnath/android/keyboard/WordComposer;)V

    goto :goto_0
.end method

.method public static useBanglaFont()Z
    .locals 2

    .prologue
    .line 564
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
    .line 568
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
    .line 3094
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVibrateOn:Z

    if-nez v0, :cond_1

    .line 3102
    :cond_0
    :goto_0
    return-void

    .line 3097
    :cond_1
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3098
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v1

    .line 3099
    const/4 v2, 0x3

    .line 3100
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mObeyHapticFeedback:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 3098
    :goto_1
    invoke-virtual {v1, v2, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->performHapticFeedback(II)Z

    goto :goto_0

    .line 3100
    :cond_2
    const/4 v0, 0x2

    goto :goto_1
.end method


# virtual methods
.method public addWordToDictionary(Ljava/lang/String;)Z
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 1445
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->postUpdateSuggestions()V

    .line 1446
    const/4 v0, 0x1

    return v0
.end method

.method public changeKeyboardMode()V
    .locals 2

    .prologue
    .line 3302
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->toggleSymbols()V

    .line 3303
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCapsLock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3304
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCapsLock:Z

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setShiftLocked(Z)V

    .line 3307
    :cond_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 3308
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3319
    invoke-super {p0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3321
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 3322
    .local v0, "p":Landroid/util/Printer;
    const-string v1, "LatinIME state :"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3323
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

    .line 3324
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mCapsLock="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCapsLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3325
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

    .line 3326
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mPredictionOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3327
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mCorrectionMode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3328
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mPredicting="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3329
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mAutoCorrectOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoCorrectOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3330
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mAutoSpace="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoSpace:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3331
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mCompletionOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCompletionOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3332
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

    .line 3333
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mSoundOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSoundOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3334
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mVibrateOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVibrateOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3335
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mPopupOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPopupOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3336
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mEnableVolumeCursor="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVolumeCursor:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 3337
    return-void
.end method

.method getCurrentWord()Lnet/hasnath/android/keyboard/WordComposer;
    .locals 1

    .prologue
    .line 3133
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    return-object v0
.end method

.method public getKeyboardHeightPercentage()I
    .locals 2

    .prologue
    .line 377
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 378
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->keyboardPortraitHeightPercentage:I

    .line 379
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->keyboardLandscapeHeightPercentage:I

    goto :goto_0
.end method

.method getPopupOn()Z
    .locals 1

    .prologue
    .line 3137
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPopupOn:Z

    return v0
.end method

.method protected getWordSeparators()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2838
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordSeparators:Ljava/lang/String;

    return-object v0
.end method

.method public hideWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1106
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinImeLogger;->commit()V

    .line 1107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->onAutoCompletionStateChanged(Z)V

    .line 1110
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1112
    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 1114
    :cond_0
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mConfigurationChanging:Z

    if-nez v0, :cond_3

    .line 1115
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAfterVoiceInput:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->logInputEnded()V

    .line 1116
    :cond_1
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1117
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->logKeyboardWarningDialogDismissed()V

    .line 1118
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1119
    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    .line 1121
    :cond_2
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mRecognizing:Z

    if-eqz v0, :cond_3

    .line 1122
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->cancel()V

    .line 1125
    :cond_3
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1126
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1127
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 1128
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->endSession()V

    .line 1129
    return-void
.end method

.method public isWordSeparator(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 2842
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getWordSeparators()Ljava/lang/String;

    move-result-object v0

    .line 2843
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
    .line 3166
    const-class v0, Lnet/hasnath/android/keyboard/LatinIMEDebugSettings;

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->launchSettings(Ljava/lang/Class;)V

    .line 3167
    return-void
.end method

.method protected launchSettings()V
    .locals 1

    .prologue
    .line 3162
    const-class v0, Lnet/hasnath/android/keyboard/LatinIMESettings;

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->launchSettings(Ljava/lang/Class;)V

    .line 3163
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
    .line 3170
    .local p1, "settingsClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/preference/PreferenceActivity;>;"
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->handleClose()V

    .line 3171
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3172
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3173
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3174
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->startActivity(Landroid/content/Intent;)V

    .line 3175
    return-void
.end method

.method public mQuicFixes()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mQuickFixes:Z

    return v0
.end method

.method public onAutoCompletionStateChanged(Z)V
    .locals 1
    .param p1, "isAutoCompletion"    # Z

    .prologue
    .line 3358
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->onAutoCompletionStateChanged(Z)V

    .line 3359
    return-void
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 1753
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->onCancelInput()V

    .line 1754
    return-void
.end method

.method public onCancelVoice()V
    .locals 1

    .prologue
    .line 2163
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mRecognizing:Z

    if-eqz v0, :cond_0

    .line 2164
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->switchToKeyboardView()V

    .line 2166
    :cond_0
    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 1
    .param p1, "outInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;

    .prologue
    .line 1176
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 1177
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1178
    iget v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 1180
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "conf"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x1

    .line 665
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 666
    .local v1, "systemLocale":Ljava/lang/String;
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSystemLocale:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 667
    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSystemLocale:Ljava/lang/String;

    .line 668
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    if-eqz v2, :cond_4

    .line 669
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    .line 670
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 669
    invoke-virtual {v2, v3}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;)Z

    .line 671
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    iget-object v3, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->setSystemLocale(Ljava/util/Locale;)V

    .line 672
    invoke-direct {p0, v4, v4}, Lnet/hasnath/android/keyboard/LatinIME;->toggleLanguage(ZZ)V

    .line 678
    :cond_0
    :goto_0
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mOrientation:I

    if-eq v2, v3, :cond_2

    .line 679
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 680
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    invoke-direct {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 681
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 682
    :cond_1
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mOrientation:I

    .line 683
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->reloadKeyboards()V

    .line 685
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mConfigurationChanging:Z

    .line 686
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 687
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mRecognizing:Z

    if-eqz v2, :cond_3

    .line 688
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->switchToRecognitionStatusView()V

    .line 690
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mConfigurationChanging:Z

    .line 691
    return-void

    .line 674
    :cond_4
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->reloadKeyboards()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 13

    .prologue
    const/4 v10, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 472
    invoke-static {p0}, Lnet/hasnath/android/keyboard/LatinImeLogger;->init(Landroid/content/Context;)V

    .line 473
    invoke-static {p0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->init(Lnet/hasnath/android/keyboard/LatinIME;)V

    .line 474
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 479
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    .line 480
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 481
    .local v0, "conf":Landroid/content/res/Configuration;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 483
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

    .line 485
    sget v8, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v8, v12, :cond_3

    sget v8, Lnet/hasnath/android/keyboard/LatinIME;->CURRENT_TOGGLER:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 486
    sput v10, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    .line 491
    :cond_0
    :goto_0
    new-instance v8, Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-direct {v8, p0}, Lnet/hasnath/android/keyboard/LanguageSwitcher;-><init>(Lnet/hasnath/android/keyboard/LatinIME;)V

    iput-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    .line 492
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v8, v5}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;)Z

    .line 493
    invoke-static {}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInstance()Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    move-result-object v8

    iput-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    .line 494
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v8, v9}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setLanguageSwitcher(Lnet/hasnath/android/keyboard/LanguageSwitcher;)V

    .line 495
    iget-object v8, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSystemLocale:Ljava/lang/String;

    .line 496
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    iget-object v9, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->setSystemLocale(Ljava/util/Locale;)V

    .line 497
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v4

    .line 498
    .local v4, "inputLanguage":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 499
    iget-object v8, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    .line 501
    :cond_1
    const-string v8, "recorrection_enabled"

    .line 502
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 501
    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mReCorrectionEnabled:Z

    .line 503
    const-string v8, "obey_haptic"

    invoke-interface {v5, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mObeyHapticFeedback:Z

    .line 505
    const-string v8, "learn_word_as_typing"

    invoke-interface {v5, v8, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->learnWordAsTyping:Z

    .line 506
    const-string v8, "settings_height_landscape"

    const-string v9, "100"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 507
    .local v6, "psy":F
    float-to-int v8, v6

    iput v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->keyboardLandscapeHeightPercentage:I

    .line 508
    const-string v8, "settings_height_portrait"

    const-string v9, "100"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 509
    float-to-int v8, v6

    iput v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->keyboardPortraitHeightPercentage:I

    .line 511
    const-string v8, "cut_copy_paste"

    invoke-interface {v5, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lnet/hasnath/android/keyboard/LatinIME;->CUT_COPY_PASTE:Z

    .line 512
    const-string v8, "contact_suggestion"

    invoke-interface {v5, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lnet/hasnath/android/keyboard/Suggest;->suggestionFromContacts:Z

    .line 514
    const-string v8, "pref_font_settings"

    const-string v9, "3"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sput v8, Lnet/hasnath/android/keyboard/LatinIME;->FONT_SETTINGS:I

    .line 516
    const-string v8, "pref_bangla_fixed"

    const-string v9, "1"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sput v8, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->CURRENT_FIXED_LAYOUT:I

    .line 518
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;->getInstance()Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;

    move-result-object v8

    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;->reset()V

    .line 519
    const/4 v7, 0x1

    .line 520
    .local v7, "tryGC":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v8, 0x5

    if-ge v3, v8, :cond_2

    if-nez v7, :cond_4

    .line 531
    :cond_2
    iget v8, v0, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mOrientation:I

    .line 532
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->initSuggestPuncList()V

    .line 535
    new-instance v2, Landroid/content/IntentFilter;

    const-string v8, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v2, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 536
    .local v2, "filter":Landroid/content/IntentFilter;
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v2}, Lnet/hasnath/android/keyboard/LatinIME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 538
    new-instance v8, Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-direct {v8, p0, p0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;-><init>(Landroid/content/Context;Lnet/hasnath/android/ridmik/voice/VoiceInput$UiListener;)V

    iput-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    .line 539
    new-instance v8, Lnet/hasnath/android/keyboard/Hints;

    new-instance v9, Lnet/hasnath/android/keyboard/LatinIME$2;

    invoke-direct {v9, p0}, Lnet/hasnath/android/keyboard/LatinIME$2;-><init>(Lnet/hasnath/android/keyboard/LatinIME;)V

    invoke-direct {v8, p0, v9}, Lnet/hasnath/android/keyboard/Hints;-><init>(Landroid/content/Context;Lnet/hasnath/android/keyboard/Hints$Display;)V

    iput-object v8, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHints:Lnet/hasnath/android/keyboard/Hints;

    .line 550
    invoke-interface {v5, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 551
    return-void

    .line 487
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

    .line 488
    sput v12, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    goto/16 :goto_0

    .line 522
    .restart local v3    # "i":I
    .restart local v4    # "inputLanguage":Ljava/lang/String;
    .restart local v6    # "psy":F
    .restart local v7    # "tryGC":Z
    :cond_4
    :try_start_0
    invoke-direct {p0, v4}, Lnet/hasnath/android/keyboard/LatinIME;->initSuggest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    const/4 v7, 0x0

    .line 520
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 524
    :catch_0
    move-exception v1

    .line 525
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
    const/4 v3, 0x1

    .line 707
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0, v3}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->makeKeyboards(Z)V

    .line 708
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 709
    const v1, 0x7f030003

    const/4 v2, 0x0

    .line 708
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    .line 710
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f070010

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/hasnath/android/keyboard/CandidateView;

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    .line 711
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v0, p0}, Lnet/hasnath/android/keyboard/CandidateView;->setService(Lnet/hasnath/android/keyboard/LatinIME;)V

    .line 712
    invoke-virtual {p0, v3}, Lnet/hasnath/android/keyboard/LatinIME;->setCandidatesViewShown(Z)V

    .line 713
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateViewContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 695
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->recreateInputView()V

    .line 696
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0, v4}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->makeKeyboards(Z)V

    .line 697
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    .line 698
    const/4 v1, 0x0

    .line 699
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->makeFieldContext()Lnet/hasnath/android/ridmik/voice/FieldContext;

    move-result-object v2

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lnet/hasnath/android/keyboard/LatinIME;->shouldShowVoiceButton(Lnet/hasnath/android/ridmik/voice/FieldContext;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v2

    .line 697
    invoke-virtual {v0, v4, v1, v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 701
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mContactsDictionary:Lnet/hasnath/android/keyboard/ContactsDictionary;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mContactsDictionary:Lnet/hasnath/android/keyboard/ContactsDictionary;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/ContactsDictionary;->close()V

    .line 647
    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mMyDictionary:Lnet/hasnath/android/keyboard/MyDictionary;

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mMyDictionary:Lnet/hasnath/android/keyboard/MyDictionary;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/MyDictionary;->close()V

    .line 650
    :cond_1
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 651
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    if-eqz v0, :cond_2

    .line 652
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->destroy()V

    .line 654
    :cond_2
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinImeLogger;->commit()V

    .line 655
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinImeLogger;->onDestroy()V

    .line 656
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 657
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 8
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 1134
    const-string v3, "foo"

    const-string v5, "Received completions:"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-eqz p1, :cond_2

    array-length v3, p1

    :goto_1
    if-lt v1, v3, :cond_1

    .line 1139
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCompletionOn:Z

    if-eqz v3, :cond_0

    .line 1140
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1141
    if-nez p1, :cond_3

    .line 1142
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->clearSuggestions()V

    .line 1156
    :cond_0
    :goto_2
    return-void

    .line 1136
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

    .line 1135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    .line 1146
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    .local v2, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    :goto_3
    if-eqz p1, :cond_6

    array-length v3, p1

    :goto_4
    if-lt v1, v3, :cond_4

    .line 1152
    invoke-direct {p0, v2, v7, v7, v7}, Lnet/hasnath/android/keyboard/LatinIME;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 1153
    const/4 v3, 0x0

    iput-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    .line 1154
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowCandidate:Z

    invoke-virtual {p0, v3}, Lnet/hasnath/android/keyboard/LatinIME;->setCandidatesViewShown(Z)V

    goto :goto_2

    .line 1148
    :cond_4
    aget-object v0, p1, v1

    .line 1149
    .local v0, "ci":Landroid/view/inputmethod/CompletionInfo;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1147
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
    .line 1184
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1185
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v3

    .line 1187
    .local v1, "displayHeight":F
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 1188
    .local v0, "dimen":F
    cmpl-float v3, v1, v0

    if-lez v3, :cond_0

    .line 1189
    const/4 v3, 0x0

    .line 1191
    :goto_0
    return v3

    :cond_0
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v3

    goto :goto_0
.end method

.method public onExtractedCursorMovement(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 1099
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mReCorrectionEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isPredictionOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    :goto_0
    return-void

    .line 1101
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedCursorMovement(II)V

    goto :goto_0
.end method

.method public onExtractedTextClicked()V
    .locals 1

    .prologue
    .line 1083
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mReCorrectionEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isPredictionOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    :goto_0
    return-void

    .line 1085
    :cond_0
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onExtractedTextClicked()V

    goto :goto_0
.end method

.method public onFinishInput()V
    .locals 1

    .prologue
    .line 943
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 945
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinImeLogger;->commit()V

    .line 946
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->onAutoCompletionStateChanged(Z)V

    .line 948
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mConfigurationChanging:Z

    if-nez v0, :cond_1

    .line 949
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAfterVoiceInput:Z

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->flushAllTextModificationCounters()V

    .line 951
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->logInputEnded()V

    .line 953
    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->flushLogs()V

    .line 954
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->cancel()V

    .line 956
    :cond_1
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 957
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->closing()V

    .line 961
    :cond_2
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 2
    .param p1, "finishingInput"    # Z

    .prologue
    .line 965
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 967
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 968
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 969
    return-void
.end method

.method public onKey(I[III)V
    .locals 7
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 1489
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1490
    .local v1, "when":J
    const/4 v3, -0x5

    if-ne p1, v3, :cond_0

    .line 1491
    iget-wide v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastKeyTime:J

    const-wide/16 v5, 0xc8

    add-long/2addr v3, v5

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 1492
    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mDeleteCount:I

    .line 1494
    :cond_1
    iput-wide v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastKeyTime:J

    .line 1496
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIME;->useBanglaFont()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1497
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->getAsciiEquiv(I)I

    move-result p1

    .line 1499
    :cond_2
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v0

    .line 1500
    .local v0, "distinctMultiTouch":Z
    sparse-switch p1, :sswitch_data_0

    .line 1597
    const/16 v3, 0xa

    if-eq p1, v3, :cond_3

    .line 1598
    const/4 v3, 0x0

    iput-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAddedAutoSpace:Z

    .line 1601
    :cond_3
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->getInstance()Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;

    move-result-object v3

    int-to-char v4, p1

    invoke-virtual {v3, v4, p3, p4}, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->push(CII)V

    .line 1602
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinImeLogger;->logOnInputChar()V

    .line 1603
    invoke-virtual {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->isWordSeparator(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1604
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->handleSeparator(I)V

    .line 1610
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    .line 1612
    :cond_4
    :goto_1
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v3, p1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->onKey(I)V

    .line 1614
    const/4 v3, 0x0

    iput-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    .line 1615
    return-void

    .line 1502
    :sswitch_0
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->handleBackspace()V

    .line 1503
    iget v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mDeleteCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mDeleteCount:I

    .line 1504
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinImeLogger;->logOnDelete()V

    goto :goto_1

    .line 1508
    :sswitch_1
    if-nez v0, :cond_4

    .line 1509
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->handleShift()V

    goto :goto_1

    .line 1513
    :sswitch_2
    if-nez v0, :cond_4

    .line 1514
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->changeKeyboardMode()V

    goto :goto_1

    .line 1517
    :sswitch_3
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isShowingOptionDialog()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1518
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->handleClose()V

    goto :goto_1

    .line 1522
    :sswitch_4
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->onOptionKeyPressed()V

    goto :goto_1

    .line 1525
    :sswitch_5
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->manageSmileyKeyboard(I)V

    .line 1526
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lnet/hasnath/android/keyboard/LatinIME;->handleShiftInternal(Z)V

    goto :goto_1

    .line 1529
    :sswitch_6
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v3, p1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setFixedKeyboard(I)V

    goto :goto_1

    .line 1532
    :sswitch_7
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v3, p1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setFixedKeyboard(I)V

    .line 1533
    const/4 v3, 0x1

    sput-boolean v3, Lnet/hasnath/android/keyboard/LatinIME;->shiftedBangla:Z

    goto :goto_1

    .line 1536
    :sswitch_8
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->manageSmileyKeyboard(I)V

    goto :goto_1

    .line 1539
    :sswitch_9
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->manageSmileyKeyboard(I)V

    goto :goto_1

    .line 1542
    :sswitch_a
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->manageSmileyKeyboard(I)V

    goto :goto_1

    .line 1545
    :sswitch_b
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->onOptionKeyLongPressed()V

    goto :goto_1

    .line 1548
    :sswitch_c
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lnet/hasnath/android/keyboard/LatinIME;->toggleLanguage(ZZ)V

    goto :goto_1

    .line 1551
    :sswitch_d
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lnet/hasnath/android/keyboard/LatinIME;->toggleLanguage(ZZ)V

    goto :goto_1

    .line 1554
    :sswitch_e
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowCandidate:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowCandidate:Z

    .line 1555
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowCandidate:Z

    invoke-virtual {p0, v3}, Lnet/hasnath/android/keyboard/LatinIME;->setCandidatesViewShown(Z)V

    goto :goto_1

    .line 1554
    :cond_5
    const/4 v3, 0x1

    goto :goto_2

    .line 1559
    :sswitch_f
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lnet/hasnath/android/keyboard/LatinIME;->startListening(Z)V

    goto :goto_1

    .line 1563
    :sswitch_10
    const/16 v3, 0x3d

    invoke-virtual {p0, v3}, Lnet/hasnath/android/keyboard/LatinIME;->sendDownUpKeyEvents(I)V

    goto :goto_1

    .line 1566
    :sswitch_11
    const/16 v3, 0x9cd

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x9cd

    aput v6, v4, v5

    invoke-direct {p0, v3, v4}, Lnet/hasnath/android/keyboard/LatinIME;->handleCharacter(I[I)V

    .line 1567
    const/16 v3, 0x9b0

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x9b0

    aput v6, v4, v5

    invoke-direct {p0, v3, v4}, Lnet/hasnath/android/keyboard/LatinIME;->handleCharacter(I[I)V

    goto/16 :goto_1

    .line 1572
    :sswitch_12
    const/16 v3, 0x9cd

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x9cd

    aput v6, v4, v5

    invoke-direct {p0, v3, v4}, Lnet/hasnath/android/keyboard/LatinIME;->handleCharacter(I[I)V

    .line 1573
    const/16 v3, 0x9af

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x9af

    aput v6, v4, v5

    invoke-direct {p0, v3, v4}, Lnet/hasnath/android/keyboard/LatinIME;->handleCharacter(I[I)V

    .line 1574
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateBanglaShift()V

    goto/16 :goto_1

    .line 1577
    :sswitch_13
    const/16 v3, 0x9b0

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x9b0

    aput v6, v4, v5

    invoke-direct {p0, v3, v4}, Lnet/hasnath/android/keyboard/LatinIME;->handleCharacter(I[I)V

    .line 1578
    const/16 v3, 0x9cd

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x9cd

    aput v6, v4, v5

    invoke-direct {p0, v3, v4}, Lnet/hasnath/android/keyboard/LatinIME;->handleCharacter(I[I)V

    .line 1580
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateBanglaShift()V

    goto/16 :goto_1

    .line 1583
    :sswitch_14
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->copyTextToClipBoard()V

    .line 1584
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "text copied"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1587
    :sswitch_15
    const/16 v3, 0x20

    invoke-direct {p0, v3}, Lnet/hasnath/android/keyboard/LatinIME;->handleSeparator(I)V

    goto/16 :goto_1

    .line 1590
    :sswitch_16
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->pasteFromClipBoard()V

    goto/16 :goto_1

    .line 1593
    :sswitch_17
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->cutFromInputArea()V

    goto/16 :goto_1

    .line 1606
    :cond_6
    invoke-direct {p0, p1, p2}, Lnet/hasnath/android/keyboard/LatinIME;->handleCharacter(I[I)V

    .line 1607
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateBanglaShift()V

    goto/16 :goto_0

    .line 1500
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3b3 -> :sswitch_17
        -0x3b2 -> :sswitch_16
        -0x3b1 -> :sswitch_14
        -0x24c -> :sswitch_13
        -0x235 -> :sswitch_11
        -0x234 -> :sswitch_12
        -0x1ee -> :sswitch_15
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
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1197
    sparse-switch p1, :sswitch_data_0

    .line 1228
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 1199
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->handleBack()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1201
    goto :goto_1

    .line 1202
    :cond_1
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mTutorial:Lnet/hasnath/android/keyboard/Tutorial;

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mTutorial:Lnet/hasnath/android/keyboard/Tutorial;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/Tutorial;->close()Z

    .line 1204
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mTutorial:Lnet/hasnath/android/keyboard/Tutorial;

    goto :goto_0

    .line 1213
    :sswitch_1
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mTutorial:Lnet/hasnath/android/keyboard/Tutorial;

    if-eqz v0, :cond_0

    move v0, v1

    .line 1214
    goto :goto_1

    .line 1219
    :sswitch_2
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVolumeCursor:Z

    if-eqz v0, :cond_0

    .line 1221
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    const/16 v0, 0x16

    :goto_2
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->sendDownUpKeyEvents(I)V

    move v0, v1

    .line 1223
    goto :goto_1

    .line 1222
    :cond_2
    const/16 v0, 0x15

    goto :goto_2

    .line 1197
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
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1233
    packed-switch p1, :pswitch_data_0

    .line 1262
    :cond_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1239
    :pswitch_1
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mTutorial:Lnet/hasnath/android/keyboard/Tutorial;

    if-eqz v1, :cond_1

    .line 1240
    const/4 v1, 0x1

    goto :goto_0

    .line 1242
    :cond_1
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v12

    .line 1244
    .local v12, "inputView":Lnet/hasnath/android/keyboard/LatinKeyboardView;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1245
    invoke-virtual {v12}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1246
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    .line 1247
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    .line 1248
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v9

    .line 1249
    const/16 v10, 0x41

    .line 1246
    invoke-direct/range {v0 .. v10}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    .line 1250
    .end local p2    # "event":Landroid/view/KeyEvent;
    .local v0, "event":Landroid/view/KeyEvent;
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v11

    .line 1251
    .local v11, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v11, :cond_2

    invoke-interface {v11, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1252
    :cond_2
    const/4 v1, 0x1

    move-object p2, v0

    .end local v0    # "event":Landroid/view/KeyEvent;
    .restart local p2    # "event":Landroid/view/KeyEvent;
    goto :goto_0

    .line 1257
    .end local v11    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v12    # "inputView":Lnet/hasnath/android/keyboard/LatinKeyboardView;
    :pswitch_2
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1258
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVolumeCursor:Z

    if-eqz v1, :cond_0

    .line 1259
    const/4 v1, 0x1

    goto :goto_0

    .line 1233
    nop

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
.end method

.method public onPress(I)V
    .locals 2
    .param p1, "primaryCode"    # I

    .prologue
    .line 2991
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->isVibrateAndSoundFeedbackRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2992
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->vibrate()V

    .line 2993
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->playKeyClick(I)V

    .line 2995
    :cond_0
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v0

    .line 2996
    .local v0, "distinctMultiTouch":Z
    if-eqz v0, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 2997
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShiftKeyState:Lnet/hasnath/android/keyboard/ModifierKeyState;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/ModifierKeyState;->onPress()V

    .line 2998
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->handleShift()V

    .line 3007
    :goto_0
    return-void

    .line 2999
    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, -0x2

    if-ne p1, v1, :cond_2

    .line 3000
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->changeKeyboardMode()V

    .line 3001
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSymbolKeyState:Lnet/hasnath/android/keyboard/ModifierKeyState;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/ModifierKeyState;->onPress()V

    .line 3002
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setAutoModeSwitchStateMomentary()V

    goto :goto_0

    .line 3004
    :cond_2
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShiftKeyState:Lnet/hasnath/android/keyboard/ModifierKeyState;

    invoke-virtual {v1, p1}, Lnet/hasnath/android/keyboard/ModifierKeyState;->onOtherKeyPressed(I)V

    .line 3005
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSymbolKeyState:Lnet/hasnath/android/keyboard/ModifierKeyState;

    invoke-virtual {v1, p1}, Lnet/hasnath/android/keyboard/ModifierKeyState;->onOtherKeyPressed(I)V

    goto :goto_0
.end method

.method public onRelease(I)V
    .locals 3
    .param p1, "primaryCode"    # I

    .prologue
    .line 3011
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getKeyboard()Lnet/hasnath/android/keyboard/Keyboard;

    move-result-object v1

    check-cast v1, Lnet/hasnath/android/keyboard/LatinKeyboard;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->keyReleased()V

    .line 3013
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v0

    .line 3014
    .local v0, "distinctMultiTouch":Z
    if-eqz v0, :cond_2

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    .line 3015
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShiftKeyState:Lnet/hasnath/android/keyboard/ModifierKeyState;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/ModifierKeyState;->isMomentary()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShiftKeyState:Lnet/hasnath/android/keyboard/ModifierKeyState;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/ModifierKeyState;->getOtherKeyCode()I

    move-result v1

    const/4 v2, -0x5

    if-eq v1, v2, :cond_0

    .line 3016
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->resetShift()V

    .line 3017
    :cond_0
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShiftKeyState:Lnet/hasnath/android/keyboard/ModifierKeyState;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/ModifierKeyState;->onRelease()V

    .line 3025
    :cond_1
    :goto_0
    return-void

    .line 3018
    :cond_2
    if-eqz v0, :cond_1

    const/4 v1, -0x2

    if-ne p1, v1, :cond_1

    .line 3021
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->isInChordingAutoModeSwitchState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3022
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->changeKeyboardMode()V

    .line 3023
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

    .line 2918
    const/4 v0, 0x0

    .line 2920
    .local v0, "needReloadView":Z
    const-string v2, "selected_languages"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2921
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v2, p1}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->loadLocales(Landroid/content/SharedPreferences;)Z

    .line 2922
    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mRefreshKeyboardRequired:Z

    .line 2953
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2954
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v2, v6}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->makeKeyboards(Z)V

    .line 2957
    :cond_1
    return-void

    .line 2923
    :cond_2
    const-string v2, "recorrection_enabled"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2924
    const-string v2, "recorrection_enabled"

    .line 2925
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 2924
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mReCorrectionEnabled:Z

    goto :goto_0

    .line 2926
    :cond_3
    const-string v2, "obey_haptic"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2927
    const-string v2, "obey_haptic"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mObeyHapticFeedback:Z

    goto :goto_0

    .line 2928
    :cond_4
    const-string v2, "learn_word_as_typing"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2929
    const-string v2, "learn_word_as_typing"

    invoke-interface {p1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->learnWordAsTyping:Z

    goto :goto_0

    .line 2930
    :cond_5
    const-string v2, "keypress_volume"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2931
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

    .line 2932
    :cond_6
    const-string v2, "cut_copy_paste"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2933
    const-string v2, "cut_copy_paste"

    invoke-interface {p1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lnet/hasnath/android/keyboard/LatinIME;->CUT_COPY_PASTE:Z

    goto :goto_0

    .line 2934
    :cond_7
    const-string v2, "contact_suggestion"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2935
    const-string v2, "contact_suggestion"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lnet/hasnath/android/keyboard/Suggest;->suggestionFromContacts:Z

    goto :goto_0

    .line 2936
    :cond_8
    const-string v2, "pref_bangla_fixed"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2937
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

    .line 2938
    :cond_9
    const-string v2, "settings_height_portrait"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2939
    const/4 v0, 0x1

    .line 2940
    const-string v2, "settings_height_portrait"

    const-string v3, "100"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 2941
    .local v1, "psy":F
    float-to-int v2, v1

    iput v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->keyboardPortraitHeightPercentage:I

    goto/16 :goto_0

    .line 2942
    .end local v1    # "psy":F
    :cond_a
    const-string v2, "settings_height_landscape"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2943
    const/4 v0, 0x1

    .line 2944
    const-string v2, "settings_height_landscape"

    const-string v3, "100"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 2945
    .restart local v1    # "psy":F
    float-to-int v2, v1

    iput v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->keyboardLandscapeHeightPercentage:I

    goto/16 :goto_0

    .line 2946
    .end local v1    # "psy":F
    :cond_b
    const-string v2, "pref_keyboard_layouts"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2947
    const-string v2, "pref_keyboard_layouts"

    const-string v3, "1"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lnet/hasnath/android/keyboard/LatinIME;->CURRENT_TOGGLER:I

    .line 2948
    invoke-direct {p0, v6, v6}, Lnet/hasnath/android/keyboard/LatinIME;->toggleLanguage(ZZ)V

    goto/16 :goto_0

    .line 2949
    :cond_c
    const-string v2, "pref_font_settings"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2950
    const-string v2, "pref_font_settings"

    const-string v3, "3"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lnet/hasnath/android/keyboard/LatinIME;->FONT_SETTINGS:I

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

    .line 718
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v6}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v1

    .line 720
    .local v1, "inputView":Lnet/hasnath/android/keyboard/LatinKeyboardView;
    if-nez v1, :cond_0

    .line 898
    :goto_0
    return-void

    .line 725
    :cond_0
    iget-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mRefreshKeyboardRequired:Z

    if-eqz v6, :cond_1

    .line 726
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mRefreshKeyboardRequired:Z

    .line 727
    invoke-direct {p0, v4, v4}, Lnet/hasnath/android/keyboard/LatinIME;->toggleLanguage(ZZ)V

    .line 733
    :cond_1
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v6, v5}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->makeKeyboards(Z)V

    .line 735
    invoke-static {p0}, Lnet/hasnath/android/keyboard/TextEntryState;->newSession(Landroid/content/Context;)V

    .line 740
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPasswordText:Z

    .line 741
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v3, v6, 0xff0

    .line 742
    .local v3, "variation":I
    const/16 v6, 0x80

    if-eq v3, v6, :cond_2

    .line 743
    const/16 v6, 0x90

    if-eq v3, v6, :cond_2

    .line 744
    if-eq v3, v9, :cond_2

    .line 745
    const/16 v6, 0xe0

    if-ne v3, v6, :cond_3

    .line 746
    :cond_2
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPasswordText:Z

    .line 759
    :cond_3
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->makeFieldContext()Lnet/hasnath/android/ridmik/voice/FieldContext;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lnet/hasnath/android/keyboard/LatinIME;->shouldShowVoiceButton(Lnet/hasnath/android/ridmik/voice/FieldContext;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v6

    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoiceButton:Z

    .line 760
    iget-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoiceButton:Z

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnableVoice:Z

    if-eqz v6, :cond_8

    move v0, v4

    .line 762
    .local v0, "enableVoiceButton":Z
    :goto_1
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAfterVoiceInput:Z

    .line 763
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mImmediatelyAfterVoiceInput:Z

    .line 764
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowingVoiceSuggestions:Z

    .line 765
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInputHighlighted:Z

    .line 766
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mInputTypeNoAutoCorrect:Z

    .line 767
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    .line 768
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCompletionOn:Z

    .line 769
    const/4 v6, 0x0

    iput-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 770
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCapsLock:Z

    .line 771
    const/4 v6, 0x0

    iput-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    .line 773
    const/4 v2, 0x1

    .line 775
    .local v2, "switchGo":Z
    sget v6, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v6, v10, :cond_5

    .line 777
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v6, v6, 0xf

    if-eq v6, v10, :cond_5

    .line 780
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    const/16 v7, 0xb

    iget v8, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {v6, v7, v8, v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 781
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    .line 782
    const/4 v2, 0x0

    .line 784
    const/16 v6, 0x80

    if-eq v3, v6, :cond_4

    .line 785
    const/16 v6, 0x90

    if-ne v3, v6, :cond_9

    .line 786
    :cond_4
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    .line 798
    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    .line 799
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v6, v6, 0xf

    packed-switch v6, :pswitch_data_0

    .line 867
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    .line 868
    iget v7, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 867
    invoke-virtual {v6, v4, v7, v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 871
    :cond_6
    :goto_3
    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->closing()V

    .line 872
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 873
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    .line 874
    iput v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mDeleteCount:I

    .line 875
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAddedAutoSpace:Z

    .line 876
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->loadSettings()V

    .line 877
    invoke-virtual {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 879
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isCandidateStripVisible()Z

    move-result v6

    if-nez v6, :cond_17

    iget-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCompletionOn:Z

    if-nez v6, :cond_17

    move v6, v5

    :goto_4
    invoke-direct {p0, v6, v5}, Lnet/hasnath/android/keyboard/LatinIME;->setCandidatesViewShownInternal(ZZ)V

    .line 881
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateSuggestions()V

    .line 885
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    invoke-virtual {v6}, Lnet/hasnath/android/keyboard/Suggest;->hasMainDictionary()Z

    move-result v6

    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHasDictionary:Z

    .line 888
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->updateCorrectionMode()V

    .line 890
    iget-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPopupOn:Z

    invoke-virtual {v1, v6}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->setPreviewEnabled(Z)V

    .line 891
    iget v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLongPressDelay:I

    invoke-virtual {v1, v6}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->setLongPressDelay(I)V

    .line 892
    invoke-virtual {v1, v4}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->setProximityCorrectionEnabled(Z)V

    .line 893
    iget-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    if-eqz v6, :cond_18

    iget v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    if-gtz v6, :cond_7

    iget-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowSuggestions:Z

    if-eqz v6, :cond_18

    :cond_7
    :goto_5
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    .line 895
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->checkReCorrectionOnStart()V

    .line 896
    iget-object v4, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-direct {p0, v4}, Lnet/hasnath/android/keyboard/LatinIME;->checkTutorial(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "enableVoiceButton":Z
    .end local v2    # "switchGo":Z
    :cond_8
    move v0, v5

    .line 760
    goto/16 :goto_1

    .line 787
    .restart local v0    # "enableVoiceButton":Z
    .restart local v2    # "switchGo":Z
    :cond_9
    if-ne v3, v11, :cond_a

    .line 788
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    goto :goto_2

    .line 789
    :cond_a
    if-ne v3, v9, :cond_b

    .line 790
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    goto :goto_2

    .line 791
    :cond_b
    const/16 v6, 0xb0

    if-ne v3, v6, :cond_5

    .line 792
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    goto :goto_2

    .line 807
    :pswitch_0
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    .line 808
    iget v7, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 807
    invoke-virtual {v6, v10, v7, v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    goto :goto_3

    .line 811
    :pswitch_1
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    .line 812
    iget v7, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 811
    invoke-virtual {v6, v4, v7, v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 814
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    .line 816
    const/16 v6, 0x80

    if-eq v3, v6, :cond_c

    .line 817
    const/16 v6, 0x90

    if-eq v3, v6, :cond_c

    .line 818
    if-eq v3, v9, :cond_c

    .line 819
    const/16 v6, 0xe0

    if-ne v3, v6, :cond_d

    .line 820
    :cond_c
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    .line 822
    :cond_d
    if-eq v3, v11, :cond_e

    .line 823
    const/16 v6, 0x60

    if-ne v3, v6, :cond_12

    .line 824
    :cond_e
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoSpace:Z

    .line 828
    :goto_6
    if-ne v3, v11, :cond_13

    .line 829
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    .line 830
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    const/4 v7, 0x5

    .line 831
    iget v8, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 830
    invoke-virtual {v6, v7, v8, v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 852
    :cond_f
    :goto_7
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v7, 0x80000

    and-int/2addr v6, v7

    if-eqz v6, :cond_10

    .line 853
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    .line 854
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mInputTypeNoAutoCorrect:Z

    .line 857
    :cond_10
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v7, 0x8000

    and-int/2addr v6, v7

    if-nez v6, :cond_11

    .line 858
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v7, 0x20000

    and-int/2addr v6, v7

    if-nez v6, :cond_11

    .line 859
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mInputTypeNoAutoCorrect:Z

    .line 861
    :cond_11
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v7, 0x10000

    and-int/2addr v6, v7

    if-eqz v6, :cond_6

    .line 862
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    .line 863
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isFullscreenMode()Z

    move-result v6

    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCompletionOn:Z

    goto/16 :goto_3

    .line 826
    :cond_12
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoSpace:Z

    goto :goto_6

    .line 832
    :cond_13
    if-ne v3, v9, :cond_14

    .line 833
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    .line 834
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    const/4 v7, 0x4

    .line 835
    iget v8, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 834
    invoke-virtual {v6, v7, v8, v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    goto :goto_7

    .line 836
    :cond_14
    const/16 v6, 0x40

    if-ne v3, v6, :cond_15

    .line 837
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    const/4 v7, 0x6

    .line 838
    iget v8, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 837
    invoke-virtual {v6, v7, v8, v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    goto :goto_7

    .line 839
    :cond_15
    const/16 v6, 0xb0

    if-ne v3, v6, :cond_16

    .line 840
    iput-boolean v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredictionOn:Z

    goto :goto_7

    .line 841
    :cond_16
    const/16 v6, 0xa0

    if-ne v3, v6, :cond_f

    .line 842
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    const/4 v7, 0x7

    .line 843
    iget v8, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 842
    invoke-virtual {v6, v7, v8, v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 846
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v7, 0x8000

    and-int/2addr v6, v7

    if-nez v6, :cond_f

    .line 847
    iput-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mInputTypeNoAutoCorrect:Z

    goto :goto_7

    :cond_17
    move v6, v4

    .line 879
    goto/16 :goto_4

    :cond_18
    move v4, v5

    .line 893
    goto/16 :goto_5

    .line 799
    nop

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

    .line 1729
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInputHighlighted:Z

    if-eqz v1, :cond_0

    .line 1730
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->commitVoiceInput()V

    .line 1732
    :cond_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1733
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_1

    .line 1748
    :goto_0
    return-void

    .line 1734
    :cond_1
    invoke-direct {p0, v2}, Lnet/hasnath/android/keyboard/LatinIME;->abortCorrection(Z)V

    .line 1735
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1736
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    if-eqz v1, :cond_2

    .line 1737
    invoke-direct {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 1739
    :cond_2
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->maybeRemovePreviousPeriod(Ljava/lang/CharSequence;)V

    .line 1741
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1742
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1743
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 1744
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1, v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->onKey(I)V

    .line 1745
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    .line 1746
    iput-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAddedAutoSpace:Z

    .line 1747
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 973
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 974
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 975
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mImmediatelyAfterVoiceInput:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAfterVoiceInput:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 976
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mHints:Lnet/hasnath/android/keyboard/Hints;

    invoke-virtual {v1, v0}, Lnet/hasnath/android/keyboard/Hints;->showPunctuationHintIfNecessary(Landroid/view/inputmethod/InputConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 977
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v1}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->logPunctuationHintDisplayed()V

    .line 980
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mImmediatelyAfterVoiceInput:Z

    .line 990
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

    .line 996
    invoke-super/range {p0 .. p6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 1008
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAfterVoiceInput:Z

    if-eqz v1, :cond_0

    .line 1009
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v1, p4}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->setCursorPos(I)V

    .line 1010
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    sub-int v2, p4, p3

    invoke-virtual {v1, v2}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->setSelectionSpan(I)V

    .line 1015
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

    .line 1016
    :cond_2
    if-ne p3, p6, :cond_3

    .line 1017
    if-eq p4, p6, :cond_a

    .line 1018
    :cond_3
    iget v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastSelectionStart:I

    if-eq v1, p3, :cond_a

    .line 1019
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1020
    iput-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    .line 1021
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->postUpdateSuggestions()V

    .line 1022
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->reset()V

    .line 1023
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1024
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_4

    .line 1025
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1027
    :cond_4
    iput-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInputHighlighted:Z

    .line 1038
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_5
    :goto_0
    iput-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAccepted:Z

    .line 1039
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->postUpdateShiftKeyState()V

    .line 1042
    iput p3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastSelectionStart:I

    .line 1043
    iput p4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastSelectionEnd:I

    .line 1045
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mReCorrectionEnabled:Z

    if-eqz v1, :cond_9

    .line 1047
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1048
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1050
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isPredictionOn()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1051
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    if-nez v1, :cond_9

    .line 1052
    if-eq p5, p6, :cond_6

    if-ne p3, p1, :cond_6

    .line 1053
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->isCorrecting()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1054
    :cond_6
    add-int/lit8 v1, p4, -0x1

    if-lt p3, v1, :cond_7

    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    if-nez v1, :cond_9

    .line 1055
    :cond_7
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInputHighlighted:Z

    if-nez v1, :cond_9

    .line 1056
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->isCursorTouchingWord()Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastSelectionStart:I

    iget v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mLastSelectionEnd:I

    if-ge v1, v2, :cond_b

    .line 1057
    :cond_8
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->postUpdateOldSuggestions()V

    .line 1071
    :cond_9
    :goto_1
    return-void

    .line 1028
    :cond_a
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAccepted:Z

    if-nez v1, :cond_5

    .line 1029
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIME;->$SWITCH_TABLE$net$hasnath$android$keyboard$TextEntryState$State()[I

    move-result-object v1

    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->getState()Lnet/hasnath/android/keyboard/TextEntryState$State;

    move-result-object v2

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/TextEntryState$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1031
    :sswitch_0
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->reset()V

    .line 1034
    :sswitch_1
    iput-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAddedAutoSpace:Z

    goto :goto_0

    .line 1059
    :cond_b
    invoke-direct {p0, v3}, Lnet/hasnath/android/keyboard/LatinIME;->abortCorrection(Z)V

    .line 1062
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    if-eqz v1, :cond_9

    .line 1063
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggestPuncList:Ljava/util/List;

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/CandidateView;->getSuggestions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1064
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/CandidateView;->isShowingAddToDictionaryHint()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1065
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->setNextSuggestions()V

    goto :goto_1

    .line 1029
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
    .line 2285
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "alternatives":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/CharSequence;>;>;"
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mRecognizing:Z

    if-nez v0, :cond_0

    .line 2291
    :goto_0
    return-void

    .line 2288
    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceResults:Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;

    iput-object p1, v0, Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;->candidates:Ljava/util/List;

    .line 2289
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceResults:Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;

    iput-object p2, v0, Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;->alternatives:Ljava/util/Map;

    .line 2290
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
    .line 926
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    .line 930
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 931
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

    .line 2463
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v7}, Lnet/hasnath/android/keyboard/CandidateView;->getSuggestions()Ljava/util/List;

    move-result-object v5

    .line 2465
    .local v5, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAfterVoiceInput:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowingVoiceSuggestions:Z

    if-eqz v7, :cond_0

    .line 2466
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-virtual {v7}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->flushAllTextModificationCounters()V

    .line 2468
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2469
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWordSeparators:Ljava/lang/String;

    .line 2470
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v10

    .line 2468
    invoke-virtual {v7, v8, p1, v9, v10}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->logTextModifiedByChooseSuggestion(Ljava/lang/String;ILjava/lang/String;Landroid/view/inputmethod/InputConnection;)V

    .line 2473
    :cond_0
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->isCorrecting()Z

    move-result v1

    .line 2474
    .local v1, "correcting":Z
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 2475
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_1

    .line 2476
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2478
    :cond_1
    iget-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCompletionOn:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v7, :cond_5

    if-ltz p1, :cond_5

    .line 2479
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v7, v7

    if-ge p1, v7, :cond_5

    .line 2480
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v0, v6, p1

    .line 2481
    .local v0, "ci":Landroid/view/inputmethod/CompletionInfo;
    if-eqz v2, :cond_2

    .line 2482
    invoke-interface {v2, v0}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 2484
    :cond_2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iput v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCommittedLength:I

    .line 2485
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    if-eqz v6, :cond_3

    .line 2486
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCandidateView:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v6}, Lnet/hasnath/android/keyboard/CandidateView;->clear()V

    .line 2488
    :cond_3
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v6

    invoke-virtual {p0, v6}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 2489
    if-eqz v2, :cond_4

    .line 2490
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2551
    .end local v0    # "ci":Landroid/view/inputmethod/CompletionInfo;
    :cond_4
    :goto_0
    return-void

    .line 2496
    :cond_5
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ne v7, v6, :cond_7

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v7}, Lnet/hasnath/android/keyboard/LatinIME;->isWordSeparator(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 2497
    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-direct {p0, v7}, Lnet/hasnath/android/keyboard/LatinIME;->isSuggestedPunctuation(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2501
    :cond_6
    const-string v7, ""

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2500
    invoke-static {v7, v8, p1, v5}, Lnet/hasnath/android/keyboard/LatinImeLogger;->logOnManualSuggestion(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 2502
    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 2503
    .local v3, "primaryCode":C
    new-array v6, v6, [I

    aput v3, v6, v4

    invoke-virtual {p0, v3, v6, v11, v11}, Lnet/hasnath/android/keyboard/LatinIME;->onKey(I[III)V

    .line 2505
    if-eqz v2, :cond_4

    .line 2506
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 2510
    .end local v3    # "primaryCode":C
    :cond_7
    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAccepted:Z

    .line 2511
    invoke-direct {p0, p2, v1}, Lnet/hasnath/android/keyboard/LatinIME;->pickSuggestion(Ljava/lang/CharSequence;Z)V

    .line 2513
    if-nez p1, :cond_8

    .line 2514
    const/4 v7, 0x3

    invoke-direct {p0, p2, v7}, Lnet/hasnath/android/keyboard/LatinIME;->addToDictionaries(Ljava/lang/CharSequence;I)V

    .line 2518
    :cond_8
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, p1, v5}, Lnet/hasnath/android/keyboard/LatinImeLogger;->logOnManualSuggestion(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 2520
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p2}, Lnet/hasnath/android/keyboard/TextEntryState;->acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2522
    iget-boolean v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mAutoSpace:Z

    if-eqz v7, :cond_9

    if-nez v1, :cond_9

    .line 2523
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->sendSpace()V

    .line 2524
    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustAddedAutoSpace:Z

    .line 2527
    :cond_9
    if-nez p1, :cond_a

    iget v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCorrectionMode:I

    if-lez v7, :cond_a

    .line 2528
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    invoke-virtual {v7, p2}, Lnet/hasnath/android/keyboard/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 2529
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIME;->mSuggest:Lnet/hasnath/android/keyboard/Suggest;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnet/hasnath/android/keyboard/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    move v4, v6

    .line 2531
    .local v4, "showingAddToDictionaryHint":Z
    :cond_a
    if-nez v1, :cond_c

    .line 2535
    const/16 v7, 0x20

    invoke-static {v7, v6}, Lnet/hasnath/android/keyboard/TextEntryState;->typedCharacter(CZ)V

    .line 2536
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->setNextSuggestions()V

    .line 2548
    :cond_b
    :goto_1
    if-eqz v2, :cond_4

    .line 2549
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 2537
    :cond_c
    if-nez v4, :cond_b

    .line 2540
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->clearSuggestions()V

    .line 2541
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->postUpdateOldSuggestions()V

    goto :goto_1
.end method

.method public preferCapitalization()Z
    .locals 1

    .prologue
    .line 2857
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mWord:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/WordComposer;->isFirstCharCapitalized()Z

    move-result v0

    return v0
.end method

.method promoteToUserDictionary(Ljava/lang/String;I)V
    .locals 0
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "frequency"    # I

    .prologue
    .line 3130
    return-void
.end method

.method public revertLastWord(Z)V
    .locals 7
    .param p1, "deleteChar"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 2812
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 2813
    .local v1, "length":I
    iget-boolean v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    if-nez v4, :cond_3

    if-lez v1, :cond_3

    .line 2814
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2815
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iput-boolean v6, p0, Lnet/hasnath/android/keyboard/LatinIME;->mPredicting:Z

    .line 2816
    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    .line 2817
    if-eqz p1, :cond_0

    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2818
    :cond_0
    iget v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCommittedLength:I

    .line 2819
    .local v2, "toDelete":I
    iget v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCommittedLength:I

    invoke-interface {v0, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2820
    .local v3, "toTheLeft":Ljava/lang/CharSequence;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 2821
    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lnet/hasnath/android/keyboard/LatinIME;->isWordSeparator(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2822
    add-int/lit8 v2, v2, -0x1

    .line 2824
    :cond_1
    invoke-interface {v0, v2, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2825
    sget v4, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v4, v6, :cond_2

    .line 2826
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->parser:Lnet/hasnath/ridmikparser/RidmikParser;

    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/hasnath/ridmikparser/RidmikParser;->toBangla(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2829
    :goto_0
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->backspace()V

    .line 2830
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->postUpdateSuggestions()V

    .line 2835
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "toDelete":I
    .end local v3    # "toTheLeft":Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 2828
    .restart local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v2    # "toDelete":I
    .restart local v3    # "toTheLeft":Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v0, v4, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 2832
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v2    # "toDelete":I
    .end local v3    # "toTheLeft":Ljava/lang/CharSequence;
    :cond_3
    const/16 v4, 0x43

    invoke-virtual {p0, v4}, Lnet/hasnath/android/keyboard/LatinIME;->sendDownUpKeyEvents(I)V

    .line 2833
    const/4 v4, 0x0

    iput-object v4, p0, Lnet/hasnath/android/keyboard/LatinIME;->mJustRevertedSeparator:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public setCandidatesViewShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1168
    if-eqz p1, :cond_0

    .line 1169
    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowCandidate:Z

    .line 1171
    :goto_0
    invoke-direct {p0, p1, v1}, Lnet/hasnath/android/keyboard/LatinIME;->setCandidatesViewShownInternal(ZZ)V

    .line 1172
    return-void

    .line 1170
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShowCandidate:Z

    goto :goto_0
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 2976
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME;->handleClose()V

    .line 2977
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 2972
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->changeKeyboardMode()V

    .line 2973
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 2967
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->changeKeyboardMode()V

    .line 2969
    return-void
.end method

.method public swipeUp()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2981
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCapsLock:Z

    if-eqz v0, :cond_0

    .line 2982
    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCapsLock:Z

    .line 2983
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setShifted(Z)V

    .line 2988
    :goto_0
    return-void

    .line 2985
    :cond_0
    iput-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCapsLock:Z

    .line 2986
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0, v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setShiftLocked(Z)V

    goto :goto_0
.end method

.method tutorialDone()V
    .locals 1

    .prologue
    .line 3122
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mTutorial:Lnet/hasnath/android/keyboard/Tutorial;

    .line 3123
    return-void
.end method

.method public updateBanglaShift()V
    .locals 2

    .prologue
    .line 1719
    sget-boolean v0, Lnet/hasnath/android/keyboard/LatinIME;->shiftedBangla:Z

    if-eqz v0, :cond_0

    sget v0, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1720
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    const/16 v1, -0x1b1

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setFixedKeyboard(I)V

    .line 1721
    const/4 v0, 0x0

    sput-boolean v0, Lnet/hasnath/android/keyboard/LatinIME;->shiftedBangla:Z

    .line 1723
    :cond_0
    return-void
.end method

.method public updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .param p1, "attr"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 1325
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1326
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1327
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mShiftKeyState:Lnet/hasnath/android/keyboard/ModifierKeyState;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/ModifierKeyState;->isMomentary()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME;->mCapsLock:Z

    if-nez v1, :cond_1

    .line 1328
    invoke-direct {p0, v0, p1}, Lnet/hasnath/android/keyboard/LatinIME;->getCursorCapsMode(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 1327
    :goto_0
    invoke-virtual {v2, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setShifted(Z)V

    .line 1330
    :cond_0
    return-void

    .line 1328
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
