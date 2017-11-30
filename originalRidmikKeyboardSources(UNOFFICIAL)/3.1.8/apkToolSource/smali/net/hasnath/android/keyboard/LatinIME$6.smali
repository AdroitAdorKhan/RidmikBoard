.class Lnet/hasnath/android/keyboard/LatinIME$6;
.super Ljava/lang/Object;
.source "LatinIME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hasnath/android/keyboard/LatinIME;->showVoiceWarningDialog(Z)V
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
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinIME$6;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    .line 2253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 2255
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME$6;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    # getter for: Lnet/hasnath/android/keyboard/LatinIME;->mVoiceInput:Lnet/hasnath/android/ridmik/voice/VoiceInput;
    invoke-static {v0}, Lnet/hasnath/android/keyboard/LatinIME;->access$11(Lnet/hasnath/android/keyboard/LatinIME;)Lnet/hasnath/android/ridmik/voice/VoiceInput;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->logKeyboardWarningDialogCancel()V

    .line 2256
    return-void
.end method
