.class Lnet/hasnath/android/ridmik/voice/RecognitionView$4;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hasnath/android/ridmik/voice/RecognitionView;->showListening()V
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
    iput-object p1, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$4;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 166
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$4;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    sget-object v1, Lnet/hasnath/android/ridmik/voice/RecognitionView$State;->LISTENING:Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    invoke-static {v0, v1}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$14(Lnet/hasnath/android/ridmik/voice/RecognitionView;Lnet/hasnath/android/ridmik/voice/RecognitionView$State;)V

    .line 167
    iget-object v1, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$4;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$4;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-static {v0}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$11(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0700ce

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$4;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-static {v0}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$3(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 168
    iget-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$4;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-static {v3}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$11(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0700db

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 167
    invoke-static {v1, v5, v2, v0, v3}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$13(Lnet/hasnath/android/ridmik/voice/RecognitionView;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method
