.class Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;
.super Ljava/lang/Object;
.source "LatinIMEUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/LatinIMEUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RingCharBuffer"
.end annotation


# static fields
.field static final BUFSIZE:I = 0x14

.field private static final INVALID_COORDINATE:I = -0x2

.field private static final PLACEHOLDER_DELIMITER_CHAR:C = '\ufffc'

.field private static sRingCharBuffer:Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;


# instance fields
.field private mCharBuf:[C

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mEnd:I

.field mLength:I

.field private mXBuf:[I

.field private mYBuf:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;

    invoke-direct {v0}, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;-><init>()V

    sput-object v0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->sRingCharBuffer:Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;

    .line 89
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mEnabled:Z

    .line 92
    iput v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    .line 93
    iput v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mLength:I

    .line 94
    new-array v0, v1, [C

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mCharBuf:[C

    .line 95
    new-array v0, v1, [I

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mXBuf:[I

    .line 96
    new-array v0, v1, [I

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mYBuf:[I

    .line 99
    return-void
.end method

.method public static getInstance()Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->sRingCharBuffer:Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Z)Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 104
    sget-object v0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->sRingCharBuffer:Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;

    iput-object p0, v0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mContext:Landroid/content/Context;

    .line 105
    sget-object v0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->sRingCharBuffer:Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;

    iput-boolean p1, v0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mEnabled:Z

    .line 106
    sget-object v0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->sRingCharBuffer:Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;

    return-object v0
.end method

.method private normalize(I)I
    .locals 1
    .param p1, "in"    # I

    .prologue
    .line 109
    rem-int/lit8 v0, p1, 0x14

    .line 110
    .local v0, "ret":I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x14

    .end local v0    # "ret":I
    :cond_0
    return v0
.end method


# virtual methods
.method public getLastChar()C
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mLength:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 133
    const v0, 0xfffc

    .line 135
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mCharBuf:[C

    iget v1, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->normalize(I)I

    move-result v1

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method public getLastString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 157
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 158
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mLength:I

    if-lt v1, v3, :cond_1

    .line 166
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 159
    :cond_1
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mCharBuf:[C

    iget v4, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    invoke-direct {p0, v4}, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->normalize(I)I

    move-result v4

    aget-char v0, v3, v4

    .line 160
    .local v0, "c":C
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mContext:Landroid/content/Context;

    check-cast v3, Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v3, v0}, Lnet/hasnath/android/keyboard/LatinIME;->isWordSeparator(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 161
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getPreviousX(CI)I
    .locals 3
    .param p1, "c"    # C
    .param p2, "back"    # I

    .prologue
    .line 139
    iget v1, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    add-int/lit8 v1, v1, -0x2

    sub-int/2addr v1, p2

    invoke-direct {p0, v1}, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->normalize(I)I

    move-result v0

    .line 140
    .local v0, "index":I
    iget v1, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mLength:I

    if-le v1, p2, :cond_0

    .line 141
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mCharBuf:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-eq v1, v2, :cond_1

    .line 142
    :cond_0
    const/4 v1, -0x2

    .line 144
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mXBuf:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method public getPreviousY(CI)I
    .locals 3
    .param p1, "c"    # C
    .param p2, "back"    # I

    .prologue
    .line 148
    iget v1, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    add-int/lit8 v1, v1, -0x2

    sub-int/2addr v1, p2

    invoke-direct {p0, v1}, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->normalize(I)I

    move-result v0

    .line 149
    .local v0, "index":I
    iget v1, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mLength:I

    if-le v1, p2, :cond_0

    .line 150
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mCharBuf:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-eq v1, v2, :cond_1

    .line 151
    :cond_0
    const/4 v1, -0x2

    .line 153
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mYBuf:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method public pop()C
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mLength:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 124
    const v0, 0xfffc

    .line 128
    :goto_0
    return v0

    .line 126
    :cond_0
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->normalize(I)I

    move-result v0

    iput v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    .line 127
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mLength:I

    .line 128
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mCharBuf:[C

    iget v1, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method public push(CII)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 113
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mEnabled:Z

    if-nez v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mCharBuf:[C

    iget v1, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    aput-char p1, v0, v1

    .line 115
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mXBuf:[I

    iget v1, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    aput p2, v0, v1

    .line 116
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mYBuf:[I

    iget v1, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    aput p3, v0, v1

    .line 117
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->normalize(I)I

    move-result v0

    iput v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mEnd:I

    .line 118
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mLength:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 119
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mLength:I

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$RingCharBuffer;->mLength:I

    .line 170
    return-void
.end method
