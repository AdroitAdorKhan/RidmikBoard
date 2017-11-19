.class Lnet/hasnath/android/keyboard/MiniKeyboardKeyDetector;
.super Lnet/hasnath/android/keyboard/KeyDetector;
.source "MiniKeyboardKeyDetector.java"


# static fields
.field private static final MAX_NEARBY_KEYS:I = 0x1


# instance fields
.field private final mSlideAllowanceSquare:I

.field private final mSlideAllowanceSquareTop:I


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "slideAllowance"    # F

    .prologue
    .line 28
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/KeyDetector;-><init>()V

    .line 29
    mul-float v0, p1, p1

    float-to-int v0, v0

    iput v0, p0, Lnet/hasnath/android/keyboard/MiniKeyboardKeyDetector;->mSlideAllowanceSquare:I

    .line 31
    iget v0, p0, Lnet/hasnath/android/keyboard/MiniKeyboardKeyDetector;->mSlideAllowanceSquare:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lnet/hasnath/android/keyboard/MiniKeyboardKeyDetector;->mSlideAllowanceSquareTop:I

    .line 32
    return-void
.end method


# virtual methods
.method public getKeyIndexAndNearbyCodes(II[I)I
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "allKeys"    # [I

    .prologue
    const/4 v10, 0x0

    .line 41
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/MiniKeyboardKeyDetector;->getKeys()[Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-result-object v6

    .line 42
    .local v6, "keys":[Lnet/hasnath/android/keyboard/Keyboard$Key;
    invoke-virtual {p0, p1}, Lnet/hasnath/android/keyboard/MiniKeyboardKeyDetector;->getTouchX(I)I

    move-result v7

    .line 43
    .local v7, "touchX":I
    invoke-virtual {p0, p2}, Lnet/hasnath/android/keyboard/MiniKeyboardKeyDetector;->getTouchY(I)I

    move-result v8

    .line 44
    .local v8, "touchY":I
    const/4 v1, -0x1

    .line 45
    .local v1, "closestKeyIndex":I
    if-gez p2, :cond_1

    iget v0, p0, Lnet/hasnath/android/keyboard/MiniKeyboardKeyDetector;->mSlideAllowanceSquareTop:I

    .line 46
    .local v0, "closestKeyDist":I
    :goto_0
    array-length v5, v6

    .line 47
    .local v5, "keyCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v5, :cond_2

    .line 55
    if-eqz p3, :cond_0

    const/4 v9, -0x1

    if-eq v1, v9, :cond_0

    .line 56
    aget-object v9, v6, v1

    iget-object v9, v9, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    aget v9, v9, v10

    aput v9, p3, v10

    .line 57
    :cond_0
    return v1

    .line 45
    .end local v0    # "closestKeyDist":I
    .end local v3    # "i":I
    .end local v5    # "keyCount":I
    :cond_1
    iget v0, p0, Lnet/hasnath/android/keyboard/MiniKeyboardKeyDetector;->mSlideAllowanceSquare:I

    goto :goto_0

    .line 48
    .restart local v0    # "closestKeyDist":I
    .restart local v3    # "i":I
    .restart local v5    # "keyCount":I
    :cond_2
    aget-object v4, v6, v3

    .line 49
    .local v4, "key":Lnet/hasnath/android/keyboard/Keyboard$Key;
    invoke-virtual {v4, v7, v8}, Lnet/hasnath/android/keyboard/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v2

    .line 50
    .local v2, "dist":I
    if-ge v2, v0, :cond_3

    .line 51
    move v1, v3

    .line 52
    move v0, v2

    .line 47
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected getMaxNearbyKeys()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method
