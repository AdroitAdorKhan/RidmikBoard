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
    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mOkClicked:Z

    .line 43
    return-void
.end method

.method static synthetic access$0(Lnet/hasnath/android/keyboard/LatinIMESettings;)Landroid/preference/ListPreference;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1(Lnet/hasnath/android/keyboard/LatinIMESettings;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lnet/hasnath/android/keyboard/LatinIMESettings;)Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    return-object v0
.end method

.method static synthetic access$3(Lnet/hasnath/android/keyboard/LatinIMESettings;Z)V
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mOkClicked:Z

    return-void
.end method

.method static synthetic access$4(Lnet/hasnath/android/keyboard/LatinIMESettings;)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateVoicePreference()V

    return-void
.end method

.method private showVoiceConfirmation()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mOkClicked:Z

    .line 243
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->showDialog(I)V

    .line 244
    return-void
.end method

.method private updateBanglaFixedKeySummary()V
    .locals 4

    .prologue
    .line 199
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mBanglaFixedKeyPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 200
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mBanglaFixedKeyPreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mBanglaFixedKeyPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    .line 199
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    return-void
.end method

.method private updateFontOptionSummary()V
    .locals 3

    .prologue
    .line 209
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mFontOptionPrefs:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 210
    .local v1, "value":I
    const-string v0, ""

    .line 211
    .local v0, "summary":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 212
    const-string v0, "Using system font"

    .line 218
    :cond_0
    :goto_0
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mFontOptionPrefs:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 219
    return-void

    .line 213
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 214
    const-string v0, "Using custom font in keyboard area"

    goto :goto_0

    .line 215
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 216
    const-string v0, "Using custom font in keyboard and suggestions"

    goto :goto_0
.end method

.method private updateKeyboardLayoutKeySummary()V
    .locals 4

    .prologue
    .line 204
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mKeyboardTheme:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 205
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mKeyboardTheme:Landroid/preference/ListPreference;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mKeyboardTheme:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    .line 204
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method

.method private updateKeyboardLayoutSummary()V
    .locals 3

    .prologue
    .line 223
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mKeyboardLayoutPrefs:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 224
    .local v1, "value":I
    const-string v0, ""

    .line 225
    .local v0, "summary":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 226
    const-string v0, "Fixed Layout, Bangla Phonetic & English"

    .line 232
    :cond_0
    :goto_0
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mKeyboardLayoutPrefs:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 233
    return-void

    .line 227
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 228
    const-string v0, "Fixed Layout & English"

    goto :goto_0

    .line 229
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 230
    const-string v0, "Bangla Phonetic & English"

    goto :goto_0
.end method

.method private updateLongPressDelaySummary()V
    .locals 5

    .prologue
    .line 236
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mLongPressDelayPreference:Lnet/hasnath/android/keyboard/DialogSeekBarPreference;

    .line 237
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 238
    iget v4, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mLongPressDelay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 236
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 239
    return-void
.end method

.method private updateSettingsKeySummary()V
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    .line 194
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 195
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 194
    aget-object v1, v1, v2

    .line 193
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 196
    return-void
.end method

.method private updateVoiceModeSummary()V
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    .line 248
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 249
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 248
    aget-object v1, v1, v2

    .line 247
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 250
    return-void
.end method

.method private updateVoicePreference()V
    .locals 3

    .prologue
    .line 316
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 317
    .local v0, "isChecked":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 318
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {v1}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->voiceInputSettingEnabled()V

    .line 322
    :goto_1
    return-void

    .line 316
    .end local v0    # "isChecked":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 320
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
    const-string v1, "pref_keyboard_layout100"

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mKeyboardTheme:Landroid/preference/ListPreference;

    .line 91
    const-string v1, "pref_keyboard_layouts"

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mKeyboardLayoutPrefs:Landroid/preference/ListPreference;

    .line 99
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "contact_suggestion"

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 100
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "learn_word_as_typing"

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 103
    const v1, 0x7f0700e0

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    .line 104
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

    .line 105
    const-string v1, "long_press_delay"

    .line 106
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 105
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mLongPressDelay:I

    .line 107
    invoke-static {p0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->getLogger(Landroid/content/Context;)Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    .line 110
    const-string v1, "ridmik_help"

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    new-instance v2, Lnet/hasnath/android/keyboard/LatinIMESettings$1;

    invoke-direct {v2, p0}, Lnet/hasnath/android/keyboard/LatinIMESettings$1;-><init>(Lnet/hasnath/android/keyboard/LatinIMESettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 121
    const-string v1, "colorEmoji"

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    new-instance v2, Lnet/hasnath/android/keyboard/LatinIMESettings$2;

    invoke-direct {v2, p0}, Lnet/hasnath/android/keyboard/LatinIMESettings$2;-><init>(Lnet/hasnath/android/keyboard/LatinIMESettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 130
    return-void

    .line 104
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .param p1, "id"    # I

    .prologue
    const v11, 0x7f0700cd

    const v10, 0x7f0700cb

    .line 254
    packed-switch p1, :pswitch_data_0

    .line 301
    const-string v7, "LatinIMESettings"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "unknown dialog "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 256
    :pswitch_0
    new-instance v2, Lnet/hasnath/android/keyboard/LatinIMESettings$3;

    invoke-direct {v2, p0}, Lnet/hasnath/android/keyboard/LatinIMESettings$3;-><init>(Lnet/hasnath/android/keyboard/LatinIMESettings;)V

    .line 268
    .local v2, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 269
    const v8, 0x7f0700c9

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 270
    const v8, 0x104000a

    invoke-virtual {v7, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 271
    const/high16 v8, 0x1040000

    invoke-virtual {v7, v8, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 277
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 278
    const-string v8, "latin_ime_voice_input_supported_locales"

    .line 279
    const-string v9, "en en_US en_GB en_AU en_CA en_IE en_IN en_NZ en_SG en_ZA "

    .line 276
    invoke-static {v7, v8, v9}, Lnet/hasnath/android/ridmik/voice/SettingsUtil;->getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 281
    .local v5, "supportedLocalesString":Ljava/lang/String;
    const-string v7, "\\s+"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lnet/hasnath/android/keyboard/LatinIME;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    .line 283
    .local v6, "voiceInputSupportedLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    .line 282
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 285
    .local v3, "localeSupported":Z
    if-eqz v3, :cond_0

    .line 286
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 287
    invoke-virtual {p0, v11}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 286
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 288
    .local v4, "message":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 296
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 297
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 298
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {v7}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->settingsWarningDialogShown()V

    goto :goto_0

    .line 290
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v4    # "message":Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const v8, 0x7f0700ca

    invoke-virtual {p0, v8}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
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

    .line 292
    invoke-virtual {p0, v11}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 290
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 293
    .restart local v4    # "message":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 254
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 166
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 167
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 307
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->settingsWarningDialogDismissed()V

    .line 308
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 313
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 136
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 137
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v1}, Landroid/text/AutoText;->getSize(Landroid/view/View;)I

    move-result v0

    .line 138
    .local v0, "autoTextSize":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 139
    const-string v1, "prediction_settings"

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIMESettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 140
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mQuickFixes:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 143
    :cond_0
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateVoiceModeSummary()V

    .line 150
    :cond_1
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mSettingsKeyPreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 154
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateSettingsKeySummary()V

    .line 155
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateLongPressDelaySummary()V

    .line 156
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateBanglaFixedKeySummary()V

    .line 157
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateKeyboardLayoutKeySummary()V

    .line 159
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateKeyboardLayoutSummary()V

    .line 160
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 172
    const-string v0, "voice_mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoiceOn:Z

    if-nez v0, :cond_0

    .line 173
    const-string v0, "voice_mode"

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->showVoiceConfirmation()V

    .line 178
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

    .line 179
    const-string v0, "long_press_delay"

    .line 180
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 179
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings;->mLongPressDelay:I

    .line 183
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateVoiceModeSummary()V

    .line 184
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateSettingsKeySummary()V

    .line 185
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateLongPressDelaySummary()V

    .line 186
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateBanglaFixedKeySummary()V

    .line 187
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateKeyboardLayoutKeySummary()V

    .line 189
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->updateKeyboardLayoutSummary()V

    .line 190
    return-void

    .line 178
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
