.class Lnet/hasnath/android/keyboard/LatinIME$1;
.super Landroid/content/BroadcastReceiver;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/LatinIME;
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
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinIME$1;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    .line 3049
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3052
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME$1;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    # invokes: Lnet/hasnath/android/keyboard/LatinIME;->updateRingerMode()V
    invoke-static {v0}, Lnet/hasnath/android/keyboard/LatinIME;->access$0(Lnet/hasnath/android/keyboard/LatinIME;)V

    .line 3053
    return-void
.end method
