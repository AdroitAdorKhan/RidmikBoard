.class public Lnet/hasnath/android/keyboard/Suggest;
.super Ljava/lang/Object;
.source "Suggest.java"

# interfaces
.implements Lnet/hasnath/android/keyboard/Dictionary$WordCallback;


# static fields
.field public static final APPROX_MAX_WORD_LENGTH:I = 0x20

.field public static final BIGRAM_MULTIPLIER_MAX:D = 1.5

.field public static final BIGRAM_MULTIPLIER_MIN:D = 1.2

.field public static final CORRECTION_BASIC:I = 0x1

.field public static final CORRECTION_FULL:I = 0x2

.field public static final CORRECTION_FULL_BIGRAM:I = 0x3

.field public static final CORRECTION_NONE:I = 0x0

.field public static final DIC_AUTO:I = 0x3

.field public static final DIC_CONTACTS:I = 0x4

.field public static final DIC_MAIN:I = 0x1

.field public static final DIC_TYPE_LAST_ID:I = 0x4

.field public static final DIC_USER:I = 0x2

.field public static final DIC_USER_TYPED:I = 0x0

.field static final LARGE_DICTIONARY_THRESHOLD:I = 0x30d40

.field public static final MAXIMUM_BIGRAM_FREQUENCY:I = 0x7f

.field private static final PREF_MAX_BIGRAMS:I = 0x3c

.field public static suggestionFromContacts:Z


# instance fields
.field private mAutoTextEnabled:Z

.field private mBigramPriorities:[I

.field mBigramSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsDictionary:Lnet/hasnath/android/keyboard/Dictionary;

.field private mCorrectionMode:I

.field private mHaveCorrection:Z

.field private mIsAllUpperCase:Z

.field private mIsFirstCharCapitalized:Z

.field private mLowerOriginalWord:Ljava/lang/String;

.field private mMainDict:Lnet/hasnath/android/keyboard/BinaryDictionary;

.field private mMyDictionary:Lnet/hasnath/android/keyboard/Dictionary;

.field private mNextLettersFrequencies:[I

.field private mOriginalWord:Ljava/lang/CharSequence;

.field private mPrefMaxSuggestions:I

.field private mPriorities:[I

.field private mStringPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lnet/hasnath/android/keyboard/Suggest;->suggestionFromContacts:Z

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v1, 0x1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/16 v0, 0xc

    iput v0, p0, Lnet/hasnath/android/keyboard/Suggest;->mPrefMaxSuggestions:I

    .line 89
    iget v0, p0, Lnet/hasnath/android/keyboard/Suggest;->mPrefMaxSuggestions:I

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Suggest;->mPriorities:[I

    .line 90
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Suggest;->mBigramPriorities:[I

    .line 97
    const/16 v0, 0x500

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Suggest;->mNextLettersFrequencies:[I

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    .line 109
    iput v1, p0, Lnet/hasnath/android/keyboard/Suggest;->mCorrectionMode:I

    .line 117
    new-instance v0, Lnet/hasnath/android/keyboard/BinaryDictionary;

    invoke-direct {v0, p1, p2, v1}, Lnet/hasnath/android/keyboard/BinaryDictionary;-><init>(Landroid/content/Context;Ljava/nio/ByteBuffer;I)V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Suggest;->mMainDict:Lnet/hasnath/android/keyboard/BinaryDictionary;

    .line 118
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/Suggest;->initPool()V

    .line 119
    return-void
.end method

.method public constructor <init>(Lnet/hasnath/android/keyboard/LatinIME;[I)V
    .locals 2
    .param p1, "context"    # Lnet/hasnath/android/keyboard/LatinIME;
    .param p2, "dictionaryResId"    # [I

    .prologue
    const/4 v1, 0x1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/16 v0, 0xc

    iput v0, p0, Lnet/hasnath/android/keyboard/Suggest;->mPrefMaxSuggestions:I

    .line 89
    iget v0, p0, Lnet/hasnath/android/keyboard/Suggest;->mPrefMaxSuggestions:I

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Suggest;->mPriorities:[I

    .line 90
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Suggest;->mBigramPriorities:[I

    .line 97
    const/16 v0, 0x500

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Suggest;->mNextLettersFrequencies:[I

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    .line 109
    iput v1, p0, Lnet/hasnath/android/keyboard/Suggest;->mCorrectionMode:I

    .line 112
    new-instance v0, Lnet/hasnath/android/keyboard/BinaryDictionary;

    invoke-direct {v0, p1, p2, v1}, Lnet/hasnath/android/keyboard/BinaryDictionary;-><init>(Lnet/hasnath/android/keyboard/LatinIME;[II)V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Suggest;->mMainDict:Lnet/hasnath/android/keyboard/BinaryDictionary;

    .line 113
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/Suggest;->initPool()V

    .line 114
    return-void
.end method

.method private collectGarbage(Ljava/util/ArrayList;I)V
    .locals 6
    .param p2, "prefMaxSuggestions"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 535
    .local p1, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v3, p0, Lnet/hasnath/android/keyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 536
    .local v2, "poolSize":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 537
    .local v1, "garbageSize":I
    :goto_0
    if-ge v2, p2, :cond_0

    if-gtz v1, :cond_2

    .line 545
    :cond_0
    add-int/lit8 v3, p2, 0x1

    if-ne v2, v3, :cond_1

    .line 546
    const-string v3, "Suggest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "String pool got too big: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 549
    return-void

    .line 538
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 539
    .local v0, "garbage":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    instance-of v3, v0, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3

    .line 540
    iget-object v3, p0, Lnet/hasnath/android/keyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    add-int/lit8 v2, v2, 0x1

    .line 543
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private compareCaseInsensitive(Ljava/lang/String;[CII)Z
    .locals 5
    .param p1, "mLowerOriginalWord"    # Ljava/lang/String;
    .param p2, "word"    # [C
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 406
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 407
    .local v1, "originalLength":I
    if-ne v1, p4, :cond_0

    aget-char v3, p2, p3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 408
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 413
    const/4 v2, 0x1

    .line 415
    .end local v0    # "i":I
    :cond_0
    return v2

    .line 409
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, p3, v0

    aget-char v4, p2, v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private haveSufficientCommonality(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 11
    .param p1, "original"    # Ljava/lang/String;
    .param p2, "suggestion"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 197
    .local v5, "originalLength":I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 198
    .local v6, "suggestionLength":I
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 199
    .local v3, "minLength":I
    if-gt v3, v10, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v7

    .line 200
    :cond_1
    const/4 v2, 0x0

    .line 201
    .local v2, "matching":I
    const/4 v1, 0x0

    .line 203
    .local v1, "lessMatching":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v3, :cond_2

    .line 213
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 215
    const/4 v9, 0x4

    if-gt v3, v9, :cond_5

    .line 216
    if-ge v2, v10, :cond_0

    move v7, v8

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->toLowerCase(C)C

    move-result v4

    .line 205
    .local v4, "origChar":C
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->toLowerCase(C)C

    move-result v9

    if-ne v4, v9, :cond_4

    .line 206
    add-int/lit8 v2, v2, 0x1

    .line 207
    add-int/lit8 v1, v1, 0x1

    .line 203
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 208
    :cond_4
    add-int/lit8 v9, v0, 0x1

    if-ge v9, v6, :cond_3

    .line 209
    add-int/lit8 v9, v0, 0x1

    invoke-interface {p2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->toLowerCase(C)C

    move-result v9

    if-ne v4, v9, :cond_3

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 218
    .end local v4    # "origChar":C
    :cond_5
    div-int/lit8 v9, v3, 0x2

    if-gt v2, v9, :cond_0

    move v7, v8

    goto :goto_0
.end method

.method private initPool()V
    .locals 3

    .prologue
    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lnet/hasnath/android/keyboard/Suggest;->mPrefMaxSuggestions:I

    if-lt v0, v2, :cond_0

    .line 126
    return-void

    .line 123
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/Suggest;->getApproxMaxWordLength()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 124
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lnet/hasnath/android/keyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private removeDupes()V
    .locals 7

    .prologue
    .line 374
    iget-object v4, p0, Lnet/hasnath/android/keyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 375
    .local v4, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 391
    :cond_0
    return-void

    .line 376
    :cond_1
    const/4 v1, 0x1

    .line 378
    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 379
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 381
    .local v0, "cur":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-lt v2, v1, :cond_2

    .line 389
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    :cond_2
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 383
    .local v3, "previous":Ljava/lang/CharSequence;
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 384
    invoke-direct {p0, v1}, Lnet/hasnath/android/keyboard/Suggest;->removeFromSuggestions(I)V

    .line 385
    add-int/lit8 v1, v1, -0x1

    .line 386
    goto :goto_2

    .line 381
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private removeFromSuggestions(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 394
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 395
    .local v0, "garbage":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_0
    return-void
.end method

.method private searchBigramSuggestion([CII)I
    .locals 6
    .param p1, "word"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 506
    iget-object v4, p0, Lnet/hasnath/android/keyboard/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 507
    .local v0, "bigramSuggestSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_1

    .line 520
    const/4 v2, -0x1

    .end local v2    # "i":I
    :cond_0
    return v2

    .line 508
    .restart local v2    # "i":I
    :cond_1
    iget-object v4, p0, Lnet/hasnath/android/keyboard/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, p3, :cond_2

    .line 509
    const/4 v1, 0x1

    .line 510
    .local v1, "chk":Z
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-lt v3, p3, :cond_3

    .line 516
    :goto_2
    if-nez v1, :cond_0

    .line 507
    .end local v1    # "chk":Z
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 511
    .restart local v1    # "chk":Z
    .restart local v3    # "j":I
    :cond_3
    iget-object v4, p0, Lnet/hasnath/android/keyboard/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int v5, p2, v3

    aget-char v5, p1, v5

    if-eq v4, v5, :cond_4

    .line 512
    const/4 v1, 0x0

    .line 513
    goto :goto_2

    .line 510
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addWord([CIIIILnet/hasnath/android/keyboard/Dictionary$DataType;)Z
    .locals 20
    .param p1, "word"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "freq"    # I
    .param p5, "dicTypeId"    # I
    .param p6, "dataType"    # Lnet/hasnath/android/keyboard/Dictionary$DataType;

    .prologue
    .line 420
    move-object/from16 v5, p6

    .line 424
    .local v5, "dataTypeForLog":Lnet/hasnath/android/keyboard/Dictionary$DataType;
    sget-object v15, Lnet/hasnath/android/keyboard/Dictionary$DataType;->BIGRAM:Lnet/hasnath/android/keyboard/Dictionary$DataType;

    move-object/from16 v0, p6

    if-ne v0, v15, :cond_1

    .line 425
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    .line 426
    .local v14, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/hasnath/android/keyboard/Suggest;->mBigramPriorities:[I

    .line 427
    .local v12, "priorities":[I
    const/16 v11, 0x3c

    .line 434
    .local v11, "prefMaxSuggestions":I
    :goto_0
    const/4 v10, 0x0

    .line 437
    .local v10, "pos":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/hasnath/android/keyboard/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v15, v1, v2, v3}, Lnet/hasnath/android/keyboard/Suggest;->compareCaseInsensitive(Ljava/lang/String;[CII)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 438
    const/4 v10, 0x0

    .line 469
    :cond_0
    :goto_1
    if-lt v10, v11, :cond_7

    .line 470
    const/4 v15, 0x1

    .line 500
    :goto_2
    return v15

    .line 429
    .end local v10    # "pos":I
    .end local v11    # "prefMaxSuggestions":I
    .end local v12    # "priorities":[I
    .end local v14    # "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 430
    .restart local v14    # "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/hasnath/android/keyboard/Suggest;->mPriorities:[I

    .line 431
    .restart local v12    # "priorities":[I
    move-object/from16 v0, p0

    iget v11, v0, Lnet/hasnath/android/keyboard/Suggest;->mPrefMaxSuggestions:I

    .restart local v11    # "prefMaxSuggestions":I
    goto :goto_0

    .line 440
    .restart local v10    # "pos":I
    :cond_2
    sget-object v15, Lnet/hasnath/android/keyboard/Dictionary$DataType;->UNIGRAM:Lnet/hasnath/android/keyboard/Dictionary$DataType;

    move-object/from16 v0, p6

    if-ne v0, v15, :cond_3

    .line 442
    invoke-direct/range {p0 .. p3}, Lnet/hasnath/android/keyboard/Suggest;->searchBigramSuggestion([CII)I

    move-result v4

    .line 443
    .local v4, "bigramSuggestion":I
    if-ltz v4, :cond_3

    .line 444
    sget-object v5, Lnet/hasnath/android/keyboard/Dictionary$DataType;->BIGRAM:Lnet/hasnath/android/keyboard/Dictionary$DataType;

    .line 446
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/hasnath/android/keyboard/Suggest;->mBigramPriorities:[I

    aget v15, v15, v4

    int-to-double v0, v15

    move-wide/from16 v16, v0

    .line 447
    const-wide v18, 0x405fc00000000000L    # 127.0

    .line 446
    div-double v16, v16, v18

    .line 448
    const-wide v18, 0x3fd3333333333334L    # 0.30000000000000004

    .line 446
    mul-double v16, v16, v18

    .line 449
    const-wide v18, 0x3ff3333333333333L    # 1.2

    .line 446
    add-double v8, v16, v18

    .line 455
    .local v8, "multiplier":D
    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v16, v16, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 p4, v0

    .line 460
    .end local v4    # "bigramSuggestion":I
    .end local v8    # "multiplier":D
    :cond_3
    add-int/lit8 v15, v11, -0x1

    aget v15, v12, v15

    move/from16 v0, p4

    if-lt v15, v0, :cond_6

    const/4 v15, 0x1

    goto :goto_2

    .line 462
    :cond_4
    aget v15, v12, v10

    move/from16 v0, p4

    if-lt v15, v0, :cond_0

    .line 463
    aget v15, v12, v10

    move/from16 v0, p4

    if-ne v15, v0, :cond_5

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    move/from16 v0, p3

    if-lt v0, v15, :cond_0

    .line 466
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 461
    :cond_6
    if-lt v10, v11, :cond_4

    goto :goto_1

    .line 473
    :cond_7
    add-int/lit8 v15, v10, 0x1

    .line 474
    sub-int v16, v11, v10

    add-int/lit8 v16, v16, -0x1

    .line 473
    move/from16 v0, v16

    invoke-static {v12, v10, v12, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 475
    aput p4, v12, v10

    .line 476
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/hasnath/android/keyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 477
    .local v7, "poolSize":I
    if-lez v7, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/hasnath/android/keyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    add-int/lit8 v16, v7, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/StringBuilder;

    move-object v13, v15

    .line 479
    .local v13, "sb":Ljava/lang/StringBuilder;
    :goto_3
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 481
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lnet/hasnath/android/keyboard/Suggest;->mIsAllUpperCase:Z

    if-eqz v15, :cond_b

    .line 482
    new-instance v15, Ljava/lang/String;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v15, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    :cond_8
    :goto_4
    invoke-virtual {v14, v10, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 492
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-le v15, v11, :cond_d

    .line 493
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 494
    .local v6, "garbage":Ljava/lang/CharSequence;
    instance-of v15, v6, Ljava/lang/StringBuilder;

    if-eqz v15, :cond_9

    .line 495
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/hasnath/android/keyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    .end local v6    # "garbage":Ljava/lang/CharSequence;
    :cond_9
    :goto_5
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 478
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/Suggest;->getApproxMaxWordLength()I

    move-result v15

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_3

    .line 483
    .restart local v13    # "sb":Ljava/lang/StringBuilder;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lnet/hasnath/android/keyboard/Suggest;->mIsFirstCharCapitalized:Z

    if-eqz v15, :cond_c

    .line 484
    aget-char v15, p1, p2

    invoke-static {v15}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 485
    const/4 v15, 0x1

    move/from16 v0, p3

    if-le v0, v15, :cond_8

    .line 486
    add-int/lit8 v15, p2, 0x1

    add-int/lit8 v16, p3, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v13, v0, v15, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 489
    :cond_c
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v13, v0, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 498
    :cond_d
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move/from16 v0, p5

    invoke-static {v15, v0, v5}, Lnet/hasnath/android/keyboard/LatinImeLogger;->onAddSuggestedWord(Ljava/lang/String;ILnet/hasnath/android/keyboard/Dictionary$DataType;)V

    goto :goto_5
.end method

.method public close()V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Suggest;->mMainDict:Lnet/hasnath/android/keyboard/BinaryDictionary;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Suggest;->mMainDict:Lnet/hasnath/android/keyboard/BinaryDictionary;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/BinaryDictionary;->close()V

    .line 555
    :cond_0
    return-void
.end method

.method public getApproxMaxWordLength()I
    .locals 1

    .prologue
    .line 145
    const/16 v0, 0x20

    return v0
.end method

.method public getCorrectionMode()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lnet/hasnath/android/keyboard/Suggest;->mCorrectionMode:I

    return v0
.end method

.method public getNextLettersFrequencies()[I
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Suggest;->mNextLettersFrequencies:[I

    return-object v0
.end method

.method public getSuggestions(Landroid/view/View;Lnet/hasnath/android/keyboard/WordComposer;ZLjava/lang/CharSequence;)Ljava/util/List;
    .locals 22
    .param p1, "view"    # Landroid/view/View;
    .param p2, "wordComposer"    # Lnet/hasnath/android/keyboard/WordComposer;
    .param p3, "includeTypedWordIfValid"    # Z
    .param p4, "prevWordForBigram"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lnet/hasnath/android/keyboard/WordComposer;",
            "Z",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    invoke-static/range {p4 .. p4}, Lnet/hasnath/android/keyboard/LatinImeLogger;->onStartSuggestion(Ljava/lang/CharSequence;)V

    .line 233
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/hasnath/android/keyboard/Suggest;->mHaveCorrection:Z

    .line 234
    invoke-virtual/range {p2 .. p2}, Lnet/hasnath/android/keyboard/WordComposer;->isFirstCharCapitalized()Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/hasnath/android/keyboard/Suggest;->mIsFirstCharCapitalized:Z

    .line 235
    invoke-virtual/range {p2 .. p2}, Lnet/hasnath/android/keyboard/WordComposer;->isAllUpperCase()Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/hasnath/android/keyboard/Suggest;->mIsAllUpperCase:Z

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mPrefMaxSuggestions:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lnet/hasnath/android/keyboard/Suggest;->collectGarbage(Ljava/util/ArrayList;I)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mPriorities:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Ljava/util/Arrays;->fill([II)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mNextLettersFrequencies:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Ljava/util/Arrays;->fill([II)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Lnet/hasnath/android/keyboard/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/hasnath/android/keyboard/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 244
    .local v14, "mOriginalWordString":Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    .line 245
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/hasnath/android/keyboard/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    .line 247
    const/16 v19, 0x0

    .line 248
    sget-object v20, Lnet/hasnath/android/keyboard/Dictionary$DataType;->UNIGRAM:Lnet/hasnath/android/keyboard/Dictionary$DataType;

    .line 247
    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v14, v0, v1}, Lnet/hasnath/android/keyboard/LatinImeLogger;->onAddSuggestedWord(Ljava/lang/String;ILnet/hasnath/android/keyboard/Dictionary$DataType;)V

    .line 253
    .end local v14    # "mOriginalWordString":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lnet/hasnath/android/keyboard/WordComposer;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mCorrectionMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 254
    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mCorrectionMode:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 256
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mBigramPriorities:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Ljava/util/Arrays;->fill([II)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x3c

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lnet/hasnath/android/keyboard/Suggest;->collectGarbage(Ljava/util/ArrayList;I)V

    .line 259
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 260
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 261
    .local v13, "lowerPrevWord":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mMainDict:Lnet/hasnath/android/keyboard/BinaryDictionary;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lnet/hasnath/android/keyboard/BinaryDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 262
    move-object/from16 p4, v13

    .line 270
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mContactsDictionary:Lnet/hasnath/android/keyboard/Dictionary;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    sget-boolean v19, Lnet/hasnath/android/keyboard/Suggest;->suggestionFromContacts:Z

    if-eqz v19, :cond_2

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mContactsDictionary:Lnet/hasnath/android/keyboard/Dictionary;

    move-object/from16 v19, v0

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mNextLettersFrequencies:[I

    move-object/from16 v20, v0

    .line 271
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p0

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/hasnath/android/keyboard/Dictionary;->getBigrams(Lnet/hasnath/android/keyboard/WordComposer;Ljava/lang/CharSequence;Lnet/hasnath/android/keyboard/Dictionary$WordCallback;[I)V

    .line 274
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mMainDict:Lnet/hasnath/android/keyboard/BinaryDictionary;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mMainDict:Lnet/hasnath/android/keyboard/BinaryDictionary;

    move-object/from16 v19, v0

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mNextLettersFrequencies:[I

    move-object/from16 v20, v0

    .line 275
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p0

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/hasnath/android/keyboard/BinaryDictionary;->getBigrams(Lnet/hasnath/android/keyboard/WordComposer;Ljava/lang/CharSequence;Lnet/hasnath/android/keyboard/Dictionary$WordCallback;[I)V

    .line 278
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lnet/hasnath/android/keyboard/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 280
    .local v10, "currentChar":C
    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v11

    .line 281
    .local v11, "currentCharUpper":C
    const/4 v8, 0x0

    .line 282
    .local v8, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 283
    .local v6, "bigramSuggestionSize":I
    const/4 v12, 0x0

    .local v12, "i":I
    move v9, v8

    .end local v8    # "count":I
    .local v9, "count":I
    :goto_1
    if-lt v12, v6, :cond_b

    .line 328
    .end local v6    # "bigramSuggestionSize":I
    .end local v9    # "count":I
    .end local v10    # "currentChar":C
    .end local v11    # "currentCharUpper":C
    .end local v12    # "i":I
    .end local v13    # "lowerPrevWord":Ljava/lang/CharSequence;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 333
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lnet/hasnath/android/keyboard/WordComposer;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    .line 334
    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mCorrectionMode:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 335
    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mCorrectionMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 336
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lnet/hasnath/android/keyboard/Suggest;->haveSufficientCommonality(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 337
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/hasnath/android/keyboard/Suggest;->mHaveCorrection:Z

    .line 340
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mAutoTextEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 341
    const/4 v12, 0x0

    .line 342
    .restart local v12    # "i":I
    const/4 v15, 0x6

    .line 344
    .local v15, "max":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mCorrectionMode:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    const/4 v15, 0x1

    .line 345
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_9

    if-lt v12, v15, :cond_13

    .line 365
    .end local v12    # "i":I
    .end local v15    # "max":I
    :cond_9
    invoke-direct/range {p0 .. p0}, Lnet/hasnath/android/keyboard/Suggest;->removeDupes()V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    return-object v19

    .line 250
    :cond_a
    const-string v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/hasnath/android/keyboard/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    goto/16 :goto_0

    .line 284
    .restart local v6    # "bigramSuggestionSize":I
    .restart local v9    # "count":I
    .restart local v10    # "currentChar":C
    .restart local v11    # "currentCharUpper":C
    .restart local v12    # "i":I
    .restart local v13    # "lowerPrevWord":Ljava/lang/CharSequence;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v19

    move/from16 v0, v19

    if-eq v0, v10, :cond_c

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v19

    move/from16 v0, v19

    if-ne v0, v11, :cond_19

    .line 286
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 287
    .local v16, "poolSize":I
    if-lez v16, :cond_d

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v20, v16, -0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/StringBuilder;

    move-object/from16 v17, v19

    .line 290
    .local v17, "sb":Ljava/lang/StringBuilder;
    :goto_4
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "count":I
    .restart local v8    # "count":I
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 293
    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mPrefMaxSuggestions:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-gt v8, v0, :cond_4

    .line 283
    .end local v16    # "poolSize":I
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :goto_5
    add-int/lit8 v12, v12, 0x1

    move v9, v8

    .end local v8    # "count":I
    .restart local v9    # "count":I
    goto/16 :goto_1

    .line 289
    .restart local v16    # "poolSize":I
    :cond_d
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/Suggest;->getApproxMaxWordLength()I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_4

    .line 298
    .end local v6    # "bigramSuggestionSize":I
    .end local v9    # "count":I
    .end local v10    # "currentChar":C
    .end local v11    # "currentCharUpper":C
    .end local v12    # "i":I
    .end local v13    # "lowerPrevWord":Ljava/lang/CharSequence;
    .end local v16    # "poolSize":I
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lnet/hasnath/android/keyboard/WordComposer;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mContactsDictionary:Lnet/hasnath/android/keyboard/Dictionary;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 312
    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mCorrectionMode:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    .line 313
    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mCorrectionMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 314
    :cond_f
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/hasnath/android/keyboard/Suggest;->mHaveCorrection:Z

    .line 318
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mMyDictionary:Lnet/hasnath/android/keyboard/Dictionary;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mMyDictionary:Lnet/hasnath/android/keyboard/Dictionary;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mNextLettersFrequencies:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lnet/hasnath/android/keyboard/Dictionary;->getWords(Lnet/hasnath/android/keyboard/WordComposer;Lnet/hasnath/android/keyboard/Dictionary$WordCallback;[I)V

    .line 322
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mMainDict:Lnet/hasnath/android/keyboard/BinaryDictionary;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mNextLettersFrequencies:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lnet/hasnath/android/keyboard/BinaryDictionary;->getWords(Lnet/hasnath/android/keyboard/WordComposer;Lnet/hasnath/android/keyboard/Dictionary$WordCallback;[I)V

    .line 323
    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mCorrectionMode:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mCorrectionMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 324
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_4

    .line 325
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/hasnath/android/keyboard/Suggest;->mHaveCorrection:Z

    goto/16 :goto_2

    .line 346
    .restart local v12    # "i":I
    .restart local v15    # "max":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 348
    .local v18, "suggestedWord":Ljava/lang/String;
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, "autoText":Ljava/lang/CharSequence;
    if-eqz v5, :cond_16

    const/4 v7, 0x1

    .line 352
    .local v7, "canAdd":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_17

    const/16 v19, 0x0

    :goto_7
    and-int v7, v7, v19

    .line 354
    if-eqz v7, :cond_14

    add-int/lit8 v19, v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mCorrectionMode:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_14

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v20, v12, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_18

    const/16 v19, 0x0

    :goto_8
    and-int v7, v7, v19

    .line 357
    :cond_14
    if-eqz v7, :cond_15

    .line 358
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lnet/hasnath/android/keyboard/Suggest;->mHaveCorrection:Z

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v20, v12, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 360
    add-int/lit8 v12, v12, 0x1

    .line 362
    :cond_15
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 350
    .end local v7    # "canAdd":Z
    :cond_16
    const/4 v7, 0x0

    goto :goto_6

    .line 352
    .restart local v7    # "canAdd":Z
    :cond_17
    const/16 v19, 0x1

    goto :goto_7

    .line 355
    :cond_18
    const/16 v19, 0x1

    goto :goto_8

    .end local v5    # "autoText":Ljava/lang/CharSequence;
    .end local v7    # "canAdd":Z
    .end local v15    # "max":I
    .end local v18    # "suggestedWord":Ljava/lang/String;
    .restart local v6    # "bigramSuggestionSize":I
    .restart local v9    # "count":I
    .restart local v10    # "currentChar":C
    .restart local v11    # "currentCharUpper":C
    .restart local v13    # "lowerPrevWord":Ljava/lang/CharSequence;
    :cond_19
    move v8, v9

    .end local v9    # "count":I
    .restart local v8    # "count":I
    goto/16 :goto_5
.end method

.method public hasMainDictionary()Z
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Suggest;->mMainDict:Lnet/hasnath/android/keyboard/BinaryDictionary;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/BinaryDictionary;->getSize()I

    move-result v0

    const v1, 0x30d40

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMinimalCorrection()Z
    .locals 1

    .prologue
    .line 401
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/Suggest;->mHaveCorrection:Z

    return v0
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 524
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 527
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Suggest;->mMainDict:Lnet/hasnath/android/keyboard/BinaryDictionary;

    invoke-virtual {v1, p1}, Lnet/hasnath/android/keyboard/BinaryDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 530
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Suggest;->mContactsDictionary:Lnet/hasnath/android/keyboard/Dictionary;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/hasnath/android/keyboard/Suggest;->mContactsDictionary:Lnet/hasnath/android/keyboard/Dictionary;

    invoke-virtual {v1, p1}, Lnet/hasnath/android/keyboard/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 531
    :cond_2
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Suggest;->mMyDictionary:Lnet/hasnath/android/keyboard/Dictionary;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/hasnath/android/keyboard/Suggest;->mMyDictionary:Lnet/hasnath/android/keyboard/Dictionary;

    invoke-virtual {v1, p1}, Lnet/hasnath/android/keyboard/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAutoDictionary(Lnet/hasnath/android/keyboard/Dictionary;)V
    .locals 0
    .param p1, "autoDictionary"    # Lnet/hasnath/android/keyboard/Dictionary;

    .prologue
    .line 165
    return-void
.end method

.method public setAutoTextEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lnet/hasnath/android/keyboard/Suggest;->mAutoTextEnabled:Z

    .line 130
    return-void
.end method

.method public setContactsDictionary(Lnet/hasnath/android/keyboard/Dictionary;)V
    .locals 0
    .param p1, "userDictionary"    # Lnet/hasnath/android/keyboard/Dictionary;

    .prologue
    .line 160
    iput-object p1, p0, Lnet/hasnath/android/keyboard/Suggest;->mContactsDictionary:Lnet/hasnath/android/keyboard/Dictionary;

    .line 161
    return-void
.end method

.method public setCorrectionMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 137
    iput p1, p0, Lnet/hasnath/android/keyboard/Suggest;->mCorrectionMode:I

    .line 138
    return-void
.end method

.method public setMaxSuggestions(I)V
    .locals 3
    .param p1, "maxSuggestions"    # I

    .prologue
    .line 182
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/16 v1, 0x64

    if-le p1, v1, :cond_1

    .line 183
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSuggestions must be between 1 and 100"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_1
    iput p1, p0, Lnet/hasnath/android/keyboard/Suggest;->mPrefMaxSuggestions:I

    .line 186
    iget v1, p0, Lnet/hasnath/android/keyboard/Suggest;->mPrefMaxSuggestions:I

    new-array v1, v1, [I

    iput-object v1, p0, Lnet/hasnath/android/keyboard/Suggest;->mPriorities:[I

    .line 187
    const/16 v1, 0x3c

    new-array v1, v1, [I

    iput-object v1, p0, Lnet/hasnath/android/keyboard/Suggest;->mBigramPriorities:[I

    .line 188
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Suggest;->mSuggestions:Ljava/util/ArrayList;

    iget v2, p0, Lnet/hasnath/android/keyboard/Suggest;->mPrefMaxSuggestions:I

    invoke-direct {p0, v1, v2}, Lnet/hasnath/android/keyboard/Suggest;->collectGarbage(Ljava/util/ArrayList;I)V

    .line 189
    :goto_0
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lnet/hasnath/android/keyboard/Suggest;->mPrefMaxSuggestions:I

    if-lt v1, v2, :cond_2

    .line 193
    return-void

    .line 190
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/Suggest;->getApproxMaxWordLength()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 191
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setMyDictionary(Lnet/hasnath/android/keyboard/Dictionary;)V
    .locals 0
    .param p1, "myDictionary"    # Lnet/hasnath/android/keyboard/Dictionary;

    .prologue
    .line 168
    iput-object p1, p0, Lnet/hasnath/android/keyboard/Suggest;->mMyDictionary:Lnet/hasnath/android/keyboard/Dictionary;

    .line 169
    return-void
.end method

.method public setUserBigramDictionary(Lnet/hasnath/android/keyboard/Dictionary;)V
    .locals 0
    .param p1, "userBigramDictionary"    # Lnet/hasnath/android/keyboard/Dictionary;

    .prologue
    .line 173
    return-void
.end method

.method public setUserDictionary(Lnet/hasnath/android/keyboard/Dictionary;)V
    .locals 0
    .param p1, "userDictionary"    # Lnet/hasnath/android/keyboard/Dictionary;

    .prologue
    .line 154
    return-void
.end method
