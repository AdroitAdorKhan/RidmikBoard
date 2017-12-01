.class final enum Lnet/hasnath/android/ridmik/voice/RecognitionView$State;
.super Ljava/lang/Enum;
.source "RecognitionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/ridmik/voice/RecognitionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/hasnath/android/ridmik/voice/RecognitionView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

.field public static final enum LISTENING:Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

.field public static final enum READY:Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

.field public static final enum WORKING:Lnet/hasnath/android/ridmik/voice/RecognitionView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    const-string v1, "LISTENING"

    invoke-direct {v0, v1, v2}, Lnet/hasnath/android/ridmik/voice/RecognitionView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/hasnath/android/ridmik/voice/RecognitionView$State;->LISTENING:Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    new-instance v0, Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    const-string v1, "WORKING"

    invoke-direct {v0, v1, v3}, Lnet/hasnath/android/ridmik/voice/RecognitionView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/hasnath/android/ridmik/voice/RecognitionView$State;->WORKING:Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    new-instance v0, Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    const-string v1, "READY"

    invoke-direct {v0, v1, v4}, Lnet/hasnath/android/ridmik/voice/RecognitionView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/hasnath/android/ridmik/voice/RecognitionView$State;->READY:Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    sget-object v1, Lnet/hasnath/android/ridmik/voice/RecognitionView$State;->LISTENING:Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    aput-object v1, v0, v2

    sget-object v1, Lnet/hasnath/android/ridmik/voice/RecognitionView$State;->WORKING:Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    aput-object v1, v0, v3

    sget-object v1, Lnet/hasnath/android/ridmik/voice/RecognitionView$State;->READY:Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    aput-object v1, v0, v4

    sput-object v0, Lnet/hasnath/android/ridmik/voice/RecognitionView$State;->ENUM$VALUES:[Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/hasnath/android/ridmik/voice/RecognitionView$State;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    return-object v0
.end method

.method public static values()[Lnet/hasnath/android/ridmik/voice/RecognitionView$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/hasnath/android/ridmik/voice/RecognitionView$State;->ENUM$VALUES:[Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    array-length v1, v0

    new-array v2, v1, [Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
