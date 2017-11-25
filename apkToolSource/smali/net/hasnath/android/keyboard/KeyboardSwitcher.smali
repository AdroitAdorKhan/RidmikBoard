.class public Lnet/hasnath/android/keyboard/KeyboardSwitcher;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;
    }
.end annotation


# static fields
.field private static final ALPHABET_MODES:[I

.field private static final AUTO_MODE_SWITCH_STATE_ALPHA:I = 0x0

.field private static final AUTO_MODE_SWITCH_STATE_CHORDING:I = 0x4

.field private static final AUTO_MODE_SWITCH_STATE_MOMENTARY:I = 0x3

.field private static final AUTO_MODE_SWITCH_STATE_SYMBOL:I = 0x2

.field private static final AUTO_MODE_SWITCH_STATE_SYMBOL_BEGIN:I = 0x1

.field private static final CHAR_THEME_COLOR_BLACK:I = 0x1

.field private static final CHAR_THEME_COLOR_WHITE:I = 0x0

.field public static CURRENT_FIXED_LAYOUT:I = 0x0

.field public static final DEFAULT_LAYOUT_ID:Ljava/lang/String; = "3"

.field private static final DEFAULT_SETTINGS_KEY_MODE:I = 0x7f070080

.field private static final KBD_PHONE:[I

.field private static final KBD_PHONE_SYMBOLS:[I

.field private static final KBD_QWERTY:[I

.field private static final KBD_QWERTY_BANGLA:[I

.field private static final KBD_QWERTY_BANGLA_ASCII:[I

.field private static final KBD_SMILEY:[I

.field private static final KBD_SYMBOLS:[I

.field private static final KBD_SYMBOLS_ASCII:I = 0x7f050014

.field private static final KBD_SYMBOLS_BANGLA_ASCII:I = 0x7f050015

.field private static final KBD_SYMBOLS_SHIFT:[I

.field private static final KBD_SYMBOLS_SHIFT_ASCII:I = 0x7f050018

.field public static final KEYBOARDMODE_EMAIL:I = 0x7f0f0024

.field public static final KEYBOARDMODE_EMAIL_WITH_SETTINGS_KEY:I = 0x7f0f0029

.field public static final KEYBOARDMODE_IM:I = 0x7f0f0025

.field public static final KEYBOARDMODE_IM_WITH_SETTINGS_KEY:I = 0x7f0f002a

.field public static final KEYBOARDMODE_NORMAL:I = 0x7f0f0022

.field public static final KEYBOARDMODE_NORMAL_WITH_SETTINGS_KEY:I = 0x7f0f0027

.field public static final KEYBOARDMODE_SYMBOLS:I = 0x7f0f002c

.field public static final KEYBOARDMODE_SYMBOLS_WITH_SETTINGS_KEY:I = 0x7f0f002d

.field public static final KEYBOARDMODE_URL:I = 0x7f0f0023

.field public static final KEYBOARDMODE_URL_WITH_SETTINGS_KEY:I = 0x7f0f0028

.field public static final KEYBOARDMODE_WEB:I = 0x7f0f0026

.field public static final KEYBOARDMODE_WEB_WITH_SETTINGS_KEY:I = 0x7f0f002b

.field public static final MODE_EMAIL:I = 0x5

.field public static final MODE_FIXED_BANGLA:I = 0xb

.field public static final MODE_FIXED_BANGLA_SHIFTED:I = 0xc

.field public static final MODE_IM:I = 0x6

.field public static final MODE_NONE:I = 0x0

.field public static final MODE_PHONE:I = 0x3

.field public static final MODE_SMILEY1:I = 0x8

.field public static final MODE_SMILEY2:I = 0x9

.field public static final MODE_SMILEY3:I = 0xa

.field public static final MODE_SYMBOLS:I = 0x2

.field public static final MODE_TEXT:I = 0x1

.field public static final MODE_URL:I = 0x4

.field public static final MODE_WEB:I = 0x7

.field public static final NATIONAL_LAYOUT:I = 0x2

.field public static final PREF_KEYBOARD_LAYOUT:Ljava/lang/String; = "pref_keyboard_layout100"

.field private static final SETTINGS_KEY_MODE_ALWAYS_SHOW:I = 0x7f070081

.field private static final SETTINGS_KEY_MODE_AUTO:I = 0x7f070080

.field private static final THEMES:[I

.field public static final UNIJOY_LAYOUT:I = 0x1

.field private static final sInstance:Lnet/hasnath/android/keyboard/KeyboardSwitcher;


# instance fields
.field private mAutoModeSwitchState:I

.field private mCurrentId:Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

.field private mHasSettingsKey:Z

.field private mHasVoice:Z

.field private mImeOptions:I

.field private mInputLocale:Ljava/util/Locale;

.field private mInputMethodService:Lnet/hasnath/android/keyboard/LatinIME;

.field private mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

.field private mIsAutoCompletionActive:Z

.field private mIsSymbols:Z

.field private final mKeyboards:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lnet/hasnath/android/keyboard/LatinKeyboard;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

.field private mLastDisplayWidth:I

.field private mLayoutId:I

.field private mMode:I

.field private mPreferSymbols:Z

.field private mSymbolsId:Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

.field private mSymbolsShiftedId:Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

.field private mVoiceOnPrimary:Z

.field private prevMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 52
    const/4 v0, 0x1

    sput v0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->CURRENT_FIXED_LAYOUT:I

    .line 83
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->THEMES:[I

    .line 91
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->KBD_PHONE:[I

    .line 92
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->KBD_PHONE_SYMBOLS:[I

    .line 94
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->KBD_SYMBOLS:[I

    .line 96
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->KBD_SYMBOLS_SHIFT:[I

    .line 98
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->KBD_QWERTY:[I

    .line 104
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->KBD_QWERTY_BANGLA:[I

    .line 106
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->KBD_QWERTY_BANGLA_ASCII:[I

    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->KBD_SMILEY:[I

    .line 111
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    sput-object v0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->ALPHABET_MODES:[I

    .line 165
    new-instance v0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-direct {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;-><init>()V

    sput-object v0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->sInstance:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    return-void

    .line 83
    :array_0
    .array-data 4
        0x7f030005
        0x7f030007
        0x7f03000b
        0x7f030008
        0x7f030009
    .end array-data

    .line 91
    :array_1
    .array-data 4
        0x7f050005
        0x7f050006
    .end array-data

    .line 92
    :array_2
    .array-data 4
        0x7f050007
        0x7f050008
    .end array-data

    .line 94
    :array_3
    .array-data 4
        0x7f050013
        0x7f050016
    .end array-data

    .line 96
    :array_4
    .array-data 4
        0x7f050017
        0x7f050019
    .end array-data

    .line 98
    :array_5
    .array-data 4
        0x7f05000b
        0x7f05000f
    .end array-data

    .line 104
    :array_6
    .array-data 4
        0x7f05000c
        0x7f05000e
    .end array-data

    .line 106
    :array_7
    .array-data 4
        0x7f05000d
        0x7f05000e
    .end array-data

    .line 108
    :array_8
    .array-data 4
        0x7f050010
        0x7f050011
        0x7f050012
    .end array-data

    .line 111
    :array_9
    .array-data 4
        0x7f0f0022
        0x7f0f0023
        0x7f0f0024
        0x7f0f0025
        0x7f0f0026
        0x7f0f0027
        0x7f0f0028
        0x7f0f0029
        0x7f0f002a
        0x7f0f002b
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->prevMode:I

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mKeyboards:Ljava/util/HashMap;

    .line 132
    iput v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mMode:I

    .line 148
    iput v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    .line 173
    return-void
.end method

.method static synthetic access$0(Lnet/hasnath/android/keyboard/KeyboardSwitcher;)Lnet/hasnath/android/keyboard/LatinKeyboardView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    return-object v0
.end method

.method static synthetic access$1(Lnet/hasnath/android/keyboard/KeyboardSwitcher;)Lnet/hasnath/android/keyboard/LatinIME;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputMethodService:Lnet/hasnath/android/keyboard/LatinIME;

    return-object v0
.end method

.method private changeLatinKeyboardView(IZ)V
    .locals 6
    .param p1, "newLayout"    # I
    .param p2, "forceReset"    # Z

    .prologue
    .line 672
    iget v3, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mLayoutId:I

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_4

    .line 673
    :cond_0
    iget-object v3, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    if-eqz v3, :cond_1

    .line 674
    iget-object v3, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->closing()V

    .line 676
    :cond_1
    sget-object v3, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->THEMES:[I

    array-length v3, v3

    if-gt v3, p1, :cond_2

    .line 677
    const-string v3, "3"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 680
    :cond_2
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;->getInstance()Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;

    move-result-object v3

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;->reset()V

    .line 681
    const/4 v2, 0x1

    .line 682
    .local v2, "tryGC":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_3

    if-nez v2, :cond_5

    .line 695
    :cond_3
    iget-object v3, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    iget-object v4, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputMethodService:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v3, v4}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->setOnKeyboardActionListener(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;)V

    .line 696
    iget-object v3, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-virtual {v3, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->setThemeIndex(I)V

    .line 697
    iput p1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mLayoutId:I

    .line 699
    .end local v1    # "i":I
    .end local v2    # "tryGC":Z
    :cond_4
    iget-object v3, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputMethodService:Lnet/hasnath/android/keyboard/LatinIME;

    iget-object v3, v3, Lnet/hasnath/android/keyboard/LatinIME;->mHandler:Landroid/os/Handler;

    new-instance v4, Lnet/hasnath/android/keyboard/KeyboardSwitcher$1;

    invoke-direct {v4, p0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$1;-><init>(Lnet/hasnath/android/keyboard/KeyboardSwitcher;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 710
    return-void

    .line 684
    .restart local v1    # "i":I
    .restart local v2    # "tryGC":Z
    :cond_5
    :try_start_0
    iget-object v3, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputMethodService:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/LatinIME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 685
    sget-object v4, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->THEMES:[I

    aget v4, v4, p1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/hasnath/android/keyboard/LatinKeyboardView;

    .line 684
    iput-object v3, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 686
    const/4 v2, 0x0

    .line 682
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;->getInstance()Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;

    move-result-object v3

    .line 689
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mLayoutId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 688
    invoke-virtual {v3, v4, v0}, Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v2

    goto :goto_1

    .line 690
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v0

    .line 691
    .local v0, "e":Landroid/view/InflateException;
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;->getInstance()Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;

    move-result-object v3

    .line 692
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mLayoutId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 691
    invoke-virtual {v3, v4, v0}, Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v2

    goto :goto_1
.end method

.method private getCharColorId()I
    .locals 1

    .prologue
    .line 731
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->isBlackSym()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    const/4 v0, 0x1

    .line 734
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lnet/hasnath/android/keyboard/KeyboardSwitcher;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->sInstance:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    return-object v0
.end method

.method private getKeyboard(Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;)Lnet/hasnath/android/keyboard/LatinKeyboard;
    .locals 10
    .param p1, "id"    # Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    .prologue
    const/4 v6, 0x0

    .line 379
    iget-object v5, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mKeyboards:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 380
    .local v3, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lnet/hasnath/android/keyboard/LatinKeyboard;>;"
    if-nez v3, :cond_2

    move-object v1, v6

    .line 381
    .local v1, "keyboard":Lnet/hasnath/android/keyboard/LatinKeyboard;
    :goto_0
    if-nez v1, :cond_1

    .line 382
    iget-object v5, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputMethodService:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v5}, Lnet/hasnath/android/keyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 383
    .local v2, "orig":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 384
    .local v0, "conf":Landroid/content/res/Configuration;
    iget-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 385
    .local v4, "saveLocale":Ljava/util/Locale;
    iget-object v5, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputLocale:Ljava/util/Locale;

    iput-object v5, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 386
    invoke-virtual {v2, v0, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 387
    new-instance v1, Lnet/hasnath/android/keyboard/LatinKeyboard;

    .end local v1    # "keyboard":Lnet/hasnath/android/keyboard/LatinKeyboard;
    iget-object v5, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputMethodService:Lnet/hasnath/android/keyboard/LatinIME;

    iget v7, p1, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->mXml:I

    iget v8, p1, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->mKeyboardMode:I

    iget-object v9, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputMethodService:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v9}, Lnet/hasnath/android/keyboard/LatinIME;->getKeyboardHeightPercentage()I

    move-result v9

    invoke-direct {v1, v5, v7, v8, v9}, Lnet/hasnath/android/keyboard/LatinKeyboard;-><init>(Landroid/content/Context;III)V

    .line 388
    .restart local v1    # "keyboard":Lnet/hasnath/android/keyboard/LatinKeyboard;
    iget v5, p1, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->mXml:I

    const v7, 0x7f050013

    if-eq v5, v7, :cond_3

    .line 389
    iget v5, p1, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->mXml:I

    const v7, 0x7f050016

    if-eq v5, v7, :cond_3

    iget v5, p1, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->mXml:I

    const v7, 0x7f050014

    if-eq v5, v7, :cond_3

    iget v5, p1, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->mXml:I

    const v7, 0x7f050015

    if-eq v5, v7, :cond_3

    const/4 v5, 0x0

    .line 388
    :goto_1
    invoke-direct {p0, v5}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->hasVoiceButton(Z)Z

    move-result v5

    .line 389
    iget-boolean v7, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasVoice:Z

    .line 388
    invoke-virtual {v1, v5, v7}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setVoiceMode(ZZ)V

    .line 390
    iget-object v5, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    iget-boolean v7, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mIsAutoCompletionActive:Z

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->isBlackSym()Z

    move-result v8

    invoke-virtual {v1, v5, v7, v8}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setLanguageSwitcher(Lnet/hasnath/android/keyboard/LanguageSwitcher;ZZ)V

    .line 392
    iget-boolean v5, p1, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->mEnableShiftLock:Z

    if-eqz v5, :cond_0

    .line 393
    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->enableShiftLock()V

    .line 395
    :cond_0
    iget-object v5, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mKeyboards:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/ref/SoftReference;

    invoke-direct {v7, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iput-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 398
    invoke-virtual {v2, v0, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 400
    .end local v0    # "conf":Landroid/content/res/Configuration;
    .end local v2    # "orig":Landroid/content/res/Resources;
    .end local v4    # "saveLocale":Ljava/util/Locale;
    :cond_1
    return-object v1

    .line 380
    .end local v1    # "keyboard":Lnet/hasnath/android/keyboard/LatinKeyboard;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/hasnath/android/keyboard/LatinKeyboard;

    move-object v1, v5

    goto :goto_0

    .line 389
    .restart local v0    # "conf":Landroid/content/res/Configuration;
    .restart local v1    # "keyboard":Lnet/hasnath/android/keyboard/LatinKeyboard;
    .restart local v2    # "orig":Landroid/content/res/Resources;
    .restart local v4    # "saveLocale":Ljava/util/Locale;
    :cond_3
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private getKeyboardId(IIZ)Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;
    .locals 11
    .param p1, "mode"    # I
    .param p2, "imeOptions"    # I
    .param p3, "isSymbols"    # Z

    .prologue
    const v5, 0x7f0f002d

    const v6, 0x7f0f002c

    const v7, 0x7f0f0022

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 404
    invoke-direct {p0, p3}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->hasVoiceButton(Z)Z

    move-result v1

    .line 405
    .local v1, "hasVoice":Z
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getCharColorId()I

    move-result v0

    .line 407
    .local v0, "charColorId":I
    sget-object v8, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->KBD_QWERTY:[I

    aget v2, v8, v10

    .line 408
    .local v2, "keyboardRowsResId":I
    sget v8, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v8, v9, :cond_0

    .line 409
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->useAsciiLayout()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 410
    sget-object v8, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->KBD_QWERTY_BANGLA_ASCII:[I

    aget v2, v8, v10

    .line 414
    :cond_0
    :goto_0
    if-eqz p3, :cond_8

    .line 415
    const/4 v7, 0x3

    if-ne p1, v7, :cond_2

    .line 416
    new-instance v5, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    sget-object v6, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->KBD_PHONE_SYMBOLS:[I

    aget v6, v6, v0

    invoke-direct {v5, v6, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;-><init>(IZ)V

    .line 504
    :goto_1
    return-object v5

    .line 412
    :cond_1
    sget-object v8, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->KBD_QWERTY_BANGLA:[I

    aget v2, v8, v10

    goto :goto_0

    .line 418
    :cond_2
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->useAsciiLayout()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 419
    sget v7, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 420
    new-instance v7, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    const v8, 0x7f050014

    iget-boolean v9, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v9, :cond_3

    :goto_2
    invoke-direct {v7, v8, v5, v10, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    move-object v5, v7

    goto :goto_1

    :cond_3
    move v5, v6

    .line 421
    goto :goto_2

    .line 424
    :cond_4
    new-instance v7, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    const v8, 0x7f050015

    iget-boolean v9, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v9, :cond_5

    :goto_3
    invoke-direct {v7, v8, v5, v10, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    move-object v5, v7

    goto :goto_1

    :cond_5
    move v5, v6

    .line 425
    goto :goto_3

    .line 430
    :cond_6
    new-instance v7, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    sget-object v8, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->KBD_SYMBOLS:[I

    aget v8, v8, v0

    iget-boolean v9, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v9, :cond_7

    :goto_4
    invoke-direct {v7, v8, v5, v10, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    move-object v5, v7

    goto :goto_1

    :cond_7
    move v5, v6

    .line 431
    goto :goto_4

    .line 435
    :cond_8
    iput-boolean v10, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    .line 436
    packed-switch p1, :pswitch_data_0

    .line 504
    const/4 v5, 0x0

    goto :goto_1

    .line 439
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getKeyboardId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 438
    invoke-static {v5}, Lnet/hasnath/android/keyboard/LatinImeLogger;->logOnWarning(Ljava/lang/String;)V

    .line 442
    :pswitch_1
    new-instance v6, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    iget-boolean v5, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v5, :cond_9

    .line 443
    const v5, 0x7f0f0027

    .line 442
    :goto_5
    invoke-direct {v6, v2, v5, v9, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    move-object v5, v6

    goto :goto_1

    :cond_9
    move v5, v7

    .line 443
    goto :goto_5

    .line 446
    :pswitch_2
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->useAsciiLayout()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 447
    new-instance v7, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    const v8, 0x7f050014

    iget-boolean v9, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v9, :cond_a

    :goto_6
    invoke-direct {v7, v8, v5, v10, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    move-object v5, v7

    goto/16 :goto_1

    :cond_a
    move v5, v6

    .line 448
    goto :goto_6

    .line 451
    :cond_b
    new-instance v7, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    sget-object v8, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->KBD_SYMBOLS:[I

    aget v8, v8, v0

    iget-boolean v9, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v9, :cond_c

    :goto_7
    invoke-direct {v7, v8, v5, v10, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    move-object v5, v7

    goto/16 :goto_1

    :cond_c
    move v5, v6

    .line 452
    goto :goto_7

    .line 455
    :pswitch_3
    new-instance v5, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    sget-object v6, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->KBD_PHONE:[I

    aget v6, v6, v0

    invoke-direct {v5, v6, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;-><init>(IZ)V

    goto/16 :goto_1

    .line 457
    :pswitch_4
    new-instance v6, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    iget-boolean v5, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v5, :cond_d

    .line 458
    const v5, 0x7f0f0028

    .line 457
    :goto_8
    invoke-direct {v6, v2, v5, v9, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    move-object v5, v6

    goto/16 :goto_1

    .line 458
    :cond_d
    const v5, 0x7f0f0023

    goto :goto_8

    .line 460
    :pswitch_5
    new-instance v6, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    iget-boolean v5, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v5, :cond_e

    .line 461
    const v5, 0x7f0f0029

    .line 460
    :goto_9
    invoke-direct {v6, v2, v5, v9, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    move-object v5, v6

    goto/16 :goto_1

    .line 461
    :cond_e
    const v5, 0x7f0f0024

    goto :goto_9

    .line 463
    :pswitch_6
    new-instance v6, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    iget-boolean v5, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v5, :cond_f

    .line 464
    const v5, 0x7f0f002a

    .line 463
    :goto_a
    invoke-direct {v6, v2, v5, v9, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    move-object v5, v6

    goto/16 :goto_1

    .line 464
    :cond_f
    const v5, 0x7f0f0025

    goto :goto_a

    .line 466
    :pswitch_7
    new-instance v6, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    iget-boolean v5, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v5, :cond_10

    .line 467
    const v5, 0x7f0f002b

    .line 466
    :goto_b
    invoke-direct {v6, v2, v5, v9, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    move-object v5, v6

    goto/16 :goto_1

    .line 467
    :cond_10
    const v5, 0x7f0f0026

    goto :goto_b

    .line 469
    :pswitch_8
    new-instance v5, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    sget-object v6, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->KBD_SMILEY:[I

    aget v6, v6, v10

    invoke-direct {v5, v6, v7, v10, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    goto/16 :goto_1

    .line 471
    :pswitch_9
    new-instance v5, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    sget-object v6, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->KBD_SMILEY:[I

    aget v6, v6, v9

    invoke-direct {v5, v6, v7, v10, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    goto/16 :goto_1

    .line 473
    :pswitch_a
    new-instance v5, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    sget-object v6, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->KBD_SMILEY:[I

    const/4 v8, 0x2

    aget v6, v6, v8

    invoke-direct {v5, v6, v7, v10, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    goto/16 :goto_1

    .line 476
    :pswitch_b
    const/4 v3, 0x0

    .line 477
    .local v3, "xmlResId":I
    sget v5, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->CURRENT_FIXED_LAYOUT:I

    if-ne v5, v9, :cond_13

    .line 478
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->useAsciiLayout()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 479
    const v3, 0x7f05001b

    .line 488
    :cond_11
    :goto_c
    new-instance v5, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    invoke-direct {v5, v3, v7, v10, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    goto/16 :goto_1

    .line 481
    :cond_12
    const v3, 0x7f05001a

    goto :goto_c

    .line 482
    :cond_13
    sget v5, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->CURRENT_FIXED_LAYOUT:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_11

    .line 483
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->useAsciiLayout()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 484
    const v3, 0x7f050002

    goto :goto_c

    .line 486
    :cond_14
    const v3, 0x7f050001

    goto :goto_c

    .line 491
    .end local v3    # "xmlResId":I
    :pswitch_c
    const/4 v4, 0x0

    .line 492
    .local v4, "xmlResId1":I
    sget v5, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->CURRENT_FIXED_LAYOUT:I

    if-ne v5, v9, :cond_17

    .line 493
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->useAsciiLayout()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 494
    const v4, 0x7f05001d

    .line 502
    :cond_15
    :goto_d
    new-instance v5, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    invoke-direct {v5, v4, v7, v10, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    goto/16 :goto_1

    .line 495
    :cond_16
    const v4, 0x7f05001c

    goto :goto_d

    .line 496
    :cond_17
    sget v5, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->CURRENT_FIXED_LAYOUT:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_15

    .line 497
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->useAsciiLayout()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 498
    const v4, 0x7f050004

    goto :goto_d

    .line 500
    :cond_18
    const v4, 0x7f050003

    goto :goto_d

    .line 436
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private getPointerCount()I
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getPointerCount()I

    move-result v0

    goto :goto_0
.end method

.method private hasVoiceButton(Z)Z
    .locals 1
    .param p1, "isSymbols"    # Z

    .prologue
    .line 326
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasVoice:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mVoiceOnPrimary:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Lnet/hasnath/android/keyboard/LatinIME;)V
    .locals 5
    .param p0, "ims"    # Lnet/hasnath/android/keyboard/LatinIME;

    .prologue
    const/4 v4, 0x0

    .line 198
    sget-object v1, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->sInstance:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    iput-object p0, v1, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputMethodService:Lnet/hasnath/android/keyboard/LatinIME;

    .line 200
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 201
    .local v0, "prefs":Landroid/content/SharedPreferences;
    sget-object v1, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->sInstance:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    .line 202
    const-string v2, "pref_keyboard_layout100"

    const-string v3, "3"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mLayoutId:I

    .line 203
    sget-object v1, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->sInstance:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-direct {v1, v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->updateSettingsKeyState(Landroid/content/SharedPreferences;)V

    .line 204
    sget-object v1, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->sInstance:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 206
    sget-object v1, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->sInstance:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    sget-object v2, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->sInstance:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-direct {v2, v4}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->makeSymbolsId(Z)Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    move-result-object v2

    iput-object v2, v1, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mSymbolsId:Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    .line 207
    sget-object v1, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->sInstance:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    sget-object v2, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->sInstance:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-direct {v2, v4}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->makeSymbolsShiftedId(Z)Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    move-result-object v2

    iput-object v2, v1, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mSymbolsShiftedId:Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    .line 208
    return-void
.end method

.method private makeSymbolsId(Z)Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;
    .locals 6
    .param p1, "hasVoice"    # Z

    .prologue
    const v0, 0x7f0f002d

    const v1, 0x7f0f002c

    const/4 v5, 0x0

    .line 223
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->useAsciiLayout()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 224
    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 225
    new-instance v2, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    const v3, 0x7f050014

    iget-boolean v4, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v4, :cond_0

    :goto_0
    invoke-direct {v2, v3, v0, v5, p1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    move-object v0, v2

    .line 235
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 226
    goto :goto_0

    .line 229
    :cond_1
    new-instance v2, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    const v3, 0x7f050015

    iget-boolean v4, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v4, :cond_2

    :goto_2
    invoke-direct {v2, v3, v0, v5, p1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    move-object v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 230
    goto :goto_2

    .line 235
    :cond_3
    new-instance v2, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    sget-object v3, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->KBD_SYMBOLS:[I

    invoke-direct {p0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getCharColorId()I

    move-result v4

    aget v3, v3, v4

    iget-boolean v4, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v4, :cond_4

    :goto_3
    invoke-direct {v2, v3, v0, v5, p1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    move-object v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    .line 236
    goto :goto_3
.end method

.method private makeSymbolsShiftedId(Z)Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;
    .locals 6
    .param p1, "hasVoice"    # Z

    .prologue
    const v0, 0x7f0f002d

    const v1, 0x7f0f002c

    const/4 v5, 0x0

    .line 242
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->useAsciiLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    new-instance v2, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    const v3, 0x7f050018

    iget-boolean v4, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v4, :cond_0

    :goto_0
    invoke-direct {v2, v3, v0, v5, p1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    move-object v0, v2

    .line 247
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 244
    goto :goto_0

    .line 247
    :cond_1
    new-instance v2, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    sget-object v3, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->KBD_SYMBOLS_SHIFT:[I

    invoke-direct {p0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getCharColorId()I

    move-result v4

    aget v3, v3, v4

    iget-boolean v4, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    if-eqz v4, :cond_2

    :goto_2
    invoke-direct {v2, v3, v0, v5, p1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    move-object v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 248
    goto :goto_2
.end method

.method private setKeyboardMode(IIZZ)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "imeOptions"    # I
    .param p3, "enableVoice"    # Z
    .param p4, "isSymbols"    # Z

    .prologue
    const/4 v4, 0x3

    .line 343
    iget-object v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    if-nez v2, :cond_0

    .line 376
    :goto_0
    return-void

    .line 345
    :cond_0
    const/16 v2, 0xb

    if-eq p1, v2, :cond_1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_1

    if-eq p1, v4, :cond_1

    .line 346
    const/16 v2, 0x9

    if-eq p1, v2, :cond_1

    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    const/16 v2, 0xc

    if-ne p1, v2, :cond_4

    .line 350
    :cond_1
    :goto_1
    iput p2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mImeOptions:I

    .line 351
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasVoice:Z

    if-eq p3, v2, :cond_2

    .line 353
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mVoiceOnPrimary:Z

    invoke-virtual {p0, p3, v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setVoiceMode(ZZ)V

    .line 355
    :cond_2
    iput-boolean p4, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mIsSymbols:Z

    .line 357
    iget-object v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputMethodService:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/LatinIME;->getPopupOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->setPreviewEnabled(Z)V

    .line 358
    invoke-direct {p0, p1, p2, p4}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getKeyboardId(IIZ)Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    move-result-object v0

    .line 359
    .local v0, "id":Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;
    const/4 v1, 0x0

    .line 360
    .local v1, "keyboard":Lnet/hasnath/android/keyboard/LatinKeyboard;
    invoke-direct {p0, v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getKeyboard(Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;)Lnet/hasnath/android/keyboard/LatinKeyboard;

    move-result-object v1

    .line 363
    if-ne p1, v4, :cond_3

    .line 364
    iget-object v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-virtual {v2, v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->setPhoneKeyboard(Lnet/hasnath/android/keyboard/Keyboard;)V

    .line 367
    :cond_3
    iput-object v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mCurrentId:Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    .line 368
    iget-object v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-virtual {v2, v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->setKeyboard(Lnet/hasnath/android/keyboard/Keyboard;)V

    .line 369
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setShifted(Z)Z

    .line 370
    iget v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mLayoutId:I

    invoke-virtual {v1, v2}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setThemeIndex(I)V

    .line 371
    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->isShiftLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setShiftLocked(Z)V

    .line 372
    iget-object v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputMethodService:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mMode:I

    invoke-virtual {v1, v2, v3, p2}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setImeOptions(Landroid/content/res/Resources;II)V

    .line 373
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mIsAutoCompletionActive:Z

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->isBlackSym()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setColorOfSymbolIcons(ZZ)V

    .line 375
    iget-object v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputMethodService:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->updateSettingsKeyState(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 348
    .end local v0    # "id":Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;
    .end local v1    # "keyboard":Lnet/hasnath/android/keyboard/LatinKeyboard;
    :cond_4
    iput p1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mMode:I

    goto :goto_1
.end method

.method private updateSettingsKeyState(Landroid/content/SharedPreferences;)V
    .locals 5
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const v4, 0x7f070080

    .line 748
    iget-object v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputMethodService:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 749
    .local v0, "resources":Landroid/content/res/Resources;
    const-string v2, "settings_key"

    .line 750
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 749
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 753
    .local v1, "settingsKeyMode":Ljava/lang/String;
    const v2, 0x7f070081

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 754
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 755
    iget-object v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputMethodService:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-static {v2}, Lnet/hasnath/android/keyboard/LatinIMEUtil;->hasMultipleEnabledIMEs(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 756
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    .line 760
    :goto_0
    return-void

    .line 758
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasSettingsKey:Z

    goto :goto_0
.end method

.method private useAsciiLayout()Z
    .locals 1

    .prologue
    .line 176
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIME;->useBanglaFont()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    return-object v0
.end method

.method public getKeyboardMode()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->prevMode:I

    if-nez v0, :cond_0

    .line 516
    iget v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mMode:I

    .line 517
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->prevMode:I

    goto :goto_0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mLayoutId:I

    return v0
.end method

.method public hasDistinctMultitouch()Z
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->hasDistinctMultitouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlphabetMode()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 521
    iget-object v3, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mCurrentId:Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    if-nez v3, :cond_1

    .line 530
    :cond_0
    :goto_0
    return v2

    .line 524
    :cond_1
    iget-object v3, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mCurrentId:Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    iget v0, v3, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->mKeyboardMode:I

    .line 525
    .local v0, "currentMode":I
    sget-object v4, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->ALPHABET_MODES:[I

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_0

    aget v6, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 526
    .local v1, "mode":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v0, v6, :cond_2

    .line 527
    const/4 v2, 0x1

    goto :goto_0

    .line 525
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public isBlackSym()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 724
    iget-object v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getSymbolColorScheme()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 727
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInChordingAutoModeSwitchState()Z
    .locals 2

    .prologue
    .line 604
    iget v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInMomentaryAutoModeSwitchState()Z
    .locals 2

    .prologue
    .line 600
    iget v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVibrateAndSoundFeedbackRequired()Z
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->isInSlidingKeyInput()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeKeyboards(Z)V
    .locals 4
    .param p1, "forceCreate"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 253
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasVoice:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mVoiceOnPrimary:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->makeSymbolsId(Z)Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mSymbolsId:Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    .line 254
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasVoice:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mVoiceOnPrimary:Z

    if-nez v1, :cond_3

    :goto_1
    invoke-direct {p0, v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->makeSymbolsShiftedId(Z)Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mSymbolsShiftedId:Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    .line 256
    if-eqz p1, :cond_0

    iget-object v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mKeyboards:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 260
    :cond_0
    iget-object v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputMethodService:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinIME;->getMaxWidth()I

    move-result v0

    .line 261
    .local v0, "displayWidth":I
    iget v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mLastDisplayWidth:I

    if-ne v0, v1, :cond_4

    .line 264
    :cond_1
    :goto_2
    return-void

    .end local v0    # "displayWidth":I
    :cond_2
    move v1, v3

    .line 253
    goto :goto_0

    :cond_3
    move v2, v3

    .line 254
    goto :goto_1

    .line 262
    .restart local v0    # "displayWidth":I
    :cond_4
    iput v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mLastDisplayWidth:I

    .line 263
    if-nez p1, :cond_1

    iget-object v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mKeyboards:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_2
.end method

.method public manageSmileyKeyboard(I)V
    .locals 4
    .param p1, "primaryCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 180
    const/16 v0, -0x14b

    if-ne p1, v0, :cond_2

    .line 181
    iget v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->prevMode:I

    if-nez v0, :cond_0

    .line 182
    iget v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mMode:I

    iput v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->prevMode:I

    .line 183
    :cond_0
    const/16 v0, 0x8

    iget v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mImeOptions:I

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasVoice:Z

    invoke-virtual {p0, v0, v1, v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 195
    :cond_1
    :goto_0
    return-void

    .line 184
    :cond_2
    const/16 v0, -0xea

    if-ne p1, v0, :cond_4

    .line 185
    sget v0, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 186
    const/16 v0, 0xb

    iget v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mImeOptions:I

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasVoice:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZZ)V

    .line 189
    :goto_1
    iput v3, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->prevMode:I

    goto :goto_0

    .line 188
    :cond_3
    iget v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->prevMode:I

    iget v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mImeOptions:I

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasVoice:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZZ)V

    goto :goto_1

    .line 190
    :cond_4
    const/16 v0, -0x14c

    if-ne p1, v0, :cond_5

    .line 191
    const/16 v0, 0x9

    iget v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mImeOptions:I

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasVoice:Z

    invoke-virtual {p0, v0, v1, v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    goto :goto_0

    .line 192
    :cond_5
    const/16 v0, -0x14d

    if-ne p1, v0, :cond_1

    .line 193
    const/16 v0, 0xa

    iget v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mImeOptions:I

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasVoice:Z

    invoke-virtual {p0, v0, v1, v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    goto :goto_0
.end method

.method public onAutoCompletionStateChanged(Z)V
    .locals 2
    .param p1, "isAutoCompletion"    # Z

    .prologue
    .line 739
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mIsAutoCompletionActive:Z

    if-eq p1, v1, :cond_0

    .line 740
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 741
    .local v0, "keyboardView":Lnet/hasnath/android/keyboard/LatinKeyboardView;
    iput-boolean p1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mIsAutoCompletionActive:Z

    .line 742
    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getKeyboard()Lnet/hasnath/android/keyboard/Keyboard;

    move-result-object v1

    check-cast v1, Lnet/hasnath/android/keyboard/LatinKeyboard;

    .line 743
    invoke-virtual {v1, p1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->onAutoCompletionStateChanged(Z)Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-result-object v1

    .line 742
    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->invalidateKey(Lnet/hasnath/android/keyboard/Keyboard$Key;)V

    .line 745
    .end local v0    # "keyboardView":Lnet/hasnath/android/keyboard/LatinKeyboardView;
    :cond_0
    return-void
.end method

.method public onCancelInput()V
    .locals 2

    .prologue
    .line 574
    iget v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 575
    iget-object v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputMethodService:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinIME;->changeKeyboardMode()V

    .line 576
    :cond_0
    return-void
.end method

.method public onKey(I)V
    .locals 4
    .param p1, "key"    # I

    .prologue
    const/16 v3, 0x20

    const/16 v2, 0xa

    const/4 v1, 0x1

    .line 621
    iget v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    packed-switch v0, :pswitch_data_0

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 629
    :pswitch_0
    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    .line 631
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mIsSymbols:Z

    if-eqz v0, :cond_1

    .line 632
    iput v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    goto :goto_0

    .line 634
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    goto :goto_0

    .line 636
    :cond_2
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 641
    iget-object v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputMethodService:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinIME;->changeKeyboardMode()V

    goto :goto_0

    .line 645
    :cond_3
    const/4 v0, 0x4

    iput v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    goto :goto_0

    .line 649
    :pswitch_1
    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_0

    if-ltz p1, :cond_0

    .line 650
    const/4 v0, 0x2

    iput v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    goto :goto_0

    .line 656
    :pswitch_2
    if-eq p1, v2, :cond_4

    if-ne p1, v3, :cond_0

    .line 657
    :cond_4
    iget-object v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputMethodService:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinIME;->changeKeyboardMode()V

    goto :goto_0

    .line 621
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 713
    const-string v0, "pref_keyboard_layout100"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    const-string v0, "3"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    .line 714
    invoke-direct {p0, v0, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->changeLatinKeyboardView(IZ)V

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    const-string v0, "settings_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->updateSettingsKeyState(Landroid/content/SharedPreferences;)V

    .line 718
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->recreateInputView()V

    goto :goto_0
.end method

.method public recreateInputView()V
    .locals 2

    .prologue
    .line 668
    iget v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mLayoutId:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->changeLatinKeyboardView(IZ)V

    .line 669
    return-void
.end method

.method public setAutoModeSwitchStateMomentary()V
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x3

    iput v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    .line 597
    return-void
.end method

.method public setFixedKeyboard(I)V
    .locals 3
    .param p1, "primaryCode"    # I

    .prologue
    .line 508
    const/16 v0, -0x1b1

    if-ne p1, v0, :cond_1

    .line 509
    const/16 v0, 0xb

    iget v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mImeOptions:I

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasVoice:Z

    invoke-virtual {p0, v0, v1, v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    const/16 v0, -0x1b2

    if-ne p1, v0, :cond_0

    .line 511
    const/16 v0, 0xc

    iget v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mImeOptions:I

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasVoice:Z

    invoke-virtual {p0, v0, v1, v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZ)V

    goto :goto_0
.end method

.method public setKeyboardMode(IIZ)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "imeOptions"    # I
    .param p3, "enableVoice"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 330
    iput v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    .line 331
    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mPreferSymbols:Z

    .line 332
    if-ne p1, v2, :cond_1

    .line 333
    const/4 p1, 0x1

    .line 336
    :cond_1
    :try_start_0
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mPreferSymbols:Z

    invoke-direct {p0, p1, p2, p3, v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mPreferSymbols:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lnet/hasnath/android/keyboard/LatinImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setLanguageSwitcher(Lnet/hasnath/android/keyboard/LanguageSwitcher;)V
    .locals 1
    .param p1, "languageSwitcher"    # Lnet/hasnath/android/keyboard/LanguageSwitcher;

    .prologue
    .line 217
    iput-object p1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    .line 218
    iget-object v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputLocale:Ljava/util/Locale;

    .line 219
    return-void
.end method

.method public setShiftLocked(Z)V
    .locals 1
    .param p1, "shiftLocked"    # Z

    .prologue
    .line 540
    iget-object v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->setShiftLocked(Z)Z

    .line 543
    :cond_0
    return-void
.end method

.method public setShifted(Z)V
    .locals 1
    .param p1, "shifted"    # Z

    .prologue
    .line 534
    iget-object v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->setShifted(Z)Z

    .line 537
    :cond_0
    return-void
.end method

.method public setVoiceMode(ZZ)V
    .locals 4
    .param p1, "enableVoice"    # Z
    .param p2, "voiceOnPrimary"    # Z

    .prologue
    .line 317
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasVoice:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mVoiceOnPrimary:Z

    if-eq p2, v0, :cond_1

    .line 318
    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mKeyboards:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 320
    :cond_1
    iput-boolean p1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasVoice:Z

    .line 321
    iput-boolean p2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mVoiceOnPrimary:Z

    .line 322
    iget v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mMode:I

    iget v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mImeOptions:I

    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasVoice:Z

    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mIsSymbols:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZZ)V

    .line 323
    return-void
.end method

.method public toggleShift()V
    .locals 5

    .prologue
    .line 546
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    :goto_0
    return-void

    .line 548
    :cond_0
    iget-object v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mCurrentId:Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mSymbolsId:Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    invoke-static {v2, v3}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->access$0(Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mCurrentId:Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mSymbolsShiftedId:Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    invoke-static {v2, v3}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->access$0(Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 549
    :cond_1
    iget-object v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mSymbolsShiftedId:Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    invoke-direct {p0, v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getKeyboard(Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;)Lnet/hasnath/android/keyboard/LatinKeyboard;

    move-result-object v1

    .line 550
    .local v1, "symbolsShiftedKeyboard":Lnet/hasnath/android/keyboard/LatinKeyboard;
    iget-object v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mSymbolsShiftedId:Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    iput-object v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mCurrentId:Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    .line 551
    iget-object v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-virtual {v2, v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->setKeyboard(Lnet/hasnath/android/keyboard/Keyboard;)V

    .line 556
    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->enableShiftLock()V

    .line 557
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setShiftLocked(Z)V

    .line 558
    iget-object v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputMethodService:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 559
    iget v3, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mMode:I

    iget v4, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mImeOptions:I

    .line 558
    invoke-virtual {v1, v2, v3, v4}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setImeOptions(Landroid/content/res/Resources;II)V

    goto :goto_0

    .line 561
    .end local v1    # "symbolsShiftedKeyboard":Lnet/hasnath/android/keyboard/LatinKeyboard;
    :cond_2
    iget-object v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mSymbolsId:Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    invoke-direct {p0, v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getKeyboard(Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;)Lnet/hasnath/android/keyboard/LatinKeyboard;

    move-result-object v0

    .line 562
    .local v0, "symbolsKeyboard":Lnet/hasnath/android/keyboard/LatinKeyboard;
    iget-object v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mSymbolsId:Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    iput-object v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mCurrentId:Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    .line 563
    iget-object v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputView:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-virtual {v2, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->setKeyboard(Lnet/hasnath/android/keyboard/Keyboard;)V

    .line 566
    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboard;->enableShiftLock()V

    .line 567
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setShifted(Z)Z

    .line 568
    iget-object v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mInputMethodService:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mMode:I

    iget v4, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mImeOptions:I

    invoke-virtual {v0, v2, v3, v4}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setImeOptions(Landroid/content/res/Resources;II)V

    goto :goto_0
.end method

.method public toggleSymbols()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 579
    sget v0, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mIsSymbols:Z

    if-eqz v0, :cond_1

    .line 580
    const/16 v3, 0xb

    iget v4, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mImeOptions:I

    iget-boolean v5, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasVoice:Z

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mIsSymbols:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v3, v4, v5, v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZZ)V

    .line 584
    :goto_1
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mIsSymbols:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mPreferSymbols:Z

    if-nez v0, :cond_3

    .line 585
    iput v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    .line 589
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 580
    goto :goto_0

    .line 583
    :cond_1
    iget v3, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mMode:I

    iget v4, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mImeOptions:I

    iget-boolean v5, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mHasVoice:Z

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mIsSymbols:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_3
    invoke-direct {p0, v3, v4, v5, v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->setKeyboardMode(IIZZ)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_3

    .line 587
    :cond_3
    iput v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->mAutoModeSwitchState:I

    goto :goto_2
.end method
