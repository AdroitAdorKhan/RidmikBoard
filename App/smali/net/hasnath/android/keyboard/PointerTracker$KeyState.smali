.class Lnet/hasnath/android/keyboard/PointerTracker$KeyState;
.super Ljava/lang/Object;
.source "PointerTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/PointerTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyState"
.end annotation


# instance fields
.field private mDownTime:J

.field private final mKeyDetector:Lnet/hasnath/android/keyboard/KeyDetector;

.field private mKeyIndex:I

.field private mKeyX:I

.field private mKeyY:I

.field private mLastX:I

.field private mLastY:I

.field private mStartX:I

.field private mStartY:I


# direct methods
.method public constructor <init>(Lnet/hasnath/android/keyboard/KeyDetector;)V
    .locals 1
    .param p1, "keyDetecor"    # Lnet/hasnath/android/keyboard/KeyDetector;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lnet/hasnath/android/keyboard/PointerTracker$KeyState;->mKeyIndex:I

    .line 104
    iput-object p1, p0, Lnet/hasnath/android/keyboard/PointerTracker$KeyState;->mKeyDetector:Lnet/hasnath/android/keyboard/KeyDetector;

    .line 105
    return-void
.end method

.method private onMoveKeyInternal(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 148
    iput p1, p0, Lnet/hasnath/android/keyboard/PointerTracker$KeyState;->mLastX:I

    .line 149
    iput p2, p0, Lnet/hasnath/android/keyboard/PointerTracker$KeyState;->mLastY:I

    .line 150
    iget-object v0, p0, Lnet/hasnath/android/keyboard/PointerTracker$KeyState;->mKeyDetector:Lnet/hasnath/android/keyboard/KeyDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lnet/hasnath/android/keyboard/KeyDetector;->getKeyIndexAndNearbyCodes(II[I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getDownTime()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lnet/hasnath/android/keyboard/PointerTracker$KeyState;->mDownTime:J

    return-wide v0
.end method

.method public getKeyIndex()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lnet/hasnath/android/keyboard/PointerTracker$KeyState;->mKeyIndex:I

    return v0
.end method

.method public getKeyX()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lnet/hasnath/android/keyboard/PointerTracker$KeyState;->mKeyX:I

    return v0
.end method

.method public getKeyY()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lnet/hasnath/android/keyboard/PointerTracker$KeyState;->mKeyY:I

    return v0
.end method

.method public getLastX()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lnet/hasnath/android/keyboard/PointerTracker$KeyState;->mLastX:I

    return v0
.end method

.method public getLastY()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lnet/hasnath/android/keyboard/PointerTracker$KeyState;->mLastY:I

    return v0
.end method

.method public getStartX()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lnet/hasnath/android/keyboard/PointerTracker$KeyState;->mStartX:I

    return v0
.end method

.method public getStartY()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lnet/hasnath/android/keyboard/PointerTracker$KeyState;->mStartY:I

    return v0
.end method

.method public onDownKey(IIJ)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 140
    iput p1, p0, Lnet/hasnath/android/keyboard/PointerTracker$KeyState;->mStartX:I

    .line 141
    iput p2, p0, Lnet/hasnath/android/keyboard/PointerTracker$KeyState;->mStartY:I

    .line 142
    iput-wide p3, p0, Lnet/hasnath/android/keyboard/PointerTracker$KeyState;->mDownTime:J

    .line 144
    invoke-direct {p0, p1, p2}, Lnet/hasnath/android/keyboard/PointerTracker$KeyState;->onMoveKeyInternal(II)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lnet/hasnath/android/keyboard/PointerTracker$KeyState;->onMoveToNewKey(III)I

    move-result v0

    return v0
.end method

.method public onMoveKey(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Lnet/hasnath/android/keyboard/PointerTracker$KeyState;->onMoveKeyInternal(II)I

    move-result v0

    return v0
.end method

.method public onMoveToNewKey(III)I
    .locals 0
    .param p1, "keyIndex"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 158
    iput p1, p0, Lnet/hasnath/android/keyboard/PointerTracker$KeyState;->mKeyIndex:I

    .line 159
    iput p2, p0, Lnet/hasnath/android/keyboard/PointerTracker$KeyState;->mKeyX:I

    .line 160
    iput p3, p0, Lnet/hasnath/android/keyboard/PointerTracker$KeyState;->mKeyY:I

    .line 161
    return p1
.end method

.method public onUpKey(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lnet/hasnath/android/keyboard/PointerTracker$KeyState;->onMoveKeyInternal(II)I

    move-result v0

    return v0
.end method
