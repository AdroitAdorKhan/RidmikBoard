.class abstract Lnet/hasnath/android/keyboard/KeyDetector;
.super Ljava/lang/Object;
.source "KeyDetector.java"


# instance fields
.field protected mCorrectionX:I

.field protected mCorrectionY:I

.field protected mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

.field private mKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

.field protected mProximityCorrectOn:Z

.field protected mProximityThresholdSquare:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getKeyIndexAndNearbyCodes(II[I)I
.end method

.method protected getKeys()[Lnet/hasnath/android/keyboard/Keyboard$Key;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lnet/hasnath/android/keyboard/KeyDetector;->mKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "keyboard isn\'t set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/KeyDetector;->mKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    return-object v0
.end method

.method protected abstract getMaxNearbyKeys()I
.end method

.method protected getTouchX(I)I
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 50
    iget v0, p0, Lnet/hasnath/android/keyboard/KeyDetector;->mCorrectionX:I

    add-int/2addr v0, p1

    return v0
.end method

.method protected getTouchY(I)I
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 54
    iget v0, p0, Lnet/hasnath/android/keyboard/KeyDetector;->mCorrectionY:I

    add-int/2addr v0, p1

    return v0
.end method

.method public isProximityCorrectionEnabled()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/KeyDetector;->mProximityCorrectOn:Z

    return v0
.end method

.method public newCodeArray()[I
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/KeyDetector;->getMaxNearbyKeys()I

    move-result v1

    new-array v0, v1, [I

    .line 87
    .local v0, "codes":[I
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 88
    return-object v0
.end method

.method public setKeyboard(Lnet/hasnath/android/keyboard/Keyboard;FF)[Lnet/hasnath/android/keyboard/Keyboard$Key;
    .locals 3
    .param p1, "keyboard"    # Lnet/hasnath/android/keyboard/Keyboard;
    .param p2, "correctionX"    # F
    .param p3, "correctionY"    # F

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 40
    :cond_0
    float-to-int v2, p2

    iput v2, p0, Lnet/hasnath/android/keyboard/KeyDetector;->mCorrectionX:I

    .line 41
    float-to-int v2, p3

    iput v2, p0, Lnet/hasnath/android/keyboard/KeyDetector;->mCorrectionY:I

    .line 42
    iput-object p1, p0, Lnet/hasnath/android/keyboard/KeyDetector;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    .line 43
    iget-object v2, p0, Lnet/hasnath/android/keyboard/KeyDetector;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    .line 44
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Lnet/hasnath/android/keyboard/Keyboard$Key;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lnet/hasnath/android/keyboard/Keyboard$Key;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 45
    .local v0, "array":[Lnet/hasnath/android/keyboard/Keyboard$Key;
    iput-object v0, p0, Lnet/hasnath/android/keyboard/KeyDetector;->mKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 46
    return-object v0
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lnet/hasnath/android/keyboard/KeyDetector;->mProximityCorrectOn:Z

    .line 66
    return-void
.end method

.method public setProximityThreshold(I)V
    .locals 1
    .param p1, "threshold"    # I

    .prologue
    .line 73
    mul-int v0, p1, p1

    iput v0, p0, Lnet/hasnath/android/keyboard/KeyDetector;->mProximityThresholdSquare:I

    .line 74
    return-void
.end method
