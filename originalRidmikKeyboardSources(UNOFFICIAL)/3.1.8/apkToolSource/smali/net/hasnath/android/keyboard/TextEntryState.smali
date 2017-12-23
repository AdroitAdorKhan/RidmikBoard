.class public Lnet/hasnath/android/keyboard/TextEntryState;
.super Ljava/lang/Object;
.source "TextEntryState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hasnath/android/keyboard/TextEntryState$State;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$hasnath$android$keyboard$TextEntryState$State:[I = null

.field private static final DBG:Z = false

.field private static LOGGING:Z = false

.field private static final TAG:Ljava/lang/String; = "TextEntryState"

.field private static sActualChars:I

.field private static sAutoSuggestCount:I

.field private static sAutoSuggestUndoneCount:I

.field private static sBackspaceCount:I

.field private static sKeyLocationFile:Ljava/io/FileOutputStream;

.field private static sManualSuggestCount:I

.field private static sSessionCount:I

.field private static sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

.field private static sTypedChars:I

.field private static sUserActionFile:Ljava/io/FileOutputStream;

.field private static sWordNotInDictionaryCount:I


# direct methods
.method static synthetic $SWITCH_TABLE$net$hasnath$android$keyboard$TextEntryState$State()[I
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lnet/hasnath/android/keyboard/TextEntryState;->$SWITCH_TABLE$net$hasnath$android$keyboard$TextEntryState$State:[I

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
    sput-object v0, Lnet/hasnath/android/keyboard/TextEntryState;->$SWITCH_TABLE$net$hasnath$android$keyboard$TextEntryState$State:[I

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
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    sput-boolean v0, Lnet/hasnath/android/keyboard/TextEntryState;->LOGGING:Z

    .line 37
    sput v0, Lnet/hasnath/android/keyboard/TextEntryState;->sBackspaceCount:I

    .line 39
    sput v0, Lnet/hasnath/android/keyboard/TextEntryState;->sAutoSuggestCount:I

    .line 41
    sput v0, Lnet/hasnath/android/keyboard/TextEntryState;->sAutoSuggestUndoneCount:I

    .line 43
    sput v0, Lnet/hasnath/android/keyboard/TextEntryState;->sManualSuggestCount:I

    .line 45
    sput v0, Lnet/hasnath/android/keyboard/TextEntryState;->sWordNotInDictionaryCount:I

    .line 47
    sput v0, Lnet/hasnath/android/keyboard/TextEntryState;->sSessionCount:I

    .line 68
    sget-object v0, Lnet/hasnath/android/keyboard/TextEntryState$State;->UNKNOWN:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sput-object v0, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acceptedDefault(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "typedWord"    # Ljava/lang/CharSequence;
    .param p1, "actualWord"    # Ljava/lang/CharSequence;

    .prologue
    .line 121
    if-nez p0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    sget v0, Lnet/hasnath/android/keyboard/TextEntryState;->sAutoSuggestCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/hasnath/android/keyboard/TextEntryState;->sAutoSuggestCount:I

    .line 125
    :cond_1
    sget v0, Lnet/hasnath/android/keyboard/TextEntryState;->sTypedChars:I

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lnet/hasnath/android/keyboard/TextEntryState;->sTypedChars:I

    .line 126
    sget v0, Lnet/hasnath/android/keyboard/TextEntryState;->sActualChars:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lnet/hasnath/android/keyboard/TextEntryState;->sActualChars:I

    .line 127
    sget-object v0, Lnet/hasnath/android/keyboard/TextEntryState$State;->ACCEPTED_DEFAULT:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sput-object v0, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    .line 128
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/hasnath/android/keyboard/LatinImeLogger;->logOnAutoSuggestion(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->displayState()V

    goto :goto_0
.end method

.method public static acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "typedWord"    # Ljava/lang/CharSequence;
    .param p1, "actualWord"    # Ljava/lang/CharSequence;

    .prologue
    .line 154
    sget v1, Lnet/hasnath/android/keyboard/TextEntryState;->sManualSuggestCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lnet/hasnath/android/keyboard/TextEntryState;->sManualSuggestCount:I

    .line 155
    sget-object v0, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    .line 156
    .local v0, "oldState":Lnet/hasnath/android/keyboard/TextEntryState$State;
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-static {p0}, Lnet/hasnath/android/keyboard/TextEntryState;->acceptedTyped(Ljava/lang/CharSequence;)V

    .line 159
    :cond_0
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->CORRECTING:Lnet/hasnath/android/keyboard/TextEntryState$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->PICKED_CORRECTION:Lnet/hasnath/android/keyboard/TextEntryState$State;

    if-ne v0, v1, :cond_2

    .line 160
    :cond_1
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->PICKED_CORRECTION:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sput-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    .line 164
    :goto_0
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->displayState()V

    .line 165
    return-void

    .line 162
    :cond_2
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->PICKED_SUGGESTION:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sput-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    goto :goto_0
.end method

.method public static acceptedTyped(Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "typedWord"    # Ljava/lang/CharSequence;

    .prologue
    .line 148
    sget v0, Lnet/hasnath/android/keyboard/TextEntryState;->sWordNotInDictionaryCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/hasnath/android/keyboard/TextEntryState;->sWordNotInDictionaryCount:I

    .line 149
    sget-object v0, Lnet/hasnath/android/keyboard/TextEntryState$State;->PICKED_SUGGESTION:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sput-object v0, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    .line 150
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->displayState()V

    .line 151
    return-void
.end method

.method public static backToAcceptedDefault(Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "typedWord"    # Ljava/lang/CharSequence;

    .prologue
    .line 136
    if-nez p0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->$SWITCH_TABLE$net$hasnath$android$keyboard$TextEntryState$State()[I

    move-result-object v0

    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/TextEntryState$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 144
    :goto_1
    :pswitch_0
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->displayState()V

    goto :goto_0

    .line 141
    :pswitch_1
    sget-object v0, Lnet/hasnath/android/keyboard/TextEntryState$State;->ACCEPTED_DEFAULT:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sput-object v0, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    goto :goto_1

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static backspace()V
    .locals 2

    .prologue
    .line 229
    sget-object v0, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->ACCEPTED_DEFAULT:Lnet/hasnath/android/keyboard/TextEntryState$State;

    if-ne v0, v1, :cond_1

    .line 230
    sget-object v0, Lnet/hasnath/android/keyboard/TextEntryState$State;->UNDO_COMMIT:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sput-object v0, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    .line 231
    sget v0, Lnet/hasnath/android/keyboard/TextEntryState;->sAutoSuggestUndoneCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/hasnath/android/keyboard/TextEntryState;->sAutoSuggestUndoneCount:I

    .line 232
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinImeLogger;->logOnAutoSuggestionCanceled()V

    .line 236
    :cond_0
    :goto_0
    sget v0, Lnet/hasnath/android/keyboard/TextEntryState;->sBackspaceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/hasnath/android/keyboard/TextEntryState;->sBackspaceCount:I

    .line 237
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->displayState()V

    .line 238
    return-void

    .line 233
    :cond_1
    sget-object v0, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->UNDO_COMMIT:Lnet/hasnath/android/keyboard/TextEntryState$State;

    if-ne v0, v1, :cond_0

    .line 234
    sget-object v0, Lnet/hasnath/android/keyboard/TextEntryState$State;->IN_WORD:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sput-object v0, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    goto :goto_0
.end method

.method private static displayState()V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public static endSession()V
    .locals 4

    .prologue
    .line 95
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sKeyLocationFile:Ljava/io/FileOutputStream;

    if-nez v1, :cond_0

    .line 118
    .local v0, "out":Ljava/lang/String;
    :goto_0
    return-void

    .line 99
    .end local v0    # "out":Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sKeyLocationFile:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MM:dd hh:mm:ss"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 103
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    const-string v2, " BS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lnet/hasnath/android/keyboard/TextEntryState;->sBackspaceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 105
    const-string v2, " auto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lnet/hasnath/android/keyboard/TextEntryState;->sAutoSuggestCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 106
    const-string v2, " manual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lnet/hasnath/android/keyboard/TextEntryState;->sManualSuggestCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 107
    const-string v2, " typed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lnet/hasnath/android/keyboard/TextEntryState;->sWordNotInDictionaryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 108
    const-string v2, " undone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lnet/hasnath/android/keyboard/TextEntryState;->sAutoSuggestUndoneCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 109
    const-string v2, " saved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lnet/hasnath/android/keyboard/TextEntryState;->sActualChars:I

    sget v3, Lnet/hasnath/android/keyboard/TextEntryState;->sTypedChars:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lnet/hasnath/android/keyboard/TextEntryState;->sActualChars:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 110
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .restart local v0    # "out":Ljava/lang/String;
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sUserActionFile:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 112
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sUserActionFile:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 113
    const/4 v1, 0x0

    sput-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sKeyLocationFile:Ljava/io/FileOutputStream;

    .line 114
    const/4 v1, 0x0

    sput-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sUserActionFile:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 115
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public static getState()Lnet/hasnath/android/keyboard/TextEntryState$State;
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    return-object v0
.end method

.method public static isCorrecting()Z
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->CORRECTING:Lnet/hasnath/android/keyboard/TextEntryState$State;

    if-eq v0, v1, :cond_0

    sget-object v0, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->PICKED_CORRECTION:Lnet/hasnath/android/keyboard/TextEntryState$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static keyPressedAt(Landroid/inputmethodservice/Keyboard$Key;II)V
    .locals 4
    .param p0, "key"    # Landroid/inputmethodservice/Keyboard$Key;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 257
    sget-boolean v1, Lnet/hasnath/android/keyboard/TextEntryState;->LOGGING:Z

    if-eqz v1, :cond_0

    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sKeyLocationFile:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KEY: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    const-string v2, " X: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 261
    const-string v2, " Y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 262
    const-string v2, " MX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 263
    const-string v2, " MY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v3, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 264
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 259
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "out":Ljava/lang/String;
    :try_start_0
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sKeyLocationFile:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v0    # "out":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 267
    .restart local v0    # "out":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static newSession(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 74
    sget v1, Lnet/hasnath/android/keyboard/TextEntryState;->sSessionCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lnet/hasnath/android/keyboard/TextEntryState;->sSessionCount:I

    .line 75
    sput v2, Lnet/hasnath/android/keyboard/TextEntryState;->sAutoSuggestCount:I

    .line 76
    sput v2, Lnet/hasnath/android/keyboard/TextEntryState;->sBackspaceCount:I

    .line 77
    sput v2, Lnet/hasnath/android/keyboard/TextEntryState;->sAutoSuggestUndoneCount:I

    .line 78
    sput v2, Lnet/hasnath/android/keyboard/TextEntryState;->sManualSuggestCount:I

    .line 79
    sput v2, Lnet/hasnath/android/keyboard/TextEntryState;->sWordNotInDictionaryCount:I

    .line 80
    sput v2, Lnet/hasnath/android/keyboard/TextEntryState;->sTypedChars:I

    .line 81
    sput v2, Lnet/hasnath/android/keyboard/TextEntryState;->sActualChars:I

    .line 82
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->START:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sput-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    .line 84
    sget-boolean v1, Lnet/hasnath/android/keyboard/TextEntryState;->LOGGING:Z

    if-eqz v1, :cond_0

    .line 86
    :try_start_0
    const-string v1, "key.txt"

    const v2, 0x8000

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    sput-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sKeyLocationFile:Ljava/io/FileOutputStream;

    .line 87
    const-string v1, "action.txt"

    const v2, 0x8000

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    sput-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sUserActionFile:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "ioe":Ljava/io/IOException;
    const-string v1, "TextEntryState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t open file for output: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lnet/hasnath/android/keyboard/TextEntryState$State;->START:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sput-object v0, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    .line 242
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->displayState()V

    .line 243
    return-void
.end method

.method public static selectedForCorrection()V
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lnet/hasnath/android/keyboard/TextEntryState$State;->CORRECTING:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sput-object v0, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    .line 169
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->displayState()V

    .line 170
    return-void
.end method

.method public static typedCharacter(CZ)V
    .locals 3
    .param p0, "c"    # C
    .param p1, "isSeparator"    # Z

    .prologue
    .line 173
    const/16 v1, 0x20

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    .line 174
    .local v0, "isSpace":Z
    :goto_0
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->$SWITCH_TABLE$net$hasnath$android$keyboard$TextEntryState$State()[I

    move-result-object v1

    sget-object v2, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/TextEntryState$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 225
    :cond_0
    :goto_1
    invoke-static {}, Lnet/hasnath/android/keyboard/TextEntryState;->displayState()V

    .line 226
    return-void

    .line 173
    .end local v0    # "isSpace":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 176
    .restart local v0    # "isSpace":Z
    :pswitch_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    .line 177
    :cond_2
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->START:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sput-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    goto :goto_1

    .line 184
    :pswitch_1
    if-eqz v0, :cond_3

    .line 185
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->SPACE_AFTER_ACCEPTED:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sput-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    goto :goto_1

    .line 186
    :cond_3
    if-eqz p1, :cond_4

    .line 187
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->PUNCTUATION_AFTER_ACCEPTED:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sput-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    goto :goto_1

    .line 189
    :cond_4
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->IN_WORD:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sput-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    goto :goto_1

    .line 194
    :pswitch_2
    if-eqz v0, :cond_5

    .line 195
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->SPACE_AFTER_PICKED:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sput-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    goto :goto_1

    .line 196
    :cond_5
    if-eqz p1, :cond_6

    .line 198
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->PUNCTUATION_AFTER_ACCEPTED:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sput-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    goto :goto_1

    .line 200
    :cond_6
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->IN_WORD:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sput-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    goto :goto_1

    .line 208
    :pswitch_3
    if-nez v0, :cond_7

    if-nez p1, :cond_7

    .line 209
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->IN_WORD:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sput-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    goto :goto_1

    .line 211
    :cond_7
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->START:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sput-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    goto :goto_1

    .line 215
    :pswitch_4
    if-nez v0, :cond_8

    if-eqz p1, :cond_9

    .line 216
    :cond_8
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->ACCEPTED_DEFAULT:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sput-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    goto :goto_1

    .line 218
    :cond_9
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->IN_WORD:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sput-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    goto :goto_1

    .line 222
    :pswitch_5
    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->START:Lnet/hasnath/android/keyboard/TextEntryState$State;

    sput-object v1, Lnet/hasnath/android/keyboard/TextEntryState;->sState:Lnet/hasnath/android/keyboard/TextEntryState$State;

    goto :goto_1

    .line 174
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method
