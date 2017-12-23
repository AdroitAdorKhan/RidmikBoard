.class public Lnet/hasnath/android/keyboard/LatinIMESettings;
.super Landroid/preference/PreferenceActivity;
.source "LatinIMESettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final PREDICTION_SETTINGS_KEY:Ljava/lang/String; = "prediction_settings"

.field static final PREF_LONG_PRESS_DELAY:Ljava/lang/String; = "long_press_delay"

.field static final PREF_SETTINGS_KEY:Ljava/lang/String; = "settings_key"

.field private static final QUICK_FIXES_KEY:Ljava/lang/String; = "quick_fixes"

.field private static final TAG:Ljava/lang/String; = "LatinIMESettings"

.field private static final VOICE_INPUT_CONFIRM_DIALOG:I = 0x0

.field private static final VOICE_SETTINGS_KEY:Ljava/lang/String; = "voice_mode"


# instance fields
.field private mBanglaFixedKeyPreference:Landroid/preference/ListPreference;

.field private mFontOptionPrefs:Landroid/preference/ListPreference;

.field private mKeyboardLayoutPrefs:Landroid/preference/ListPreference;

.field private mKeyboardTheme:Landroid/preference/ListPreference;

.field private mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

.field private mLongPressDelay:I

.field private mLongPressDelayPreference:Lnet/hasnath/android/keyboard/DialogSeekBarPreference;

.field private mOkClicked:Z

.field private mQuickFixes:Landroid/preference/CheckBoxPreference;

.field private mSettingsKeyPreference:Landroid/preference/ListPreference;

.field private mVoiceModeOff:Ljava/lang/String;

.field private mVoiceOn:Z

.field private mVoicePreference:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mOkClicked:Z

    .line 44
    return-void
.end method

.method static synthetic access$0(Lnet/hasnath/android/keyboard/LatinIMESettings;)Landroid/preference/ListPreference;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1(Lnet/hasnath/android/keyboard/LatinIMESettings;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lnet/hasnath/android/keyboard/LatinIMESettings;)Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    return-object v0
.end method

.method static synthetic access$3(Lnet/hasnath/android/keyboard/LatinIMESettings;Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mOkClicked:Z

    return-void
.end method

.method static synthetic access$4(Lnet/hasnath/android/keyboard/LatinIMESettings;)V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateVoicePreference()V

    return-void
.end method

.method private showVoiceConfirmation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 227
    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mOkClicked:Z

    .line 228
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->showDialog(I)V

    .line 229
    return-void
.end method

.method private updateBanglaFixedKeySummary()V
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mBanglaFixedKeyPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 185
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mBanglaFixedKeyPreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mBanglaFixedKeyPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    .line 184
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method

.method private updateFontOptionSummary()V
    .locals 3

    .prologue
    .line 194
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mFontOptionPrefs:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 195
    .local v1, "value":I
    const-string v0, ""

    .line 196
    .local v0, "summary":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 197
    const-string v0, "Using system font"

    .line 203
    :cond_0
    :goto_0
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mFontOptionPrefs:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 204
    return-void

    .line 198
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 199
    const-string v0, "Using custom font in keyboard area"

    goto :goto_0

    .line 200
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 201
    const-string v0, "Using custom font in keyboard and suggestions"

    goto :goto_0
.end method

.method private updateKeyboardLayoutKeySummary()V
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mKeyboardTheme:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 190
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mKeyboardTheme:Landroid/preference/ListPreference;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mKeyboardTheme:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    .line 189
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 191
    return-void
.end method

.method private updateKeyboardLayoutSummary()V
    .locals 3

    .prologue
    .line 208
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mKeyboardLayoutPrefs:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 209
    .local v1, "value":I
    const-string v0, ""

    .line 210
    .local v0, "summary":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 211
    const-string v0, "Bangla Fixed, Bangla Phonetic & English"

    .line 217
    :cond_0
    :goto_0
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mKeyboardLayoutPrefs:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 218
    return-void

    .line 212
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 213
    const-string v0, "Bangla Fixed & English"

    goto :goto_0

    .line 214
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 215
    const-string v0, "Bangla Phonetic & English"

    goto :goto_0
.end method

.method private updateLongPressDelaySummary()V
    .locals 5

    .prologue
    .line 221
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mLongPressDelayPreference:Lnet/hasnath/android/keyboard/DialogSeekBarPreference;

    .line 222
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 223
    iget v4, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mLongPressDelay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 221
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 224
    return-void
.end method

.method private updateSettingsKeySummary()V
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    .line 179
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 180
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 179
    aget-object v1, v1, v2

    .line 178
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 181
    return-void
.end method

.method private updateVoiceModeSummary()V
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    .line 233
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 234
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 233
    aget-object v1, v1, v2

    .line 232
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 235
    return-void
.end method

.method private updateVoicePreference()V
    .locals 3

    .prologue
    .line 301
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 302
    .local v0, "isChecked":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 303
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->voiceInputSettingEnabled()V

    .line 307
    :goto_1
    return-void

    .line 301
    .end local v0    # "isChecked":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 305
    .restart local v0    # "isChecked":Z
    :cond_1
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->voiceInputSettingDisabled()V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v1, 0x7f050027

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIMESettings;->addPreferencesFromResource(I)V

    .line 82
    const-string v1, "quick_fixes"

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mQuickFixes:Landroid/preference/CheckBoxPreference;

    .line 83
    const-string v1, "voice_mode"

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    .line 84
    const-string v1, "settings_key"

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    .line 85
    const-string v1, "long_press_delay"

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mLongPressDelayPreference:Lnet/hasnath/android/keyboard/DialogSeekBarPreference;

    .line 86
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 87
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 88
    const-string v1, "pref_bangla_fixed"

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mBanglaFixedKeyPreference:Landroid/preference/ListPreference;

    .line 89
    const-string v1, "pref_keyboard_layout_20100902"

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mKeyboardTheme:Landroid/preference/ListPreference;

    .line 90
    const-string v1, "pref_font_settings"

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mFontOptionPrefs:Landroid/preference/ListPreference;

    .line 91
    const-string v1, "pref_keyboard_layouts"

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mKeyboardLayoutPrefs:Landroid/preference/ListPreference;

    .line 98
    const v1, 0x7f0800d7

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    .line 99
    const-string v1, "voice_mode"

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoiceOn:Z

    .line 100
    const-string v1, "long_press_delay"

    .line 101
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090053

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 100
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mLongPressDelay:I

    .line 102
    invoke-static {p0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->getLogger(Landroid/content/Context;)Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    .line 105
    const-string v1, "ridmik_help"

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    new-instance v2, Lnet/hasnath/android/keyboard/LatinIMESettings$1;

    invoke-direct {v2, p0}, Lnet/hasnath/android/keyboard/LatinIMESettings$1;-><init>(Lnet/hasnath/android/keyboard/LatinIMESettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 115
    return-void

    .line 99
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .param p1, "id"    # I

    .prologue
    const v11, 0x7f0800c4

    const v10, 0x7f0800c2

    .line 239
    packed-switch p1, :pswitch_data_0

    .line 286
    const-string v7, "LatinIMESettings"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "unknown dialog "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 241
    :pswitch_0
    new-instance v2, Lnet/hasnath/android/keyboard/LatinIMESettings$2;

    invoke-direct {v2, p0}, Lnet/hasnath/android/keyboard/LatinIMESettings$2;-><init>(Lnet/hasnath/android/keyboard/LatinIMESettings;)V

    .line 253
    .local v2, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    const v8, 0x7f0800c0

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 255
    const v8, 0x104000a

    invoke-virtual {v7, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 256
    const/high16 v8, 0x1040000

    invoke-virtual {v7, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 262
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 263
    const-string v8, "latin_ime_voice_input_supported_locales"

    .line 264
    const-string v9, "en en_US en_GB en_AU en_CA en_IE en_IN en_NZ en_SG en_ZA "

    .line 261
    invoke-static {v7, v8, v9}, Lnet/hasnath/android/ridmik/voice/SettingsUtil;->getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, "supportedLocalesString":Ljava/lang/String;
    const-string v7, "\\s+"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnet/hasnath/android/keyboard/LatinIME;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    .line 268
    .local v6, "voiceInputSupportedLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    .line 267
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 270
    .local v3, "localeSupported":Z
    if-eqz v3, :cond_0

    .line 271
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 272
    invoke-virtual {p0, v11}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 271
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "message":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 281
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 282
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 283
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {v7}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->settingsWarningDialogShown()V

    goto :goto_0

    .line 275
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v4    # "message":Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const v8, 0x7f0800c1

    invoke-virtual {p0, v8}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v10}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 277
    invoke-virtual {p0, v11}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 275
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 278
    .restart local v4    # "message":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 151
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 152
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 292
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->settingsWarningDialogDismissed()V

    .line 293
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 298
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 121
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 122
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v1}, Landroid/text/AutoText;->getSize(Landroid/view/View;)I

    move-result v0

    .line 123
    .local v0, "autoTextSize":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 124
    const-string v1, "prediction_settings"

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 125
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mQuickFixes:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 128
    :cond_0
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateVoiceModeSummary()V

    .line 135
    :cond_1
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 136
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 139
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateSettingsKeySummary()V

    .line 140
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateLongPressDelaySummary()V

    .line 141
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateBanglaFixedKeySummary()V

    .line 142
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateKeyboardLayoutKeySummary()V

    .line 143
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateFontOptionSummary()V

    .line 144
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateKeyboardLayoutSummary()V

    .line 145
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 155
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 157
    const-string v0, "voice_mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoiceOn:Z

    if-nez v0, :cond_0

    .line 158
    const-string v0, "voice_mode"

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->showVoiceConfirmation()V

    .line 163
    :cond_0
    const-string v0, "voice_mode"

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoiceOn:Z

    .line 164
    const-string v0, "long_press_delay"

    .line 165
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 164
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mLongPressDelay:I

    .line 168
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateVoiceModeSummary()V

    .line 169
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateSettingsKeySummary()V

    .line 170
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateLongPressDelaySummary()V

    .line 171
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateBanglaFixedKeySummary()V

    .line 172
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateKeyboardLayoutKeySummary()V

    .line 173
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateFontOptionSummary()V

    .line 174
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateKeyboardLayoutSummary()V

    .line 175
    return-void

    .line 163
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
