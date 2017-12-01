.class Lnet/hasnath/android/ridmik/voice/RecognitionView$7;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hasnath/android/ridmik/voice/RecognitionView;->finish()V
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
    iput-object p1, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$7;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$7;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    sget-object v1, Lnet/hasnath/android/ridmik/voice/RecognitionView$State;->READY:Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    invoke-static {v0, v1}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$14(Lnet/hasnath/android/ridmik/voice/RecognitionView;Lnet/hasnath/android/ridmik/voice/RecognitionView$State;)V

    .line 314
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$7;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-static {v0}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$17(Lnet/hasnath/android/ridmik/voice/RecognitionView;)V

    .line 315
    return-void
.end method
