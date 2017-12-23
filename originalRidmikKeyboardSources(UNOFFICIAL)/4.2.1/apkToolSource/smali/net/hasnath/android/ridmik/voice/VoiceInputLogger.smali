.class public Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;
.super Ljava/lang/Object;
.source "VoiceInputLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sVoiceInputLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;


# instance fields
.field private final mBaseIntent:Landroid/content/Intent;

.field private final mContext:Landroid/content/Context;

.field private mHasLoggingInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mHasLoggingInfo:Z

    .line 59
    iput-object p1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.common.speech.LOG_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mBaseIntent:Landroid/content/Intent;

    .line 62
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mBaseIntent:Landroid/content/Intent;

    const-string v1, "app_name"

    const-string v2, "voiceime"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    return-void
.end method

.method public static declared-synchronized getLogger(Landroid/content/Context;)Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;
    .locals 2
    .param p0, "contextHint"    # Landroid/content/Context;

    .prologue
    .line 52
    const-class v1, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->sVoiceInputLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-direct {v0, p0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->sVoiceInputLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    .line 55
    :cond_0
    sget-object v0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->sVoiceInputLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasLoggingInfo()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mHasLoggingInfo:Z

    return v0
.end method

.method private newLoggingBroadcast(I)Landroid/content/Intent;
    .locals 2
    .param p1, "event"    # I

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mBaseIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 67
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "extra_event"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    return-object v0
.end method

.method private setHasLoggingInfo(Z)V
    .locals 0
    .param p1, "hasLoggingInfo"    # Z

    .prologue
    .line 237
    iput-boolean p1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mHasLoggingInfo:Z

    .line 255
    return-void
.end method


# virtual methods
.method public cancelDuringError()V
    .locals 2

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 145
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method public cancelDuringListening()V
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 135
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 136
    return-void
.end method

.method public cancelDuringWorking()V
    .locals 2

    .prologue
    .line 139
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 140
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    return-void
.end method

.method public error(I)V
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 155
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 156
    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 157
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    iget-object v1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 159
    return-void
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 72
    invoke-direct {p0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->hasLoggingInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mBaseIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 74
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "flush"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 76
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 78
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public inputEnded()V
    .locals 2

    .prologue
    .line 220
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 221
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 222
    return-void
.end method

.method public keyboardWarningDialogCancel()V
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 100
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    .line 101
    const/4 v1, 0x3

    .line 100
    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method public keyboardWarningDialogDismissed()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 87
    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 88
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method public keyboardWarningDialogOk()V
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 94
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    .line 95
    const/4 v1, 0x2

    .line 94
    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 96
    return-void
.end method

.method public keyboardWarningDialogShown()V
    .locals 2

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 82
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    .line 83
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 84
    return-void
.end method

.method public punctuationHintDisplayed()V
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 150
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    .line 151
    const/16 v1, 0x9

    .line 150
    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 152
    return-void
.end method

.method public settingsWarningDialogCancel()V
    .locals 2

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 124
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    .line 125
    const/4 v1, 0x7

    .line 124
    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method public settingsWarningDialogDismissed()V
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 112
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    .line 113
    const/4 v1, 0x5

    .line 112
    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 114
    return-void
.end method

.method public settingsWarningDialogOk()V
    .locals 2

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 118
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    .line 119
    const/4 v1, 0x6

    .line 118
    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    return-void
.end method

.method public settingsWarningDialogShown()V
    .locals 2

    .prologue
    .line 105
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 106
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    .line 107
    const/4 v1, 0x4

    .line 106
    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    return-void
.end method

.method public start(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "swipe"    # Z

    .prologue
    .line 162
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 163
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 164
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "locale"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v1, "swipe"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    const-string v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 168
    return-void
.end method

.method public swipeHintDisplayed()V
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 130
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 131
    return-void
.end method

.method public textModifiedByChooseSuggestion(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "suggestionLength"    # I
    .param p2, "replacedPhraseLength"    # I
    .param p3, "index"    # I
    .param p4, "before"    # Ljava/lang/String;
    .param p5, "after"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 207
    invoke-direct {p0, v2}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 208
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 209
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    const-string v1, "length"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    const-string v1, "index"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    iget-object v1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 217
    return-void
.end method

.method public textModifiedByTypingDeletion(I)V
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 196
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 197
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 198
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "length"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    const-string v1, "type"

    .line 200
    const/4 v2, 0x2

    .line 199
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    iget-object v1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 203
    return-void
.end method

.method public textModifiedByTypingInsertion(I)V
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 178
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 179
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 180
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "length"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    const-string v1, "type"

    .line 182
    const/4 v2, 0x3

    .line 181
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    iget-object v1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 184
    return-void
.end method

.method public textModifiedByTypingInsertionPunctuation(I)V
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 187
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 188
    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 189
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "length"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    const-string v1, "type"

    .line 191
    const/4 v2, 0x4

    .line 190
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    iget-object v1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 193
    return-void
.end method

.method public voiceInputDelivered(I)V
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 171
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 172
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v0

    .line 173
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "length"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 175
    return-void
.end method

.method public voiceInputSettingDisabled()V
    .locals 2

    .prologue
    .line 231
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 232
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    .line 233
    const/16 v1, 0x14

    .line 232
    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 234
    return-void
.end method

.method public voiceInputSettingEnabled()V
    .locals 2

    .prologue
    .line 225
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->setHasLoggingInfo(Z)V

    .line 226
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->mContext:Landroid/content/Context;

    .line 227
    const/16 v1, 0x13

    .line 226
    invoke-direct {p0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->newLoggingBroadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 228
    return-void
.end method
