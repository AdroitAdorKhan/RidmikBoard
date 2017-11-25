.class Lnet/hasnath/android/keyboard/LatinIME$5;
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

.field private final synthetic val$swipe:Z


# direct methods
.method constructor <init>(Lnet/hasnath/android/keyboard/LatinIME;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinIME$5;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    iput-boolean p2, p0, Lnet/hasnath/android/keyboard/LatinIME$5;->val$swipe:Z

    .line 2431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 2433
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME$5;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-static {v0}, Lnet/hasnath/android/keyboard/LatinIME;->access$11(Lnet/hasnath/android/keyboard/LatinIME;)Lnet/hasnath/android/ridmik/voice/VoiceInput;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInput;->logKeyboardWarningDialogOk()V

    .line 2434
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME$5;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinIME$5;->val$swipe:Z

    invoke-static {v0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->access$12(Lnet/hasnath/android/keyboard/LatinIME;Z)V

    .line 2435
    return-void
.end method
