.class public Lnet/hasnath/android/keyboard/LanguageSwitcher;
.super Ljava/lang/Object;
.source "LanguageSwitcher.java"


# instance fields
.field private mCurrentIndex:I

.field private mDefaultInputLanguage:Ljava/lang/String;

.field private mDefaultInputLocale:Ljava/util/Locale;

.field private mIme:Lnet/hasnath/android/keyboard/LatinIME;

.field private mLocales:[Ljava/util/Locale;

.field private mSelectedLanguageArray:[Ljava/lang/String;

.field private mSelectedLanguages:Ljava/lang/String;

.field private mSystemLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Lnet/hasnath/android/keyboard/LatinIME;)V
    .locals 1
    .param p1, "ime"    # Lnet/hasnath/android/keyboard/LatinIME;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v0, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mCurrentIndex:I

    .line 43
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mIme:Lnet/hasnath/android/keyboard/LatinIME;

    .line 44
    new-array v0, v0, [Ljava/util/Locale;

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    .line 45
    return-void
.end method

.method private constructLocales()V
    .locals 7

    .prologue
    .line 102
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/util/Locale;

    iput-object v2, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 108
    return-void

    .line 104
    :cond_0
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 105
    .local v1, "lang":Ljava/lang/String;
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    new-instance v4, Ljava/util/Locale;

    const/4 v2, 0x0

    const/4 v5, 0x2

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x4

    if-le v2, v6, :cond_1

    const/4 v2, 0x3

    const/4 v6, 0x5

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {v4, v5, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    aput-object v4, v3, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method private loadDefaults()V
    .locals 4

    .prologue
    .line 95
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mIme:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    .line 96
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "country":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    iput-object v1, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mDefaultInputLanguage:Ljava/lang/String;

    .line 99
    return-void

    .line 98
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 198
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 202
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public getEnabledLanguages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getInputLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mDefaultInputLanguage:Ljava/lang/String;

    .line 117
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    iget v1, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mCurrentIndex:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getInputLocale()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    .line 135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    iget v1, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mCurrentIndex:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getLocaleCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v0, v0

    return v0
.end method

.method public getLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    return-object v0
.end method

.method public getNextInputLocale()Ljava/util/Locale;
    .locals 3

    .prologue
    .line 144
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    .line 146
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    iget v1, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mCurrentIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getPrevInputLocale()Ljava/util/Locale;
    .locals 3

    .prologue
    .line 171
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getLocaleCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mDefaultInputLocale:Ljava/util/Locale;

    .line 173
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    iget v1, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mCurrentIndex:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getSystemLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mSystemLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public loadLocales(Landroid/content/SharedPreferences;)Z
    .locals 7
    .param p1, "sp"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    const-string v5, "selected_languages"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "selectedLanguages":Ljava/lang/String;
    const-string v5, "input_language"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "currentLanguage":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v4, :cond_3

    .line 65
    :cond_0
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->loadDefaults()V

    .line 66
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v5, v5

    if-nez v5, :cond_2

    .line 91
    :cond_1
    :goto_0
    return v3

    .line 69
    :cond_2
    new-array v3, v3, [Ljava/util/Locale;

    iput-object v3, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    move v3, v4

    .line 70
    goto :goto_0

    .line 72
    :cond_3
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mSelectedLanguages:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 75
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    .line 76
    iput-object v2, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mSelectedLanguages:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->constructLocales()V

    .line 78
    iput v3, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mCurrentIndex:I

    .line 79
    if-eqz v0, :cond_4

    .line 81
    iput v3, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mCurrentIndex:I

    .line 82
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v3, v3

    if-lt v1, v3, :cond_5

    .end local v1    # "i":I
    :cond_4
    :goto_2
    move v3, v4

    .line 91
    goto :goto_0

    .line 83
    .restart local v1    # "i":I
    :cond_5
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mSelectedLanguageArray:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 84
    iput v1, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mCurrentIndex:I

    goto :goto_2

    .line 82
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public next()V
    .locals 2

    .prologue
    .line 181
    iget v0, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mCurrentIndex:I

    .line 182
    iget v0, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mCurrentIndex:I

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mCurrentIndex:I

    .line 183
    :cond_0
    return-void
.end method

.method public persist()V
    .locals 4

    .prologue
    .line 191
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mIme:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 192
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 193
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "input_language"

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getInputLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 194
    invoke-static {v0}, Lnet/hasnath/android/keyboard/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 195
    return-void
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mCurrentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mCurrentIndex:I

    .line 187
    iget v0, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mCurrentIndex:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mLocales:[Ljava/util/Locale;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mCurrentIndex:I

    .line 188
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mCurrentIndex:I

    .line 178
    return-void
.end method

.method public setSystemLocale(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 154
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LanguageSwitcher;->mSystemLocale:Ljava/util/Locale;

    .line 155
    return-void
.end method
