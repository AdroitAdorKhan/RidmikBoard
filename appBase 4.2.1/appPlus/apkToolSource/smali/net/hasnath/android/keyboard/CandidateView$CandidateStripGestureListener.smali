.class Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CandidateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/CandidateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CandidateStripGestureListener"
.end annotation


# instance fields
.field private final mTouchSlopSquare:I

.field final synthetic this$0:Lnet/hasnath/android/keyboard/CandidateView;


# direct methods
.method public constructor <init>(Lnet/hasnath/android/keyboard/CandidateView;I)V
    .locals 1
    .param p2, "touchSlop"    # I

    .prologue
    .line 148
    iput-object p1, p0, Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;->this$0:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 150
    mul-int v0, p2, p2

    iput v0, p0, Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;->mTouchSlopSquare:I

    .line 151
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;->this$0:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-static {v0, v1}, Lnet/hasnath/android/keyboard/CandidateView;->access$3(Lnet/hasnath/android/keyboard/CandidateView;Z)V

    .line 165
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 155
    iget-object v0, p0, Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;->this$0:Lnet/hasnath/android/keyboard/CandidateView;

    # getter for: Lnet/hasnath/android/keyboard/CandidateView;->mSuggestions:Ljava/util/ArrayList;
    invoke-static {v0}, Lnet/hasnath/android/keyboard/CandidateView;->access$0(Lnet/hasnath/android/keyboard/CandidateView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;->this$0:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/CandidateView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;->this$0:Lnet/hasnath/android/keyboard/CandidateView;

    # getter for: Lnet/hasnath/android/keyboard/CandidateView;->mWordWidth:[I
    invoke-static {v1}, Lnet/hasnath/android/keyboard/CandidateView;->access$1(Lnet/hasnath/android/keyboard/CandidateView;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;->this$0:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/CandidateView;->getScrollX()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;->this$0:Lnet/hasnath/android/keyboard/CandidateView;

    # invokes: Lnet/hasnath/android/keyboard/CandidateView;->longPressFirstWord()V
    invoke-static {v0}, Lnet/hasnath/android/keyboard/CandidateView;->access$2(Lnet/hasnath/android/keyboard/CandidateView;)V

    .line 160
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v7, 0x1

    .line 171
    iget-object v5, p0, Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;->this$0:Lnet/hasnath/android/keyboard/CandidateView;

    # getter for: Lnet/hasnath/android/keyboard/CandidateView;->mScrolled:Z
    invoke-static {v5}, Lnet/hasnath/android/keyboard/CandidateView;->access$4(Lnet/hasnath/android/keyboard/CandidateView;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 173
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v0, v5

    .line 174
    .local v0, "deltaX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v1, v5

    .line 175
    .local v1, "deltaY":I
    mul-int v5, v0, v0

    mul-int v6, v1, v1

    add-int v2, v5, v6

    .line 176
    .local v2, "distance":I
    iget v5, p0, Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;->mTouchSlopSquare:I

    if-ge v2, v5, :cond_0

    .line 196
    .end local v0    # "deltaX":I
    .end local v1    # "deltaY":I
    .end local v2    # "distance":I
    :goto_0
    return v7

    .line 179
    .restart local v0    # "deltaX":I
    .restart local v1    # "deltaY":I
    .restart local v2    # "distance":I
    :cond_0
    iget-object v5, p0, Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;->this$0:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-static {v5, v7}, Lnet/hasnath/android/keyboard/CandidateView;->access$3(Lnet/hasnath/android/keyboard/CandidateView;Z)V

    .line 182
    .end local v0    # "deltaX":I
    .end local v1    # "deltaY":I
    .end local v2    # "distance":I
    :cond_1
    iget-object v5, p0, Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;->this$0:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v5}, Lnet/hasnath/android/keyboard/CandidateView;->getWidth()I

    move-result v4

    .line 183
    .local v4, "width":I
    iget-object v5, p0, Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;->this$0:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-static {v5, v7}, Lnet/hasnath/android/keyboard/CandidateView;->access$3(Lnet/hasnath/android/keyboard/CandidateView;Z)V

    .line 184
    iget-object v5, p0, Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;->this$0:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v5}, Lnet/hasnath/android/keyboard/CandidateView;->getScrollX()I

    move-result v3

    .line 185
    .local v3, "scrollX":I
    float-to-int v5, p3

    add-int/2addr v3, v5

    .line 186
    if-gez v3, :cond_2

    .line 187
    const/4 v3, 0x0

    .line 189
    :cond_2
    const/4 v5, 0x0

    cmpl-float v5, p3, v5

    if-lez v5, :cond_3

    add-int v5, v3, v4

    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;->this$0:Lnet/hasnath/android/keyboard/CandidateView;

    # getter for: Lnet/hasnath/android/keyboard/CandidateView;->mTotalWidth:I
    invoke-static {v6}, Lnet/hasnath/android/keyboard/CandidateView;->access$5(Lnet/hasnath/android/keyboard/CandidateView;)I

    move-result v6

    if-le v5, v6, :cond_3

    .line 190
    float-to-int v5, p3

    sub-int/2addr v3, v5

    .line 192
    :cond_3
    iget-object v5, p0, Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;->this$0:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-static {v5, v3}, Lnet/hasnath/android/keyboard/CandidateView;->access$6(Lnet/hasnath/android/keyboard/CandidateView;I)V

    .line 193
    iget-object v5, p0, Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;->this$0:Lnet/hasnath/android/keyboard/CandidateView;

    iget-object v6, p0, Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;->this$0:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v6}, Lnet/hasnath/android/keyboard/CandidateView;->getScrollY()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lnet/hasnath/android/keyboard/CandidateView;->scrollTo(II)V

    .line 194
    iget-object v5, p0, Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;->this$0:Lnet/hasnath/android/keyboard/CandidateView;

    # invokes: Lnet/hasnath/android/keyboard/CandidateView;->hidePreview()V
    invoke-static {v5}, Lnet/hasnath/android/keyboard/CandidateView;->access$7(Lnet/hasnath/android/keyboard/CandidateView;)V

    .line 195
    iget-object v5, p0, Lnet/hasnath/android/keyboard/CandidateView$CandidateStripGestureListener;->this$0:Lnet/hasnath/android/keyboard/CandidateView;

    invoke-virtual {v5}, Lnet/hasnath/android/keyboard/CandidateView;->invalidate()V

    goto :goto_0
.end method
