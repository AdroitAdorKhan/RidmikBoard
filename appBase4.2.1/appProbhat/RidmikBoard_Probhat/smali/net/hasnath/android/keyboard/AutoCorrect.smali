.class public Lnet/hasnath/android/keyboard/AutoCorrect;
.super Ljava/lang/Object;
.source "AutoCorrect.java"


# static fields
.field private static final LINES:I = 0x8e8

.field private static final TAG:Ljava/lang/String; = "LL"

.field private static final TOTAL_CHARS:I = 0x935c

.field public static mNativeDict:I


# instance fields
.field private mDictLength:I

.field private mInputChars:[C

.field private mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

.field private mOutputChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    :try_start_0
    const-string v1, "jni_autocorrect"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 26
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 28
    .restart local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "LL"

    const-string v2, "Could not load native library autocorrect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x19

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-array v1, v3, [C

    iput-object v1, p0, Lnet/hasnath/android/keyboard/AutoCorrect;->mOutputChars:[C

    .line 18
    new-array v1, v3, [C

    iput-object v1, p0, Lnet/hasnath/android/keyboard/AutoCorrect;->mInputChars:[C

    .line 50
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/high16 v1, 0x7f060000

    aput v1, v0, v2

    .line 52
    .local v0, "resId":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget v1, v0, v2

    if-eqz v1, :cond_0

    .line 53
    invoke-direct {p0, p1, v0}, Lnet/hasnath/android/keyboard/AutoCorrect;->loadDictionary(Landroid/content/Context;[I)V

    .line 56
    :cond_0
    return-void
.end method

.method private native closeNative(I)V
.end method

.method private native getCorrectionNative(ILjava/lang/String;[C)Ljava/lang/String;
.end method

.method private final loadDictionary(Landroid/content/Context;[I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # [I

    .prologue
    .line 60
    const/4 v3, 0x0

    .line 63
    .local v3, "is":[Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 64
    .local v4, "total":I
    :try_start_0
    array-length v5, p2

    new-array v3, v5, [Ljava/io/InputStream;

    .line 65
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p2

    if-lt v2, v5, :cond_1

    .line 71
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 70
    iput-object v5, p0, Lnet/hasnath/android/keyboard/AutoCorrect;->mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

    .line 72
    const/4 v1, 0x0

    .line 73
    .local v1, "got":I
    const/4 v2, 0x0

    :goto_1
    array-length v5, p2

    if-lt v2, v5, :cond_2

    .line 76
    if-eq v1, v4, :cond_3

    .line 77
    const-string v5, "LL"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Read "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes, expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :goto_2
    if-eqz v3, :cond_0

    .line 88
    const/4 v2, 0x0

    :goto_3
    :try_start_1
    array-length v5, v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    if-lt v2, v5, :cond_6

    .line 96
    .end local v1    # "got":I
    .end local v2    # "i":I
    :cond_0
    :goto_4
    return-void

    .line 66
    .restart local v2    # "i":I
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    aget v6, p2, v2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    aput-object v5, v3, v2

    .line 67
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v5

    add-int/2addr v4, v5

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .restart local v1    # "got":I
    :cond_2
    aget-object v5, v3, v2

    invoke-static {v5}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v5

    iget-object v6, p0, Lnet/hasnath/android/keyboard/AutoCorrect;->mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v5, v6}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    add-int/2addr v1, v5

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 79
    :cond_3
    iget-object v5, p0, Lnet/hasnath/android/keyboard/AutoCorrect;->mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

    .line 80
    const v6, 0x935c

    const/16 v7, 0x8e8

    .line 79
    invoke-direct {p0, v5, v6, v7}, Lnet/hasnath/android/keyboard/AutoCorrect;->openNative(Ljava/nio/ByteBuffer;II)I

    move-result v5

    sput v5, Lnet/hasnath/android/keyboard/AutoCorrect;->mNativeDict:I

    .line 81
    iput v4, p0, Lnet/hasnath/android/keyboard/AutoCorrect;->mDictLength:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 83
    .end local v1    # "got":I
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v5, "LL"

    const-string v6, "No available memory for binary dictionary"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    if-eqz v3, :cond_0

    .line 88
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    :try_start_4
    array-length v5, v3

    if-ge v2, v5, :cond_0

    .line 89
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 92
    :catch_1
    move-exception v0

    .line 93
    const-string v5, "LL"

    const-string v6, "Failed to close input stream"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v5

    .line 87
    if-eqz v3, :cond_4

    .line 88
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    :try_start_5
    array-length v6, v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    if-lt v2, v6, :cond_5

    .line 95
    .end local v2    # "i":I
    :cond_4
    :goto_7
    throw v5

    .line 89
    .restart local v2    # "i":I
    :cond_5
    :try_start_6
    aget-object v6, v3, v2

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 92
    :catch_2
    move-exception v0

    .line 93
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "LL"

    const-string v7, "Failed to close input stream"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 89
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "got":I
    :cond_6
    :try_start_7
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 92
    :catch_3
    move-exception v0

    .line 93
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "LL"

    const-string v6, "Failed to close input stream"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private native openNative(Ljava/nio/ByteBuffer;II)I
.end method


# virtual methods
.method public getCorrection(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v1, p0, Lnet/hasnath/android/keyboard/AutoCorrect;->mOutputChars:[C

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/keyboard/AutoCorrect;->mInputChars:[C

    .line 105
    sget v1, Lnet/hasnath/android/keyboard/AutoCorrect;->mNativeDict:I

    iget-object v2, p0, Lnet/hasnath/android/keyboard/AutoCorrect;->mOutputChars:[C

    invoke-direct {p0, v1, p1, v2}, Lnet/hasnath/android/keyboard/AutoCorrect;->getCorrectionNative(ILjava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method
