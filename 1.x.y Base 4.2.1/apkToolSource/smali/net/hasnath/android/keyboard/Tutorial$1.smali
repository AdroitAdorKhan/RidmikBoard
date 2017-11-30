.class Lnet/hasnath/android/keyboard/Tutorial$1;
.super Landroid/os/Handler;
.source "Tutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/Tutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hasnath/android/keyboard/Tutorial;


# direct methods
.method constructor <init>(Lnet/hasnath/android/keyboard/Tutorial;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/hasnath/android/keyboard/Tutorial$1;->this$0:Lnet/hasnath/android/keyboard/Tutorial;

    .line 49
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 52
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 54
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;

    .line 55
    .local v0, "bubba":Lnet/hasnath/android/keyboard/Tutorial$Bubble;
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial$1;->this$0:Lnet/hasnath/android/keyboard/Tutorial;

    invoke-static {v1}, Lnet/hasnath/android/keyboard/Tutorial;->access$0(Lnet/hasnath/android/keyboard/Tutorial;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lnet/hasnath/android/keyboard/Tutorial$1;->this$0:Lnet/hasnath/android/keyboard/Tutorial;

    invoke-static {v2}, Lnet/hasnath/android/keyboard/Tutorial;->access$0(Lnet/hasnath/android/keyboard/Tutorial;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->show(II)V

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
