.class public Lnet/hasnath/android/keyboard/WordComposer;
.super Ljava/lang/Object;
.source "WordComposer.java"


# instance fields
.field bangla:Ljava/lang/String;

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
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    .line 52
    return-void
.end method

.method constructor <init>(Lnet/hasnath/android/keyboard/WordComposer;)V
    .locals 2
    .param p1, "copy"    # Lnet/hasnath/android/keyboard/WordComposer;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lnet/hasnath/android/keyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    .line 56
    iget-object v0, p1, Lnet/hasnath/android/keyboard/WordComposer;->mPreferredWord:Ljava/lang/String;

    iput-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mPreferredWord:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lnet/hasnath/android/keyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    .line 58
    iget v0, p1, Lnet/hasnath/android/keyboard/WordComposer;->mCapsCount:I

    iput v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCapsCount:I

    .line 59
    iget-boolean v0, p1, Lnet/hasnath/android/keyboard/WordComposer;->mAutoCapitalized:Z

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mAutoCapitalized:Z

    .line 60
    iget-boolean v0, p1, Lnet/hasnath/android/keyboard/WordComposer;->mIsFirstCharCapitalized:Z

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mIsFirstCharCapitalized:Z

    .line 61
    return-void
.end method

.method private correctPrimaryJuxtapos(I[I)V
    .locals 4
    .param p1, "primaryCode"    # I
    .param p2, "codes"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    aget v0, p2, v2

    if-lez v0, :cond_0

    aget v0, p2, v3

    if-lez v0, :cond_0

    aget v0, p2, v2

    if-eq v0, p1, :cond_0

    aget v0, p2, v3

    if-ne v0, p1, :cond_0

    .line 113
    aget v0, p2, v2

    aput v0, p2, v3

    .line 114
    aput p1, p2, v2

    goto :goto_0
.end method


# virtual methods
.method public add(I[I)V
    .locals 2
    .param p1, "primaryCode"    # I
    .param p2, "codes"    # [I

    .prologue
    .line 97
    iget-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {p0, p1, p2}, Lnet/hasnath/android/keyboard/WordComposer;->correctPrimaryJuxtapos(I[I)V

    .line 99
    iget-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCapsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCapsCount:I

    .line 101
    :cond_0
    return-void
.end method

.method public deleteLast()V
    .locals 5

    .prologue
    .line 122
    iget-object v3, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 123
    .local v0, "codesSize":I
    if-lez v0, :cond_0

    .line 124
    iget-object v3, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 125
    iget-object v3, p0, Lnet/hasnath/android/keyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 126
    .local v2, "lastPos":I
    iget-object v3, p0, Lnet/hasnath/android/keyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 127
    .local v1, "last":C
    iget-object v3, p0, Lnet/hasnath/android/keyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 128
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCapsCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCapsCount:I

    .line 130
    .end local v1    # "last":C
    .end local v2    # "lastPos":I
    :cond_0
    return-void
.end method

.method public getCodesAt(I)[I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getPreferredWord()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 177
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
    .line 137
    iget-object v1, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 138
    .local v0, "wordSize":I
    if-nez v0, :cond_0

    .line 139
    const/4 v1, 0x0

    .line 141
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lnet/hasnath/android/keyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public isAllUpperCase()Z
    .locals 2

    .prologue
    .line 161
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
    .line 201
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mAutoCapitalized:Z

    return v0
.end method

.method public isFirstCharCapitalized()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mIsFirstCharCapitalized:Z

    return v0
.end method

.method public isMostlyCaps()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 184
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

    .line 67
    iget-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68
    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/WordComposer;->mIsFirstCharCapitalized:Z

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mPreferredWord:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 71
    iput v1, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCapsCount:I

    .line 72
    return-void
.end method

.method public setAutoCapitalized(Z)V
    .locals 0
    .param p1, "auto"    # Z

    .prologue
    .line 193
    iput-boolean p1, p0, Lnet/hasnath/android/keyboard/WordComposer;->mAutoCapitalized:Z

    .line 194
    return-void
.end method

.method public setFirstCharCapitalized(Z)V
    .locals 0
    .param p1, "capitalized"    # Z

    .prologue
    .line 145
    iput-boolean p1, p0, Lnet/hasnath/android/keyboard/WordComposer;->mIsFirstCharCapitalized:Z

    .line 146
    return-void
.end method

.method public setPreferredWord(Ljava/lang/String;)V
    .locals 0
    .param p1, "preferred"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lnet/hasnath/android/keyboard/WordComposer;->mPreferredWord:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lnet/hasnath/android/keyboard/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
