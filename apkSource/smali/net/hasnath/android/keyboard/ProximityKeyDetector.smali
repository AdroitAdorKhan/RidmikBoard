.class Lnet/hasnath/android/keyboard/ProximityKeyDetector;
.super Lnet/hasnath/android/keyboard/KeyDetector;
.source "ProximityKeyDetector.java"


# static fields
.field private static final MAX_NEARBY_KEYS:I = 0xc


# instance fields
.field private mDistances:[I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/KeyDetector;-><init>()V

    .line 27
    const/16 v0, 0xc

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/hasnath/android/keyboard/ProximityKeyDetector;->mDistances:[I

    .line 23
    return-void
.end method


# virtual methods
.method public getKeyIndexAndNearbyCodes(II[I)I
    .locals 21
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "allKeys"    # [I

    .prologue
    .line 36
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/ProximityKeyDetector;->getKeys()[Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-result-object v13

    .line 37
    .local v13, "keys":[Lnet/hasnath/android/keyboard/Keyboard$Key;
    invoke-virtual/range {p0 .. p1}, Lnet/hasnath/android/keyboard/ProximityKeyDetector;->getTouchX(I)I

    move-result v17

    .line 38
    .local v17, "touchX":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/ProximityKeyDetector;->getTouchY(I)I

    move-result v18

    .line 39
    .local v18, "touchY":I
    const/16 v16, -0x1

    .line 40
    .local v16, "primaryIndex":I
    const/4 v4, -0x1

    .line 41
    .local v4, "closestKey":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/ProximityKeyDetector;->mProximityThresholdSquare:I

    move/from16 v19, v0

    add-int/lit8 v5, v19, 0x1

    .line 42
    .local v5, "closestKeyDist":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/hasnath/android/keyboard/ProximityKeyDetector;->mDistances:[I

    .line 43
    .local v7, "distances":[I
    const v19, 0x7fffffff

    move/from16 v0, v19

    invoke-static {v7, v0}, Ljava/util/Arrays;->fill([II)V

    .line 44
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/ProximityKeyDetector;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lnet/hasnath/android/keyboard/Keyboard;->getNearestKeys(II)[I

    move-result-object v15

    .line 45
    .local v15, "nearestKeyIndices":[I
    array-length v12, v15

    .line 46
    .local v12, "keyCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-lt v8, v12, :cond_1

    .line 81
    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 82
    move/from16 v16, v4

    .line 84
    :cond_0
    return v16

    .line 47
    :cond_1
    aget v19, v15, v8

    aget-object v11, v13, v19

    .line 48
    .local v11, "key":Lnet/hasnath/android/keyboard/Keyboard$Key;
    const/4 v6, 0x0

    .line 49
    .local v6, "dist":I
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lnet/hasnath/android/keyboard/Keyboard$Key;->isInside(II)Z

    move-result v9

    .line 50
    .local v9, "isInside":Z
    if-eqz v9, :cond_2

    .line 51
    aget v16, v15, v8

    .line 54
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/hasnath/android/keyboard/ProximityKeyDetector;->mProximityCorrectOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 55
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lnet/hasnath/android/keyboard/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/ProximityKeyDetector;->mProximityThresholdSquare:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v6, v0, :cond_4

    .line 56
    :cond_3
    if-eqz v9, :cond_6

    .line 57
    :cond_4
    iget-object v0, v11, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_6

    .line 59
    iget-object v0, v11, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v14, v0

    .line 60
    .local v14, "nCodes":I
    if-ge v6, v5, :cond_5

    .line 61
    move v5, v6

    .line 62
    aget v4, v15, v8

    .line 65
    :cond_5
    if-nez p3, :cond_7

    .line 46
    .end local v14    # "nCodes":I
    :cond_6
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 67
    .restart local v14    # "nCodes":I
    :cond_7
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2
    array-length v0, v7

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_6

    .line 68
    aget v19, v7, v10

    move/from16 v0, v19

    if-le v0, v6, :cond_8

    .line 70
    add-int v19, v10, v14

    .line 71
    array-length v0, v7

    move/from16 v20, v0

    sub-int v20, v20, v10

    sub-int v20, v20, v14

    .line 70
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v7, v10, v7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    add-int v19, v10, v14

    .line 73
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    sub-int v20, v20, v10

    sub-int v20, v20, v14

    .line 72
    move-object/from16 v0, p3

    move-object/from16 v1, p3

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v10, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget-object v0, v11, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    add-int v19, v10, v14

    move/from16 v0, v19

    invoke-static {v7, v10, v0, v6}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_1

    .line 67
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_2
.end method

.method protected getMaxNearbyKeys()I
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0xc

    return v0
.end method
