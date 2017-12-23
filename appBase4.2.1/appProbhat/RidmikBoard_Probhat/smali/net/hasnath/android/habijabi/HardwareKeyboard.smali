.class public Lnet/hasnath/android/habijabi/HardwareKeyboard;
.super Landroid/inputmethodservice/InputMethodService;
.source "HardwareKeyboard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 13
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 20
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v0

    .line 22
    .local v0, "code":I
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/HardwareKeyboard;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 23
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 29
    :goto_0
    return v2

    .line 25
    :cond_0
    int-to-char v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0
.end method
