.class Lnet/hasnath/android/keyboard/LatinIME$2;
.super Ljava/lang/Object;
.source "LatinIME.java"

# interfaces
.implements Lnet/hasnath/android/keyboard/Hints$Display;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hasnath/android/keyboard/LatinIME;->onCreate()V
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
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinIME$2;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showHint(I)V
    .locals 5
    .param p1, "viewResource"    # I

    .prologue
    const/4 v4, 0x1

    .line 541
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME$2;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    .line 542
    const-string v3, "layout_inflater"

    .line 541
    invoke-virtual {v2, v3}, Lnet/hasnath/android/keyboard/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 543
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 544
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME$2;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v2, v1}, Lnet/hasnath/android/keyboard/LatinIME;->setCandidatesView(Landroid/view/View;)V

    .line 545
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME$2;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v2, v4}, Lnet/hasnath/android/keyboard/LatinIME;->setCandidatesViewShown(Z)V

    .line 546
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIME$2;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-static {v2, v4}, Lnet/hasnath/android/keyboard/LatinIME;->access$7(Lnet/hasnath/android/keyboard/LatinIME;Z)V

    .line 547
    return-void
.end method
