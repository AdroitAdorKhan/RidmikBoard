.class Lnet/hasnath/android/ridmik/voice/RecognitionView$6;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hasnath/android/ridmik/voice/RecognitionView;->showWorking(Ljava/io/ByteArrayOutputStream;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

.field private final synthetic val$speechEndPosition:I

.field private final synthetic val$speechStartPosition:I

.field private final synthetic val$waveBuffer:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(Lnet/hasnath/android/ridmik/voice/RecognitionView;Ljava/io/ByteArrayOutputStream;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$6;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    iput-object p2, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$6;->val$waveBuffer:Ljava/io/ByteArrayOutputStream;

    iput p3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$6;->val$speechStartPosition:I

    iput p4, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$6;->val$speechEndPosition:I

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 194
    iget-object v1, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$6;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    sget-object v2, Lnet/hasnath/android/ridmik/voice/RecognitionView$State;->WORKING:Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    invoke-static {v1, v2}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$14(Lnet/hasnath/android/ridmik/voice/RecognitionView;Lnet/hasnath/android/ridmik/voice/RecognitionView$State;)V

    .line 195
    iget-object v1, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$6;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    const/4 v2, 0x1

    iget-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$6;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-static {v3}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$11(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0700cf

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$6;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    invoke-static {v5}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$11(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Landroid/content/Context;

    move-result-object v5

    .line 196
    const v6, 0x7f0700db

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 195
    invoke-static {v1, v2, v3, v4, v5}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$13(Lnet/hasnath/android/ridmik/voice/RecognitionView;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 197
    iget-object v1, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$6;->val$waveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 198
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    .line 197
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 199
    .local v0, "buf":Ljava/nio/ShortBuffer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 200
    iget-object v1, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$6;->val$waveBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 201
    iget-object v1, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$6;->this$0:Lnet/hasnath/android/ridmik/voice/RecognitionView;

    iget v2, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$6;->val$speechStartPosition:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView$6;->val$speechEndPosition:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v0, v2, v3}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->access$16(Lnet/hasnath/android/ridmik/voice/RecognitionView;Ljava/nio/ShortBuffer;II)V

    .line 202
    return-void
.end method
