.class public Lnet/hasnath/android/keyboard/BinaryDictionary;
.super Lnet/hasnath/android/keyboard/Dictionary;
.source "BinaryDictionary.java"


# static fields
.field private static final ENABLE_MISSED_CHARACTERS:Z = true

.field private static final MAX_ALTERNATIVES:I = 0x10

.field private static final MAX_BIGRAMS:I = 0x3c

.field private static final MAX_WORDS:I = 0x12

.field protected static final MAX_WORD_LENGTH:I = 0x30

.field private static final TAG:Ljava/lang/String; = "BinaryDictionary"

.field private static final TYPED_LETTER_MULTIPLIER:I = 0x2

.field public static mNativeDict:I


# instance fields
.field private alts:Lnet/hasnath/android/keyboard/Alternative;

.field private mDicTypeId:I

.field private mDictLength:I

.field private mFrequencies:[I

.field private mFrequencies_bigrams:[I

.field private mInputCodes:[I

.field private mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

.field private mOutputChars:[C

.field private mOutputChars_bigrams:[C

.field private mService:Lnet/hasnath/android/keyboard/LatinIME;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    :try_start_0
    const-string v1, "jni_ridmik"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .local v0, "ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 73
    .end local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 77
    .restart local v0    # "ule":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "BinaryDictionary"

    const-string v2, "Could not load native library jni_latinime"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "dicTypeId"    # I

    .prologue
    const/4 v1, 0x2

    .line 99
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/Dictionary;-><init>()V

    .line 55
    const/16 v0, 0x300

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mInputCodes:[I

    .line 56
    const/16 v0, 0x360

    new-array v0, v0, [C

    iput-object v0, p0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mOutputChars:[C

    .line 57
    const/16 v0, 0xb40

    new-array v0, v0, [C

    iput-object v0, p0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mOutputChars_bigrams:[C

    .line 58
    const/16 v0, 0x12

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mFrequencies:[I

    .line 59
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mFrequencies_bigrams:[I

    .line 65
    new-instance v0, Lnet/hasnath/android/keyboard/Alternative;

    invoke-direct {v0}, Lnet/hasnath/android/keyboard/Alternative;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/BinaryDictionary;->alts:Lnet/hasnath/android/keyboard/Alternative;

    .line 100
    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iput-object p2, p0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

    .line 108
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iput v0, p0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mDictLength:I

    .line 109
    iget-object v0, p0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v1, v1}, Lnet/hasnath/android/keyboard/BinaryDictionary;->openNative(Ljava/nio/ByteBuffer;II)I

    move-result v0

    sput v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mNativeDict:I

    .line 112
    :cond_0
    iput p3, p0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mDicTypeId:I

    .line 113
    return-void

    .line 104
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

    .line 105
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 106
    iget-object v0, p0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public constructor <init>(Lnet/hasnath/android/keyboard/LatinIME;[II)V
    .locals 1
    .param p1, "context"    # Lnet/hasnath/android/keyboard/LatinIME;
    .param p2, "resId"    # [I
    .param p3, "dicTypeId"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/Dictionary;-><init>()V

    .line 55
    const/16 v0, 0x300

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mInputCodes:[I

    .line 56
    const/16 v0, 0x360

    new-array v0, v0, [C

    iput-object v0, p0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mOutputChars:[C

    .line 57
    const/16 v0, 0xb40

    new-array v0, v0, [C

    iput-object v0, p0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mOutputChars_bigrams:[C

    .line 58
    const/16 v0, 0x12

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mFrequencies:[I

    .line 59
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mFrequencies_bigrams:[I

    .line 65
    new-instance v0, Lnet/hasnath/android/keyboard/Alternative;

    invoke-direct {v0}, Lnet/hasnath/android/keyboard/Alternative;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/BinaryDictionary;->alts:Lnet/hasnath/android/keyboard/Alternative;

    .line 87
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p2, v0

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0, p1, p2}, Lnet/hasnath/android/keyboard/BinaryDictionary;->loadDictionary(Landroid/content/Context;[I)V

    .line 90
    :cond_0
    iput-object p1, p0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mService:Lnet/hasnath/android/keyboard/LatinIME;

    .line 91
    iput p3, p0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mDicTypeId:I

    .line 92
    return-void
.end method

.method private native closeNative(I)V
.end method

.method private native getBigramsNative(I[CI[II[C[IIII)I
.end method

.method private native getSuggestionsNative(I[II[C[IIIII[II)I
.end method

.method private native isValidWordNative(I[CI)Z
.end method

.method private final loadDictionary(Landroid/content/Context;[I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # [I

    .prologue
    .line 127
    const/4 v3, 0x0

    .line 130
    .local v3, "is":[Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 131
    .local v4, "total":I
    :try_start_0
    array-length v5, p2

    new-array v3, v5, [Ljava/io/InputStream;

    .line 132
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p2

    if-lt v2, v5, :cond_1

    .line 138
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 137
    iput-object v5, p0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

    .line 139
    const/4 v1, 0x0

    .line 140
    .local v1, "got":I
    const/4 v2, 0x0

    :goto_1
    array-length v5, p2

    if-lt v2, v5, :cond_2

    .line 143
    if-eq v1, v4, :cond_3

    .line 144
    const-string v5, "BinaryDictionary"

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

    .line 154
    :goto_2
    if-eqz v3, :cond_0

    .line 155
    const/4 v2, 0x0

    :goto_3
    :try_start_1
    array-length v5, v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    if-lt v2, v5, :cond_6

    .line 163
    .end local v1    # "got":I
    .end local v2    # "i":I
    :cond_0
    :goto_4
    return-void

    .line 133
    .restart local v2    # "i":I
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    aget v6, p2, v2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    aput-object v5, v3, v2

    .line 134
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v5

    add-int/2addr v4, v5

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .restart local v1    # "got":I
    :cond_2
    aget-object v5, v3, v2

    invoke-static {v5}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v5

    iget-object v6, p0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v5, v6}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    add-int/2addr v1, v5

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 146
    :cond_3
    iget-object v5, p0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

    .line 147
    const/4 v6, 0x2

    const/4 v7, 0x2

    .line 146
    invoke-direct {p0, v5, v6, v7}, Lnet/hasnath/android/keyboard/BinaryDictionary;->openNative(Ljava/nio/ByteBuffer;II)I

    move-result v5

    sput v5, Lnet/hasnath/android/keyboard/BinaryDictionary;->mNativeDict:I

    .line 148
    iput v4, p0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mDictLength:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 150
    .end local v1    # "got":I
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v5, "BinaryDictionary"

    const-string v6, "No available memory for binary dictionary"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    if-eqz v3, :cond_0

    .line 155
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    :try_start_4
    array-length v5, v3

    if-ge v2, v5, :cond_0

    .line 156
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 159
    :catch_1
    move-exception v0

    .line 160
    const-string v5, "BinaryDictionary"

    const-string v6, "Failed to close input stream"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 152
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v5

    .line 154
    if-eqz v3, :cond_4

    .line 155
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    :try_start_5
    array-length v6, v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    if-lt v2, v6, :cond_5

    .line 162
    .end local v2    # "i":I
    :cond_4
    :goto_7
    throw v5

    .line 156
    .restart local v2    # "i":I
    :cond_5
    :try_start_6
    aget-object v6, v3, v2

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 159
    :catch_2
    move-exception v0

    .line 160
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "BinaryDictionary"

    const-string v7, "Failed to close input stream"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 156
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "got":I
    :cond_6
    :try_start_7
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 159
    :catch_3
    move-exception v0

    .line 160
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "BinaryDictionary"

    const-string v6, "Failed to close input stream"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private native openNative(Ljava/nio/ByteBuffer;II)I
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/BinaryDictionary;->close()V

    .line 289
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 290
    return-void
.end method

.method public getBigrams(Lnet/hasnath/android/keyboard/WordComposer;Ljava/lang/CharSequence;Lnet/hasnath/android/keyboard/Dictionary$WordCallback;[I)V
    .locals 17
    .param p1, "codes"    # Lnet/hasnath/android/keyboard/WordComposer;
    .param p2, "previousWord"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Lnet/hasnath/android/keyboard/Dictionary$WordCallback;
    .param p4, "nextLettersFrequencies"    # [I

    .prologue
    .line 170
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 171
    .local v3, "chars":[C
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mOutputChars_bigrams:[C

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mFrequencies_bigrams:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 174
    invoke-virtual/range {p1 .. p1}, Lnet/hasnath/android/keyboard/WordComposer;->size()I

    move-result v6

    .line 175
    .local v6, "codesSize":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mInputCodes:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 176
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/WordComposer;->getCodesAt(I)[I

    move-result-object v14

    .line 177
    .local v14, "alternatives":[I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mInputCodes:[I

    const/4 v4, 0x0

    .line 178
    array-length v5, v14

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 177
    invoke-static {v14, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    sget v2, Lnet/hasnath/android/keyboard/BinaryDictionary;->mNativeDict:I

    array-length v4, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mInputCodes:[I

    .line 181
    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mOutputChars_bigrams:[C

    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mFrequencies_bigrams:[I

    const/16 v9, 0x30

    const/16 v10, 0x3c

    .line 182
    const/16 v11, 0x10

    move-object/from16 v1, p0

    .line 180
    invoke-direct/range {v1 .. v11}, Lnet/hasnath/android/keyboard/BinaryDictionary;->getBigramsNative(I[CI[II[C[IIII)I

    move-result v15

    .line 184
    .local v15, "count":I
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_0
    move/from16 v0, v16

    if-lt v0, v15, :cond_1

    .line 196
    :cond_0
    return-void

    .line 185
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mFrequencies_bigrams:[I

    aget v1, v1, v16

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 186
    mul-int/lit8 v9, v16, 0x30

    .line 187
    .local v9, "start":I
    const/4 v10, 0x0

    .line 188
    .local v10, "len":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mOutputChars_bigrams:[C

    add-int v2, v9, v10

    aget-char v1, v1, v2

    if-nez v1, :cond_3

    .line 191
    if-lez v10, :cond_2

    .line 192
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mOutputChars_bigrams:[C

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mFrequencies_bigrams:[I

    aget v11, v1, v16

    .line 193
    move-object/from16 v0, p0

    iget v12, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mDicTypeId:I

    sget-object v13, Lnet/hasnath/android/keyboard/Dictionary$DataType;->BIGRAM:Lnet/hasnath/android/keyboard/Dictionary$DataType;

    move-object/from16 v7, p3

    .line 192
    invoke-interface/range {v7 .. v13}, Lnet/hasnath/android/keyboard/Dictionary$WordCallback;->addWord([CIIIILnet/hasnath/android/keyboard/Dictionary$DataType;)Z

    .line 184
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 189
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mDictLength:I

    return v0
.end method

.method public getWords(Lnet/hasnath/android/keyboard/WordComposer;Lnet/hasnath/android/keyboard/Dictionary$WordCallback;[I)V
    .locals 28
    .param p1, "lodes"    # Lnet/hasnath/android/keyboard/WordComposer;
    .param p2, "callback"    # Lnet/hasnath/android/keyboard/Dictionary$WordCallback;
    .param p3, "nextLettersFrequencies"    # [I

    .prologue
    .line 204
    sget v2, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 205
    move-object/from16 v0, p1

    iget-object v0, v0, Lnet/hasnath/android/keyboard/WordComposer;->bangla:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 207
    .local v20, "as":Ljava/lang/String;
    if-nez v20, :cond_1

    .line 265
    .end local v20    # "as":Ljava/lang/String;
    :cond_0
    return-void

    .line 210
    .restart local v20    # "as":Ljava/lang/String;
    :cond_1
    new-instance v25, Lnet/hasnath/android/keyboard/WordComposer;

    invoke-direct/range {v25 .. v25}, Lnet/hasnath/android/keyboard/WordComposer;-><init>()V

    .line 211
    .local v25, "mWo":Lnet/hasnath/android/keyboard/WordComposer;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_4

    .line 215
    move-object/from16 v21, v25

    .line 218
    .end local v20    # "as":Ljava/lang/String;
    .end local v25    # "mWo":Lnet/hasnath/android/keyboard/WordComposer;
    .local v21, "codes":Lnet/hasnath/android/keyboard/WordComposer;
    :goto_1
    invoke-virtual/range {v21 .. v21}, Lnet/hasnath/android/keyboard/WordComposer;->size()I

    move-result v5

    .line 220
    .local v5, "codesSize":I
    const/16 v2, 0x2f

    if-gt v5, v2, :cond_0

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mInputCodes:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 223
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_2
    move/from16 v0, v23

    if-lt v0, v5, :cond_6

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mOutputChars:[C

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([CC)V

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mFrequencies:[I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 231
    sget v3, Lnet/hasnath/android/keyboard/BinaryDictionary;->mNativeDict:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mInputCodes:[I

    .line 232
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mOutputChars:[C

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mFrequencies:[I

    .line 233
    const/16 v8, 0x30

    const/16 v9, 0x12

    const/16 v10, 0x10

    const/4 v11, -0x1

    .line 235
    if-eqz p3, :cond_7

    move-object/from16 v0, p3

    array-length v13, v0

    :goto_3
    move-object/from16 v2, p0

    move-object/from16 v12, p3

    .line 231
    invoke-direct/range {v2 .. v13}, Lnet/hasnath/android/keyboard/BinaryDictionary;->getSuggestionsNative(I[II[C[IIIII[II)I

    move-result v22

    .line 241
    .local v22, "count":I
    const/4 v2, 0x5

    move/from16 v0, v22

    if-ge v0, v2, :cond_2

    .line 242
    const/4 v11, 0x0

    .local v11, "skip":I
    :goto_4
    if-lt v11, v5, :cond_8

    .line 252
    .end local v11    # "skip":I
    :cond_2
    const/16 v24, 0x0

    .local v24, "j":I
    :goto_5
    move/from16 v0, v24

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mFrequencies:[I

    aget v2, v2, v24

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 254
    mul-int/lit8 v14, v24, 0x30

    .line 255
    .local v14, "start":I
    const/4 v15, 0x0

    .line 256
    .local v15, "len":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mOutputChars:[C

    add-int v3, v14, v15

    aget-char v2, v2, v3

    if-nez v2, :cond_9

    .line 259
    if-lez v15, :cond_3

    .line 261
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mOutputChars:[C

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mFrequencies:[I

    aget v16, v2, v24

    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mDicTypeId:I

    move/from16 v17, v0

    .line 262
    sget-object v18, Lnet/hasnath/android/keyboard/Dictionary$DataType;->UNIGRAM:Lnet/hasnath/android/keyboard/Dictionary$DataType;

    move-object/from16 v12, p2

    .line 261
    invoke-interface/range {v12 .. v18}, Lnet/hasnath/android/keyboard/Dictionary$WordCallback;->addWord([CIIIILnet/hasnath/android/keyboard/Dictionary$DataType;)Z

    .line 252
    :cond_3
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 211
    .end local v5    # "codesSize":I
    .end local v14    # "start":I
    .end local v15    # "len":I
    .end local v21    # "codes":Lnet/hasnath/android/keyboard/WordComposer;
    .end local v22    # "count":I
    .end local v23    # "i":I
    .end local v24    # "j":I
    .restart local v20    # "as":Ljava/lang/String;
    .restart local v25    # "mWo":Lnet/hasnath/android/keyboard/WordComposer;
    :cond_4
    aget-char v27, v3, v2

    .line 212
    .local v27, "x":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->alts:Lnet/hasnath/android/keyboard/Alternative;

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Lnet/hasnath/android/keyboard/Alternative;->getAlts(I)[I

    move-result-object v6

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Lnet/hasnath/android/keyboard/WordComposer;->add(I[I)V

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 216
    .end local v20    # "as":Ljava/lang/String;
    .end local v25    # "mWo":Lnet/hasnath/android/keyboard/WordComposer;
    .end local v27    # "x":I
    :cond_5
    new-instance v21, Lnet/hasnath/android/keyboard/WordComposer;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lnet/hasnath/android/keyboard/WordComposer;-><init>(Lnet/hasnath/android/keyboard/WordComposer;)V

    .restart local v21    # "codes":Lnet/hasnath/android/keyboard/WordComposer;
    goto/16 :goto_1

    .line 224
    .restart local v5    # "codesSize":I
    .restart local v23    # "i":I
    :cond_6
    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/WordComposer;->getCodesAt(I)[I

    move-result-object v19

    .line 225
    .local v19, "alternatives":[I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mInputCodes:[I

    mul-int/lit8 v4, v23, 0x10

    .line 226
    move-object/from16 v0, v19

    array-length v6, v0

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 225
    move-object/from16 v0, v19

    invoke-static {v0, v2, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 235
    .end local v19    # "alternatives":[I
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 243
    .restart local v11    # "skip":I
    .restart local v22    # "count":I
    :cond_8
    sget v3, Lnet/hasnath/android/keyboard/BinaryDictionary;->mNativeDict:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mInputCodes:[I

    .line 244
    move-object/from16 v0, p0

    iget-object v6, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mOutputChars:[C

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/hasnath/android/keyboard/BinaryDictionary;->mFrequencies:[I

    .line 245
    const/16 v8, 0x30

    const/16 v9, 0x12

    const/16 v10, 0x10

    .line 246
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    .line 243
    invoke-direct/range {v2 .. v13}, Lnet/hasnath/android/keyboard/BinaryDictionary;->getSuggestionsNative(I[II[C[IIIII[II)I

    move-result v26

    .line 247
    .local v26, "tempCount":I
    move/from16 v0, v22

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 248
    if-gtz v26, :cond_2

    .line 242
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 257
    .end local v11    # "skip":I
    .end local v26    # "tempCount":I
    .restart local v14    # "start":I
    .restart local v15    # "len":I
    .restart local v24    # "j":I
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 268
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 270
    :goto_0
    return v1

    .line 269
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 270
    .local v0, "chars":[C
    sget v1, Lnet/hasnath/android/keyboard/BinaryDictionary;->mNativeDict:I

    array-length v2, v0

    invoke-direct {p0, v1, v0, v2}, Lnet/hasnath/android/keyboard/BinaryDictionary;->isValidWordNative(I[CI)Z

    move-result v1

    goto :goto_0
.end method
