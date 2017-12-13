.class public Lnet/hasnath/android/keyboard/Hints;
.super Ljava/lang/Object;
.source "Hints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hasnath/android/keyboard/Hints$Display;
    }
.end annotation


# static fields
.field private static final DEFAULT_PUNCTUATION_HINT_MAX_DISPLAYS:I = 0x7

.field private static final DEFAULT_SWIPE_HINT_MAX_DAYS_TO_SHOW:I = 0x7

.field private static final PREF_VOICE_HINT_LAST_TIME_SHOWN:Ljava/lang/String; = "voice_hint_last_time_shown"

.field private static final PREF_VOICE_HINT_NUM_UNIQUE_DAYS_SHOWN:Ljava/lang/String; = "voice_hint_num_unique_days_shown"

.field private static final PREF_VOICE_INPUT_LAST_TIME_USED:Ljava/lang/String; = "voice_input_last_time_used"

.field private static final PREF_VOICE_PUNCTUATION_HINT_VIEW_COUNT:Ljava/lang/String; = "voice_punctuation_hint_view_count"

.field static final SPEAKABLE_PUNCTUATION:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplay:Lnet/hasnath/android/keyboard/Hints$Display;

.field private mPunctuationHintMaxDisplays:I

.field private mSwipeHintMaxDaysToShow:I

.field private mVoiceResultContainedPunctuation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    sput-object v0, Lnet/hasnath/android/keyboard/Hints;->SPEAKABLE_PUNCTUATION:Ljava/util/Map;

    .line 61
    sget-object v0, Lnet/hasnath/android/keyboard/Hints;->SPEAKABLE_PUNCTUATION:Ljava/util/Map;

    const-string v1, ","

    const-string v2, "comma"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lnet/hasnath/android/keyboard/Hints;->SPEAKABLE_PUNCTUATION:Ljava/util/Map;

    const-string v1, "."

    const-string v2, "period"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lnet/hasnath/android/keyboard/Hints;->SPEAKABLE_PUNCTUATION:Ljava/util/Map;

    const-string v1, "?"

    const-string v2, "question mark"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/hasnath/android/keyboard/Hints$Display;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Lnet/hasnath/android/keyboard/Hints$Display;

    .prologue
    const/4 v2, 0x7

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lnet/hasnath/android/keyboard/Hints;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lnet/hasnath/android/keyboard/Hints;->mDisplay:Lnet/hasnath/android/keyboard/Hints$Display;

    .line 70
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Hints;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 73
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "latin_ime_voice_input_swipe_hint_max_days"

    .line 71
    invoke-static {v0, v1, v2}, Lnet/hasnath/android/ridmik/voice/SettingsUtil;->getSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lnet/hasnath/android/keyboard/Hints;->mSwipeHintMaxDaysToShow:I

    .line 77
    const-string v1, "latin_ime_voice_input_punctuation_hint_max_displays"

    .line 75
    invoke-static {v0, v1, v2}, Lnet/hasnath/android/ridmik/voice/SettingsUtil;->getSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lnet/hasnath/android/keyboard/Hints;->mPunctuationHintMaxDisplays:I

    .line 79
    return-void
.end method

.method private getAndIncrementPref(Ljava/lang/String;)I
    .locals 4
    .param p1, "pref"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v3, p0, Lnet/hasnath/android/keyboard/Hints;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 182
    .local v1, "sp":Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    invoke-interface {v1, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 183
    .local v2, "value":I
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 184
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    add-int/lit8 v3, v2, 0x1

    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 185
    invoke-static {v0}, Lnet/hasnath/android/keyboard/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 186
    return v2
.end method

.method private isFromToday(J)Z
    .locals 8
    .param p1, "timeInMillis"    # J

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 146
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-nez v4, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v2

    .line 148
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 149
    .local v1, "today":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 151
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 152
    .local v0, "timestamp":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 154
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 155
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 156
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    move v2, v3

    .line 154
    goto :goto_0
.end method

.method private shouldShowSwipeHint()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 122
    iget-object v5, p0, Lnet/hasnath/android/keyboard/Hints;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 124
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v5, "voice_hint_num_unique_days_shown"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 127
    .local v2, "numUniqueDaysShown":I
    iget v5, p0, Lnet/hasnath/android/keyboard/Hints;->mSwipeHintMaxDaysToShow:I

    if-ge v2, v5, :cond_0

    .line 129
    const-string v5, "voice_input_last_time_used"

    const-wide/16 v6, 0x0

    invoke-interface {v3, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 133
    .local v0, "lastTimeVoiceWasUsed":J
    invoke-direct {p0, v0, v1}, Lnet/hasnath/android/keyboard/Hints;->isFromToday(J)Z

    move-result v5

    if-nez v5, :cond_0

    .line 134
    const/4 v4, 0x1

    .line 138
    .end local v0    # "lastTimeVoiceWasUsed":J
    :cond_0
    return v4
.end method

.method private showHint(I)V
    .locals 8
    .param p1, "hintViewResource"    # I

    .prologue
    .line 160
    iget-object v5, p0, Lnet/hasnath/android/keyboard/Hints;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 162
    .local v4, "sp":Landroid/content/SharedPreferences;
    const-string v5, "voice_hint_num_unique_days_shown"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 163
    .local v3, "numUniqueDaysShown":I
    const-string v5, "voice_hint_last_time_shown"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 168
    .local v1, "lastTimeHintWasShown":J
    invoke-direct {p0, v1, v2}, Lnet/hasnath/android/keyboard/Hints;->isFromToday(J)Z

    move-result v5

    if-nez v5, :cond_0

    .line 169
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 170
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "voice_hint_num_unique_days_shown"

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 171
    const-string v5, "voice_hint_last_time_shown"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 172
    invoke-static {v0}, Lnet/hasnath/android/keyboard/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 175
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v5, p0, Lnet/hasnath/android/keyboard/Hints;->mDisplay:Lnet/hasnath/android/keyboard/Hints$Display;

    if-eqz v5, :cond_1

    .line 176
    iget-object v5, p0, Lnet/hasnath/android/keyboard/Hints;->mDisplay:Lnet/hasnath/android/keyboard/Hints$Display;

    invoke-interface {v5, p1}, Lnet/hasnath/android/keyboard/Hints$Display;->showHint(I)V

    .line 178
    :cond_1
    return-void
.end method


# virtual methods
.method public registerVoiceResult(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v2, p0, Lnet/hasnath/android/keyboard/Hints;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "voice_input_last_time_used"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-static {v0}, Lnet/hasnath/android/keyboard/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 112
    const/4 v2, 0x0

    iput-boolean v2, p0, Lnet/hasnath/android/keyboard/Hints;->mVoiceResultContainedPunctuation:Z

    .line 113
    sget-object v2, Lnet/hasnath/android/keyboard/Hints;->SPEAKABLE_PUNCTUATION:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 119
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 114
    .local v1, "s":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 115
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/hasnath/android/keyboard/Hints;->mVoiceResultContainedPunctuation:Z

    goto :goto_0
.end method

.method public showPunctuationHintIfNecessary(Landroid/view/inputmethod/InputConnection;)Z
    .locals 5
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/Hints;->mVoiceResultContainedPunctuation:Z

    if-nez v3, :cond_0

    .line 92
    if-eqz p1, :cond_0

    .line 93
    const-string v3, "voice_punctuation_hint_view_count"

    invoke-direct {p0, v3}, Lnet/hasnath/android/keyboard/Hints;->getAndIncrementPref(Ljava/lang/String;)I

    move-result v3

    .line 94
    iget v4, p0, Lnet/hasnath/android/keyboard/Hints;->mPunctuationHintMaxDisplays:I

    if-ge v3, v4, :cond_0

    .line 95
    invoke-interface {p1, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 96
    .local v0, "charBeforeCursor":Ljava/lang/CharSequence;
    sget-object v3, Lnet/hasnath/android/keyboard/Hints;->SPEAKABLE_PUNCTUATION:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    const v2, 0x7f030016

    invoke-direct {p0, v2}, Lnet/hasnath/android/keyboard/Hints;->showHint(I)V

    .line 102
    .end local v0    # "charBeforeCursor":Ljava/lang/CharSequence;
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public showSwipeHintIfNecessary(Z)Z
    .locals 1
    .param p1, "fieldRecommended"    # Z

    .prologue
    .line 82
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lnet/hasnath/android/keyboard/Hints;->shouldShowSwipeHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const v0, 0x7f030017

    invoke-direct {p0, v0}, Lnet/hasnath/android/keyboard/Hints;->showHint(I)V

    .line 84
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
