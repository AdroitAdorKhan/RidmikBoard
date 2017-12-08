.class Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;
.super Ljava/lang/Object;
.source "InputLanguageSelection.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/InputLanguageSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static sCollator:Ljava/text/Collator;


# instance fields
.field label:Ljava/lang/String;

.field locale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;->sCollator:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;->label:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;->locale:Ljava/util/Locale;

    .line 66
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 74
    sget-object v0, Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;->sCollator:Ljava/text/Collator;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;->label:Ljava/lang/String;

    check-cast p1, Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p1, Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lnet/hasnath/android/keyboard/InputLanguageSelection$Loc;->label:Ljava/lang/String;

    return-object v0
.end method
