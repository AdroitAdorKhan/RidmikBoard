.class public Lnet/hasnath/android/keyboard/CandidateView;
.super Landroid/view/View;
.source "CandidateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;
    }
.end annotation


# static fields
.field private static final MAX_SUGGESTIONS:I = 0x20

.field private static final OUT_OF_BOUNDS_WORD_INDEX:I = -0x1

.field private static final OUT_OF_BOUNDS_X_COORD:I = -0x1

.field private static final SCROLL_PIXELS:I = 0x14

.field private static final X_GAP:I = 0xa


# instance fields
.field private mAddToDictionaryHint:Ljava/lang/CharSequence;

.field private mBgPadding:Landroid/graphics/Rect;

.field private final mColorNormal:I

.field private final mColorOther:I

.field private final mColorRecommended:I

.field private mCurrentWordIndex:I

.field private final mDescent:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mHaveMinimalSuggestion:Z

.field private final mMinTouchableWidth:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mPopupPreviewX:I

.field private mPopupPreviewY:I

.field private final mPreviewPopup:Landroid/widget/PopupWindow;

.field private final mPreviewText:Landroid/widget/TextView;

.field private mScrolled:Z

.field private mSelectedIndex:I

.field private mSelectedString:Ljava/lang/CharSequence;

.field private final mSelectionHighlight:Landroid/graphics/drawable/Drawable;

.field private mService:Lnet/hasnath/android/keyboard/LatinIME;

.field private mShowingAddToDictionary:Z

.field private mShowingCompletions:Z

.field private final mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetScrollX:I

.field private mTotalWidth:I

.field private mTouchX:I

.field private mTypedWordValid:Z

.field private final mWordWidth:[I

.field private final mWordX:[I

.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const/16 v3, 0x20

    const/4 v4, -0x2

    const/4 v5, 0x0

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    .line 57
    const/4 v2, -0x1

    iput v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTouchX:I

    .line 73
    new-array v2, v3, [I

    iput-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mWordWidth:[I

    .line 74
    new-array v2, v3, [I

    iput-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mWordX:[I

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 105
    const v3, 0x7f020059

    .line 104
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    .line 109
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 108
    check-cast v0, Landroid/view/LayoutInflater;

    .line 110
    .local v0, "inflate":Landroid/view/LayoutInflater;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 111
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 112
    const v2, 0x7f030002

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    .line 114
    iget-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v4, v4}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 115
    iget-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 116
    iget-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const v3, 0x7f0e0002

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 118
    const/high16 v2, 0x7f0b0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mColorNormal:I

    .line 119
    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mColorRecommended:I

    .line 120
    const v2, 0x7f0b0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mColorOther:I

    .line 121
    const v2, 0x7f020057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 122
    const v2, 0x7f0800e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mAddToDictionaryHint:Ljava/lang/CharSequence;

    .line 124
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    .line 125
    iget-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mColorNormal:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    iget-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 128
    iget-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 129
    iget-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 130
    iget-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mDescent:I

    .line 131
    const v2, 0x7f0c0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mMinTouchableWidth:I

    .line 133
    new-instance v2, Landroid/view/GestureDetector;

    .line 134
    new-instance v3, Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;

    iget v4, p0, Lnet/hasnath/android/keyboard/CandidateView;->mMinTouchableWidth:I

    invoke-direct {v3, p0, v4}, Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;-><init>(Lnet/hasnath/android/keyboard/CandidateView;I)V

    invoke-direct {v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 133
    iput-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 135
    invoke-virtual {p0, v5}, Lnet/hasnath/android/keyboard/CandidateView;->setWillNotDraw(Z)V

    .line 136
    invoke-virtual {p0, v5}, Lnet/hasnath/android/keyboard/CandidateView;->setHorizontalScrollBarEnabled(Z)V

    .line 137
    invoke-virtual {p0, v5}, Lnet/hasnath/android/keyboard/CandidateView;->setVerticalScrollBarEnabled(Z)V

    .line 138
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v5, v2}, Lnet/hasnath/android/keyboard/CandidateView;->scrollTo(II)V

    .line 141
    return-void
.end method

.method static synthetic access$0(Lnet/hasnath/android/keyboard/CandidateView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lnet/hasnath/android/keyboard/CandidateView;)[I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mWordWidth:[I

    return-object v0
.end method

.method static synthetic access$2(Lnet/hasnath/android/keyboard/CandidateView;)V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/CandidateView;->longPressFirstWord()V

    return-void
.end method

.method static synthetic access$3(Lnet/hasnath/android/keyboard/CandidateView;Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lnet/hasnath/android/keyboard/CandidateView;->mScrolled:Z

    return-void
.end method

.method static synthetic access$4(Lnet/hasnath/android/keyboard/CandidateView;)Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mScrolled:Z

    return v0
.end method

.method static synthetic access$5(Lnet/hasnath/android/keyboard/CandidateView;)I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTotalWidth:I

    return v0
.end method

.method static synthetic access$6(Lnet/hasnath/android/keyboard/CandidateView;I)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTargetScrollX:I

    return-void
.end method

.method static synthetic access$7(Lnet/hasnath/android/keyboard/CandidateView;)V
    .locals 0

    .prologue
    .line 465
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/CandidateView;->hidePreview()V

    return-void
.end method

.method private hidePreview()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 466
    iput v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTouchX:I

    .line 467
    iput v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mCurrentWordIndex:I

    .line 468
    iget-object v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 469
    return-void
.end method

.method private longPressFirstWord()V
    .locals 0

    .prologue
    .line 515
    return-void
.end method

.method private scrollToTarget()V
    .locals 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->getScrollX()I

    move-result v0

    .line 327
    .local v0, "scrollX":I
    iget v1, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTargetScrollX:I

    if-le v1, v0, :cond_1

    .line 328
    add-int/lit8 v0, v0, 0x14

    .line 329
    iget v1, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTargetScrollX:I

    if-lt v0, v1, :cond_0

    .line 330
    iget v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTargetScrollX:I

    .line 331
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lnet/hasnath/android/keyboard/CandidateView;->scrollTo(II)V

    .line 332
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->requestLayout()V

    .line 346
    :goto_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->invalidate()V

    .line 347
    return-void

    .line 334
    :cond_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lnet/hasnath/android/keyboard/CandidateView;->scrollTo(II)V

    goto :goto_0

    .line 337
    :cond_1
    add-int/lit8 v0, v0, -0x14

    .line 338
    iget v1, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTargetScrollX:I

    if-gt v0, v1, :cond_2

    .line 339
    iget v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTargetScrollX:I

    .line 340
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lnet/hasnath/android/keyboard/CandidateView;->scrollTo(II)V

    .line 341
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->requestLayout()V

    goto :goto_0

    .line 343
    :cond_2
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lnet/hasnath/android/keyboard/CandidateView;->scrollTo(II)V

    goto :goto_0
.end method

.method private showPreview(ILjava/lang/String;)V
    .locals 11
    .param p1, "wordIndex"    # I
    .param p2, "altText"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 472
    iget v1, p0, Lnet/hasnath/android/keyboard/CandidateView;->mCurrentWordIndex:I

    .line 473
    .local v1, "oldWordIndex":I
    iput p1, p0, Lnet/hasnath/android/keyboard/CandidateView;->mCurrentWordIndex:I

    .line 475
    iget v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mCurrentWordIndex:I

    if-ne v1, v6, :cond_0

    if-eqz p2, :cond_1

    .line 476
    :cond_0
    const/4 v6, -0x1

    if-ne p1, v6, :cond_2

    .line 477
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/CandidateView;->hidePreview()V

    .line 505
    :cond_1
    :goto_0
    return-void

    .line 479
    :cond_2
    if-eqz p2, :cond_3

    move-object v4, p2

    .line 480
    .local v4, "word":Ljava/lang/CharSequence;
    :goto_1
    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 482
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 481
    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 483
    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v6, v4, v10, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    const/high16 v7, 0x41a00000    # 20.0f

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 485
    .local v5, "wordWidth":I
    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    .line 484
    add-int/2addr v6, v5

    .line 485
    iget-object v7, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v7

    .line 484
    add-int v3, v6, v7

    .line 486
    .local v3, "popupWidth":I
    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 488
    .local v2, "popupHeight":I
    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mWordX:[I

    aget v6, v6, p1

    iget-object v7, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    .line 489
    iget-object v7, p0, Lnet/hasnath/android/keyboard/CandidateView;->mWordWidth:[I

    aget v7, v7, p1

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 488
    iput v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPopupPreviewX:I

    .line 490
    neg-int v6, v2

    iput v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPopupPreviewY:I

    .line 491
    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 492
    .local v0, "offsetInWindow":[I
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/CandidateView;->getLocationInWindow([I)V

    .line 493
    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 494
    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget v7, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPopupPreviewX:I

    iget v8, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPopupPreviewY:I

    aget v9, v0, v9

    add-int/2addr v8, v9

    invoke-virtual {v6, v7, v8, v3, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 502
    :goto_2
    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 479
    .end local v0    # "offsetInWindow":[I
    .end local v2    # "popupHeight":I
    .end local v3    # "popupWidth":I
    .end local v4    # "word":Ljava/lang/CharSequence;
    .end local v5    # "wordWidth":I
    :cond_3
    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    move-object v4, v6

    goto :goto_1

    .line 497
    .restart local v0    # "offsetInWindow":[I
    .restart local v2    # "popupHeight":I
    .restart local v3    # "popupWidth":I
    .restart local v4    # "word":Ljava/lang/CharSequence;
    .restart local v5    # "wordWidth":I
    :cond_4
    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 498
    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 499
    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget v7, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPopupPreviewX:I

    .line 500
    iget v8, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPopupPreviewY:I

    aget v9, v0, v9

    add-int/2addr v8, v9

    .line 499
    invoke-virtual {v6, p0, v10, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 396
    iget-object v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 397
    iput v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTouchX:I

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 399
    iput v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedIndex:I

    .line 400
    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/CandidateView;->mShowingAddToDictionary:Z

    .line 401
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->invalidate()V

    .line 402
    iget-object v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mWordWidth:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 403
    iget-object v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mWordX:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 404
    return-void
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTotalWidth:I

    return v0
.end method

.method public dismissAddToDictionaryHint()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mShowingAddToDictionary:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 386
    :goto_0
    return v0

    .line 385
    :cond_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->clear()V

    .line 386
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getSuggestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isShowingAddToDictionaryHint()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mShowingAddToDictionary:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 519
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 520
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/CandidateView;->hidePreview()V

    .line 521
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 220
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 222
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mTotalWidth:I

    .line 224
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/CandidateView;->getHeight()I

    move-result v12

    .line 225
    .local v12, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    if-nez v2, :cond_2

    .line 226
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v2, v3, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    .line 227
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/CandidateView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 228
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/CandidateView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 230
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/hasnath/android/keyboard/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 231
    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/hasnath/android/keyboard/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 230
    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 234
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 235
    .local v10, "count":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/hasnath/android/keyboard/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    .line 236
    .local v9, "bgPadding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/hasnath/android/keyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    .line 237
    .local v8, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/CandidateView;->mTouchX:I

    move/from16 v18, v0

    .line 238
    .local v18, "touchX":I
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/CandidateView;->getScrollX()I

    move-result v14

    .line 239
    .local v14, "scrollX":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lnet/hasnath/android/keyboard/CandidateView;->mScrolled:Z

    .line 240
    .local v15, "scrolled":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/hasnath/android/keyboard/CandidateView;->mTypedWordValid:Z

    move/from16 v19, v0

    .line 241
    .local v19, "typedWordValid":Z
    int-to-float v2, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lnet/hasnath/android/keyboard/CandidateView;->mDescent:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v23, v2, 0x2

    .line 243
    .local v23, "y":I
    const/4 v11, 0x0

    .line 246
    .local v11, "existsAutoCompletion":Z
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIME;->useBanglaFontInSuggestions()Z

    move-result v20

    .line 248
    .local v20, "useBanglaFont":Z
    if-eqz v20, :cond_4

    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 249
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "BengaliOTS.ttf"

    invoke-static {v3, v4}, Lnet/hasnath/android/keyboard/Typefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 250
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "BengaliOTS.ttf"

    invoke-static {v2, v3}, Lnet/hasnath/android/keyboard/Typefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 255
    :cond_4
    const/16 v22, 0x0

    .line 257
    .local v22, "x":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-lt v13, v10, :cond_6

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mService:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v2, v11}, Lnet/hasnath/android/keyboard/LatinIME;->onAutoCompletionStateChanged(Z)V

    .line 317
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lnet/hasnath/android/keyboard/CandidateView;->mTotalWidth:I

    .line 318
    move-object/from16 v0, p0

    iget v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mTargetScrollX:I

    if-eq v2, v14, :cond_5

    .line 319
    invoke-direct/range {p0 .. p0}, Lnet/hasnath/android/keyboard/CandidateView;->scrollToTarget()V

    .line 323
    :cond_5
    return-void

    .line 258
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/CharSequence;

    .line 259
    .local v16, "suggestion":Ljava/lang/CharSequence;
    if-nez v16, :cond_7

    .line 257
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 260
    :cond_7
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 262
    .local v5, "wordLength":I
    move-object/from16 v0, p0

    iget v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mColorNormal:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 263
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mHaveMinimalSuggestion:Z

    if-eqz v2, :cond_13

    .line 264
    const/4 v2, 0x1

    if-ne v13, v2, :cond_8

    if-eqz v19, :cond_9

    :cond_8
    if-nez v13, :cond_13

    if-eqz v19, :cond_13

    .line 265
    :cond_9
    if-nez v20, :cond_a

    .line 266
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 267
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mColorRecommended:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    const/4 v11, 0x1

    .line 275
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mWordWidth:[I

    aget v21, v2, v13

    .local v21, "wordWidth":I
    if-nez v21, :cond_c

    .line 276
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0, v2, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v17

    .line 277
    .local v17, "textWidth":F
    move-object/from16 v0, p0

    iget v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mMinTouchableWidth:I

    move/from16 v0, v17

    float-to-int v3, v0

    add-int/lit8 v3, v3, 0x14

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mWordWidth:[I

    aput v21, v2, v13

    .line 281
    .end local v17    # "textWidth":F
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mWordX:[I

    aput v22, v2, v13

    .line 283
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_e

    if-nez v15, :cond_e

    .line 284
    add-int v2, v18, v14

    move/from16 v0, v22

    if-lt v2, v0, :cond_e

    add-int v2, v18, v14

    add-int v3, v22, v21

    if-ge v2, v3, :cond_e

    .line 285
    if-eqz p1, :cond_d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mShowingAddToDictionary:Z

    if-nez v2, :cond_d

    .line 286
    move/from16 v0, v22

    int-to-float v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget v4, v9, Landroid/graphics/Rect;->top:I

    move/from16 v0, v21

    invoke-virtual {v2, v3, v4, v0, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 289
    move/from16 v0, v22

    neg-int v2, v0

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 291
    :cond_d
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 292
    move-object/from16 v0, p0

    iput v13, v0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedIndex:I

    .line 295
    :cond_e
    if-eqz p1, :cond_11

    .line 296
    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mService:Lnet/hasnath/android/keyboard/LatinIME;

    iget-object v2, v2, Lnet/hasnath/android/keyboard/LatinIME;->parser:Lnet/hasnath/ridmikparser/RidmikParser;

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/hasnath/ridmikparser/RidmikParser;->toBangla(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->text:Ljava/lang/String;

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/CandidateView;->text:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .end local v5    # "wordLength":I
    div-int/lit8 v2, v21, 0x2

    add-int v2, v2, v22

    int-to-float v6, v2

    move/from16 v0, v23

    int-to-float v7, v0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 303
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mColorOther:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 304
    add-int v2, v22, v21

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 306
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mShowingAddToDictionary:Z

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    if-eq v13, v2, :cond_10

    .line 307
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 309
    :cond_10
    move/from16 v0, v22

    neg-int v2, v0

    sub-int v2, v2, v21

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 311
    :cond_11
    if-nez v20, :cond_12

    .line 312
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 314
    :cond_12
    add-int v22, v22, v21

    goto/16 :goto_1

    .line 269
    .end local v21    # "wordWidth":I
    .restart local v5    # "wordLength":I
    :cond_13
    if-nez v13, :cond_14

    const/4 v2, 0x1

    if-ne v5, v2, :cond_b

    const/4 v2, 0x1

    if-le v10, v2, :cond_b

    .line 272
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mColorOther:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    .line 300
    .restart local v21    # "wordWidth":I
    :cond_15
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    div-int/lit8 v2, v21, 0x2

    add-int v2, v2, v22

    int-to-float v6, v2

    move/from16 v0, v23

    int-to-float v7, v0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 409
    iget-object v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 462
    :cond_0
    :goto_0
    return v7

    .line 413
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 414
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 415
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 416
    .local v2, "y":I
    iput v1, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTouchX:I

    .line 418
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 420
    :pswitch_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->invalidate()V

    goto :goto_0

    .line 423
    :pswitch_1
    if-gtz v2, :cond_0

    .line 425
    iget-object v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 428
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mShowingCompletions:Z

    if-nez v3, :cond_2

    .line 431
    iget-object v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 432
    iget-object v4, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 431
    invoke-static {v3, v4}, Lnet/hasnath/android/keyboard/TextEntryState;->acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 434
    :cond_2
    iget-object v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mService:Lnet/hasnath/android/keyboard/LatinIME;

    iget v4, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedIndex:I

    iget-object v5, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Lnet/hasnath/android/keyboard/LatinIME;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 435
    iput-object v8, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 436
    iput v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedIndex:I

    goto :goto_0

    .line 441
    :pswitch_2
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mScrolled:Z

    if-nez v3, :cond_3

    .line 442
    iget-object v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    .line 443
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mShowingAddToDictionary:Z

    if-eqz v3, :cond_4

    .line 444
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/CandidateView;->longPressFirstWord()V

    .line 445
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->clear()V

    .line 455
    :cond_3
    :goto_1
    iput-object v8, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 456
    iput v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedIndex:I

    .line 457
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->requestLayout()V

    .line 458
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/CandidateView;->hidePreview()V

    .line 459
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->invalidate()V

    goto :goto_0

    .line 447
    :cond_4
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mShowingCompletions:Z

    if-nez v3, :cond_5

    .line 448
    iget-object v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 449
    iget-object v4, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 448
    invoke-static {v3, v4}, Lnet/hasnath/android/keyboard/TextEntryState;->acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 451
    :cond_5
    iget-object v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mService:Lnet/hasnath/android/keyboard/LatinIME;

    iget v4, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedIndex:I

    iget-object v5, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Lnet/hasnath/android/keyboard/LatinIME;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setService(Lnet/hasnath/android/keyboard/LatinIME;)V
    .locals 0
    .param p1, "listener"    # Lnet/hasnath/android/keyboard/LatinIME;

    .prologue
    .line 204
    iput-object p1, p0, Lnet/hasnath/android/keyboard/CandidateView;->mService:Lnet/hasnath/android/keyboard/LatinIME;

    .line 205
    return-void
.end method

.method public setSuggestions(Ljava/util/List;ZZZ)V
    .locals 5
    .param p2, "completions"    # Z
    .param p3, "typedWordValid"    # Z
    .param p4, "haveMinimalSuggestion"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v4, 0x0

    .line 351
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->clear()V

    .line 352
    if-eqz p1, :cond_1

    .line 353
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x20

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 354
    .local v0, "insertCount":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 360
    .end local v0    # "insertCount":I
    :cond_1
    :goto_0
    iput-boolean p2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mShowingCompletions:Z

    .line 361
    iput-boolean p3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTypedWordValid:Z

    .line 362
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v4, v2}, Lnet/hasnath/android/keyboard/CandidateView;->scrollTo(II)V

    .line 363
    iput v4, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTargetScrollX:I

    .line 364
    iput-boolean p4, p0, Lnet/hasnath/android/keyboard/CandidateView;->mHaveMinimalSuggestion:Z

    .line 366
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/CandidateView;->onDraw(Landroid/graphics/Canvas;)V

    .line 367
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->invalidate()V

    .line 368
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->requestLayout()V

    .line 369
    return-void

    .line 354
    .restart local v0    # "insertCount":I
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 355
    .local v1, "suggestion":Ljava/lang/CharSequence;
    iget-object v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public showAddToDictionaryHint(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v0, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v1, p0, Lnet/hasnath/android/keyboard/CandidateView;->mAddToDictionaryHint:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-virtual {p0, v0, v2, v2, v2}, Lnet/hasnath/android/keyboard/CandidateView;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 380
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/CandidateView;->mShowingAddToDictionary:Z

    .line 381
    return-void
.end method
