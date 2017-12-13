.class Lnet/hasnath/android/keyboard/ExpandableDictionary$NextWord;
.super Ljava/lang/Object;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/ExpandableDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NextWord"
.end annotation


# instance fields
.field frequency:I

.field nextWord:Lnet/hasnath/android/keyboard/ExpandableDictionary$NextWord;

.field word:Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;


# direct methods
.method constructor <init>(Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;I)V
    .locals 0
    .param p1, "word"    # Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;
    .param p2, "frequency"    # I

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary$NextWord;->word:Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;

    .line 90
    iput p2, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary$NextWord;->frequency:I

    .line 91
    return-void
.end method
