.class Lnet/hasnath/android/keyboard/LatinIME$7;
.super Ljava/lang/Object;
.source "LatinIME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hasnath/android/keyboard/LatinIME;->showOptionsMenu()V
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
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinIME$7;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    .line 3470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    .line 3473
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3474
    packed-switch p2, :pswitch_data_0

    .line 3501
    :goto_0
    return-void

    .line 3476
    :pswitch_0
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME$7;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinIME;->launchSettings()V

    goto :goto_0

    .line 3479
    :pswitch_1
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME$7;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lnet/hasnath/android/keyboard/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 3480
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_0

    .line 3493
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3494
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME$7;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    const-class v2, Lnet/hasnath/android/habijabi/WebViewActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3495
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3496
    const-string v1, "filename"

    const-string v2, "keymapview.html"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3497
    const-string v1, "title"

    const-string v2, "Ridmik Board Extra"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3498
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME$7;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v1, v0}, Lnet/hasnath/android/keyboard/LatinIME;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3474
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
