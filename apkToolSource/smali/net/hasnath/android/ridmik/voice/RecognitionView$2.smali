.class Lnet/hasnath/android/ridmik/voice/RecognitionView$2;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hasnath/android/ridmik/voice/RecognitionView;->restoreState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;


# direct methods
.method constructor <init>(Lnet/hasnath/android/ridmik/voice/RecognitionView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$2;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$2;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-static {v0}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$0(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    move-result-object v0

    sget-object v1, Lnet/hasnath/android/ridmik/voice/RecognitionView$State;->WORKING:Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    if-ne v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$2;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-static {v0}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$10(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 148
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$2;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-static {v0}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$10(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 150
    :cond_0
    return-void
.end method
