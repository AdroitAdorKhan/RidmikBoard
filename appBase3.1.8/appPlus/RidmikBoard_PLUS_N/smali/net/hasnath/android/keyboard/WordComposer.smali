.class public Lnet/hasnath/android/keyboard/WordComposer;
.super Ljava/lang/Object;
.source "WordComposer.java"


# instance fields
.field private mAutoCapitalized:Z

.field private mCapsCount:I

.field private final mCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field private mIsFirstCharCapitalized:Z

.field private mPreferredWord:Ljava/lang/String;

.field private final mTypedWord:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    .line 50
    return-void
.end method

.method constructor <init>(Lnet/hasnath/android/keyboard/WordComposer;)V
    .locals 2
    .param p1, "copy"    # Lnet/hasnath/android/keyboard/WordComposer;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lnet/hasnath/android/keyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    .line 54
    iget-object v0, p1, Lnet/hasnath/android/keyboard/WordComposer;->mPreferredWord:Ljava/lang/String;

    iput-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mPreferredWord:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lnet/hasnath/android/keyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    .line 56
    iget v0, p1, Lnet/hasnath/android/keyboard/WordComposer;->mCapsCount:I

    iput v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCapsCount:I

    .line 57
    iget-boolean v0, p1, Lnet/hasnath/android/keyboard/WordComposer;->mAutoCapitalized:Z

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mAutoCapitalized:Z

    .line 58
    iget-boolean v0, p1, Lnet/hasnath/android/keyboard/WordComposer;->mIsFirstCharCapitalized:Z

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mIsFirstCharCapitalized:Z

    .line 59
    return-void
.end method

.method private correctPrimaryJuxtapos(I[I)V
    .locals 4
    .param p1, "primaryCode"    # I
    .param p2, "codes"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    aget v0, p2, v2

    if-lez v0, :cond_0

    aget v0, p2, v3

    if-lez v0, :cond_0

    aget v0, p2, v2

    if-eq v0, p1, :cond_0

    aget v0, p2, v3

    if-ne v0, p1, :cond_0

    .line 111
    aget v0, p2, v2

    aput v0, p2, v3

    .line 112
    aput p1, p2, v2

    goto :goto_0
.end method


# virtual methods
.method public add(I[I)V
    .locals 2
    .param p1, "primaryCode"    # I
    .param p2, "codes"    # [I

    .prologue
    .line 95
    iget-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {p0, p1, p2}, Lnet/hasnath/android/keyboard/WordComposer;->correctPrimaryJuxtapos(I[I)V

    .line 97
    iget-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCapsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCapsCount:I

    .line 99
    :cond_0
    return-void
.end method

.method public deleteLast()V
    .locals 5

    .prologue
    .line 120
    iget-object v3, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 121
    .local v0, "codesSize":I
    if-lez v0, :cond_0

    .line 122
    iget-object v3, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 123
    iget-object v3, p0, Lnet/hasnath/android/keyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 124
    .local v2, "lastPos":I
    iget-object v3, p0, Lnet/hasnath/android/keyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 125
    .local v1, "last":C
    iget-object v3, p0, Lnet/hasnath/android/keyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 126
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCapsCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCapsCount:I

    .line 128
    .end local v1    # "last":C
    .end local v2    # "lastPos":I
    :cond_0
    return-void
.end method

.method public getCodesAt(I)[I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getPreferredWord()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mPreferredWord:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mPreferredWord:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getTypedWord()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 135
    iget-object v1, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 136
    .local v0, "wordSize":I
    if-nez v0, :cond_0

    .line 137
    const/4 v1, 0x0

    .line 139
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lnet/hasnath/android/keyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public isAllUpperCase()Z
    .locals 2

    .prologue
    .line 159
    iget v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCapsCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCapsCount:I

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/WordComposer;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoCapitalized()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mAutoCapitalized:Z

    return v0
.end method

.method public isFirstCharCapitalized()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mIsFirstCharCapitalized:Z

    return v0
.end method

.method public isMostlyCaps()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 182
    iget v1, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCapsCount:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 66
    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/WordComposer;->mIsFirstCharCapitalized:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mPreferredWord:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 69
    iput v1, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCapsCount:I

    .line 70
    return-void
.end method

.method public setAutoCapitalized(Z)V
    .locals 0
    .param p1, "auto"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lnet/hasnath/android/keyboard/WordComposer;->mAutoCapitalized:Z

    .line 192
    return-void
.end method

.method public setFirstCharCapitalized(Z)V
    .locals 0
    .param p1, "capitalized"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lnet/hasnath/android/keyboard/WordComposer;->mIsFirstCharCapitalized:Z

    .line 144
    return-void
.end method

.method public setPreferredWord(Ljava/lang/String;)V
    .locals 0
    .param p1, "preferred"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lnet/hasnath/android/keyboard/WordComposer;->mPreferredWord:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
