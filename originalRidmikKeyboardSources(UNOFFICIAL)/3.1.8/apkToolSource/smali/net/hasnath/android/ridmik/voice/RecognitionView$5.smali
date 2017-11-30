.class Lnet/hasnath/android/ridmik/voice/RecognitionView$5;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hasnath/android/ridmik/voice/RecognitionView;->showError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

.field private final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/hasnath/android/ridmik/voice/RecognitionView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$5;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    iput-object p2, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$5;->val$message:Ljava/lang/String;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 181
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$5;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    sget-object v1, Lnet/hasnath/android/ridmik/voice/RecognitionView$State;->READY:Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    invoke-static {v0, v1}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$14(Lnet/hasnath/android/ridmik/voice/RecognitionView;Lnet/hasnath/android/ridmik/voice/RecognitionView$State;)V

    .line 182
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$5;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    const/4 v1, 0x0

    iget-object v2, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$5;->val$message:Ljava/lang/String;

    iget-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$5;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    # getter for: Lnet/hasnath/android/ridmik/voice/RecognitionView;->mError:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$15(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$5;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    # getter for: Lnet/hasnath/android/ridmik/voice/RecognitionView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$11(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0800d3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    # invokes: Lnet/hasnath/android/ridmik/voice/RecognitionView;->prepareDialog(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    invoke-static {v0, v1, v2, v3, v4}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$13(Lnet/hasnath/android/ridmik/voice/RecognitionView;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method
