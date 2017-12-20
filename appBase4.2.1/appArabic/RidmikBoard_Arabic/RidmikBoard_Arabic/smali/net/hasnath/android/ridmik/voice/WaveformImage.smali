.class public Lnet/hasnath/android/ridmik/voice/WaveformImage;
.super Ljava/lang/Object;
.source "WaveformImage.java"


# static fields
.field private static final SAMPLING_RATE:I = 0x1f40


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawWaveform(Ljava/io/ByteArrayOutputStream;IIII)Landroid/graphics/Bitmap;
    .locals 23
    .param p0, "waveBuffer"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 40
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 41
    .local v3, "b":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 42
    .local v5, "c":Landroid/graphics/Canvas;
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 43
    .local v14, "paint":Landroid/graphics/Paint;
    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v20

    .line 49
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v20

    .line 50
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v4

    .line 51
    .local v4, "buf":Ljava/nio/ShortBuffer;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v20

    div-int/lit8 v13, v20, 0x2

    .line 54
    .local v13, "numSamples":I
    const/16 v6, 0x320

    .line 55
    .local v6, "delay":I
    div-int/lit8 v20, p4, 0x2

    move/from16 v0, v20

    add-int/lit16 v8, v0, 0x320

    .line 56
    .local v8, "endIndex":I
    if-eqz p4, :cond_0

    if-lt v8, v13, :cond_1

    .line 57
    :cond_0
    move v8, v13

    .line 59
    :cond_1
    div-int/lit8 v20, p3, 0x2

    move/from16 v0, v20

    add-int/lit16 v10, v0, -0x320

    .line 60
    .local v10, "index":I
    if-gez v10, :cond_2

    .line 61
    const/4 v10, 0x0

    .line 63
    :cond_2
    sub-int v17, v8, v10

    .line 64
    .local v17, "size":I
    const/16 v12, 0x20

    .line 65
    .local v12, "numSamplePerPixel":I
    mul-int v20, v12, p1

    div-int v7, v17, v20

    .line 66
    .local v7, "delta":I
    if-nez v7, :cond_3

    .line 67
    div-int v12, v17, p1

    .line 68
    const/4 v7, 0x1

    .line 71
    :cond_3
    const/high16 v16, 0x38600000

    .line 75
    .local v16, "scale":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    add-int/lit8 v20, p1, -0x1

    move/from16 v0, v20

    if-lt v9, v0, :cond_4

    .line 88
    :goto_1
    return-object v3

    .line 76
    :cond_4
    int-to-float v0, v9

    move/from16 v18, v0

    .line 77
    .local v18, "x":F
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    if-lt v11, v12, :cond_5

    .line 75
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 78
    :cond_5
    :try_start_0
    invoke-virtual {v4, v10}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v15

    .line 79
    .local v15, "s":S
    div-int/lit8 v20, p2, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-int v21, v15, p2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x38600000

    mul-float v21, v21, v22

    sub-float v19, v20, v21

    .line 80
    .local v19, "y":F
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1, v14}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    add-int/2addr v10, v7

    .line 77
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 84
    .end local v15    # "s":S
    .end local v19    # "y":F
    :catch_0
    move-exception v20

    goto :goto_1
.end method
