.class Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;
.super Ljava/lang/Object;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/LatinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceResults"
.end annotation


# instance fields
.field alternatives:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field candidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/hasnath/android/keyboard/LatinIME;


# direct methods
.method private constructor <init>(Lnet/hasnath/android/keyboard/LatinIME;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/hasnath/android/keyboard/LatinIME;Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;)V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinIME$VoiceResults;-><init>(Lnet/hasnath/android/keyboard/LatinIME;)V

    return-void
.end method
