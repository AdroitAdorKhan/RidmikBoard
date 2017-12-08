.class public Lnet/hasnath/android/keyboard/LatinIME$FooHandler;
.super Landroid/os/Handler;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/LatinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FooHandler"
.end annotation


# instance fields
.field private final outer:Lnet/hasnath/android/keyboard/LatinIME;


# direct methods
.method public constructor <init>(Lnet/hasnath/android/keyboard/LatinIME;)V
    .locals 0
    .param p1, "ot"    # Lnet/hasnath/android/keyboard/LatinIME;

    .prologue
    .line 396
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 397
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;->outer:Lnet/hasnath/android/keyboard/LatinIME;

    .line 398
    return-void
.end method


# virtual methods
.method public cancelDoubleSpacesTimer()V
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;->removeMessages(I)V

    .line 437
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 402
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 404
    :pswitch_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;->outer:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-static {v0}, Lnet/hasnath/android/keyboard/LatinIME;->access$2(Lnet/hasnath/android/keyboard/LatinIME;)V

    goto :goto_0

    .line 407
    :pswitch_1
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;->outer:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-static {v0}, Lnet/hasnath/android/keyboard/LatinIME;->access$3(Lnet/hasnath/android/keyboard/LatinIME;)V

    goto :goto_0

    .line 410
    :pswitch_2
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;->outer:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-static {v0}, Lnet/hasnath/android/keyboard/LatinIME;->access$4(Lnet/hasnath/android/keyboard/LatinIME;)Lnet/hasnath/android/keyboard/Tutorial;

    move-result-object v0

    if-nez v0, :cond_0

    .line 411
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;->outer:Lnet/hasnath/android/keyboard/LatinIME;

    iget-object v0, v0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;->outer:Lnet/hasnath/android/keyboard/LatinIME;

    new-instance v1, Lnet/hasnath/android/keyboard/Tutorial;

    .line 413
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;->outer:Lnet/hasnath/android/keyboard/LatinIME;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;->outer:Lnet/hasnath/android/keyboard/LatinIME;

    iget-object v3, v3, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnet/hasnath/android/keyboard/Tutorial;-><init>(Lnet/hasnath/android/keyboard/LatinIME;Lnet/hasnath/android/keyboard/LatinKeyboardView;)V

    .line 412
    invoke-static {v0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->access$5(Lnet/hasnath/android/keyboard/LatinIME;Lnet/hasnath/android/keyboard/Tutorial;)V

    .line 414
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;->outer:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-static {v0}, Lnet/hasnath/android/keyboard/LatinIME;->access$4(Lnet/hasnath/android/keyboard/LatinIME;)Lnet/hasnath/android/keyboard/Tutorial;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/Tutorial;->start()V

    goto :goto_0

    .line 417
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 422
    :pswitch_3
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;->outer:Lnet/hasnath/android/keyboard/LatinIME;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;->outer:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_0

    .line 425
    :pswitch_4
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;->outer:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-static {v0}, Lnet/hasnath/android/keyboard/LatinIME;->access$6(Lnet/hasnath/android/keyboard/LatinIME;)V

    goto :goto_0

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public isAcceptingDoubleSpaces()Z
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public startDoubleSpacesTimer()V
    .locals 4

    .prologue
    const/4 v0, 0x5

    .line 431
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;->removeMessages(I)V

    .line 432
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x320

    invoke-virtual {p0, v0, v2, v3}, Lnet/hasnath/android/keyboard/LatinIME$FooHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 433
    return-void
.end method
