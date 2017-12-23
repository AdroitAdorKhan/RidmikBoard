.class Lnet/hasnath/android/keyboard/KeyboardSwitcher$1;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hasnath/android/keyboard/KeyboardSwitcher;->changeLatinKeyboardView(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hasnath/android/keyboard/KeyboardSwitcher;


# direct methods
.method constructor <init>(Lnet/hasnath/android/keyboard/KeyboardSwitcher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher$1;->this$0:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 701
    iget-object v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher$1;->this$0:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-static {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->access$0(Lnet/hasnath/android/keyboard/KeyboardSwitcher;)Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 702
    iget-object v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher$1;->this$0:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-static {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->access$0(Lnet/hasnath/android/keyboard/KeyboardSwitcher;)Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 703
    .local v0, "p":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 704
    iget-object v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher$1;->this$0:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-static {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->access$0(Lnet/hasnath/android/keyboard/KeyboardSwitcher;)Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher$1;->this$0:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-static {v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->access$0(Lnet/hasnath/android/keyboard/KeyboardSwitcher;)Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 706
    :cond_0
    iget-object v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher$1;->this$0:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-static {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->access$1(Lnet/hasnath/android/keyboard/KeyboardSwitcher;)Lnet/hasnath/android/keyboard/LatinIME;

    move-result-object v1

    iget-object v2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher$1;->this$0:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-static {v2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->access$0(Lnet/hasnath/android/keyboard/KeyboardSwitcher;)Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/hasnath/android/keyboard/LatinIME;->setInputView(Landroid/view/View;)V

    .line 708
    .end local v0    # "p":Landroid/view/ViewParent;
    :cond_1
    iget-object v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher$1;->this$0:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-static {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->access$1(Lnet/hasnath/android/keyboard/KeyboardSwitcher;)Lnet/hasnath/android/keyboard/LatinIME;

    move-result-object v1

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinIME;->updateInputViewShown()V

    .line 709
    return-void
.end method
