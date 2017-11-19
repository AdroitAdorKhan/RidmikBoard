.class Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;
.super Ljava/lang/Object;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/ExpandableDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation


# instance fields
.field children:Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;

.field code:C

.field frequency:I

.field ngrams:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lnet/hasnath/android/keyboard/ExpandableDictionary$NextWord;",
            ">;"
        }
    .end annotation
.end field

.field parent:Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;

.field terminal:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
