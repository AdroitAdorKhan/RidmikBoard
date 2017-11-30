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

.field private mColorNormal:I

.field private mColorOther:I

.field private mColorRecommended:I

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

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    .line 58
    const/4 v2, -0x1

    iput v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTouchX:I

    .line 74
    new-array v2, v3, [I

    iput-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mWordWidth:[I

    .line 75
    new-array v2, v3, [I

    iput-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mWordX:[I

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 106
    const v3, 0x7f020077

    .line 105
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    .line 110
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    check-cast v0, Landroid/view/LayoutInflater;

    .line 111
    .local v0, "inflate":Landroid/view/LayoutInflater;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 112
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 113
    const v2, 0x7f030002

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    .line 115
    iget-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v4, v4}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 116
    iget-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 117
    iget-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const v3, 0x7f0d0002

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 119
    const/high16 v2, 0x7f0a0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mColorNormal:I

    .line 120
    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mColorRecommended:I

    .line 121
    const v2, 0x7f0a0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mColorOther:I

    .line 122
    const v2, 0x7f020073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 123
    const v2, 0x7f0700ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mAddToDictionaryHint:Ljava/lang/CharSequence;

    .line 125
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    .line 126
    iget-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mColorNormal:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    iget-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 129
    iget-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 130
    iget-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 131
    iget-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mDescent:I

    .line 132
    const v2, 0x7f0b0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mMinTouchableWidth:I

    .line 134
    new-instance v2, Landroid/view/GestureDetector;

    .line 135
    new-instance v3, Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;

    iget v4, p0, Lnet/hasnath/android/keyboard/CandidateView;->mMinTouchableWidth:I

    invoke-direct {v3, p0, v4}, Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;-><init>(Lnet/hasnath/android/keyboard/CandidateView;I)V

    invoke-direct {v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    .line 134
    iput-object v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 136
    invoke-virtual {p0, v5}, Lnet/hasnath/android/keyboard/CandidateView;->setWillNotDraw(Z)V

    .line 137
    invoke-virtual {p0, v5}, Lnet/hasnath/android/keyboard/CandidateView;->setHorizontalScrollBarEnabled(Z)V

    .line 138
    invoke-virtual {p0, v5}, Lnet/hasnath/android/keyboard/CandidateView;->setVerticalScrollBarEnabled(Z)V

    .line 139
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v5, v2}, Lnet/hasnath/android/keyboard/CandidateView;->scrollTo(II)V

    .line 142
    return-void
.end method

.method static synthetic access$0(Lnet/hasnath/android/keyboard/CandidateView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lnet/hasnath/android/keyboard/CandidateView;)[I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mWordWidth:[I

    return-object v0
.end method

.method static synthetic access$2(Lnet/hasnath/android/keyboard/CandidateView;)V
    .locals 0

    .prologue
    .line 521
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/CandidateView;->longPressFirstWord()V

    return-void
.end method

.method static synthetic access$3(Lnet/hasnath/android/keyboard/CandidateView;Z)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lnet/hasnath/android/keyboard/CandidateView;->mScrolled:Z

    return-void
.end method

.method static synthetic access$4(Lnet/hasnath/android/keyboard/CandidateView;)Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mScrolled:Z

    return v0
.end method

.method static synthetic access$5(Lnet/hasnath/android/keyboard/CandidateView;)I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTotalWidth:I

    return v0
.end method

.method static synthetic access$6(Lnet/hasnath/android/keyboard/CandidateView;I)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTargetScrollX:I

    return-void
.end method

.method static synthetic access$7(Lnet/hasnath/android/keyboard/CandidateView;)V
    .locals 0

    .prologue
    .line 479
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/CandidateView;->hidePreview()V

    return-void
.end method

.method private hidePreview()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 480
    iput v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTouchX:I

    .line 481
    iput v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mCurrentWordIndex:I

    .line 482
    iget-object v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 483
    return-void
.end method

.method private longPressFirstWord()V
    .locals 0

    .prologue
    .line 529
    return-void
.end method

.method private scrollToTarget()V
    .locals 2

    .prologue
    .line 340
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->getScrollX()I

    move-result v0

    .line 341
    .local v0, "scrollX":I
    iget v1, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTargetScrollX:I

    if-le v1, v0, :cond_1

    .line 342
    add-int/lit8 v0, v0, 0x14

    .line 343
    iget v1, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTargetScrollX:I

    if-lt v0, v1, :cond_0

    .line 344
    iget v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTargetScrollX:I

    .line 345
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lnet/hasnath/android/keyboard/CandidateView;->scrollTo(II)V

    .line 346
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->requestLayout()V

    .line 360
    :goto_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->invalidate()V

    .line 361
    return-void

    .line 348
    :cond_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lnet/hasnath/android/keyboard/CandidateView;->scrollTo(II)V

    goto :goto_0

    .line 351
    :cond_1
    add-int/lit8 v0, v0, -0x14

    .line 352
    iget v1, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTargetScrollX:I

    if-gt v0, v1, :cond_2

    .line 353
    iget v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTargetScrollX:I

    .line 354
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lnet/hasnath/android/keyboard/CandidateView;->scrollTo(II)V

    .line 355
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->requestLayout()V

    goto :goto_0

    .line 357
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

    .line 486
    iget v1, p0, Lnet/hasnath/android/keyboard/CandidateView;->mCurrentWordIndex:I

    .line 487
    .local v1, "oldWordIndex":I
    iput p1, p0, Lnet/hasnath/android/keyboard/CandidateView;->mCurrentWordIndex:I

    .line 489
    iget v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mCurrentWordIndex:I

    if-ne v1, v6, :cond_0

    if-eqz p2, :cond_1

    .line 490
    :cond_0
    const/4 v6, -0x1

    if-ne p1, v6, :cond_2

    .line 491
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/CandidateView;->hidePreview()V

    .line 519
    :cond_1
    :goto_0
    return-void

    .line 493
    :cond_2
    if-eqz p2, :cond_3

    move-object v4, p2

    .line 494
    .local v4, "word":Ljava/lang/CharSequence;
    :goto_1
    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 496
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 495
    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 497
    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v6, v4, v10, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    const/high16 v7, 0x41a00000    # 20.0f

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 499
    .local v5, "wordWidth":I
    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    .line 498
    add-int/2addr v6, v5

    .line 499
    iget-object v7, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v7

    .line 498
    add-int v3, v6, v7

    .line 500
    .local v3, "popupWidth":I
    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 502
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

    .line 503
    iget-object v7, p0, Lnet/hasnath/android/keyboard/CandidateView;->mWordWidth:[I

    aget v7, v7, p1

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 502
    iput v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPopupPreviewX:I

    .line 504
    neg-int v6, v2

    iput v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPopupPreviewY:I

    .line 505
    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 506
    .local v0, "offsetInWindow":[I
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/CandidateView;->getLocationInWindow([I)V

    .line 507
    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 508
    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget v7, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPopupPreviewX:I

    iget v8, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPopupPreviewY:I

    aget v9, v0, v9

    add-int/2addr v8, v9

    invoke-virtual {v6, v7, v8, v3, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 516
    :goto_2
    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 493
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

    .line 511
    .restart local v0    # "offsetInWindow":[I
    .restart local v2    # "popupHeight":I
    .restart local v3    # "popupWidth":I
    .restart local v4    # "word":Ljava/lang/CharSequence;
    .restart local v5    # "wordWidth":I
    :cond_4
    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 512
    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 513
    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget v7, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPopupPreviewX:I

    .line 514
    iget v8, p0, Lnet/hasnath/android/keyboard/CandidateView;->mPopupPreviewY:I

    aget v9, v0, v9

    add-int/2addr v8, v9

    .line 513
    invoke-virtual {v6, p0, v10, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 410
    iget-object v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 411
    iput v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTouchX:I

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 413
    iput v2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedIndex:I

    .line 414
    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/CandidateView;->mShowingAddToDictionary:Z

    .line 415
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->invalidate()V

    .line 416
    iget-object v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mWordWidth:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 417
    iget-object v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mWordX:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 418
    return-void
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTotalWidth:I

    return v0
.end method

.method public dismissAddToDictionaryHint()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mShowingAddToDictionary:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 400
    :goto_0
    return v0

    .line 399
    :cond_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->clear()V

    .line 400
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
    .line 404
    iget-object v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isShowingAddToDictionaryHint()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/CandidateView;->mShowingAddToDictionary:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 533
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 534
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/CandidateView;->hidePreview()V

    .line 535
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 220
    if-eqz p1, :cond_0

    .line 221
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 223
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mTotalWidth:I

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mService:Lnet/hasnath/android/keyboard/LatinIME;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mService:Lnet/hasnath/android/keyboard/LatinIME;

    iget-object v2, v2, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getLayoutId()I

    move-result v2

    sget v3, Lnet/hasnath/android/keyboard/LatinIME;->LOLIPOP_THEME_INDEX:I

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mService:Lnet/hasnath/android/keyboard/LatinIME;

    iget-object v2, v2, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getLayoutId()I

    move-result v2

    sget v3, Lnet/hasnath/android/keyboard/LatinIME;->LOLIPOP_THEME_INDEX:I

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_7

    .line 227
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mColorNormal:I

    .line 228
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mColorRecommended:I

    .line 229
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mColorOther:I

    .line 236
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/CandidateView;->getHeight()I

    move-result v12

    .line 237
    .local v12, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    if-nez v2, :cond_3

    .line 238
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v2, v3, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    .line 239
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/CandidateView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 240
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/CandidateView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 244
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/CandidateView;->getWidth()I

    move-result v6

    .line 245
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/CandidateView;->getHeight()I

    move-result v7

    .line 244
    invoke-virtual {v2, v3, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 248
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 249
    .local v10, "count":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lnet/hasnath/android/keyboard/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    .line 250
    .local v9, "bgPadding":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/hasnath/android/keyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    .line 251
    .local v8, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/CandidateView;->mTouchX:I

    move/from16 v18, v0

    .line 252
    .local v18, "touchX":I
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/CandidateView;->getScrollX()I

    move-result v14

    .line 253
    .local v14, "scrollX":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lnet/hasnath/android/keyboard/CandidateView;->mScrolled:Z

    .line 254
    .local v15, "scrolled":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/hasnath/android/keyboard/CandidateView;->mTypedWordValid:Z

    move/from16 v19, v0

    .line 255
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

    .line 257
    .local v23, "y":I
    const/4 v11, 0x0

    .line 260
    .local v11, "existsAutoCompletion":Z
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIME;->useBanglaFontInSuggestions()Z

    move-result v20

    .line 262
    .local v20, "useBanglaFont":Z
    if-eqz v20, :cond_5

    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 263
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Siyamrupali.ttf"

    invoke-static {v3, v4}, Lnet/hasnath/android/keyboard/Typefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 264
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Siyamrupali.ttf"

    invoke-static {v2, v3}, Lnet/hasnath/android/keyboard/Typefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 269
    :cond_5
    const/16 v22, 0x0

    .line 271
    .local v22, "x":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-lt v13, v10, :cond_8

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mService:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v2, v11}, Lnet/hasnath/android/keyboard/LatinIME;->onAutoCompletionStateChanged(Z)V

    .line 331
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lnet/hasnath/android/keyboard/CandidateView;->mTotalWidth:I

    .line 332
    move-object/from16 v0, p0

    iget v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mTargetScrollX:I

    if-eq v2, v14, :cond_6

    .line 333
    invoke-direct/range {p0 .. p0}, Lnet/hasnath/android/keyboard/CandidateView;->scrollToTarget()V

    .line 337
    :cond_6
    return-void

    .line 231
    .end local v8    # "paint":Landroid/graphics/Paint;
    .end local v9    # "bgPadding":Landroid/graphics/Rect;
    .end local v10    # "count":I
    .end local v11    # "existsAutoCompletion":Z
    .end local v12    # "height":I
    .end local v13    # "i":I
    .end local v14    # "scrollX":I
    .end local v15    # "scrolled":Z
    .end local v18    # "touchX":I
    .end local v19    # "typedWordValid":Z
    .end local v20    # "useBanglaFont":Z
    .end local v22    # "x":I
    .end local v23    # "y":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0a0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mColorNormal:I

    .line 232
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mColorRecommended:I

    .line 233
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mColorOther:I

    goto/16 :goto_0

    .line 272
    .restart local v8    # "paint":Landroid/graphics/Paint;
    .restart local v9    # "bgPadding":Landroid/graphics/Rect;
    .restart local v10    # "count":I
    .restart local v11    # "existsAutoCompletion":Z
    .restart local v12    # "height":I
    .restart local v13    # "i":I
    .restart local v14    # "scrollX":I
    .restart local v15    # "scrolled":Z
    .restart local v18    # "touchX":I
    .restart local v19    # "typedWordValid":Z
    .restart local v20    # "useBanglaFont":Z
    .restart local v22    # "x":I
    .restart local v23    # "y":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/CharSequence;

    .line 273
    .local v16, "suggestion":Ljava/lang/CharSequence;
    if-nez v16, :cond_9

    .line 271
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 274
    :cond_9
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 276
    .local v5, "wordLength":I
    move-object/from16 v0, p0

    iget v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mColorNormal:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 277
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mHaveMinimalSuggestion:Z

    if-eqz v2, :cond_14

    .line 278
    const/4 v2, 0x1

    if-ne v13, v2, :cond_a

    if-eqz v19, :cond_b

    :cond_a
    if-nez v13, :cond_14

    if-eqz v19, :cond_14

    .line 279
    :cond_b
    if-nez v20, :cond_c

    .line 280
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 281
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mColorRecommended:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 282
    const/4 v11, 0x1

    .line 289
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mWordWidth:[I

    aget v21, v2, v13

    .local v21, "wordWidth":I
    if-nez v21, :cond_e

    .line 290
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0, v2, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v17

    .line 291
    .local v17, "textWidth":F
    move-object/from16 v0, p0

    iget v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mMinTouchableWidth:I

    move/from16 v0, v17

    float-to-int v3, v0

    add-int/lit8 v3, v3, 0x14

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mWordWidth:[I

    aput v21, v2, v13

    .line 295
    .end local v17    # "textWidth":F
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mWordX:[I

    aput v22, v2, v13

    .line 297
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_10

    if-nez v15, :cond_10

    .line 298
    add-int v2, v18, v14

    move/from16 v0, v22

    if-lt v2, v0, :cond_10

    add-int v2, v18, v14

    add-int v3, v22, v21

    if-ge v2, v3, :cond_10

    .line 299
    if-eqz p1, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mShowingAddToDictionary:Z

    if-nez v2, :cond_f

    .line 300
    move/from16 v0, v22

    int-to-float v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget v4, v9, Landroid/graphics/Rect;->top:I

    move/from16 v0, v21

    invoke-virtual {v2, v3, v4, v0, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 303
    move/from16 v0, v22

    neg-int v2, v0

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 305
    :cond_f
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 306
    move-object/from16 v0, p0

    iput v13, v0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedIndex:I

    .line 309
    :cond_10
    if-eqz p1, :cond_12

    .line 314
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

    .line 317
    move-object/from16 v0, p0

    iget v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mColorOther:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 318
    add-int v2, v22, v21

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 320
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mShowingAddToDictionary:Z

    if-eqz v2, :cond_11

    .line 323
    :cond_11
    move/from16 v0, v22

    neg-int v2, v0

    sub-int v2, v2, v21

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 325
    :cond_12
    if-nez v20, :cond_13

    .line 326
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 328
    :cond_13
    add-int v22, v22, v21

    goto/16 :goto_2

    .line 283
    .end local v21    # "wordWidth":I
    :cond_14
    if-nez v13, :cond_15

    const/4 v2, 0x1

    if-ne v5, v2, :cond_d

    const/4 v2, 0x1

    if-le v10, v2, :cond_d

    .line 286
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lnet/hasnath/android/keyboard/CandidateView;->mColorOther:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 423
    iget-object v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 476
    :cond_0
    :goto_0
    return v7

    .line 427
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 428
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 429
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 430
    .local v2, "y":I
    iput v1, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTouchX:I

    .line 432
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 434
    :pswitch_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->invalidate()V

    goto :goto_0

    .line 437
    :pswitch_1
    if-gtz v2, :cond_0

    .line 439
    iget-object v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 442
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mShowingCompletions:Z

    if-nez v3, :cond_2

    .line 445
    iget-object v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 446
    iget-object v4, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 445
    invoke-static {v3, v4}, Lnet/hasnath/android/keyboard/TextEntryState;->acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 448
    :cond_2
    iget-object v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mService:Lnet/hasnath/android/keyboard/LatinIME;

    iget v4, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedIndex:I

    iget-object v5, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Lnet/hasnath/android/keyboard/LatinIME;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 449
    iput-object v8, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 450
    iput v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedIndex:I

    goto :goto_0

    .line 455
    :pswitch_2
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mScrolled:Z

    if-nez v3, :cond_3

    .line 456
    iget-object v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    .line 457
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mShowingAddToDictionary:Z

    if-eqz v3, :cond_4

    .line 458
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/CandidateView;->longPressFirstWord()V

    .line 459
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->clear()V

    .line 469
    :cond_3
    :goto_1
    iput-object v8, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 470
    iput v6, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedIndex:I

    .line 471
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->requestLayout()V

    .line 472
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/CandidateView;->hidePreview()V

    .line 473
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->invalidate()V

    goto :goto_0

    .line 461
    :cond_4
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mShowingCompletions:Z

    if-nez v3, :cond_5

    .line 462
    iget-object v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 463
    iget-object v4, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 462
    invoke-static {v3, v4}, Lnet/hasnath/android/keyboard/TextEntryState;->acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 465
    :cond_5
    iget-object v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mService:Lnet/hasnath/android/keyboard/LatinIME;

    iget v4, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedIndex:I

    iget-object v5, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Lnet/hasnath/android/keyboard/LatinIME;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 432
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
    .line 205
    iput-object p1, p0, Lnet/hasnath/android/keyboard/CandidateView;->mService:Lnet/hasnath/android/keyboard/LatinIME;

    .line 206
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

    .line 365
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->clear()V

    .line 366
    if-eqz p1, :cond_1

    .line 367
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x20

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 368
    .local v0, "insertCount":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 374
    .end local v0    # "insertCount":I
    :cond_1
    :goto_0
    iput-boolean p2, p0, Lnet/hasnath/android/keyboard/CandidateView;->mShowingCompletions:Z

    .line 375
    iput-boolean p3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTypedWordValid:Z

    .line 376
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v4, v2}, Lnet/hasnath/android/keyboard/CandidateView;->scrollTo(II)V

    .line 377
    iput v4, p0, Lnet/hasnath/android/keyboard/CandidateView;->mTargetScrollX:I

    .line 378
    iput-boolean p4, p0, Lnet/hasnath/android/keyboard/CandidateView;->mHaveMinimalSuggestion:Z

    .line 380
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/CandidateView;->onDraw(Landroid/graphics/Canvas;)V

    .line 381
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->invalidate()V

    .line 382
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/CandidateView;->requestLayout()V

    .line 383
    return-void

    .line 368
    .restart local v0    # "insertCount":I
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 369
    .local v1, "suggestion":Ljava/lang/CharSequence;
    iget-object v3, p0, Lnet/hasnath/android/keyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public showAddToDictionaryHint(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v0, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v1, p0, Lnet/hasnath/android/keyboard/CandidateView;->mAddToDictionaryHint:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-virtual {p0, v0, v2, v2, v2}, Lnet/hasnath/android/keyboard/CandidateView;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 394
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/CandidateView;->mShowingAddToDictionary:Z

    .line 395
    return-void
.end method
