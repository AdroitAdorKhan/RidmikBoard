.class Lnet/hasnath/android/keyboard/SwipeTracker;
.super Ljava/lang/Object;
.source "SwipeTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;
    }
.end annotation


# static fields
.field private static final LONGEST_PAST_TIME:I = 0xc8

.field private static final NUM_PAST:I = 0x4


# instance fields
.field final mBuffer:Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;

.field private mXVelocity:F

.field private mYVelocity:F


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;-><init>(I)V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker;->mBuffer:Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;

    .line 22
    return-void
.end method

.method private addPoint(FFJ)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "time"    # J

    .prologue
    .line 45
    iget-object v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker;->mBuffer:Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;

    .line 46
    .local v0, "buffer":Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;
    :goto_0
    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 52
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->add(FFJ)V

    .line 53
    return-void

    .line 47
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->getTime(I)J

    move-result-wide v2

    .line 48
    .local v2, "lastT":J
    const-wide/16 v4, 0xc8

    sub-long v4, p3, v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 50
    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->dropOldest()V

    goto :goto_0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 33
    iget-object v4, p0, Lnet/hasnath/android/keyboard/SwipeTracker;->mBuffer:Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->clear()V

    .line 42
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 37
    .local v2, "time":J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 38
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5, v2, v3}, Lnet/hasnath/android/keyboard/SwipeTracker;->addPoint(FFJ)V

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v6

    invoke-direct {p0, v4, v5, v6, v7}, Lnet/hasnath/android/keyboard/SwipeTracker;->addPoint(FFJ)V

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public computeCurrentVelocity(I)V
    .locals 1
    .param p1, "units"    # I

    .prologue
    .line 56
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p0, p1, v0}, Lnet/hasnath/android/keyboard/SwipeTracker;->computeCurrentVelocity(IF)V

    .line 57
    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .locals 16
    .param p1, "units"    # I
    .param p2, "maxVelocity"    # F

    .prologue
    .line 60
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hasnath/android/keyboard/SwipeTracker;->mBuffer:Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;

    .line 61
    .local v4, "buffer":Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->getX(I)F

    move-result v10

    .line 62
    .local v10, "oldestX":F
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->getY(I)F

    move-result v11

    .line 63
    .local v11, "oldestY":F
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->getTime(I)J

    move-result-wide v8

    .line 65
    .local v8, "oldestTime":J
    const/4 v2, 0x0

    .line 66
    .local v2, "accumX":F
    const/4 v3, 0x0

    .line 67
    .local v3, "accumY":F
    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->size()I

    move-result v5

    .line 68
    .local v5, "count":I
    const/4 v12, 0x1

    .local v12, "pos":I
    :goto_0
    if-lt v12, v5, :cond_0

    .line 81
    const/4 v14, 0x0

    cmpg-float v14, v2, v14

    if-gez v14, :cond_4

    move/from16 v0, p2

    neg-float v14, v0

    invoke-static {v2, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    :goto_1
    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/SwipeTracker;->mXVelocity:F

    .line 83
    const/4 v14, 0x0

    cmpg-float v14, v3, v14

    if-gez v14, :cond_5

    move/from16 v0, p2

    neg-float v14, v0

    invoke-static {v3, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    :goto_2
    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/SwipeTracker;->mYVelocity:F

    .line 85
    return-void

    .line 69
    :cond_0
    invoke-virtual {v4, v12}, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->getTime(I)J

    move-result-wide v14

    sub-long/2addr v14, v8

    long-to-int v7, v14

    .line 70
    .local v7, "dur":I
    if-nez v7, :cond_1

    .line 68
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v4, v12}, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->getX(I)F

    move-result v14

    sub-float v6, v14, v10

    .line 72
    .local v6, "dist":F
    int-to-float v14, v7

    div-float v14, v6, v14

    move/from16 v0, p1

    int-to-float v15, v0

    mul-float v13, v14, v15

    .line 73
    .local v13, "vel":F
    const/4 v14, 0x0

    cmpl-float v14, v2, v14

    if-nez v14, :cond_2

    move v2, v13

    .line 76
    :goto_4
    invoke-virtual {v4, v12}, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->getY(I)F

    move-result v14

    sub-float v6, v14, v11

    .line 77
    int-to-float v14, v7

    div-float v14, v6, v14

    move/from16 v0, p1

    int-to-float v15, v0

    mul-float v13, v14, v15

    .line 78
    const/4 v14, 0x0

    cmpl-float v14, v3, v14

    if-nez v14, :cond_3

    move v3, v13

    goto :goto_3

    .line 74
    :cond_2
    add-float v14, v2, v13

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float v2, v14, v15

    goto :goto_4

    .line 79
    :cond_3
    add-float v14, v3, v13

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float v3, v14, v15

    goto :goto_3

    .line 82
    .end local v6    # "dist":F
    .end local v7    # "dur":I
    .end local v13    # "vel":F
    :cond_4
    move/from16 v0, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v14

    goto :goto_1

    .line 84
    :cond_5
    move/from16 v0, p2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v14

    goto :goto_2
.end method

.method public getXVelocity()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker;->mXVelocity:F

    return v0
.end method

.method public getYVelocity()F
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker;->mYVelocity:F

    return v0
.end method
