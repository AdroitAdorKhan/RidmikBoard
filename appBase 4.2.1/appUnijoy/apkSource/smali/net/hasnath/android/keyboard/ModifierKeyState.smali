.class Lnet/hasnath/android/keyboard/ModifierKeyState;
.super Ljava/lang/Object;
.source "ModifierKeyState.java"


# static fields
.field private static final MOMENTARY:I = 0x2

.field private static final PRESSING:I = 0x1

.field private static final RELEASING:I


# instance fields
.field private mMomentaryOtherKeyCode:I

.field private mState:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lnet/hasnath/android/keyboard/ModifierKeyState;->mState:I

    .line 21
    return-void
.end method


# virtual methods
.method public getOtherKeyCode()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lnet/hasnath/android/keyboard/ModifierKeyState;->mMomentaryOtherKeyCode:I

    return v0
.end method

.method public isMomentary()Z
    .locals 2

    .prologue
    .line 46
    iget v0, p0, Lnet/hasnath/android/keyboard/ModifierKeyState;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOtherKeyPressed(I)V
    .locals 2
    .param p1, "primaryCode"    # I

    .prologue
    .line 38
    iget v0, p0, Lnet/hasnath/android/keyboard/ModifierKeyState;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lnet/hasnath/android/keyboard/ModifierKeyState;->mState:I

    .line 41
    iput p1, p0, Lnet/hasnath/android/keyboard/ModifierKeyState;->mMomentaryOtherKeyCode:I

    .line 43
    :cond_0
    return-void
.end method

.method public onPress()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lnet/hasnath/android/keyboard/ModifierKeyState;->mState:I

    .line 31
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lnet/hasnath/android/keyboard/ModifierKeyState;->mState:I

    .line 35
    return-void
.end method
