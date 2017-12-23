.class public Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;
.super Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/LatinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypedWordAlternatives"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hasnath/android/keyboard/LatinIME;

.field private word:Lnet/hasnath/android/keyboard/WordComposer;


# direct methods
.method public constructor <init>(Lnet/hasnath/android/keyboard/LatinIME;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;-><init>()V

    .line 354
    return-void
.end method

.method public constructor <init>(Lnet/hasnath/android/keyboard/LatinIME;Ljava/lang/CharSequence;Lnet/hasnath/android/keyboard/WordComposer;)V
    .locals 0
    .param p2, "chosenWord"    # Ljava/lang/CharSequence;
    .param p3, "wordComposer"    # Lnet/hasnath/android/keyboard/WordComposer;

    .prologue
    .line 356
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    .line 357
    invoke-direct {p0, p2}, Lnet/hasnath/android/keyboard/LatinIME$WordAlternatives;-><init>(Ljava/lang/CharSequence;)V

    .line 358
    iput-object p3, p0, Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;->word:Lnet/hasnath/android/keyboard/WordComposer;

    .line 359
    return-void
.end method

.method static synthetic access$0(Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;)Lnet/hasnath/android/keyboard/WordComposer;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;->word:Lnet/hasnath/android/keyboard/WordComposer;

    return-object v0
.end method


# virtual methods
.method public getAlternatives()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;->this$0:Lnet/hasnath/android/keyboard/LatinIME;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;->word:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-static {v0, v1}, Lnet/hasnath/android/keyboard/LatinIME;->access$1(Lnet/hasnath/android/keyboard/LatinIME;Lnet/hasnath/android/keyboard/WordComposer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalWord()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinIME$TypedWordAlternatives;->word:Lnet/hasnath/android/keyboard/WordComposer;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
