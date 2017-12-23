.class public final enum Lnet/hasnath/android/keyboard/TextEntryState$State;
.super Ljava/lang/Enum;
.source "TextEntryState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/TextEntryState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/hasnath/android/keyboard/TextEntryState$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCEPTED_DEFAULT:Lnet/hasnath/android/keyboard/TextEntryState$State;

.field public static final enum CORRECTING:Lnet/hasnath/android/keyboard/TextEntryState$State;

.field private static final synthetic ENUM$VALUES:[Lnet/hasnath/android/keyboard/TextEntryState$State;

.field public static final enum IN_WORD:Lnet/hasnath/android/keyboard/TextEntryState$State;

.field public static final enum PICKED_CORRECTION:Lnet/hasnath/android/keyboard/TextEntryState$State;

.field public static final enum PICKED_SUGGESTION:Lnet/hasnath/android/keyboard/TextEntryState$State;

.field public static final enum PUNCTUATION_AFTER_ACCEPTED:Lnet/hasnath/android/keyboard/TextEntryState$State;

.field public static final enum PUNCTUATION_AFTER_WORD:Lnet/hasnath/android/keyboard/TextEntryState$State;

.field public static final enum SPACE_AFTER_ACCEPTED:Lnet/hasnath/android/keyboard/TextEntryState$State;

.field public static final enum SPACE_AFTER_PICKED:Lnet/hasnath/android/keyboard/TextEntryState$State;

.field public static final enum START:Lnet/hasnath/android/keyboard/TextEntryState$State;

.field public static final enum UNDO_COMMIT:Lnet/hasnath/android/keyboard/TextEntryState$State;

.field public static final enum UNKNOWN:Lnet/hasnath/android/keyboard/TextEntryState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lnet/hasnath/android/keyboard/TextEntryState$State;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lnet/hasnath/android/keyboard/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/hasnath/android/keyboard/TextEntryState$State;->UNKNOWN:Lnet/hasnath/android/keyboard/TextEntryState$State;

    .line 55
    new-instance v0, Lnet/hasnath/android/keyboard/TextEntryState$State;

    const-string v1, "START"

    invoke-direct {v0, v1, v4}, Lnet/hasnath/android/keyboard/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/hasnath/android/keyboard/TextEntryState$State;->START:Lnet/hasnath/android/keyboard/TextEntryState$State;

    .line 56
    new-instance v0, Lnet/hasnath/android/keyboard/TextEntryState$State;

    const-string v1, "IN_WORD"

    invoke-direct {v0, v1, v5}, Lnet/hasnath/android/keyboard/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/hasnath/android/keyboard/TextEntryState$State;->IN_WORD:Lnet/hasnath/android/keyboard/TextEntryState$State;

    .line 57
    new-instance v0, Lnet/hasnath/android/keyboard/TextEntryState$State;

    const-string v1, "ACCEPTED_DEFAULT"

    invoke-direct {v0, v1, v6}, Lnet/hasnath/android/keyboard/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/hasnath/android/keyboard/TextEntryState$State;->ACCEPTED_DEFAULT:Lnet/hasnath/android/keyboard/TextEntryState$State;

    .line 58
    new-instance v0, Lnet/hasnath/android/keyboard/TextEntryState$State;

    const-string v1, "PICKED_SUGGESTION"

    invoke-direct {v0, v1, v7}, Lnet/hasnath/android/keyboard/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/hasnath/android/keyboard/TextEntryState$State;->PICKED_SUGGESTION:Lnet/hasnath/android/keyboard/TextEntryState$State;

    .line 59
    new-instance v0, Lnet/hasnath/android/keyboard/TextEntryState$State;

    const-string v1, "PUNCTUATION_AFTER_WORD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lnet/hasnath/android/keyboard/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/hasnath/android/keyboard/TextEntryState$State;->PUNCTUATION_AFTER_WORD:Lnet/hasnath/android/keyboard/TextEntryState$State;

    .line 60
    new-instance v0, Lnet/hasnath/android/keyboard/TextEntryState$State;

    const-string v1, "PUNCTUATION_AFTER_ACCEPTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lnet/hasnath/android/keyboard/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/hasnath/android/keyboard/TextEntryState$State;->PUNCTUATION_AFTER_ACCEPTED:Lnet/hasnath/android/keyboard/TextEntryState$State;

    .line 61
    new-instance v0, Lnet/hasnath/android/keyboard/TextEntryState$State;

    const-string v1, "SPACE_AFTER_ACCEPTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lnet/hasnath/android/keyboard/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/hasnath/android/keyboard/TextEntryState$State;->SPACE_AFTER_ACCEPTED:Lnet/hasnath/android/keyboard/TextEntryState$State;

    .line 62
    new-instance v0, Lnet/hasnath/android/keyboard/TextEntryState$State;

    const-string v1, "SPACE_AFTER_PICKED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lnet/hasnath/android/keyboard/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/hasnath/android/keyboard/TextEntryState$State;->SPACE_AFTER_PICKED:Lnet/hasnath/android/keyboard/TextEntryState$State;

    .line 63
    new-instance v0, Lnet/hasnath/android/keyboard/TextEntryState$State;

    const-string v1, "UNDO_COMMIT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lnet/hasnath/android/keyboard/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/hasnath/android/keyboard/TextEntryState$State;->UNDO_COMMIT:Lnet/hasnath/android/keyboard/TextEntryState$State;

    .line 64
    new-instance v0, Lnet/hasnath/android/keyboard/TextEntryState$State;

    const-string v1, "CORRECTING"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lnet/hasnath/android/keyboard/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/hasnath/android/keyboard/TextEntryState$State;->CORRECTING:Lnet/hasnath/android/keyboard/TextEntryState$State;

    .line 65
    new-instance v0, Lnet/hasnath/android/keyboard/TextEntryState$State;

    const-string v1, "PICKED_CORRECTION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lnet/hasnath/android/keyboard/TextEntryState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/hasnath/android/keyboard/TextEntryState$State;->PICKED_CORRECTION:Lnet/hasnath/android/keyboard/TextEntryState$State;

    .line 53
    const/16 v0, 0xc

    new-array v0, v0, [Lnet/hasnath/android/keyboard/TextEntryState$State;

    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->UNKNOWN:Lnet/hasnath/android/keyboard/TextEntryState$State;

    aput-object v1, v0, v3

    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->START:Lnet/hasnath/android/keyboard/TextEntryState$State;

    aput-object v1, v0, v4

    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->IN_WORD:Lnet/hasnath/android/keyboard/TextEntryState$State;

    aput-object v1, v0, v5

    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->ACCEPTED_DEFAULT:Lnet/hasnath/android/keyboard/TextEntryState$State;

    aput-object v1, v0, v6

    sget-object v1, Lnet/hasnath/android/keyboard/TextEntryState$State;->PICKED_SUGGESTION:Lnet/hasnath/android/keyboard/TextEntryState$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lnet/hasnath/android/keyboard/TextEntryState$State;->PUNCTUATION_AFTER_WORD:Lnet/hasnath/android/keyboard/TextEntryState$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnet/hasnath/android/keyboard/TextEntryState$State;->PUNCTUATION_AFTER_ACCEPTED:Lnet/hasnath/android/keyboard/TextEntryState$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lnet/hasnath/android/keyboard/TextEntryState$State;->SPACE_AFTER_ACCEPTED:Lnet/hasnath/android/keyboard/TextEntryState$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lnet/hasnath/android/keyboard/TextEntryState$State;->SPACE_AFTER_PICKED:Lnet/hasnath/android/keyboard/TextEntryState$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lnet/hasnath/android/keyboard/TextEntryState$State;->UNDO_COMMIT:Lnet/hasnath/android/keyboard/TextEntryState$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lnet/hasnath/android/keyboard/TextEntryState$State;->CORRECTING:Lnet/hasnath/android/keyboard/TextEntryState$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lnet/hasnath/android/keyboard/TextEntryState$State;->PICKED_CORRECTION:Lnet/hasnath/android/keyboard/TextEntryState$State;

    aput-object v2, v0, v1

    sput-object v0, Lnet/hasnath/android/keyboard/TextEntryState$State;->ENUM$VALUES:[Lnet/hasnath/android/keyboard/TextEntryState$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/hasnath/android/keyboard/TextEntryState$State;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lnet/hasnath/android/keyboard/TextEntryState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/hasnath/android/keyboard/TextEntryState$State;

    return-object v0
.end method

.method public static values()[Lnet/hasnath/android/keyboard/TextEntryState$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/hasnath/android/keyboard/TextEntryState$State;->ENUM$VALUES:[Lnet/hasnath/android/keyboard/TextEntryState$State;

    array-length v1, v0

    new-array v2, v1, [Lnet/hasnath/android/keyboard/TextEntryState$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
