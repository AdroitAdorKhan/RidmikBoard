.class public abstract Lnet/hasnath/android/keyboard/Dictionary;
.super Ljava/lang/Object;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hasnath/android/keyboard/Dictionary$DataType;,
        Lnet/hasnath/android/keyboard/Dictionary$WordCallback;
    }
.end annotation


# static fields
.field protected static final FULL_WORD_FREQ_MULTIPLIER:I = 0x2

.field protected static final INCLUDE_TYPED_WORD_IF_VALID:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public getBigrams(Lnet/hasnath/android/keyboard/WordComposer;Ljava/lang/CharSequence;Lnet/hasnath/android/keyboard/Dictionary$WordCallback;[I)V
    .locals 0
    .param p1, "composer"    # Lnet/hasnath/android/keyboard/WordComposer;
    .param p2, "previousWord"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Lnet/hasnath/android/keyboard/Dictionary$WordCallback;
    .param p4, "nextLettersFrequencies"    # [I

    .prologue
    .line 88
    return-void
.end method

.method public abstract getWords(Lnet/hasnath/android/keyboard/WordComposer;Lnet/hasnath/android/keyboard/Dictionary$WordCallback;[I)V
.end method

.method public abstract isValidWord(Ljava/lang/CharSequence;)Z
.end method

.method protected same([CILjava/lang/CharSequence;)Z
    .locals 4
    .param p1, "word"    # [C
    .param p2, "length"    # I
    .param p3, "typedWord"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v2, p2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v1

    .line 109
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, p2, :cond_2

    .line 114
    const/4 v1, 0x1

    goto :goto_0

    .line 110
    :cond_2
    aget-char v2, p1, v0

    invoke-interface {p3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
