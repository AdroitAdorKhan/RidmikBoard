.class Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LatinKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/LatinKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingLocaleDrawable"
.end annotation


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private mCurrentLanguage:Ljava/lang/String;

.field private mDiff:I

.field private final mHeight:I

.field private mHitThreshold:Z

.field private final mLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private final mMiddleX:I

.field private mNextLanguage:Ljava/lang/String;

.field private mPrevLanguage:Ljava/lang/String;

.field private final mRightDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private final mThreshold:I

.field private final mWidth:I

.field final synthetic this$0:Lnet/hasnath/android/keyboard/LatinKeyboard;


# direct methods
.method public constructor <init>(Lnet/hasnath/android/keyboard/LatinKeyboard;Landroid/graphics/drawable/Drawable;II)V
    .locals 3
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1012
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboard;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 1013
    iput-object p2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 1014
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lnet/hasnath/android/keyboard/LatinKeyboard;->access$1(Lnet/hasnath/android/keyboard/LatinKeyboard;Landroid/graphics/drawable/Drawable;)V

    .line 1015
    iput p3, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    .line 1016
    iput p4, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mHeight:I

    .line 1017
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    .line 1018
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const v1, 0x1030044

    const/16 v2, 0x12

    invoke-static {p1, v1, v2}, Lnet/hasnath/android/keyboard/LatinKeyboard;->access$2(Lnet/hasnath/android/keyboard/LatinKeyboard;II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1019
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 1020
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1021
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1022
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1023
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mMiddleX:I

    .line 1025
    invoke-static {p1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->access$3(Lnet/hasnath/android/keyboard/LatinKeyboard;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1024
    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 1027
    invoke-static {p1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->access$3(Lnet/hasnath/android/keyboard/LatinKeyboard;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1026
    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 1028
    invoke-static {p1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->access$4(Lnet/hasnath/android/keyboard/LatinKeyboard;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mThreshold:I

    .line 1029
    return-void
.end method

.method static synthetic access$0(Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;I)V
    .locals 0

    .prologue
    .line 1031
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->setDiff(I)V

    return-void
.end method

.method private getLanguageName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1045
    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/hasnath/android/keyboard/LanguageSwitcher;->toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setDiff(I)V
    .locals 2
    .param p1, "diff"    # I

    .prologue
    .line 1032
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 1033
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mHitThreshold:Z

    .line 1034
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 1042
    :goto_0
    return-void

    .line 1037
    :cond_0
    iput p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    .line 1038
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    iget v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    iput v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    .line 1039
    :cond_1
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    iget v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    neg-int v1, v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    neg-int v0, v0

    iput v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    .line 1040
    :cond_2
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mThreshold:I

    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mHitThreshold:Z

    .line 1041
    :cond_3
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->invalidateSelf()V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v13, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v10, 0x1

    .line 1050
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1051
    iget-boolean v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mHitThreshold:Z

    if-eqz v9, :cond_5

    .line 1052
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    .line 1053
    .local v6, "paint":Landroid/graphics/Paint;
    iget v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    .line 1054
    .local v8, "width":I
    iget v4, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mHeight:I

    .line 1055
    .local v4, "height":I
    iget v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    .line 1056
    .local v3, "diff":I
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 1057
    .local v5, "lArrow":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 1058
    .local v7, "rArrow":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v12, v12, v8, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1060
    const/4 v2, 0x0

    .line 1062
    .local v2, "currentFixed":Ljava/lang/String;
    sget v9, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->CURRENT_FIXED_LAYOUT:I

    if-ne v9, v10, :cond_8

    .line 1063
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIME;->useBanglaFont()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1064
    const-string v2, "প্রভাত"

    .line 1073
    :goto_0
    const-string v0, "\u0985\u09ad\u09cd\u09b0"

    .line 1074
    .local v0, "banglaString":Ljava/lang/String;
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIME;->useBanglaFont()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1075
    const-string v0, "\u00b1\u00f4"

    .line 1077
    :cond_0
    sget v9, Lnet/hasnath/android/keyboard/LatinIME;->CURRENT_TOGGLER:I

    if-ne v9, v10, :cond_c

    .line 1079
    sget v9, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v9, v10, :cond_a

    .line 1080
    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 1081
    const-string v9, "English"

    iput-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    .line 1082
    iput-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    .line 1112
    :cond_1
    :goto_1
    iget v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mHeight:I

    int-to-float v9, v9

    const v10, 0x3f19999a    # 0.6f

    mul-float/2addr v9, v10

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v10

    sub-float v1, v9, v10

    .line 1113
    .local v1, "baseline":F
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboard;

    invoke-static {v9}, Lnet/hasnath/android/keyboard/LatinKeyboard;->access$3(Lnet/hasnath/android/keyboard/LatinKeyboard;)Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0009

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1115
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboard;

    invoke-static {v9}, Lnet/hasnath/android/keyboard/LatinKeyboard;->access$5(Lnet/hasnath/android/keyboard/LatinKeyboard;)I

    move-result v9

    sget v10, Lnet/hasnath/android/keyboard/LatinIME;->LOLIPOP_THEME_INDEX:I

    if-eq v9, v10, :cond_2

    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboard;

    invoke-static {v9}, Lnet/hasnath/android/keyboard/LatinKeyboard;->access$5(Lnet/hasnath/android/keyboard/LatinKeyboard;)I

    move-result v9

    sget v10, Lnet/hasnath/android/keyboard/LatinIME;->LOLIPOP_THEME_INDEX:I

    add-int/lit8 v10, v10, 0x1

    if-ne v9, v10, :cond_3

    .line 1116
    :cond_2
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboard;

    invoke-static {v9}, Lnet/hasnath/android/keyboard/LatinKeyboard;->access$3(Lnet/hasnath/android/keyboard/LatinKeyboard;)Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a000b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1118
    :cond_3
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIME;->useBanglaFont()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1119
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboard;

    invoke-static {v9}, Lnet/hasnath/android/keyboard/LatinKeyboard;->access$4(Lnet/hasnath/android/keyboard/LatinKeyboard;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "Ridmik.ttf"

    invoke-static {v9, v10}, Lnet/hasnath/android/keyboard/Typefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1121
    :cond_4
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    div-int/lit8 v10, v8, 0x2

    add-int/2addr v10, v3

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1122
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    div-int/lit8 v10, v8, 0x2

    sub-int v10, v3, v10

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1123
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    add-int v10, v3, v8

    div-int/lit8 v11, v8, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1125
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboard;

    invoke-static {v9}, Lnet/hasnath/android/keyboard/LatinKeyboard;->access$5(Lnet/hasnath/android/keyboard/LatinKeyboard;)I

    move-result v9

    sget v10, Lnet/hasnath/android/keyboard/LatinIME;->LOLIPOP_THEME_INDEX:I

    if-eq v9, v10, :cond_5

    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboard;

    invoke-static {v9}, Lnet/hasnath/android/keyboard/LatinKeyboard;->access$5(Lnet/hasnath/android/keyboard/LatinKeyboard;)I

    move-result v9

    sget v10, Lnet/hasnath/android/keyboard/LatinIME;->LOLIPOP_THEME_INDEX:I

    add-int/lit8 v10, v10, 0x1

    if-eq v9, v10, :cond_5

    .line 1126
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboard;

    invoke-static {v9, v5}, Lnet/hasnath/android/keyboard/LatinKeyboard;->access$1(Lnet/hasnath/android/keyboard/LatinKeyboard;Landroid/graphics/drawable/Drawable;)V

    .line 1127
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    sub-int v9, v8, v9

    .line 1128
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 1127
    invoke-virtual {v7, v9, v12, v8, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1129
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1130
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1133
    .end local v0    # "banglaString":Ljava/lang/String;
    .end local v1    # "baseline":F
    .end local v2    # "currentFixed":Ljava/lang/String;
    .end local v3    # "diff":I
    .end local v4    # "height":I
    .end local v5    # "lArrow":Landroid/graphics/drawable/Drawable;
    .end local v6    # "paint":Landroid/graphics/Paint;
    .end local v7    # "rArrow":Landroid/graphics/drawable/Drawable;
    .end local v8    # "width":I
    :cond_5
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_6

    .line 1134
    iget v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mMiddleX:I

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1135
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1137
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1138
    return-void

    .line 1065
    .restart local v2    # "currentFixed":Ljava/lang/String;
    .restart local v3    # "diff":I
    .restart local v4    # "height":I
    .restart local v5    # "lArrow":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "paint":Landroid/graphics/Paint;
    .restart local v7    # "rArrow":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "width":I
    :cond_7
    const-string v2, "\u09aa\u09cd\u09b0\u09ad\u09be\u09a4"

    .line 1066
    goto/16 :goto_0

    .line 1067
    :cond_8
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIME;->useBanglaFont()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1068
    const-string v2, "\u00c2\u00e2\u00ca\u00e4\u00dd"

    goto/16 :goto_0

    .line 1070
    :cond_9
    const-string v2, "\u099c\u09be\u09a4\u09c0\u09df"

    goto/16 :goto_0

    .line 1083
    .restart local v0    # "banglaString":Ljava/lang/String;
    :cond_a
    sget v9, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v9, v11, :cond_b

    .line 1084
    const-string v9, "English"

    iput-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 1085
    iput-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    .line 1086
    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    goto/16 :goto_1

    .line 1088
    :cond_b
    iput-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 1089
    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    .line 1090
    const-string v9, "English"

    iput-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    goto/16 :goto_1

    .line 1092
    :cond_c
    sget v9, Lnet/hasnath/android/keyboard/LatinIME;->CURRENT_TOGGLER:I

    if-ne v9, v11, :cond_e

    .line 1093
    sget v9, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v9, v13, :cond_d

    .line 1094
    iput-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 1095
    const-string v9, "English"

    iput-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    iput-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    goto/16 :goto_1

    .line 1097
    :cond_d
    const-string v9, "English"

    iput-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 1098
    iput-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    iput-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    goto/16 :goto_1

    .line 1100
    :cond_e
    sget v9, Lnet/hasnath/android/keyboard/LatinIME;->CURRENT_TOGGLER:I

    if-ne v9, v13, :cond_1

    .line 1101
    sget v9, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v9, v10, :cond_f

    .line 1102
    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 1103
    const-string v9, "English"

    iput-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    iput-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    goto/16 :goto_1

    .line 1105
    :cond_f
    const-string v9, "English"

    iput-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 1106
    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 1162
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 1157
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 1142
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 1148
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 1153
    return-void
.end method
