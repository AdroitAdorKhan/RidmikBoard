.class Lnet/hasnath/android/ridmik/voice/VoiceInput$1;
.super Landroid/os/Handler;
.source "VoiceInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/ridmik/voice/VoiceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hasnath/android/ridmik/voice/VoiceInput;


# direct methods
.method constructor <init>(Lnet/hasnath/android/ridmik/voice/VoiceInput;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput$1;->this$0:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    .line 131
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput$1;->this$0:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->access$0(Lnet/hasnath/android/ridmik/voice/VoiceInput;I)V

    .line 136
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput$1;->this$0:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    # getter for: Lnet/hasnath/android/ridmik/voice/VoiceInput;->mRecognitionView:Lnet/hasnath/android/ridmik/voice/RecognitionView;
    invoke-static {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->access$1(Lnet/hasnath/android/ridmik/voice/VoiceInput;)Lnet/hasnath/android/ridmik/voice/RecognitionView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->finish()V

    .line 137
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/VoiceInput$1;->this$0:Lnet/hasnath/android/ridmik/voice/VoiceInput;

    # getter for: Lnet/hasnath/android/ridmik/voice/VoiceInput;->mUiListener:Lnet/hasnath/android/ridmik/voice/VoiceInput$UiListener;
    invoke-static {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->access$2(Lnet/hasnath/android/ridmik/voice/VoiceInput;)Lnet/hasnath/android/ridmik/voice/VoiceInput$UiListener;

    move-result-object v0

    invoke-interface {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput$UiListener;->onCancelVoice()V

    .line 139
    :cond_0
    return-void
.end method
