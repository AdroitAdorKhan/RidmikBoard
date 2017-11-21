.class Lnet/hasnath/android/keyboard/LatinIME$3;
.super Ljava/lang/Object;
.source "LatinIME.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hasnath/android/keyboard/LatinIME;->switchToKeyboardView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hasnath/android/keyboard/LatinIME;


# direct methods
.method constructor <init>(Lnet/hasnath/android/keyboard/LatinIME;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinIME$3;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    .line 2353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2355
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME$3;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->access$9(Lnet/hasnath/android/keyboard/LatinIME;Z)V

    .line 2356
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME$3;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    iget-object v0, v0, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2357
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME$3;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME$3;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    iget-object v1, v1, Lnet/hasnath/android/keyboard/LatinIME;->mKeyboardSwitcher:Lnet/hasnath/android/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher;->getInputView()Lnet/hasnath/android/keyboard/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->setInputView(Landroid/view/View;)V

    .line 2359
    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME$3;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->setCandidatesViewShown(Z)V

    .line 2360
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME$3;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinIME;->updateInputViewShown()V

    .line 2361
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME$3;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    # invokes: Lnet/hasnath/android/keyboard/LatinIME;->postUpdateSuggestions()V
    invoke-static {v0}, Lnet/hasnath/android/keyboard/LatinIME;->access$10(Lnet/hasnath/android/keyboard/LatinIME;)V

    .line 2362
    return-void
.end method
