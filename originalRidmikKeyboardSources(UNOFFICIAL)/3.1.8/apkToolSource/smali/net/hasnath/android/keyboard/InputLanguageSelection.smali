.class public Lnet/hasnath/android/keyboard/InputLanguageSelection;
.super Landroid/preference/PreferenceActivity;
.source "InputLanguageSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;
    }
.end annotation


# static fields
.field private static final WHITELIST_LANGUAGES:[Ljava/lang/String;


# instance fields
.field private mAvailableLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedLanguages:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "en_US"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bn_BD"

    aput-object v2, v0, v1

    sput-object v0, Lnet/hasnath/android/keyboard/InputLanguageSelection;->WHITELIST_LANGUAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/InputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method private get5Code(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 137
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "country":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 140
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

.method private hasDictionary(Ljava/util/Locale;)Z
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method private isLocaleIn(Ljava/util/Locale;[Ljava/lang/String;)Z
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "list"    # [Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/InputLanguageSelection;->get5Code(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "lang":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-lt v0, v2, :cond_0

    .line 106
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 104
    :cond_0
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    .line 103
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static isWhitelisted(Ljava/lang/String;)Z
    .locals 6
    .param p0, "lang"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 49
    sget-object v3, Lnet/hasnath/android/keyboard/InputLanguageSelection;->WHITELIST_LANGUAGES:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    .line 54
    :goto_1
    return v1

    .line 49
    :cond_0
    aget-object v0, v3, v2

    .line 50
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 51
    const/4 v1, 0x1

    goto :goto_1

    .line 49
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method getUniqueLocales()Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/InputLanguageSelection;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v8

    .line 171
    .local v8, "locales":[Ljava/lang/String;
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 172
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v12, "uniqueLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;>;"
    array-length v9, v8

    .line 175
    .local v9, "origSize":I
    new-array v10, v9, [Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;

    .line 176
    .local v10, "preprocess":[Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;
    const/4 v2, 0x0

    .line 177
    .local v2, "finalSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v3, v2

    .end local v2    # "finalSize":I
    .local v3, "finalSize":I
    :goto_0
    if-lt v4, v9, :cond_0

    .line 220
    const/4 v4, 0x0

    :goto_1
    if-lt v4, v3, :cond_5

    .line 223
    return-object v12

    .line 178
    :cond_0
    aget-object v11, v8, v4

    .line 179
    .local v11, "s":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    .line 182
    .local v7, "len":I
    const/4 v13, 0x5

    if-ne v7, v13, :cond_1

    .line 183
    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, "language":Ljava/lang/String;
    const/4 v13, 0x3

    const/4 v14, 0x5

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "country":Ljava/lang/String;
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v6, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .end local v0    # "country":Ljava/lang/String;
    .local v5, "l":Ljava/util/Locale;
    :goto_2
    invoke-static {v11}, Lnet/hasnath/android/keyboard/InputLanguageSelection;->isWhitelisted(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    move v2, v3

    .line 177
    .end local v3    # "finalSize":I
    .end local v5    # "l":Ljava/util/Locale;
    .end local v6    # "language":Ljava/lang/String;
    .restart local v2    # "finalSize":I
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "finalSize":I
    .restart local v3    # "finalSize":I
    goto :goto_0

    .line 186
    :cond_1
    const/4 v13, 0x2

    if-ne v7, v13, :cond_6

    .line 187
    move-object v6, v11

    .line 188
    .restart local v6    # "language":Ljava/lang/String;
    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .restart local v5    # "l":Ljava/util/Locale;
    goto :goto_2

    .line 195
    :cond_2
    if-nez v3, :cond_3

    .line 196
    add-int/lit8 v2, v3, 0x1

    .line 197
    .end local v3    # "finalSize":I
    .restart local v2    # "finalSize":I
    new-instance v13, Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;

    invoke-virtual {v5, v5}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v5}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v5}, Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 196
    aput-object v13, v10, v3

    goto :goto_3

    .line 203
    .end local v2    # "finalSize":I
    .restart local v3    # "finalSize":I
    :cond_3
    add-int/lit8 v13, v3, -0x1

    aget-object v13, v10, v13

    iget-object v13, v13, Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;->locale:Ljava/util/Locale;

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 204
    if-eqz v13, :cond_4

    .line 205
    add-int/lit8 v13, v3, -0x1

    aget-object v13, v10, v13

    .line 206
    add-int/lit8 v14, v3, -0x1

    aget-object v14, v10, v14

    iget-object v14, v14, Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;->locale:Ljava/util/Locale;

    invoke-virtual {v14}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v14

    .line 207
    add-int/lit8 v15, v3, -0x1

    aget-object v15, v10, v15

    iget-object v15, v15, Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;->locale:Ljava/util/Locale;

    .line 205
    invoke-static {v14, v15}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;->label:Ljava/lang/String;

    .line 208
    add-int/lit8 v2, v3, 0x1

    .line 209
    .end local v3    # "finalSize":I
    .restart local v2    # "finalSize":I
    new-instance v13, Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;

    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v5}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v5}, Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 208
    aput-object v13, v10, v3

    goto :goto_3

    .line 212
    .end local v2    # "finalSize":I
    .restart local v3    # "finalSize":I
    :cond_4
    const-string v13, "zz_ZZ"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 214
    invoke-virtual {v5, v5}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v5}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "displayName":Ljava/lang/String;
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "finalSize":I
    .restart local v2    # "finalSize":I
    new-instance v13, Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;

    invoke-direct {v13, v1, v5}, Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v13, v10, v3

    goto :goto_3

    .line 221
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "finalSize":I
    .end local v5    # "l":Ljava/util/Locale;
    .end local v6    # "language":Ljava/lang/String;
    .end local v7    # "len":I
    .end local v11    # "s":Ljava/lang/String;
    .restart local v3    # "finalSize":I
    :cond_5
    aget-object v13, v10, v4

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .restart local v7    # "len":I
    .restart local v11    # "s":Ljava/lang/String;
    :cond_6
    move v2, v3

    .end local v3    # "finalSize":I
    .restart local v2    # "finalSize":I
    goto/16 :goto_3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v7, 0x7f05001e

    invoke-virtual {p0, v7}, Lnet/hasnath/android/keyboard/InputLanguageSelection;->addPreferencesFromResource(I)V

    .line 83
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 84
    .local v6, "sp":Landroid/content/SharedPreferences;
    const-string v7, "selected_languages"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lnet/hasnath/android/keyboard/InputLanguageSelection;->mSelectedLanguages:Ljava/lang/String;

    .line 85
    iget-object v7, p0, Lnet/hasnath/android/keyboard/InputLanguageSelection;->mSelectedLanguages:Ljava/lang/String;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "languageList":[Ljava/lang/String;
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/InputLanguageSelection;->getUniqueLocales()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lnet/hasnath/android/keyboard/InputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    .line 87
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/InputLanguageSelection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 88
    .local v4, "parent":Landroid/preference/PreferenceGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lnet/hasnath/android/keyboard/InputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v1, v7, :cond_0

    .line 99
    return-void

    .line 89
    :cond_0
    new-instance v5, Landroid/preference/CheckBoxPreference;

    invoke-direct {v5, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 90
    .local v5, "pref":Landroid/preference/CheckBoxPreference;
    iget-object v7, p0, Lnet/hasnath/android/keyboard/InputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;

    iget-object v3, v7, Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;->locale:Ljava/util/Locale;

    .line 91
    .local v3, "locale":Ljava/util/Locale;
    invoke-virtual {v3, v3}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    invoke-direct {p0, v3, v2}, Lnet/hasnath/android/keyboard/InputLanguageSelection;->isLocaleIn(Ljava/util/Locale;[Ljava/lang/String;)Z

    move-result v0

    .line 93
    .local v0, "checked":Z
    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 94
    invoke-direct {p0, v3}, Lnet/hasnath/android/keyboard/InputLanguageSelection;->hasDictionary(Ljava/util/Locale;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 95
    const v7, 0x7f0800e7

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 97
    :cond_1
    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 10

    .prologue
    .line 150
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 152
    const-string v0, ""

    .line 153
    .local v0, "checkedLanguages":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/InputLanguageSelection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 154
    .local v5, "parent":Landroid/preference/PreferenceGroup;
    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 155
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_1

    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_0

    const/4 v0, 0x0

    .line 163
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 164
    .local v7, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 165
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "selected_languages"

    invoke-interface {v2, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-static {v2}, Lnet/hasnath/android/keyboard/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 167
    return-void

    .line 156
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 157
    .local v6, "pref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 158
    iget-object v8, p0, Lnet/hasnath/android/keyboard/InputLanguageSelection;->mAvailableLanguages:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;

    iget-object v4, v8, Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;->locale:Ljava/util/Locale;

    .line 159
    .local v4, "locale":Ljava/util/Locale;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lnet/hasnath/android/keyboard/InputLanguageSelection;->get5Code(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .end local v4    # "locale":Ljava/util/Locale;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 146
    return-void
.end method
