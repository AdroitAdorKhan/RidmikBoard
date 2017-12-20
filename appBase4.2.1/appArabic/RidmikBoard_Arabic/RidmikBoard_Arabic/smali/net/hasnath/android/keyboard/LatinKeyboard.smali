.class public Lnet/hasnath/android/keyboard/LatinKeyboard;
.super Lnet/hasnath/android/keyboard/Keyboard;
.source "LatinKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;,
        Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;
    }
.end annotation


# static fields
.field private static final BANGLA_STRING_ASCII:Ljava/lang/String; = "\u0985\u09ad\u09cd\u09b0"

.field private static final BANGLA_STRING_UNICODE:Ljava/lang/String; = "\u0985\u09ad\u09cd\u09b0"

.field private static final DEBUG_PREFERRED_LETTER:Z = false

.field private static final MINIMUM_SCALE_OF_LANGUAGE_NAME:F = 0.8f

.field private static final NATIONAL_STRING_ASCII:Ljava/lang/String; = "\u09aa\u09cd\u09b0\u09ad\u09be\u09a4"

.field private static final NATIONAL_STRING_UNICODE:Ljava/lang/String; = "\u09aa\u09cd\u09b0\u09ad\u09be\u09a4"

.field private static final OPACITY_FULLY_OPAQUE:I = 0xff

.field private static final OVERLAP_PERCENTAGE_HIGH_PROB:F = 0.85f

.field private static final OVERLAP_PERCENTAGE_LOW_PROB:F = 0.7f

.field private static final SHIFT_LOCKED:I = 0x2

.field private static final SHIFT_OFF:I = 0x0

.field private static final SHIFT_ON:I = 0x1

.field private static final SPACEBAR_DRAG_THRESHOLD:F = 0.8f

.field private static final SPACEBAR_LANGUAGE_BASELINE:F = 0.6f

.field private static final SPACEBAR_POPUP_MIN_RATIO:F = 0.4f

.field private static final SPACE_LED_LENGTH_PERCENT:I = 0x50

.field private static final TAG:Ljava/lang/String; = "LatinKeyboard"

.field private static final UNIJOY_STRING_ASCII:Ljava/lang/String; = "\u00fb\u00d2\u00e2\u00ca"

.field private static final UNIJOY_STRING_UNICODE:Ljava/lang/String; = "\u0627\u0644\u0639\u0631\u0628\u064a\u0629"

.field private static sSpacebarVerticalCorrection:I


# instance fields
.field private m123Key:Lnet/hasnath/android/keyboard/Keyboard$Key;

.field private m123Label:Ljava/lang/CharSequence;

.field private m123MicIcon:Landroid/graphics/drawable/Drawable;

.field private m123MicPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private final mButtonArrowLeftIcon:Landroid/graphics/drawable/Drawable;

.field private final mButtonArrowRightIcon:Landroid/graphics/drawable/Drawable;

.field private final mContext:Landroid/content/Context;

.field private mCurrentlyInSpace:Z

.field private mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

.field private mF1Key:Lnet/hasnath/android/keyboard/Keyboard$Key;

.field private mHasVoiceButton:Z

.field private final mHintIcon:Landroid/graphics/drawable/Drawable;

.field private final mIsAlphaKeyboard:Z

.field private mIsBlackSym:Z

.field private mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

.field private mLocale:Ljava/util/Locale;

.field private mMicIcon:Landroid/graphics/drawable/Drawable;

.field private mMicPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mMode:I

.field private mOldShiftIcon:Landroid/graphics/drawable/Drawable;

.field private mPrefDistance:I

.field private mPrefLetter:I

.field private mPrefLetterFrequencies:[I

.field private mPrefLetterX:I

.field private mPrefLetterY:I

.field private final mRes:Landroid/content/res/Resources;

.field private mShiftKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

.field private mShiftLockIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftState:I

.field private mSlidingLocaleIcon:Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;

.field private mSpaceAutoCompletionIndicator:Landroid/graphics/drawable/Drawable;

.field private mSpaceDragLastDiff:I

.field private mSpaceDragStartX:I

.field private mSpaceIcon:Landroid/graphics/drawable/Drawable;

.field private mSpaceKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

.field private final mSpaceKeyIndexArray:[I

.field private mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

.field private mThemeIndex:I

.field private final mVerticalGap:I

.field private mVoiceEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1, p2, v0, v0}, Lnet/hasnath/android/keyboard/LatinKeyboard;-><init>(Landroid/content/Context;III)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "mode"    # I
    .param p4, "keyboardHeightPercentage"    # I

    .prologue
    const v4, 0x7f05000e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/hasnath/android/keyboard/Keyboard;-><init>(Landroid/content/Context;III)V

    .line 115
    iput v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftState:I

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 138
    .local v0, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mContext:Landroid/content/Context;

    .line 139
    iput p3, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mMode:I

    .line 140
    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    .line 141
    const v1, 0x7f0200d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    .line 142
    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 143
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftLockPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    .line 144
    const v1, 0x7f0200cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mOldShiftIcon:Landroid/graphics/drawable/Drawable;

    .line 145
    const v1, 0x7f0200d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    .line 146
    const v1, 0x7f0200d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceAutoCompletionIndicator:Landroid/graphics/drawable/Drawable;

    .line 147
    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 148
    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mMicIcon:Landroid/graphics/drawable/Drawable;

    .line 149
    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mMicPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 150
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mMicPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    .line 151
    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mButtonArrowLeftIcon:Landroid/graphics/drawable/Drawable;

    .line 152
    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mButtonArrowRightIcon:Landroid/graphics/drawable/Drawable;

    .line 153
    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->m123MicIcon:Landroid/graphics/drawable/Drawable;

    .line 154
    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->m123MicPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 155
    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mHintIcon:Landroid/graphics/drawable/Drawable;

    .line 156
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->m123MicPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    .line 158
    const v1, 0x7f0b0007

    .line 157
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lnet/hasnath/android/keyboard/LatinKeyboard;->sSpacebarVerticalCorrection:I

    .line 160
    sget v1, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v1, v3, :cond_3

    .line 161
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIME;->useBanglaFont()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    const v1, 0x7f05000d

    if-eq p2, v1, :cond_0

    .line 163
    if-eq p2, v4, :cond_0

    move v1, v2

    .line 162
    :goto_0
    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mIsAlphaKeyboard:Z

    .line 172
    :goto_1
    new-array v1, v3, [I

    const/16 v3, 0x20

    invoke-direct {p0, v3}, Lnet/hasnath/android/keyboard/LatinKeyboard;->indexOf(I)I

    move-result v3

    aput v3, v1, v2

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceKeyIndexArray:[I

    .line 176
    invoke-super {p0}, Lnet/hasnath/android/keyboard/Keyboard;->getVerticalGap()I

    move-result v1

    iput v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mVerticalGap:I

    .line 180
    return-void

    :cond_0
    move v1, v3

    .line 163
    goto :goto_0

    .line 165
    :cond_1
    const v1, 0x7f05000c

    if-eq p2, v1, :cond_2

    .line 166
    if-eq p2, v4, :cond_2

    move v1, v2

    .line 165
    :goto_2
    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mIsAlphaKeyboard:Z

    goto :goto_1

    :cond_2
    move v1, v3

    .line 166
    goto :goto_2

    .line 168
    :cond_3
    const v1, 0x7f05000b

    if-eq p2, v1, :cond_4

    .line 169
    const v1, 0x7f05000f

    if-eq p2, v1, :cond_4

    move v1, v2

    .line 168
    :goto_3
    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mIsAlphaKeyboard:Z

    goto :goto_1

    :cond_4
    move v1, v3

    .line 169
    goto :goto_3
.end method

.method static synthetic access$0(Lnet/hasnath/android/keyboard/LatinKeyboard;)I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mVerticalGap:I

    return v0
.end method

.method static synthetic access$1(Lnet/hasnath/android/keyboard/LatinKeyboard;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$2(Lnet/hasnath/android/keyboard/LatinKeyboard;II)I
    .locals 1

    .prologue
    .line 898
    invoke-direct {p0, p1, p2}, Lnet/hasnath/android/keyboard/LatinKeyboard;->getTextSizeFromTheme(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lnet/hasnath/android/keyboard/LatinKeyboard;)Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$4(Lnet/hasnath/android/keyboard/LatinKeyboard;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lnet/hasnath/android/keyboard/LatinKeyboard;)I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mThemeIndex:I

    return v0
.end method

.method private distanceFrom(Lnet/hasnath/android/keyboard/Keyboard$Key;II)I
    .locals 2
    .param p1, "k"    # Lnet/hasnath/android/keyboard/Keyboard$Key;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 871
    iget v0, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    if-le p3, v0, :cond_0

    iget v0, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    iget v1, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->height:I

    add-int/2addr v0, v1

    if-ge p3, v0, :cond_0

    .line 872
    iget v0, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    iget v1, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 874
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method private drawSpaceBar(IZZ)Landroid/graphics/Bitmap;
    .locals 21
    .param p1, "opacity"    # I
    .param p2, "isAutoCompletion"    # Z
    .param p3, "isBlack"    # Z

    .prologue
    .line 605
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iget v6, v3, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    .line 606
    .local v6, "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 607
    .local v7, "height":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 608
    .local v12, "buffer":Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 609
    .local v13, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0a0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v13, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 613
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 614
    .local v2, "paint":Landroid/graphics/Paint;
    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 615
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 616
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 619
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIME;->useBanglaFont()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 620
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mContext:Landroid/content/Context;

    const-string v4, "Ridmik.ttf"

    invoke-static {v3, v4}, Lnet/hasnath/android/keyboard/Typefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 623
    :cond_0
    const/4 v10, 0x1

    .line 624
    .local v10, "allowVariableTextSize":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v3

    .line 625
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mButtonArrowLeftIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mButtonArrowRightIcon:Landroid/graphics/drawable/Drawable;

    .line 626
    const v8, 0x1030046

    const/16 v9, 0xe

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lnet/hasnath/android/keyboard/LatinKeyboard;->getTextSizeFromTheme(II)I

    move-result v8

    int-to-float v8, v8

    .line 627
    const/4 v9, 0x1

    .line 624
    invoke-static/range {v2 .. v9}, Lnet/hasnath/android/keyboard/LatinKeyboard;->layoutSpaceBar(Landroid/graphics/Paint;Ljava/util/Locale;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIFZ)Ljava/lang/String;

    move-result-object v17

    .line 634
    .local v17, "language":Ljava/lang/String;
    int-to-float v3, v7

    const v4, 0x3f19999a    # 0.6f

    mul-float v11, v3, v4

    .line 635
    .local v11, "baseline":F
    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v14

    .line 641
    .local v14, "descent":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    if-eqz p3, :cond_1

    .line 642
    const v3, 0x7f0a000b

    .line 641
    :goto_0
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    .line 648
    .local v19, "xColor":I
    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 650
    div-int/lit8 v3, v6, 0x2

    int-to-float v3, v3

    sub-float v4, v11, v14

    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v3, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mButtonArrowLeftIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mButtonArrowRightIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 672
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 673
    .local v16, "iconWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 674
    .local v15, "iconHeight":I
    sub-int v3, v6, v16

    div-int/lit8 v18, v3, 0x2

    .line 675
    .local v18, "x":I
    sub-int v20, v7, v15

    .line 676
    .local v20, "y":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    add-int v4, v18, v16

    add-int v5, v20, v15

    move/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 677
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 679
    return-object v12

    .line 643
    .end local v15    # "iconHeight":I
    .end local v16    # "iconWidth":I
    .end local v18    # "x":I
    .end local v19    # "xColor":I
    .end local v20    # "y":I
    :cond_1
    const v3, 0x7f0a000a

    goto :goto_0
.end method

.method private drawSynthesizedSettingsHintImage(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "mainIcon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "hintIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 511
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 512
    :cond_0
    const/4 v0, 0x0

    .line 533
    :goto_0
    return-object v0

    .line 513
    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 514
    .local v4, "hintIconPadding":Landroid/graphics/Rect;
    invoke-virtual {p4, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 515
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 516
    .local v0, "buffer":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 517
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0a0004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 521
    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, p1

    iget v6, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    .line 522
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 521
    sub-int/2addr v5, v6

    div-int/lit8 v2, v5, 0x2

    .line 523
    .local v2, "drawableX":I
    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, p2

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    .line 524
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 523
    sub-int/2addr v5, v6

    div-int/lit8 v3, v5, 0x2

    .line 525
    .local v3, "drawableY":I
    invoke-direct {p0, p3}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    .line 526
    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 527
    invoke-virtual {p3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 528
    neg-int v5, v2

    int-to-float v5, v5

    neg-int v6, v3

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 531
    invoke-virtual {p4, v7, v7, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 532
    invoke-virtual {p4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private getTextSizeFromTheme(II)I
    .locals 7
    .param p1, "style"    # I
    .param p2, "defValue"    # I

    .prologue
    const/4 v6, 0x0

    .line 899
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 900
    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x1010095

    aput v5, v4, v6

    .line 899
    invoke-virtual {v3, p1, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 902
    .local v0, "array":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0, v3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 905
    :goto_0
    return v2

    .line 904
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    move v2, p2

    .line 905
    goto :goto_0
.end method

.method private static getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I
    .locals 2
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 503
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 504
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 505
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public static hasPuncOrSmileysPopup(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z
    .locals 2
    .param p0, "key"    # Lnet/hasnath/android/keyboard/Keyboard$Key;

    .prologue
    .line 460
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupResId:I

    const v1, 0x7f050024

    if-eq v0, v1, :cond_0

    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupResId:I

    const v1, 0x7f050026

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private inPrefList(I[I)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "pref"    # [I

    .prologue
    const/4 v0, 0x0

    .line 866
    array-length v1, p2

    if-ge p1, v1, :cond_0

    if-ltz p1, :cond_0

    aget v1, p2, p1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 867
    :cond_0
    return v0
.end method

.method private indexOf(I)I
    .locals 5
    .param p1, "code"    # I

    .prologue
    .line 890
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 891
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Lnet/hasnath/android/keyboard/Keyboard$Key;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 892
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 895
    const/4 v1, -0x1

    .end local v1    # "i":I
    :cond_0
    return v1

    .line 893
    .restart local v1    # "i":I
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/hasnath/android/keyboard/Keyboard$Key;

    iget-object v3, v3, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-eq v3, p1, :cond_0

    .line 892
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static layoutSpaceBar(Landroid/graphics/Paint;Ljava/util/Locale;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIFZ)Ljava/lang/String;
    .locals 16
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "lArrow"    # Landroid/graphics/drawable/Drawable;
    .param p3, "rArrow"    # Landroid/graphics/drawable/Drawable;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "origTextSize"    # F
    .param p7, "allowVariableTextSize"    # Z

    .prologue
    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    int-to-float v3, v13

    .line 541
    .local v3, "arrowWidth":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    int-to-float v2, v13

    .line 542
    .local v2, "arrowHeight":F
    move/from16 v0, p4

    int-to-float v13, v0

    add-float v14, v3, v3

    sub-float v7, v13, v14

    .line 543
    .local v7, "maxTextWidth":F
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 546
    .local v5, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 547
    .local v6, "language":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-static {v0, v6, v1, v5}, Lnet/hasnath/android/keyboard/LatinKeyboard;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I

    move-result v10

    .line 549
    .local v10, "textWidth":I
    int-to-float v13, v10

    div-float v13, v7, v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    mul-float v9, p6, v13

    .line 552
    .local v9, "textSize":F
    if-eqz p7, :cond_2

    .line 553
    move-object/from16 v0, p0

    invoke-static {v0, v6, v9, v5}, Lnet/hasnath/android/keyboard/LatinKeyboard;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I

    move-result v10

    .line 555
    div-float v13, v9, p6

    const v14, 0x3f4ccccd    # 0.8f

    cmpg-float v13, v13, v14

    if-ltz v13, :cond_1

    .line 556
    int-to-float v13, v10

    .line 555
    cmpl-float v13, v13, v7

    if-gtz v13, :cond_1

    const/4 v12, 0x0

    .line 561
    .local v12, "useShortName":Z
    :goto_0
    if-eqz v12, :cond_0

    .line 562
    invoke-virtual/range {p1 .. p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 563
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-static {v0, v6, v1, v5}, Lnet/hasnath/android/keyboard/LatinKeyboard;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I

    move-result v10

    .line 564
    int-to-float v13, v10

    div-float v13, v7, v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    mul-float v9, p6, v13

    .line 566
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 569
    move/from16 v0, p5

    int-to-float v13, v0

    const v14, 0x3f19999a    # 0.6f

    mul-float v4, v13, v14

    .line 570
    .local v4, "baseline":F
    sub-float v13, v4, v2

    float-to-int v11, v13

    .line 571
    .local v11, "top":I
    sub-int v13, p4, v10

    div-int/lit8 v13, v13, 0x2

    int-to-float v8, v13

    .line 572
    .local v8, "remains":F
    sub-float v13, v8, v3

    float-to-int v13, v13

    float-to-int v14, v8

    float-to-int v15, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v11, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 573
    int-to-float v13, v10

    add-float/2addr v13, v8

    float-to-int v13, v13

    int-to-float v14, v10

    add-float/2addr v14, v8

    add-float/2addr v14, v3

    float-to-int v14, v14

    .line 574
    float-to-int v15, v4

    .line 573
    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v11, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 576
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIME;->useBanglaFont()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 578
    sget v13, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 579
    const-string v13, "\u0985\u09ad\u09cd\u09b0"

    .line 597
    :goto_1
    return-object v13

    .line 555
    .end local v4    # "baseline":F
    .end local v8    # "remains":F
    .end local v11    # "top":I
    .end local v12    # "useShortName":Z
    :cond_1
    const/4 v12, 0x1

    goto :goto_0

    .line 558
    :cond_2
    int-to-float v13, v10

    cmpl-float v13, v13, v7

    if-lez v13, :cond_3

    const/4 v12, 0x1

    .line 559
    .restart local v12    # "useShortName":Z
    :goto_2
    move/from16 v9, p6

    goto :goto_0

    .line 558
    .end local v12    # "useShortName":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 580
    .restart local v4    # "baseline":F
    .restart local v8    # "remains":F
    .restart local v11    # "top":I
    .restart local v12    # "useShortName":Z
    :cond_4
    sget v13, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_5

    .line 581
    const-string v13, "English"

    goto :goto_1

    .line 583
    :cond_5
    sget v13, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->CURRENT_FIXED_LAYOUT:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    .line 584
    const-string v13, "\u0627\u0644\u0639\u0631\u0628\u064a\u0629"

    goto :goto_1

    .line 585
    :cond_6
    const-string v13, "\u09aa\u09cd\u09b0\u09ad\u09be\u09a4"

    goto :goto_1

    .line 590
    :cond_7
    sget v13, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    .line 591
    const-string v13, "\u0985\u09ad\u09cd\u09b0"

    goto :goto_1

    .line 592
    :cond_8
    sget v13, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_9

    .line 593
    const-string v13, "English"

    goto :goto_1

    .line 595
    :cond_9
    sget v13, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->CURRENT_FIXED_LAYOUT:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    .line 596
    const-string v13, "\u0627\u0644\u0639\u0631\u0628\u064a\u0629"

    goto :goto_1

    .line 597
    :cond_a
    const-string v13, "\u09aa\u09cd\u09b0\u09ad\u09be\u09a4"

    goto :goto_1
.end method

.method private setDefaultBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 371
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 372
    return-void
.end method

.method private setMicF1Key(Lnet/hasnath/android/keyboard/Keyboard$Key;)V
    .locals 6
    .param p1, "key"    # Lnet/hasnath/android/keyboard/Keyboard$Key;

    .prologue
    .line 428
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    .line 429
    iget v2, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    iget v3, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->height:I

    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mMicIcon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mHintIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v4, v5}, Lnet/hasnath/android/keyboard/LatinKeyboard;->drawSynthesizedSettingsHintImage(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 428
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 431
    .local v0, "micWithSettingsHintDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    iput-object v1, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 432
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, -0x66

    aput v3, v1, v2

    iput-object v1, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    .line 433
    const v1, 0x7f050023

    iput v1, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupResId:I

    .line 434
    iput-object v0, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 435
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mMicPreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 436
    return-void
.end method

.method private setNonMicF1Key(Lnet/hasnath/android/keyboard/Keyboard$Key;Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Lnet/hasnath/android/keyboard/Keyboard$Key;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "popupResId"    # I

    .prologue
    const/4 v2, 0x0

    .line 449
    iput-object p2, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 450
    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput v1, v0, v2

    iput-object v0, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    .line 451
    iput p3, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupResId:I

    .line 452
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mHintIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 453
    const/4 v0, 0x0

    iput-object v0, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 454
    return-void
.end method

.method private update123Key()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 387
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->m123Key:Lnet/hasnath/android/keyboard/Keyboard$Key;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mIsAlphaKeyboard:Z

    if-eqz v0, :cond_0

    .line 388
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mVoiceEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mHasVoiceButton:Z

    if-nez v0, :cond_1

    .line 389
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->m123Key:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->m123MicIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 390
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->m123Key:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->m123MicPreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 391
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->m123Key:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iput-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->m123Key:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iput-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 394
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->m123Key:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iput-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 395
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->m123Key:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->m123Label:Ljava/lang/CharSequence;

    iput-object v1, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private updateDynamicKeys()V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinKeyboard;->update123Key()V

    .line 382
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinKeyboard;->updateF1Key()V

    .line 383
    return-void
.end method

.method private updateF1Key()V
    .locals 3

    .prologue
    const v2, 0x7f050021

    .line 402
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mF1Key:Lnet/hasnath/android/keyboard/Keyboard$Key;

    if-nez v0, :cond_0

    .line 424
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mIsAlphaKeyboard:Z

    if-eqz v0, :cond_4

    .line 406
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 407
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mF1Key:Lnet/hasnath/android/keyboard/Keyboard$Key;

    const-string v1, "/"

    const v2, 0x7f050025

    invoke-direct {p0, v0, v1, v2}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setNonMicF1Key(Lnet/hasnath/android/keyboard/Keyboard$Key;Ljava/lang/String;I)V

    goto :goto_0

    .line 408
    :cond_1
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 409
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mF1Key:Lnet/hasnath/android/keyboard/Keyboard$Key;

    const-string v1, "@"

    const v2, 0x7f050020

    invoke-direct {p0, v0, v1, v2}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setNonMicF1Key(Lnet/hasnath/android/keyboard/Keyboard$Key;Ljava/lang/String;I)V

    goto :goto_0

    .line 411
    :cond_2
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mVoiceEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mHasVoiceButton:Z

    if-eqz v0, :cond_3

    .line 412
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mF1Key:Lnet/hasnath/android/keyboard/Keyboard$Key;

    invoke-direct {p0, v0}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setMicF1Key(Lnet/hasnath/android/keyboard/Keyboard$Key;)V

    goto :goto_0

    .line 414
    :cond_3
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mF1Key:Lnet/hasnath/android/keyboard/Keyboard$Key;

    const-string v1, ","

    invoke-direct {p0, v0, v1, v2}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setNonMicF1Key(Lnet/hasnath/android/keyboard/Keyboard$Key;Ljava/lang/String;I)V

    goto :goto_0

    .line 418
    :cond_4
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mVoiceEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mHasVoiceButton:Z

    if-eqz v0, :cond_5

    .line 419
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mF1Key:Lnet/hasnath/android/keyboard/Keyboard$Key;

    invoke-direct {p0, v0}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setMicF1Key(Lnet/hasnath/android/keyboard/Keyboard$Key;)V

    goto :goto_0

    .line 421
    :cond_5
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mF1Key:Lnet/hasnath/android/keyboard/Keyboard$Key;

    const-string v1, ","

    invoke-direct {p0, v0, v1, v2}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setNonMicF1Key(Lnet/hasnath/android/keyboard/Keyboard$Key;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private updateLocaleDrag(I)V
    .locals 6
    .param p1, "diff"    # I

    .prologue
    const/4 v5, 0x0

    .line 683
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSlidingLocaleIcon:Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;

    if-nez v2, :cond_0

    .line 684
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iget v2, v2, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    .line 685
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboard;->getMinWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 684
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 686
    .local v1, "width":I
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 687
    .local v0, "height":I
    new-instance v2, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, p0, v3, v1, v0}, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;-><init>(Lnet/hasnath/android/keyboard/LatinKeyboard;Landroid/graphics/drawable/Drawable;II)V

    iput-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSlidingLocaleIcon:Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;

    .line 688
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSlidingLocaleIcon:Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;

    invoke-virtual {v2, v5, v5, v1, v0}, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->setBounds(IIII)V

    .line 689
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSlidingLocaleIcon:Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;

    iput-object v3, v2, Lnet/hasnath/android/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 691
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSlidingLocaleIcon:Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;

    invoke-static {v2, p1}, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->access$0(Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;I)V

    .line 692
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_1

    .line 693
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    iput-object v3, v2, Lnet/hasnath/android/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 697
    :goto_0
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iget-object v2, v2, Lnet/hasnath/android/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 698
    return-void

    .line 695
    :cond_1
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSlidingLocaleIcon:Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;

    iput-object v3, v2, Lnet/hasnath/android/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private updateSpaceBarForLocale(ZZ)V
    .locals 4
    .param p1, "isAutoCompletion"    # Z
    .param p2, "isBlack"    # Z

    .prologue
    .line 487
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    .line 488
    const/16 v3, 0xff

    invoke-direct {p0, v3, p1, p2}, Lnet/hasnath/android/keyboard/LatinKeyboard;->drawSpaceBar(IZZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 487
    iput-object v1, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 499
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Lnet/hasnath/android/keyboard/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Lnet/hasnath/android/keyboard/Keyboard$Key;
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Lnet/hasnath/android/keyboard/Keyboard$Row;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 186
    new-instance v0, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;-><init>(Lnet/hasnath/android/keyboard/LatinKeyboard;Landroid/content/res/Resources;Lnet/hasnath/android/keyboard/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 188
    .local v0, "key":Lnet/hasnath/android/keyboard/Keyboard$Key;
    iget-object v1, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 219
    :goto_0
    return-object v0

    .line 190
    :sswitch_0
    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    goto :goto_0

    .line 193
    :sswitch_1
    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mF1Key:Lnet/hasnath/android/keyboard/Keyboard$Key;

    goto :goto_0

    .line 196
    :sswitch_2
    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    goto :goto_0

    .line 199
    :sswitch_3
    const v1, 0x7f0200a6

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 202
    :sswitch_4
    const v1, 0x7f0200d9

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 205
    :sswitch_5
    const v1, 0x7f0200cd

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 208
    :sswitch_6
    const v1, 0x7f0200cc

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 211
    :sswitch_7
    const v1, 0x7f0200bb

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 214
    :sswitch_8
    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->m123Key:Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 215
    iget-object v1, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->m123Label:Ljava/lang/CharSequence;

    goto :goto_0

    .line 188
    :sswitch_data_0
    .sparse-switch
        -0x67 -> :sswitch_1
        -0x66 -> :sswitch_7
        -0x64 -> :sswitch_6
        -0x5 -> :sswitch_3
        -0x2 -> :sswitch_8
        -0x1 -> :sswitch_5
        0x9 -> :sswitch_4
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method enableShiftLock()V
    .locals 2

    .prologue
    .line 286
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboard;->getShiftKeyIndex()I

    move-result v0

    .line 287
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/hasnath/android/keyboard/Keyboard$Key;

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 289
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    instance-of v1, v1, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    check-cast v1, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;

    invoke-static {v1}, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->access$0(Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;)V

    .line 293
    :cond_0
    return-void
.end method

.method public getInputLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mLocale:Ljava/util/Locale;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getSystemLocale()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method public getLanguageChangeDirection()I
    .locals 3

    .prologue
    .line 701
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    if-eqz v0, :cond_0

    .line 702
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceDragLastDiff:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iget v1, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 703
    :cond_0
    const/4 v0, 0x0

    .line 705
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceDragLastDiff:I

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getNearestKeys(II)[I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 880
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mCurrentlyInSpace:Z

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceKeyIndexArray:[I

    .line 884
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboard;->getMinWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 885
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboard;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 884
    invoke-super {p0, v0, v1}, Lnet/hasnath/android/keyboard/Keyboard;->getNearestKeys(II)[I

    move-result-object v0

    goto :goto_0
.end method

.method isAlphaKeyboard()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mIsAlphaKeyboard:Z

    return v0
.end method

.method isCurrentlyInSpace()Z
    .locals 1

    .prologue
    .line 730
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mCurrentlyInSpace:Z

    return v0
.end method

.method public isF1Key(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z
    .locals 1
    .param p1, "key"    # Lnet/hasnath/android/keyboard/Keyboard$Key;

    .prologue
    .line 456
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mF1Key:Lnet/hasnath/android/keyboard/Keyboard$Key;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInside(Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;II)Z
    .locals 12
    .param p1, "key"    # Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 755
    iget-object v10, p1, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->codes:[I

    const/4 v11, 0x0

    aget v0, v10, v11

    .line 756
    .local v0, "code":I
    const/4 v10, -0x1

    if-eq v0, v10, :cond_0

    .line 757
    const/4 v10, -0x5

    if-ne v0, v10, :cond_4

    .line 758
    :cond_0
    iget v10, p1, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->height:I

    div-int/lit8 v10, v10, 0xa

    sub-int/2addr p3, v10

    .line 759
    const/4 v10, -0x1

    if-ne v0, v10, :cond_1

    iget v10, p1, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->width:I

    div-int/lit8 v10, v10, 0x6

    add-int/2addr p2, v10

    .line 760
    :cond_1
    const/4 v10, -0x5

    if-ne v0, v10, :cond_2

    iget v10, p1, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->width:I

    div-int/lit8 v10, v10, 0x6

    sub-int/2addr p2, v10

    .line 860
    :cond_2
    iget-boolean v10, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mCurrentlyInSpace:Z

    if-eqz v10, :cond_14

    const/4 v5, 0x0

    .line 862
    :cond_3
    :goto_0
    return v5

    .line 761
    :cond_4
    const/16 v10, 0x20

    if-ne v0, v10, :cond_7

    .line 762
    sget v10, Lnet/hasnath/android/keyboard/LatinKeyboard;->sSpacebarVerticalCorrection:I

    add-int/2addr p3, v10

    .line 766
    iget-boolean v10, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mCurrentlyInSpace:Z

    if-eqz v10, :cond_6

    .line 767
    iget v10, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceDragStartX:I

    sub-int v1, p2, v10

    .line 768
    .local v1, "diff":I
    iget v10, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceDragLastDiff:I

    sub-int v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-lez v10, :cond_5

    .line 769
    invoke-direct {p0, v1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->updateLocaleDrag(I)V

    .line 771
    :cond_5
    iput v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceDragLastDiff:I

    .line 772
    const/4 v5, 0x1

    goto :goto_0

    .line 774
    .end local v1    # "diff":I
    :cond_6
    invoke-virtual {p1, p2, p3}, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->isInsideSuper(II)Z

    move-result v5

    .line 775
    .local v5, "insideSpace":Z
    if-eqz v5, :cond_3

    .line 776
    const/4 v10, 0x1

    iput-boolean v10, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mCurrentlyInSpace:Z

    .line 777
    iput p2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceDragStartX:I

    .line 778
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lnet/hasnath/android/keyboard/LatinKeyboard;->updateLocaleDrag(I)V

    goto :goto_0

    .line 783
    .end local v5    # "insideSpace":Z
    :cond_7
    iget-object v10, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefLetterFrequencies:[I

    if-eqz v10, :cond_2

    .line 785
    iget v10, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefLetterX:I

    if-ne v10, p2, :cond_8

    iget v10, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefLetterY:I

    if-eq v10, p3, :cond_9

    .line 786
    :cond_8
    const/4 v10, 0x0

    iput v10, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefLetter:I

    .line 787
    const v10, 0x7fffffff

    iput v10, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefDistance:I

    .line 790
    :cond_9
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefLetterFrequencies:[I

    .line 791
    .local v9, "pref":[I
    iget v10, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefLetter:I

    if-lez v10, :cond_b

    .line 797
    iget v10, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefLetter:I

    if-ne v10, v0, :cond_a

    const/4 v5, 0x1

    goto :goto_0

    :cond_a
    const/4 v5, 0x0

    goto :goto_0

    .line 799
    :cond_b
    invoke-virtual {p1, p2, p3}, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->isInsideSuper(II)Z

    move-result v4

    .line 800
    .local v4, "inside":Z
    invoke-virtual {p0, p2, p3}, Lnet/hasnath/android/keyboard/LatinKeyboard;->getNearestKeys(II)[I

    move-result-object v7

    .line 801
    .local v7, "nearby":[I
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboard;->getKeys()Ljava/util/List;

    move-result-object v8

    .line 802
    .local v8, "nearbyKeys":Ljava/util/List;, "Ljava/util/List<Lnet/hasnath/android/keyboard/Keyboard$Key;>;"
    if-eqz v4, :cond_f

    .line 804
    invoke-direct {p0, v0, v9}, Lnet/hasnath/android/keyboard/LatinKeyboard;->inPrefList(I[I)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 806
    iput v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefLetter:I

    .line 807
    iput p2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefLetterX:I

    .line 808
    iput p3, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefLetterY:I

    .line 809
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v10, v7

    if-lt v3, v10, :cond_c

    .line 825
    :goto_2
    iget v10, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefLetter:I

    if-ne v10, v0, :cond_e

    const/4 v5, 0x1

    goto :goto_0

    .line 810
    :cond_c
    aget v10, v7, v3

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 811
    .local v6, "k":Lnet/hasnath/android/keyboard/Keyboard$Key;
    if-eq v6, p1, :cond_d

    iget-object v10, v6, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-direct {p0, v10, v9}, Lnet/hasnath/android/keyboard/LatinKeyboard;->inPrefList(I[I)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 812
    invoke-direct {p0, v6, p2, p3}, Lnet/hasnath/android/keyboard/LatinKeyboard;->distanceFrom(Lnet/hasnath/android/keyboard/Keyboard$Key;II)I

    move-result v2

    .line 813
    .local v2, "dist":I
    iget v10, v6, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    int-to-float v10, v10

    const v11, 0x3f333333    # 0.7f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    if-ge v2, v10, :cond_d

    .line 814
    iget-object v10, v6, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    aget v10, v9, v10

    iget v11, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefLetter:I

    aget v11, v9, v11

    mul-int/lit8 v11, v11, 0x3

    if-le v10, v11, :cond_d

    .line 815
    iget-object v10, v6, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iput v10, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefLetter:I

    .line 816
    iput v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefDistance:I

    goto :goto_2

    .line 809
    .end local v2    # "dist":I
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 825
    .end local v6    # "k":Lnet/hasnath/android/keyboard/Keyboard$Key;
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 837
    .end local v3    # "i":I
    :cond_f
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    array-length v10, v7

    if-lt v3, v10, :cond_10

    .line 851
    iget v10, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefLetter:I

    if-nez v10, :cond_12

    move v5, v4

    .line 852
    goto/16 :goto_0

    .line 838
    :cond_10
    aget v10, v7, v3

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 839
    .restart local v6    # "k":Lnet/hasnath/android/keyboard/Keyboard$Key;
    iget-object v10, v6, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-direct {p0, v10, v9}, Lnet/hasnath/android/keyboard/LatinKeyboard;->inPrefList(I[I)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 840
    invoke-direct {p0, v6, p2, p3}, Lnet/hasnath/android/keyboard/LatinKeyboard;->distanceFrom(Lnet/hasnath/android/keyboard/Keyboard$Key;II)I

    move-result v2

    .line 841
    .restart local v2    # "dist":I
    iget v10, v6, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    int-to-float v10, v10

    const v11, 0x3f59999a    # 0.85f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    if-ge v2, v10, :cond_11

    .line 842
    iget v10, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefDistance:I

    if-ge v2, v10, :cond_11

    .line 843
    iget-object v10, v6, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iput v10, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefLetter:I

    .line 844
    iput p2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefLetterX:I

    .line 845
    iput p3, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefLetterY:I

    .line 846
    iput v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefDistance:I

    .line 837
    .end local v2    # "dist":I
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 854
    .end local v6    # "k":Lnet/hasnath/android/keyboard/Keyboard$Key;
    :cond_12
    iget v10, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefLetter:I

    if-ne v10, v0, :cond_13

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 862
    .end local v3    # "i":I
    .end local v4    # "inside":Z
    .end local v7    # "nearby":[I
    .end local v8    # "nearbyKeys":Ljava/util/List;, "Ljava/util/List<Lnet/hasnath/android/keyboard/Keyboard$Key;>;"
    .end local v9    # "pref":[I
    :cond_14
    invoke-virtual {p1, p2, p3}, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->isInsideSuper(II)Z

    move-result v5

    goto/16 :goto_0
.end method

.method public isLanguageSwitchEnabled()Z
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isShiftLocked()Z
    .locals 2

    .prologue
    .line 310
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    if-eqz v0, :cond_1

    .line 338
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 340
    :goto_0
    return v0

    .line 338
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 340
    :cond_1
    invoke-super {p0}, Lnet/hasnath/android/keyboard/Keyboard;->isShifted()Z

    move-result v0

    goto :goto_0
.end method

.method keyReleased()V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    const/4 v0, 0x0

    .line 739
    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mCurrentlyInSpace:Z

    .line 740
    iput v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceDragLastDiff:I

    .line 741
    iput v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefLetter:I

    .line 742
    iput v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefLetterX:I

    .line 743
    iput v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefLetterY:I

    .line 744
    iput v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefDistance:I

    .line 745
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    if-eqz v0, :cond_0

    .line 746
    invoke-direct {p0, v1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->updateLocaleDrag(I)V

    .line 748
    :cond_0
    return-void
.end method

.method public onAutoCompletionStateChanged(Z)Lnet/hasnath/android/keyboard/Keyboard$Key;
    .locals 1
    .param p1, "isAutoCompletion"    # Z

    .prologue
    .line 467
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mIsBlackSym:Z

    invoke-direct {p0, p1, v0}, Lnet/hasnath/android/keyboard/LatinKeyboard;->updateSpaceBarForLocale(ZZ)V

    .line 468
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    return-object v0
.end method

.method public setColorOfSymbolIcons(ZZ)V
    .locals 2
    .param p1, "isAutoCompletion"    # Z
    .param p2, "isBlack"    # Z

    .prologue
    .line 351
    iput-boolean p2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mIsBlackSym:Z

    .line 352
    if-eqz p2, :cond_1

    .line 353
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    .line 354
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0200a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    .line 355
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f02008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mMicIcon:Landroid/graphics/drawable/Drawable;

    .line 356
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f02008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->m123MicIcon:Landroid/graphics/drawable/Drawable;

    .line 363
    :goto_0
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinKeyboard;->updateDynamicKeys()V

    .line 364
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    if-eqz v0, :cond_0

    .line 365
    invoke-direct {p0, p1, p2}, Lnet/hasnath/android/keyboard/LatinKeyboard;->updateSpaceBarForLocale(ZZ)V

    .line 368
    :cond_0
    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0200d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    .line 359
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0200d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    .line 360
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mMicIcon:Landroid/graphics/drawable/Drawable;

    .line 361
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->m123MicIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method setImeOptions(Landroid/content/res/Resources;II)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "mode"    # I
    .param p3, "options"    # I

    .prologue
    const/4 v2, 0x0

    .line 223
    iput p2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mMode:I

    .line 225
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iput-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 228
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    const/4 v1, 0x0

    iput v1, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupResId:I

    .line 229
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iput-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 230
    const v0, 0x400000ff    # 2.0000608f

    and-int/2addr v0, p3

    packed-switch v0, :pswitch_data_0

    .line 263
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 264
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    const-string v1, "\n"

    iput-object v1, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 266
    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 267
    const v1, 0x7f0200b1

    .line 266
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 268
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mIsBlackSym:Z

    if-eqz v0, :cond_3

    .line 269
    const v0, 0x7f02009d

    .line 268
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 270
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iput-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 275
    :goto_1
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    .line 279
    :cond_1
    return-void

    .line 232
    :pswitch_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iput-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 233
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iput-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 234
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    const v1, 0x7f0700c1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_1

    .line 237
    :pswitch_1
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iput-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 238
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iput-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 239
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    const v1, 0x7f0700c2

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_1

    .line 242
    :pswitch_2
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iput-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 243
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iput-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 244
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    const v1, 0x7f0700c3

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_1

    .line 247
    :pswitch_3
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 248
    const v1, 0x7f0200b2

    .line 247
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 249
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mIsBlackSym:Z

    if-eqz v0, :cond_2

    .line 250
    const v0, 0x7f02009e

    .line 249
    :goto_2
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 251
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iput-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_1

    .line 250
    :cond_2
    const v0, 0x7f0200cb

    goto :goto_2

    .line 254
    :pswitch_4
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iput-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 255
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iput-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 256
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mEnterKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    const v1, 0x7f0700c4

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_1

    .line 269
    :cond_3
    const v0, 0x7f0200c9

    goto/16 :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setLanguageSwitcher(Lnet/hasnath/android/keyboard/LanguageSwitcher;ZZ)V
    .locals 3
    .param p1, "switcher"    # Lnet/hasnath/android/keyboard/LanguageSwitcher;
    .param p2, "isAutoCompletion"    # Z
    .param p3, "isBlackSym"    # Z

    .prologue
    .line 710
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    .line 711
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getLocaleCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 712
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v0

    .line 715
    .local v0, "locale":Ljava/util/Locale;
    :goto_0
    if-eqz v0, :cond_0

    .line 716
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getLocaleCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 717
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mLanguageSwitcher:Lnet/hasnath/android/keyboard/LanguageSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->getSystemLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 718
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    const/4 v0, 0x0

    .line 721
    :cond_0
    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mLocale:Ljava/util/Locale;

    .line 722
    invoke-virtual {p0, p2, p3}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setColorOfSymbolIcons(ZZ)V

    .line 723
    return-void

    .line 713
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setPreferredLetters([I)V
    .locals 1
    .param p1, "frequencies"    # [I

    .prologue
    .line 734
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefLetterFrequencies:[I

    .line 735
    const/4 v0, 0x0

    iput v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mPrefLetter:I

    .line 736
    return-void
.end method

.method setShiftLocked(Z)V
    .locals 3
    .param p1, "shiftLocked"    # Z

    .prologue
    const/4 v2, 0x1

    .line 296
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    if-eqz v0, :cond_0

    .line 297
    if-eqz p1, :cond_1

    .line 298
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iput-boolean v2, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->on:Z

    .line 299
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 300
    const/4 v0, 0x2

    iput v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftState:I

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->on:Z

    .line 303
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 304
    iput v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftState:I

    goto :goto_0
.end method

.method public setShifted(Z)Z
    .locals 4
    .param p1, "shiftState"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "shiftChanged":Z
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    if-eqz v3, :cond_4

    .line 317
    if-nez p1, :cond_2

    .line 318
    iget v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftState:I

    if-eqz v3, :cond_1

    move v0, v1

    .line 319
    :goto_0
    iput v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftState:I

    .line 320
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iput-boolean v2, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->on:Z

    .line 321
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mOldShiftIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_1
    move v1, v0

    .line 332
    :goto_2
    return v1

    :cond_1
    move v0, v2

    .line 318
    goto :goto_0

    .line 323
    :cond_2
    iget v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftState:I

    if-nez v3, :cond_0

    .line 324
    iget v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftState:I

    if-nez v3, :cond_3

    move v0, v1

    .line 325
    :goto_3
    iput v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftState:I

    .line 326
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    move v0, v2

    .line 324
    goto :goto_3

    .line 330
    :cond_4
    invoke-super {p0, p1}, Lnet/hasnath/android/keyboard/Keyboard;->setShifted(Z)Z

    move-result v1

    goto :goto_2
.end method

.method public setThemeIndex(I)V
    .locals 0
    .param p1, "theme"    # I

    .prologue
    .line 282
    iput p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mThemeIndex:I

    .line 283
    return-void
.end method

.method public setVoiceMode(ZZ)V
    .locals 0
    .param p1, "hasVoiceButton"    # Z
    .param p2, "hasVoice"    # Z

    .prologue
    .line 375
    iput-boolean p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mHasVoiceButton:Z

    .line 376
    iput-boolean p2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard;->mVoiceEnabled:Z

    .line 377
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinKeyboard;->updateDynamicKeys()V

    .line 378
    return-void
.end method
