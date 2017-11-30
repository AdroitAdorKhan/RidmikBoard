.class Lnet/hasnath/android/keyboard/LatinIMESettings$2;
.super Ljava/lang/Object;
.source "LatinIMESettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hasnath/android/keyboard/LatinIMESettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hasnath/android/keyboard/LatinIMESettings;


# direct methods
.method constructor <init>(Lnet/hasnath/android/keyboard/LatinIMESettings;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings$2;->this$0:Lnet/hasnath/android/keyboard/LatinIMESettings;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 243
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 244
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings$2;->this$0:Lnet/hasnath/android/keyboard/LatinIMESettings;

    # getter for: Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;
    invoke-static {v0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->access$0(Lnet/hasnath/android/keyboard/LatinIMESettings;)Landroid/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings$2;->this$0:Lnet/hasnath/android/keyboard/LatinIMESettings;

    # getter for: Lnet/hasnath/android/keyboard/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;
    invoke-static {v1}, Lnet/hasnath/android/keyboard/LatinIMESettings;->access$1(Lnet/hasnath/android/keyboard/LatinIMESettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings$2;->this$0:Lnet/hasnath/android/keyboard/LatinIMESettings;

    # getter for: Lnet/hasnath/android/keyboard/LatinIMESettings;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;
    invoke-static {v0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->access$2(Lnet/hasnath/android/keyboard/LatinIMESettings;)Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->settingsWarningDialogCancel()V

    .line 250
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings$2;->this$0:Lnet/hasnath/android/keyboard/LatinIMESettings;

    # invokes: Lnet/hasnath/android/keyboard/LatinIMESettings;->updateVoicePreference()V
    invoke-static {v0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->access$4(Lnet/hasnath/android/keyboard/LatinIMESettings;)V

    .line 251
    return-void

    .line 246
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 247
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings$2;->this$0:Lnet/hasnath/android/keyboard/LatinIMESettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/hasnath/android/keyboard/LatinIMESettings;->access$3(Lnet/hasnath/android/keyboard/LatinIMESettings;Z)V

    .line 248
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMESettings$2;->this$0:Lnet/hasnath/android/keyboard/LatinIMESettings;

    # getter for: Lnet/hasnath/android/keyboard/LatinIMESettings;->mLogger:Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;
    invoke-static {v0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->access$2(Lnet/hasnath/android/keyboard/LatinIMESettings;)Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hasnath/android/ridmik/voice/VoiceInputLogger;->settingsWarningDialogOk()V

    goto :goto_0
.end method
