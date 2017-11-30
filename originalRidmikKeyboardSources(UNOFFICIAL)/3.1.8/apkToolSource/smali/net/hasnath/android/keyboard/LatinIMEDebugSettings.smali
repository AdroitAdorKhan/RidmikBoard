.class public Lnet/hasnath/android/keyboard/LatinIMEDebugSettings;
.super Landroid/preference/PreferenceActivity;
.source "LatinIMEDebugSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final DEBUG_MODE_KEY:Ljava/lang/String; = "debug_mode"

.field private static final TAG:Ljava/lang/String; = "LatinIMEDebugSettings"


# instance fields
.field private mDebugMode:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private updateDebugMode()V
    .locals 7

    .prologue
    .line 57
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIMEDebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    if-nez v4, :cond_0

    .line 75
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIMEDebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 61
    .local v2, "isDebugMode":Z
    const-string v3, ""

    .line 63
    .local v3, "version":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMEDebugSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMEDebugSettings;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 64
    .local v1, "info":Landroid/content/pm/PackageInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Version "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 68
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_1
    if-nez v2, :cond_1

    .line 69
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIMEDebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIMEDebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "LatinIMEDebugSettings"

    const-string v5, "Could not find version info."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 72
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIMEDebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMEDebugSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080100

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinIMEDebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v1, 0x7f050028

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIMEDebugSettings;->addPreferencesFromResource(I)V

    .line 40
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinIMEDebugSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 41
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 43
    const-string v1, "debug_mode"

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinIMEDebugSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMEDebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    .line 44
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMEDebugSettings;->updateDebugMode()V

    .line 45
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string v0, "debug_mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMEDebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMEDebugSettings;->mDebugMode:Landroid/preference/CheckBoxPreference;

    const-string v1, "debug_mode"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 51
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIMEDebugSettings;->updateDebugMode()V

    .line 54
    :cond_0
    return-void
.end method
