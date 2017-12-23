.class Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$2;
.super Ljava/lang/Object;
.source "LatinKeyboardBaseView.java"

# interfaces
.implements Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->inflateMiniKeyboardContainer(Lnet/hasnath/android/keyboard/Keyboard$Key;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;


# direct methods
.method constructor <init>(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$2;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    .line 1309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$2;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    # getter for: Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;
    invoke-static {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$8(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onCancel()V

    .line 1322
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$2;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    # invokes: Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->dismissPopupKeyboard()V
    invoke-static {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$9(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)V

    .line 1323
    return-void
.end method

.method public onKey(I[III)V
    .locals 1
    .param p1, "primaryCode"    # I
    .param p2, "keyCodes"    # [I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 1311
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$2;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    # getter for: Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;
    invoke-static {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$8(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onKey(I[III)V

    .line 1312
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$2;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    # invokes: Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->dismissPopupKeyboard()V
    invoke-static {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$9(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)V

    .line 1313
    return-void
.end method

.method public onPress(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 1334
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$2;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    # getter for: Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;
    invoke-static {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$8(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onPress(I)V

    .line 1335
    return-void
.end method

.method public onRelease(I)V
    .locals 1
    .param p1, "primaryCode"    # I

    .prologue
    .line 1337
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$2;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    # getter for: Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;
    invoke-static {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$8(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onRelease(I)V

    .line 1338
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1316
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$2;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    # getter for: Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;
    invoke-static {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$8(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 1317
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$2;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    # invokes: Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->dismissPopupKeyboard()V
    invoke-static {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->access$9(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)V

    .line 1318
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 1332
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 1326
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 1328
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 1330
    return-void
.end method
