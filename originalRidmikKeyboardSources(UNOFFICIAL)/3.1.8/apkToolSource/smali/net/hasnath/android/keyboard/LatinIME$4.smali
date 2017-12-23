.class Lnet/hasnath/android/keyboard/LatinIME$4;
.super Ljava/lang/Object;
.source "LatinIME.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hasnath/android/keyboard/LatinIME;->switchToRecognitionStatusView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hasnath/android/keyboard/LatinIME;

.field private final synthetic val$configChanged:Z


# direct methods
.method constructor <init>(Lnet/hasnath/android/keyboard/LatinIME;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinIME$4;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    iput-boolean p2, p0, Lnet/hasnath/android/keyboard/LatinIME$4;->val$configChanged:Z

    .line 2183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2185
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME$4;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lnet/hasnath/android/keyboard/LatinIME;->setCandidatesViewShown(Z)V

    .line 2186
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME$4;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lnet/hasnath/android/keyboard/LatinIME;->access$9(Lnet/hasnath/android/keyboard/LatinIME;Z)V

    .line 2187
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME$4;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    # getter for: Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;
    invoke-static {v2}, Lnet/hasnath/android/keyboard/LatinIME;->access$11(Lnet/hasnath/android/keyboard/LatinIME;)Lnet/hasnath/android/ridmik/voice/VoiceInput;

    move-result-object v2

    invoke-virtual {v2}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->getView()Landroid/view/View;

    move-result-object v1

    .line 2188
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2189
    .local v0, "p":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 2190
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2192
    :cond_0
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME$4;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v2, v1}, Lnet/hasnath/android/keyboard/LatinIME;->setInputView(Landroid/view/View;)V

    .line 2193
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME$4;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/LatinIME;->updateInputViewShown()V

    .line 2194
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/LatinIME$4;->val$configChanged:Z

    if-eqz v2, :cond_1

    .line 2195
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME$4;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    # getter for: Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;
    invoke-static {v2}, Lnet/hasnath/android/keyboard/LatinIME;->access$11(Lnet/hasnath/android/keyboard/LatinIME;)Lnet/hasnath/android/ridmik/voice/VoiceInput;

    move-result-object v2

    invoke-virtual {v2}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->onConfigurationChanged()V

    .line 2197
    :cond_1
    return-void
.end method
