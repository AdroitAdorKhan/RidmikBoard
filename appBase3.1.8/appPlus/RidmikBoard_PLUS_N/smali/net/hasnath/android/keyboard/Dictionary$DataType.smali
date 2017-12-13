.class public final enum Lnet/hasnath/android/keyboard/Dictionary$DataType;
.super Ljava/lang/Enum;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/Dictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/hasnath/android/keyboard/Dictionary$DataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BIGRAM:Lnet/hasnath/android/keyboard/Dictionary$DataType;

.field private static final synthetic ENUM$VALUES:[Lnet/hasnath/android/keyboard/Dictionary$DataType;

.field public static final enum UNIGRAM:Lnet/hasnath/android/keyboard/Dictionary$DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lnet/hasnath/android/keyboard/Dictionary$DataType;

    const-string v1, "UNIGRAM"

    invoke-direct {v0, v1, v2}, Lnet/hasnath/android/keyboard/Dictionary$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/hasnath/android/keyboard/Dictionary$DataType;->UNIGRAM:Lnet/hasnath/android/keyboard/Dictionary$DataType;

    new-instance v0, Lnet/hasnath/android/keyboard/Dictionary$DataType;

    const-string v1, "BIGRAM"

    invoke-direct {v0, v1, v3}, Lnet/hasnath/android/keyboard/Dictionary$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/hasnath/android/keyboard/Dictionary$DataType;->BIGRAM:Lnet/hasnath/android/keyboard/Dictionary$DataType;

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Lnet/hasnath/android/keyboard/Dictionary$DataType;

    sget-object v1, Lnet/hasnath/android/keyboard/Dictionary$DataType;->UNIGRAM:Lnet/hasnath/android/keyboard/Dictionary$DataType;

    aput-object v1, v0, v2

    sget-object v1, Lnet/hasnath/android/keyboard/Dictionary$DataType;->BIGRAM:Lnet/hasnath/android/keyboard/Dictionary$DataType;

    aput-object v1, v0, v3

    sput-object v0, Lnet/hasnath/android/keyboard/Dictionary$DataType;->ENUM$VALUES:[Lnet/hasnath/android/keyboard/Dictionary$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/hasnath/android/keyboard/Dictionary$DataType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lnet/hasnath/android/keyboard/Dictionary$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/hasnath/android/keyboard/Dictionary$DataType;

    return-object v0
.end method

.method public static values()[Lnet/hasnath/android/keyboard/Dictionary$DataType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/hasnath/android/keyboard/Dictionary$DataType;->ENUM$VALUES:[Lnet/hasnath/android/keyboard/Dictionary$DataType;

    array-length v1, v0

    new-array v2, v1, [Lnet/hasnath/android/keyboard/Dictionary$DataType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
