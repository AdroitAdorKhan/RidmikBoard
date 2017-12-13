.class Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;
.super Ljava/lang/Object;
.source "SwipeTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/SwipeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventRingBuffer"
.end annotation


# instance fields
.field private final bufSize:I

.field private count:I

.field private end:I

.field private final timeBuf:[J

.field private top:I

.field private final xBuf:[F

.field private final yBuf:[F


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->bufSize:I

    .line 106
    new-array v0, p1, [F

    iput-object v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->xBuf:[F

    .line 107
    new-array v0, p1, [F

    iput-object v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->yBuf:[F

    .line 108
    new-array v0, p1, [J

    iput-object v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->timeBuf:[J

    .line 109
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->clear()V

    .line 110
    return-void
.end method

.method private advance(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 126
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->bufSize:I

    rem-int/2addr v0, v1

    return v0
.end method

.method private index(I)I
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 122
    iget v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->end:I

    add-int/2addr v0, p1

    iget v1, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->bufSize:I

    rem-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public add(FFJ)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "time"    # J

    .prologue
    .line 130
    iget-object v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->xBuf:[F

    iget v1, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->top:I

    aput p1, v0, v1

    .line 131
    iget-object v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->yBuf:[F

    iget v1, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->top:I

    aput p2, v0, v1

    .line 132
    iget-object v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->timeBuf:[J

    iget v1, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->top:I

    aput-wide p3, v0, v1

    .line 133
    iget v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->top:I

    invoke-direct {p0, v0}, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->advance(I)I

    move-result v0

    iput v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->top:I

    .line 134
    iget v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->count:I

    iget v1, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->bufSize:I

    if-ge v0, v1, :cond_0

    .line 135
    iget v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->count:I

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->end:I

    invoke-direct {p0, v0}, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->advance(I)I

    move-result v0

    iput v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->end:I

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->count:I

    iput v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->end:I

    iput v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->top:I

    .line 114
    return-void
.end method

.method public dropOldest()V
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->count:I

    .line 155
    iget v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->end:I

    invoke-direct {p0, v0}, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->advance(I)I

    move-result v0

    iput v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->end:I

    .line 156
    return-void
.end method

.method public getTime(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->timeBuf:[J

    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->index(I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getX(I)F
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->xBuf:[F

    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->index(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getY(I)F
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->yBuf:[F

    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->index(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lnet/hasnath/android/keyboard/SwipeTracker$EventRingBuffer;->count:I

    return v0
.end method
