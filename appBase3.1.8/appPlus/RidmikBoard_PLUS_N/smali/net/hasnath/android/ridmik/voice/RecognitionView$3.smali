.class Lnet/hasnath/android/ridmik/voice/RecognitionView$3;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hasnath/android/ridmik/voice/RecognitionView;->showInitializing()V
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
    iput-object p1, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$3;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 157
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$3;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    const/4 v1, 0x0

    iget-object v2, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$3;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-static {v2}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$11(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800c7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$3;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-static {v3}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$12(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 158
    iget-object v4, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$3;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-static {v4}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$11(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0800d2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 157
    invoke-static {v0, v1, v2, v3, v4}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$13(Lnet/hasnath/android/ridmik/voice/RecognitionView;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method
