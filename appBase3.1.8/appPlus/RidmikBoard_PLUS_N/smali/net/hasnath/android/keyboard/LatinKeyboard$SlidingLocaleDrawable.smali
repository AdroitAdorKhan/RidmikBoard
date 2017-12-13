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
    .line 991
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboard;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 992
    iput-object p2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 993
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lnet/hasnath/android/keyboard/LatinKeyboard;->access$1(Lnet/hasnath/android/keyboard/LatinKeyboard;Landroid/graphics/drawable/Drawable;)V

    .line 994
    iput p3, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    .line 995
    iput p4, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mHeight:I

    .line 996
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    .line 997
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const v1, 0x1030044

    const/16 v2, 0x12

    invoke-static {p1, v1, v2}, Lnet/hasnath/android/keyboard/LatinKeyboard;->access$2(Lnet/hasnath/android/keyboard/LatinKeyboard;II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 998
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 999
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1000
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 1001
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1002
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mMiddleX:I

    .line 1004
    invoke-static {p1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->access$3(Lnet/hasnath/android/keyboard/LatinKeyboard;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1003
    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 1006
    invoke-static {p1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->access$3(Lnet/hasnath/android/keyboard/LatinKeyboard;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1005
    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 1007
    invoke-static {p1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->access$4(Lnet/hasnath/android/keyboard/LatinKeyboard;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mThreshold:I

    .line 1008
    return-void
.end method

.method static synthetic access$0(Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;I)V
    .locals 0

    .prologue
    .line 1010
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->setDiff(I)V

    return-void
.end method

.method private getLanguageName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1024
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
    .line 1011
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 1012
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mHitThreshold:Z

    .line 1013
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 1021
    :goto_0
    return-void

    .line 1016
    :cond_0
    iput p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    .line 1017
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    iget v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    iput v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    .line 1018
    :cond_1
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    iget v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    neg-int v1, v1

    if-ge v0, v1, :cond_2

    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    neg-int v0, v0

    iput v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    .line 1019
    :cond_2
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mThreshold:I

    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mHitThreshold:Z

    .line 1020
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

    .line 1029
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1030
    iget-boolean v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mHitThreshold:Z

    if-eqz v9, :cond_3

    .line 1031
    iget-object v6, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mTextPaint:Landroid/text/TextPaint;

    .line 1032
    .local v6, "paint":Landroid/graphics/Paint;
    iget v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    .line 1033
    .local v8, "width":I
    iget v4, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mHeight:I

    .line 1034
    .local v4, "height":I
    iget v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mDiff:I

    .line 1035
    .local v3, "diff":I
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 1036
    .local v5, "lArrow":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 1037
    .local v7, "rArrow":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v12, v12, v8, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1039
    const/4 v2, 0x0

    .line 1041
    .local v2, "currentFixed":Ljava/lang/String;
    sget v9, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->CURRENT_FIXED_LAYOUT:I

    if-ne v9, v10, :cond_6

    .line 1042
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIME;->useBanglaFont()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1043
    const-string v2, "\u00b2\u00b4\u00e3\u00ce\u00c2\u00dd"

    .line 1052
    :goto_0
    const-string v0, "\u0985\u09ad\u09cd\u09b0"

    .line 1053
    .local v0, "banglaString":Ljava/lang/String;
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIME;->useBanglaFont()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1054
    const-string v0, "\u00b1\u00f4"

    .line 1056
    :cond_0
    sget v9, Lnet/hasnath/android/keyboard/LatinIME;->CURRENT_TOGGLER:I

    if-ne v9, v10, :cond_a

    .line 1058
    sget v9, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v9, v10, :cond_8

    .line 1059
    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 1060
    const-string v9, "English"

    iput-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    .line 1061
    iput-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    .line 1091
    :cond_1
    :goto_1
    iget v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mHeight:I

    int-to-float v9, v9

    const v10, 0x3f19999a    # 0.6f

    mul-float/2addr v9, v10

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v10

    sub-float v1, v9, v10

    .line 1092
    .local v1, "baseline":F
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboard;

    invoke-static {v9}, Lnet/hasnath/android/keyboard/LatinKeyboard;->access$3(Lnet/hasnath/android/keyboard/LatinKeyboard;)Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0009

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1094
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIME;->useBanglaFont()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1095
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboard;

    invoke-static {v9}, Lnet/hasnath/android/keyboard/LatinKeyboard;->access$4(Lnet/hasnath/android/keyboard/LatinKeyboard;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "Ridmik.ttf"

    invoke-static {v9, v10}, Lnet/hasnath/android/keyboard/Typefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1097
    :cond_2
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    div-int/lit8 v10, v8, 0x2

    add-int/2addr v10, v3

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1098
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    div-int/lit8 v10, v8, 0x2

    sub-int v10, v3, v10

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1099
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    add-int v10, v3, v8

    div-int/lit8 v11, v8, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1101
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboard;

    invoke-static {v9, v5}, Lnet/hasnath/android/keyboard/LatinKeyboard;->access$1(Lnet/hasnath/android/keyboard/LatinKeyboard;Landroid/graphics/drawable/Drawable;)V

    .line 1102
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    sub-int v9, v8, v9

    .line 1103
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 1102
    invoke-virtual {v7, v9, v12, v8, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1104
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1105
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1107
    .end local v0    # "banglaString":Ljava/lang/String;
    .end local v1    # "baseline":F
    .end local v2    # "currentFixed":Ljava/lang/String;
    .end local v3    # "diff":I
    .end local v4    # "height":I
    .end local v5    # "lArrow":Landroid/graphics/drawable/Drawable;
    .end local v6    # "paint":Landroid/graphics/Paint;
    .end local v7    # "rArrow":Landroid/graphics/drawable/Drawable;
    .end local v8    # "width":I
    :cond_3
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_4

    .line 1108
    iget v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mMiddleX:I

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1109
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1111
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1112
    return-void

    .line 1044
    .restart local v2    # "currentFixed":Ljava/lang/String;
    .restart local v3    # "diff":I
    .restart local v4    # "height":I
    .restart local v5    # "lArrow":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "paint":Landroid/graphics/Paint;
    .restart local v7    # "rArrow":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "width":I
    :cond_5
    const-string v2, "\u0987\u0989\u09a8\u09bf\u099c\u09df"

    .line 1045
    goto/16 :goto_0

    .line 1046
    :cond_6
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIME;->useBanglaFont()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1047
    const-string v2, "\u00c2\u00f0\u00c5\u00b3\u00dd"

    goto/16 :goto_0

    .line 1049
    :cond_7
    const-string v2, "\u099c\u09be\u09a4\u09c0\u09df"

    goto/16 :goto_0

    .line 1062
    .restart local v0    # "banglaString":Ljava/lang/String;
    :cond_8
    sget v9, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v9, v11, :cond_9

    .line 1063
    const-string v9, "English"

    iput-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 1064
    iput-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    .line 1065
    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    goto/16 :goto_1

    .line 1067
    :cond_9
    iput-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 1068
    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    .line 1069
    const-string v9, "English"

    iput-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    goto/16 :goto_1

    .line 1071
    :cond_a
    sget v9, Lnet/hasnath/android/keyboard/LatinIME;->CURRENT_TOGGLER:I

    if-ne v9, v11, :cond_c

    .line 1072
    sget v9, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v9, v13, :cond_b

    .line 1073
    iput-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 1074
    const-string v9, "English"

    iput-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    iput-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    goto/16 :goto_1

    .line 1076
    :cond_b
    const-string v9, "English"

    iput-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 1077
    iput-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    iput-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    goto/16 :goto_1

    .line 1079
    :cond_c
    sget v9, Lnet/hasnath/android/keyboard/LatinIME;->CURRENT_TOGGLER:I

    if-ne v9, v13, :cond_1

    .line 1080
    sget v9, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    if-ne v9, v10, :cond_d

    .line 1081
    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 1082
    const-string v9, "English"

    iput-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    iput-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    goto/16 :goto_1

    .line 1084
    :cond_d
    const-string v9, "English"

    iput-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mCurrentLanguage:Ljava/lang/String;

    .line 1085
    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mPrevLanguage:Ljava/lang/String;

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mNextLanguage:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 1136
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 1131
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$SlidingLocaleDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 1116
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 1122
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 1127
    return-void
.end method
