.class public Lnet/hasnath/android/ridmik/voice/VoiceInput;
.super Ljava/lang/Object;
.source "VoiceInput.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hasnath/android/ridmik/voice/VoiceInput$AlternatesBundleKeys;,
        Lnet/hasnath/android/ridmik/voice/VoiceInput$ImeRecognitionListener;,
        Lnet/hasnath/android/ridmik/voice/VoiceInput$UiListener;
    }
.end annotation


# static fields
.field private static final ALTERNATES_BUNDLE:Ljava/lang/String; = "alternates_bundle"

.field public static final DEFAULT:I = 0x0

.field private static final DEFAULT_RECOMMENDED_PACKAGES:Ljava/lang/String; = "com.android.mms com.google.android.gm com.google.android.talk com.google.android.apps.googlevoice com.android.email com.android.browser "

.field public static final DELETE_SYMBOL:Ljava/lang/String; = " \u00d7 "

.field public static ENABLE_WORD_CORRECTIONS:Z = false

.field public static final ERROR:I = 0x3

.field private static final EXTRA_ALTERNATES:Ljava/lang/String; = "android.speech.extra.ALTERNATES"

.field private static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final EXTRA_RECOGNITION_CONTEXT:Ljava/lang/String; = "android.speech.extras.RECOGNITION_CONTEXT"

.field private static final EXTRA_SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS:Ljava/lang/String; = "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

.field private static final EXTRA_SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS:Ljava/lang/String; = "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

.field private static final EXTRA_SPEECH_MINIMUM_LENGTH_MILLIS:Ljava/lang/String; = "android.speech.extras.SPEECH_INPUT_MINIMUM_LENGTH_MILLIS"

.field private static final INPUT_COMPLETE_SILENCE_LENGTH_DEFAULT_VALUE_MILLIS:Ljava/lang/String; = "1000"

.field public static final LISTENING:I = 0x1

.field private static final MAX_ALT_LIST_LENGTH:I = 0x6

.field private static final MSG_CLOSE_ERROR_DIALOG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VoiceInput"

.field public static final WORKING:I = 0x2


# instance fields
.field private mAfterVoiceInputCursorPos:I

.field private mAfterVoiceInputDeleteCount:I

.field private mAfterVoiceInputInsertCount:I

.field private mAfterVoiceInputInsertPunctuationCount:I

.field private mAfterVoiceInputSelectionSpan:I

.field private mBlacklist:Lnet/hasnath/android/ridmik/voice/Whitelist;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

.field private mRecognitionListener:Landroid/speech/RecognitionListener;

.field private mRecognitionView:Lnet/hasnath/android/ridmik/voice/RecognitionView;

.field private mRecommendedList:Lnet/hasnath/android/ridmik/voice/Whitelist;

.field private mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

.field private mState:I

.field private mUiListener:Lnet/hasnath/android/ridmik/voice/VoiceInput$UiListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->ENABLE_WORD_CORRECTIONS:Z

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/hasnath/android/ridmik/voice/VoiceInput$UiListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiHandler"    # Lnet/hasnath/android/ridmik/voice/VoiceInput$UiListener;

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput v2, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 122
    iput v2, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 123
    iput v2, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 124
    iput v2, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputCursorPos:I

    .line 125
    iput v2, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    .line 127
    iput v2, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mState:I

    .line 131
    new-instance v3, Lnet/hasnath/android/ridmik/voice/VoiceInput$1;

    invoke-direct {v3, p0}, Lnet/hasnath/android/ridmik/voice/VoiceInput$1;-><init>(Lnet/hasnath/android/ridmik/voice/VoiceInput;)V

    iput-object v3, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mHandler:Landroid/os/Handler;

    .line 172
    invoke-static {p1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->getLogger(Landroid/content/Context;)Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    move-result-object v3

    iput-object v3, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    .line 173
    new-instance v3, Lnet/hasnath/android/ridmik/voice/VoiceInput$ImeRecognitionListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lnet/hasnath/android/ridmik/voice/VoiceInput$ImeRecognitionListener;-><init>(Lnet/hasnath/android/ridmik/voice/VoiceInput;Lnet/hasnath/android/ridmik/voice/VoiceInput$ImeRecognitionListener;)V

    iput-object v3, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mRecognitionListener:Landroid/speech/RecognitionListener;

    .line 174
    invoke-static {p1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v3

    iput-object v3, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 175
    iget-object v3, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object v4, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mRecognitionListener:Landroid/speech/RecognitionListener;

    invoke-virtual {v3, v4}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 176
    iput-object p2, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mUiListener:Lnet/hasnath/android/ridmik/voice/VoiceInput$UiListener;

    .line 177
    iput-object p1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mContext:Landroid/content/Context;

    .line 178
    invoke-virtual {p0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->newView()V

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 182
    const-string v4, "latin_ime_voice_input_recommended_packages"

    .line 183
    const-string v5, "com.android.mms com.google.android.gm com.google.android.talk com.google.android.apps.googlevoice com.android.email com.android.browser "

    .line 180
    invoke-static {v3, v4, v5}, Lnet/hasnath/android/ridmik/voice/SettingsUtil;->getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "recommendedPackages":Ljava/lang/String;
    new-instance v3, Lnet/hasnath/android/ridmik/voice/Whitelist;

    invoke-direct {v3}, Lnet/hasnath/android/ridmik/voice/Whitelist;-><init>()V

    iput-object v3, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mRecommendedList:Lnet/hasnath/android/ridmik/voice/Whitelist;

    .line 186
    const-string v3, "\\s+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-lt v2, v4, :cond_0

    .line 190
    new-instance v2, Lnet/hasnath/android/ridmik/voice/Whitelist;

    invoke-direct {v2}, Lnet/hasnath/android/ridmik/voice/Whitelist;-><init>()V

    iput-object v2, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mBlacklist:Lnet/hasnath/android/ridmik/voice/Whitelist;

    .line 191
    iget-object v2, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mBlacklist:Lnet/hasnath/android/ridmik/voice/Whitelist;

    const-string v3, "com.android.setupwizard"

    invoke-virtual {v2, v3}, Lnet/hasnath/android/ridmik/voice/Whitelist;->addApp(Ljava/lang/String;)V

    .line 192
    return-void

    .line 186
    :cond_0
    aget-object v0, v3, v2

    .line 187
    .local v0, "recommendedPackage":Ljava/lang/String;
    iget-object v5, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mRecommendedList:Lnet/hasnath/android/ridmik/voice/Whitelist;

    invoke-virtual {v5, v0}, Lnet/hasnath/android/ridmik/voice/Whitelist;->addApp(Ljava/lang/String;)V

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lnet/hasnath/android/ridmik/voice/VoiceInput;I)V
    .locals 0

    .prologue
    .line 127
    iput p1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mState:I

    return-void
.end method

.method static synthetic access$1(Lnet/hasnath/android/ridmik/voice/VoiceInput;)Lnet/hasnath/android/ridmik/voice/RecognitionView;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mRecognitionView:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    return-object v0
.end method

.method static synthetic access$2(Lnet/hasnath/android/ridmik/voice/VoiceInput;)Lnet/hasnath/android/ridmik/voice/VoiceInput$UiListener;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mUiListener:Lnet/hasnath/android/ridmik/voice/VoiceInput$UiListener;

    return-object v0
.end method

.method static synthetic access$3(Lnet/hasnath/android/ridmik/voice/VoiceInput;IZ)V
    .locals 0

    .prologue
    .line 540
    invoke-direct {p0, p1, p2}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->onError(IZ)V

    return-void
.end method

.method private getErrorStringId(IZ)I
    .locals 1
    .param p1, "errorType"    # I
    .param p2, "endpointed"    # Z

    .prologue
    const v0, 0x7f0700d2

    .line 519
    packed-switch p1, :pswitch_data_0

    .line 536
    const v0, 0x7f0700d1

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 522
    :pswitch_1
    const v0, 0x7f0700d8

    goto :goto_0

    .line 526
    :pswitch_2
    if-nez p2, :cond_0

    .line 527
    const v0, 0x7f0700d3

    goto :goto_0

    .line 529
    :pswitch_3
    const v0, 0x7f0700d4

    goto :goto_0

    .line 531
    :pswitch_4
    const v0, 0x7f0700d5

    goto :goto_0

    .line 533
    :pswitch_5
    const v0, 0x7f0700d6

    goto :goto_0

    .line 535
    :pswitch_6
    const v0, 0x7f0700d7

    goto :goto_0

    .line 519
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static makeIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 475
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "1.5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    const-string v1, "com.google.android.voiceservice"

    .line 483
    const-string v2, "com.google.android.voiceservice.IMERecognitionService"

    .line 481
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 490
    :goto_0
    return-object v0

    .line 486
    :cond_0
    const-string v1, "com.google.android.voicesearch"

    .line 487
    const-string v2, "com.google.android.voicesearch.RecognitionService"

    .line 485
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private onError(IZ)V
    .locals 3
    .param p1, "errorType"    # I
    .param p2, "endpointed"    # Z

    .prologue
    .line 541
    const-string v0, "VoiceInput"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->error(I)V

    .line 543
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->getErrorStringId(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->onError(Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method private onError(Ljava/lang/String;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 547
    const/4 v0, 0x3

    iput v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mState:I

    .line 548
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mRecognitionView:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->showError(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 551
    return-void
.end method

.method private putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "i"    # Landroid/content/Intent;
    .param p3, "gservicesKey"    # Ljava/lang/String;
    .param p4, "intentExtraKey"    # Ljava/lang/String;
    .param p5, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 370
    const-wide/16 v2, -0x1

    .line 371
    .local v2, "l":J
    invoke-static {p1, p3, p5}, Lnet/hasnath/android/ridmik/voice/SettingsUtil;->getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 374
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 380
    :cond_0
    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    invoke-virtual {p2, p4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 381
    :cond_1
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "VoiceInput"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "could not parse value for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startListeningAfterInitialization(Lnet/hasnath/android/ridmik/voice/FieldContext;)V
    .locals 12
    .param p1, "context"    # Lnet/hasnath/android/ridmik/voice/FieldContext;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 327
    invoke-static {}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->makeIntent()Landroid/content/Intent;

    move-result-object v2

    .line 328
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v0, "android.speech.extras.RECOGNITION_CONTEXT"

    invoke-virtual {p1}, Lnet/hasnath/android/ridmik/voice/FieldContext;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 330
    const-string v0, "calling_package"

    const-string v3, "VoiceIME"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string v0, "android.speech.extra.ALTERNATES"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 332
    const-string v0, "android.speech.extra.MAX_RESULTS"

    .line 334
    iget-object v3, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 335
    const-string v4, "latin_ime_max_voice_results"

    .line 333
    invoke-static {v3, v4, v6}, Lnet/hasnath/android/ridmik/voice/SettingsUtil;->getSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 332
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 343
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v3, "latin_ime_speech_minimum_length_millis"

    .line 344
    const-string v4, "android.speech.extras.SPEECH_INPUT_MINIMUM_LENGTH_MILLIS"

    move-object v0, p0

    .line 340
    invoke-direct/range {v0 .. v5}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v9, "latin_ime_speech_input_complete_silence_length_millis"

    .line 350
    const-string v10, "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

    .line 351
    const-string v11, "1000"

    move-object v6, p0

    move-object v7, v1

    move-object v8, v2

    .line 346
    invoke-direct/range {v6 .. v11}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v3, "latin_ime_speech_input_possibly_complete_silence_length_millis"

    .line 358
    const-string v4, "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

    move-object v0, p0

    .line 353
    invoke-direct/range {v0 .. v5}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, v2}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 362
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 497
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 508
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mState:I

    .line 511
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 513
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 514
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mUiListener:Lnet/hasnath/android/ridmik/voice/VoiceInput$UiListener;

    invoke-interface {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput$UiListener;->onCancelVoice()V

    .line 515
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mRecognitionView:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->finish()V

    .line 516
    return-void

    .line 499
    :pswitch_0
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->cancelDuringListening()V

    goto :goto_0

    .line 502
    :pswitch_1
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->cancelDuringWorking()V

    goto :goto_0

    .line 505
    :pswitch_2
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->cancelDuringError()V

    goto :goto_0

    .line 497
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 385
    return-void
.end method

.method public flushAllTextModificationCounters()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 261
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    if-lez v0, :cond_0

    .line 262
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    invoke-virtual {p0, v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->logTextModifiedByTypingInsertion(I)V

    .line 263
    iput v1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 265
    :cond_0
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    if-lez v0, :cond_1

    .line 266
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    invoke-virtual {p0, v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->logTextModifiedByTypingDeletion(I)V

    .line 267
    iput v1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 269
    :cond_1
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    if-lez v0, :cond_2

    .line 270
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    invoke-virtual {p0, v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->logTextModifiedByTypingInsertionPunctuation(I)V

    .line 271
    iput v1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 273
    :cond_2
    return-void
.end method

.method public flushLogs()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->flush()V

    .line 472
    return-void
.end method

.method public getCursorPos()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputCursorPos:I

    return v0
.end method

.method public getSelectionSpan()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mRecognitionView:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public incrementTextModificationDeleteCount(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    const/4 v1, 0x0

    .line 211
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 213
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    if-lez v0, :cond_0

    .line 214
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    invoke-virtual {p0, v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->logTextModifiedByTypingInsertion(I)V

    .line 215
    iput v1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 217
    :cond_0
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    if-lez v0, :cond_1

    .line 218
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    invoke-virtual {p0, v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->logTextModifiedByTypingInsertionPunctuation(I)V

    .line 219
    iput v1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 222
    :cond_1
    return-void
.end method

.method public incrementTextModificationInsertCount(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 225
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 226
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    if-lez v0, :cond_0

    .line 229
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    iget v1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 232
    :cond_0
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    if-lez v0, :cond_1

    .line 233
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    invoke-virtual {p0, v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->logTextModifiedByTypingDeletion(I)V

    .line 234
    iput v2, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 236
    :cond_1
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    if-lez v0, :cond_2

    .line 237
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    invoke-virtual {p0, v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->logTextModifiedByTypingInsertionPunctuation(I)V

    .line 238
    iput v2, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 240
    :cond_2
    return-void
.end method

.method public incrementTextModificationInsertPunctuationCount(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 243
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 244
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    if-lez v0, :cond_0

    .line 247
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    iget v1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 250
    :cond_0
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    if-lez v0, :cond_1

    .line 251
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    invoke-virtual {p0, v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->logTextModifiedByTypingDeletion(I)V

    .line 252
    iput v2, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 254
    :cond_1
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    if-lez v0, :cond_2

    .line 255
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    invoke-virtual {p0, v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->logTextModifiedByTypingInsertion(I)V

    .line 256
    iput v2, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 258
    :cond_2
    return-void
.end method

.method public isBlacklistedField(Lnet/hasnath/android/ridmik/voice/FieldContext;)Z
    .locals 1
    .param p1, "context"    # Lnet/hasnath/android/ridmik/voice/FieldContext;

    .prologue
    .line 287
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mBlacklist:Lnet/hasnath/android/ridmik/voice/Whitelist;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/ridmik/voice/Whitelist;->matches(Lnet/hasnath/android/ridmik/voice/FieldContext;)Z

    move-result v0

    return v0
.end method

.method public isRecommendedField(Lnet/hasnath/android/ridmik/voice/FieldContext;)Z
    .locals 1
    .param p1, "context"    # Lnet/hasnath/android/ridmik/voice/FieldContext;

    .prologue
    .line 296
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mRecommendedList:Lnet/hasnath/android/ridmik/voice/Whitelist;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/ridmik/voice/Whitelist;->matches(Lnet/hasnath/android/ridmik/voice/FieldContext;)Z

    move-result v0

    return v0
.end method

.method public logInputEnded()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->inputEnded()V

    .line 468
    return-void
.end method

.method public logKeyboardWarningDialogCancel()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->keyboardWarningDialogCancel()V

    .line 452
    return-void
.end method

.method public logKeyboardWarningDialogDismissed()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->keyboardWarningDialogDismissed()V

    .line 444
    return-void
.end method

.method public logKeyboardWarningDialogOk()V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->keyboardWarningDialogOk()V

    .line 448
    return-void
.end method

.method public logKeyboardWarningDialogShown()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->keyboardWarningDialogShown()V

    .line 440
    return-void
.end method

.method public logPunctuationHintDisplayed()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->punctuationHintDisplayed()V

    .line 460
    return-void
.end method

.method public logSwipeHintDisplayed()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->swipeHintDisplayed()V

    .line 456
    return-void
.end method

.method public logTextModifiedByChooseSuggestion(Ljava/lang/String;ILjava/lang/String;Landroid/view/inputmethod/InputConnection;)V
    .locals 7
    .param p1, "suggestion"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "wordSeparators"    # Ljava/lang/String;
    .param p4, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 430
    new-instance v6, Lnet/hasnath/android/keyboard/EditingUtil$Range;

    invoke-direct {v6}, Lnet/hasnath/android/keyboard/EditingUtil$Range;-><init>()V

    .line 431
    .local v6, "range":Lnet/hasnath/android/keyboard/EditingUtil$Range;
    invoke-static {p4, p3, v6}, Lnet/hasnath/android/keyboard/EditingUtil;->getWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Lnet/hasnath/android/keyboard/EditingUtil$Range;)Ljava/lang/String;

    move-result-object v4

    .line 434
    .local v4, "wordToBeReplaced":Ljava/lang/String;
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    move v3, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->textModifiedByChooseSuggestion(IIILjava/lang/String;Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public logTextModifiedByTypingDeletion(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 425
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->textModifiedByTypingDeletion(I)V

    .line 426
    return-void
.end method

.method public logTextModifiedByTypingInsertion(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 417
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->textModifiedByTypingInsertion(I)V

    .line 418
    return-void
.end method

.method public logTextModifiedByTypingInsertionPunctuation(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 421
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->textModifiedByTypingInsertionPunctuation(I)V

    .line 422
    return-void
.end method

.method public logVoiceInputDelivered(I)V
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 463
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->voiceInputDelivered(I)V

    .line 464
    return-void
.end method

.method public newView()V
    .locals 2

    .prologue
    .line 394
    new-instance v0, Lnet/hasnath/android/ridmik/voice/RecognitionView;

    iget-object v1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lnet/hasnath/android/ridmik/voice/RecognitionView;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mRecognitionView:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    .line 395
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 409
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 414
    :goto_0
    return-void

    .line 411
    :pswitch_0
    invoke-virtual {p0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->cancel()V

    goto :goto_0

    .line 409
    :pswitch_data_0
    .packed-switch 0x7f0f001b
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mRecognitionView:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->restoreState()V

    .line 281
    return-void
.end method

.method public setCursorPos(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 195
    iput p1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputCursorPos:I

    .line 196
    return-void
.end method

.method public setSelectionSpan(I)V
    .locals 0
    .param p1, "span"    # I

    .prologue
    .line 203
    iput p1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    .line 204
    return-void
.end method

.method public startListening(Lnet/hasnath/android/ridmik/voice/FieldContext;Z)V
    .locals 4
    .param p1, "context"    # Lnet/hasnath/android/ridmik/voice/FieldContext;
    .param p2, "swipe"    # Z

    .prologue
    .line 308
    const/4 v2, 0x0

    iput v2, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mState:I

    .line 310
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 311
    .local v0, "locale":Ljava/util/Locale;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "localeString":Ljava/lang/String;
    iget-object v2, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {v2, v1, p2}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->start(Ljava/lang/String;Z)V

    .line 315
    const/4 v2, 0x1

    iput v2, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mState:I

    .line 317
    iget-object v2, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput;->mRecognitionView:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-virtual {v2}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->showInitializing()V

    .line 318
    invoke-direct {p0, p1}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->startListeningAfterInitialization(Lnet/hasnath/android/ridmik/voice/FieldContext;)V

    .line 319
    return-void
.end method
