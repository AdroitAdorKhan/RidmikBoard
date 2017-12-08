.class Lnet/hasnath/android/ridmik/voice/RecognitionView$1;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/ridmik/voice/RecognitionView;
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
    iput-object p1, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$1;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 82
    iget-object v5, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$1;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-static {v5}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$0(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    move-result-object v5

    sget-object v6, Lnet/hasnath/android/ridmik/voice/RecognitionView$State;->LISTENING:Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    if-eq v5, v6, :cond_0

    .line 98
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v5, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$1;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-static {v5}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$1(Lnet/hasnath/android/ridmik/voice/RecognitionView;)F

    move-result v4

    .line 87
    .local v4, "min":F
    iget-object v5, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$1;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-static {v5}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$2(Lnet/hasnath/android/ridmik/voice/RecognitionView;)F

    move-result v2

    .line 88
    .local v2, "max":F
    iget-object v5, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$1;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-static {v5}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$3(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 90
    .local v3, "maxLevel":I
    iget-object v5, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$1;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-static {v5}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$4(Lnet/hasnath/android/ridmik/voice/RecognitionView;)F

    move-result v5

    sub-float/2addr v5, v4

    sub-float v6, v2, v4

    div-float/2addr v5, v6

    int-to-float v6, v3

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 91
    .local v0, "index":I
    const/4 v5, 0x0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 93
    .local v1, "level":I
    iget-object v5, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$1;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-static {v5}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$5(Lnet/hasnath/android/ridmik/voice/RecognitionView;)I

    move-result v5

    if-eq v1, v5, :cond_1

    .line 94
    iget-object v5, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$1;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-static {v5}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$6(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Landroid/widget/ImageView;

    move-result-object v6

    iget-object v5, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$1;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-static {v5}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$3(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v5, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$1;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-static {v5, v1}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$7(Lnet/hasnath/android/ridmik/voice/RecognitionView;I)V

    .line 97
    :cond_1
    iget-object v5, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$1;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-static {v5}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$8(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$1;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-static {v6}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$9(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v8, 0x32

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
