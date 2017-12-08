.class public Lnet/hasnath/android/habijabi/ScrollingTextView;
.super Landroid/widget/TextView;
.source "ScrollingTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_SPEED:F = 20.0f


# instance fields
.field private continuousScrolling:Z

.field private scroller:Landroid/widget/Scroller;

.field private speed:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lnet/hasnath/android/habijabi/ScrollingTextView;->speed:F

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/hasnath/android/habijabi/ScrollingTextView;->continuousScrolling:Z

    .line 26
    invoke-direct {p0, p1}, Lnet/hasnath/android/habijabi/ScrollingTextView;->setup(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lnet/hasnath/android/habijabi/ScrollingTextView;->speed:F

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/hasnath/android/habijabi/ScrollingTextView;->continuousScrolling:Z

    .line 31
    invoke-direct {p0, p1}, Lnet/hasnath/android/habijabi/ScrollingTextView;->setup(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private scroll()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/ScrollingTextView;->getHeight()I

    move-result v7

    .line 49
    .local v7, "viewHeight":I
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/ScrollingTextView;->getPaddingBottom()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/ScrollingTextView;->getPaddingTop()I

    move-result v3

    sub-int v8, v0, v3

    .line 50
    .local v8, "visibleHeight":I
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/ScrollingTextView;->getLineHeight()I

    move-result v6

    .line 52
    .local v6, "lineHeight":I
    mul-int/lit8 v2, v8, -0x1

    .line 53
    .local v2, "offset":I
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/ScrollingTextView;->getLineCount()I

    move-result v0

    mul-int/2addr v0, v6

    add-int v4, v8, v0

    .line 54
    .local v4, "distance":I
    int-to-float v0, v4

    iget v3, p0, Lnet/hasnath/android/habijabi/ScrollingTextView;->speed:F

    mul-float/2addr v0, v3

    float-to-int v5, v0

    .line 56
    .local v5, "duration":I
    iget-object v0, p0, Lnet/hasnath/android/habijabi/ScrollingTextView;->scroller:Landroid/widget/Scroller;

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 58
    iget-boolean v0, p0, Lnet/hasnath/android/habijabi/ScrollingTextView;->continuousScrolling:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0, p0}, Lnet/hasnath/android/habijabi/ScrollingTextView;->post(Ljava/lang/Runnable;)Z

    .line 61
    :cond_0
    return-void
.end method

.method private setup(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lnet/hasnath/android/habijabi/ScrollingTextView;->scroller:Landroid/widget/Scroller;

    .line 36
    iget-object v0, p0, Lnet/hasnath/android/habijabi/ScrollingTextView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v0}, Lnet/hasnath/android/habijabi/ScrollingTextView;->setScroller(Landroid/widget/Scroller;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getSpeed()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lnet/hasnath/android/habijabi/ScrollingTextView;->speed:F

    return v0
.end method

.method public isContinuousScrolling()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lnet/hasnath/android/habijabi/ScrollingTextView;->continuousScrolling:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 41
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 42
    iget-object v0, p0, Lnet/hasnath/android/habijabi/ScrollingTextView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-direct {p0}, Lnet/hasnath/android/habijabi/ScrollingTextView;->scroll()V

    .line 45
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lnet/hasnath/android/habijabi/ScrollingTextView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0}, Lnet/hasnath/android/habijabi/ScrollingTextView;->scroll()V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p0, p0}, Lnet/hasnath/android/habijabi/ScrollingTextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setContinuousScrolling(Z)V
    .locals 0
    .param p1, "continuousScrolling"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lnet/hasnath/android/habijabi/ScrollingTextView;->continuousScrolling:Z

    .line 82
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .prologue
    .line 73
    iput p1, p0, Lnet/hasnath/android/habijabi/ScrollingTextView;->speed:F

    .line 74
    return-void
.end method
