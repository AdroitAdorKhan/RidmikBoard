.class Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LatinKeyboardBaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;


# direct methods
.method constructor <init>(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$1;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    .line 568
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "me1"    # Landroid/view/MotionEvent;
    .param p2, "me2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 572
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 573
    .local v0, "absX":F
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 574
    .local v1, "absY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    sub-float v2, v8, v9

    .line 575
    .local v2, "deltaX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float v3, v8, v9

    .line 576
    .local v3, "deltaY":F
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$1;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getWidth()I

    move-result v8

    div-int/lit8 v6, v8, 0x2

    .line 577
    .local v6, "travelX":I
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$1;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getHeight()I

    move-result v8

    div-int/lit8 v7, v8, 0x2

    .line 578
    .local v7, "travelY":I
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$1;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    invoke-static {v8}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$5(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Lnet/hasnath/android/keyboard/SwipeTracker;

    move-result-object v8

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lnet/hasnath/android/keyboard/SwipeTracker;->computeCurrentVelocity(I)V

    .line 579
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$1;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    invoke-static {v8}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$5(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Lnet/hasnath/android/keyboard/SwipeTracker;

    move-result-object v8

    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/SwipeTracker;->getXVelocity()F

    move-result v4

    .line 580
    .local v4, "endingVelocityX":F
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$1;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    invoke-static {v8}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$5(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Lnet/hasnath/android/keyboard/SwipeTracker;

    move-result-object v8

    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/SwipeTracker;->getYVelocity()F

    move-result v5

    .line 581
    .local v5, "endingVelocityY":F
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$1;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    invoke-static {v8}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$6(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, p3, v8

    if-lez v8, :cond_0

    cmpg-float v8, v1, v0

    if-gez v8, :cond_0

    int-to-float v8, v6

    cmpl-float v8, v2, v8

    if-lez v8, :cond_0

    .line 582
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$1;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    invoke-static {v8}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$7(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/high16 v8, 0x40800000    # 4.0f

    div-float v8, p3, v8

    cmpl-float v8, v4, v8

    if-ltz v8, :cond_3

    .line 583
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$1;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->swipeRight()V

    .line 584
    const/4 v8, 0x1

    .line 602
    :goto_0
    return v8

    .line 586
    :cond_0
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$1;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    invoke-static {v8}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$6(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    cmpg-float v8, p3, v8

    if-gez v8, :cond_1

    cmpg-float v8, v1, v0

    if-gez v8, :cond_1

    neg-int v8, v6

    int-to-float v8, v8

    cmpg-float v8, v2, v8

    if-gez v8, :cond_1

    .line 587
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$1;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    invoke-static {v8}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$7(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/high16 v8, 0x40800000    # 4.0f

    div-float v8, p3, v8

    cmpg-float v8, v4, v8

    if-gtz v8, :cond_3

    .line 588
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$1;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->swipeLeft()V

    .line 589
    const/4 v8, 0x1

    goto :goto_0

    .line 591
    :cond_1
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$1;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    invoke-static {v8}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$6(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    cmpg-float v8, p4, v8

    if-gez v8, :cond_2

    cmpg-float v8, v0, v1

    if-gez v8, :cond_2

    neg-int v8, v7

    int-to-float v8, v8

    cmpg-float v8, v3, v8

    if-gez v8, :cond_2

    .line 592
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$1;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    invoke-static {v8}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$7(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/high16 v8, 0x40800000    # 4.0f

    div-float v8, p4, v8

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_3

    .line 593
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$1;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->swipeUp()V

    .line 594
    const/4 v8, 0x1

    goto :goto_0

    .line 596
    :cond_2
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$1;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    invoke-static {v8}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$6(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, p4, v8

    if-lez v8, :cond_3

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v1, v8

    cmpg-float v8, v0, v8

    if-gez v8, :cond_3

    int-to-float v8, v7

    cmpl-float v8, v3, v8

    if-lez v8, :cond_3

    .line 597
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$1;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    invoke-static {v8}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$7(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/high16 v8, 0x40800000    # 4.0f

    div-float v8, p4, v8

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_3

    .line 598
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$1;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->swipeDown()V

    .line 599
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 602
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0
.end method
