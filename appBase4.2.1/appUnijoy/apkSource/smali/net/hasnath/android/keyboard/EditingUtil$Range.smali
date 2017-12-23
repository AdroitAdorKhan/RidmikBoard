.class public Lnet/hasnath/android/keyboard/EditingUtil$Range;
.super Ljava/lang/Object;
.source "EditingUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/EditingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation


# instance fields
.field public charsAfter:I

.field public charsBefore:I

.field public word:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "charsBefore"    # I
    .param p2, "charsAfter"    # I
    .param p3, "word"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 133
    :cond_1
    iput p1, p0, Lnet/hasnath/android/keyboard/EditingUtil$Range;->charsBefore:I

    .line 134
    iput p2, p0, Lnet/hasnath/android/keyboard/EditingUtil$Range;->charsAfter:I

    .line 135
    iput-object p3, p0, Lnet/hasnath/android/keyboard/EditingUtil$Range;->word:Ljava/lang/String;

    .line 136
    return-void
.end method
