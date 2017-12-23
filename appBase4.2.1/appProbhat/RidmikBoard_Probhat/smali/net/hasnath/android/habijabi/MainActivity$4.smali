.class Lnet/hasnath/android/habijabi/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hasnath/android/habijabi/MainActivity;->makeDefaultDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hasnath/android/habijabi/MainActivity;


# direct methods
.method constructor <init>(Lnet/hasnath/android/habijabi/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/hasnath/android/habijabi/MainActivity$4;->this$0:Lnet/hasnath/android/habijabi/MainActivity;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lnet/hasnath/android/habijabi/MainActivity$4;->this$0:Lnet/hasnath/android/habijabi/MainActivity;

    invoke-virtual {v0}, Lnet/hasnath/android/habijabi/MainActivity;->finish()V

    .line 231
    return-void
.end method
