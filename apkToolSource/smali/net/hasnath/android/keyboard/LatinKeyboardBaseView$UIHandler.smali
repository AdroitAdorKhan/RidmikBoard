.class Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;
.super Landroid/os/Handler;
.source "LatinKeyboardBaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UIHandler"
.end annotation


# static fields
.field private static final MSG_DISMISS_PREVIEW:I = 0x2

.field private static final MSG_LONGPRESS_KEY:I = 0x4

.field private static final MSG_POPUP_PREVIEW:I = 0x1

.field private static final MSG_REPEAT_KEY:I = 0x3


# instance fields
.field private mInKeyRepeat:Z

.field outer:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;


# direct methods
.method public constructor <init>(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)V
    .locals 0
    .param p1, "latinKeyboardBaseView"    # Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    .prologue
    .line 284
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 285
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    .line 286
    return-void
.end method


# virtual methods
.method public cancelAllMessages()V
    .locals 0

    .prologue
    .line 365
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->cancelKeyTimers()V

    .line 366
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->cancelPopupPreview()V

    .line 367
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->cancelDismissPreview()V

    .line 368
    return-void
.end method

.method public cancelDismissPreview()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->removeMessages(I)V

    .line 334
    return-void
.end method

.method public cancelKeyRepeatTimer()V
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->mInKeyRepeat:Z

    .line 343
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->removeMessages(I)V

    .line 344
    return-void
.end method

.method public cancelKeyTimers()V
    .locals 0

    .prologue
    .line 360
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->cancelKeyRepeatTimer()V

    .line 361
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->cancelLongPressTimer()V

    .line 362
    return-void
.end method

.method public cancelLongPressTimer()V
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->removeMessages(I)V

    .line 357
    return-void
.end method

.method public cancelPopupPreview()V
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->removeMessages(I)V

    .line 324
    return-void
.end method

.method public dismissPreview(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 327
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    # getter for: Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$1(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 330
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 290
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 309
    :goto_0
    return-void

    .line 292
    :pswitch_0
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lnet/hasnath/android/keyboard/PointerTracker;

    # invokes: Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->showKey(ILnet/hasnath/android/keyboard/PointerTracker;)V
    invoke-static {v2, v3, v1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$0(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;ILnet/hasnath/android/keyboard/PointerTracker;)V

    goto :goto_0

    .line 295
    :pswitch_1
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    # getter for: Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$1(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 298
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/hasnath/android/keyboard/PointerTracker;

    .line 299
    .local v0, "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/PointerTracker;->repeatKey(I)V

    .line 300
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    # getter for: Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyRepeatInterval:I
    invoke-static {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$2(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)I

    move-result v1

    int-to-long v2, v1

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v2, v3, v1, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->startKeyRepeatTimer(JILnet/hasnath/android/keyboard/PointerTracker;)V

    goto :goto_0

    .line 304
    .end local v0    # "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/hasnath/android/keyboard/PointerTracker;

    .line 305
    .restart local v0    # "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->openPopupIfRequired(ILnet/hasnath/android/keyboard/PointerTracker;)Z
    invoke-static {v1, v2, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$3(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;ILnet/hasnath/android/keyboard/PointerTracker;)Z

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isInKeyRepeat()Z
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->mInKeyRepeat:Z

    return v0
.end method

.method public popupPreview(JILnet/hasnath/android/keyboard/PointerTracker;)V
    .locals 3
    .param p1, "delay"    # J
    .param p3, "keyIndex"    # I
    .param p4, "tracker"    # Lnet/hasnath/android/keyboard/PointerTracker;

    .prologue
    const/4 v1, 0x1

    .line 312
    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->removeMessages(I)V

    .line 313
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    # getter for: Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$1(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    # getter for: Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;
    invoke-static {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$4(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    # invokes: Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->showKey(ILnet/hasnath/android/keyboard/PointerTracker;)V
    invoke-static {v0, p3, p4}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$0(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;ILnet/hasnath/android/keyboard/PointerTracker;)V

    .line 320
    :goto_0
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p3, v0, p4}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public startKeyRepeatTimer(JILnet/hasnath/android/keyboard/PointerTracker;)V
    .locals 3
    .param p1, "delay"    # J
    .param p3, "keyIndex"    # I
    .param p4, "tracker"    # Lnet/hasnath/android/keyboard/PointerTracker;

    .prologue
    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->mInKeyRepeat:Z

    .line 338
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1, p4}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 339
    return-void
.end method

.method public startLongPressTimer(JILnet/hasnath/android/keyboard/PointerTracker;)V
    .locals 3
    .param p1, "delay"    # J
    .param p3, "keyIndex"    # I
    .param p4, "tracker"    # Lnet/hasnath/android/keyboard/PointerTracker;

    .prologue
    const/4 v1, 0x4

    .line 351
    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->removeMessages(I)V

    .line 352
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p3, v0, p4}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 353
    return-void
.end method
