.class Lnet/hasnath/android/keyboard/UserBigramDictionarya$Bigram;
.super Ljava/lang/Object;
.source "UserBigramDictionarya.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/UserBigramDictionarya;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Bigram"
.end annotation


# instance fields
.field frequency:I

.field word1:Ljava/lang/String;

.field word2:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "word1"    # Ljava/lang/String;
    .param p2, "word2"    # Ljava/lang/String;
    .param p3, "frequency"    # I

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lnet/hasnath/android/keyboard/UserBigramDictionarya$Bigram;->word1:Ljava/lang/String;

    .line 118
    iput-object p2, p0, Lnet/hasnath/android/keyboard/UserBigramDictionarya$Bigram;->word2:Ljava/lang/String;

    .line 119
    iput p3, p0, Lnet/hasnath/android/keyboard/UserBigramDictionarya$Bigram;->frequency:I

    .line 120
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "bigram"    # Ljava/lang/Object;

    .prologue
    .line 124
    move-object v0, p1

    check-cast v0, Lnet/hasnath/android/keyboard/UserBigramDictionarya$Bigram;

    .line 125
    .local v0, "bigram2":Lnet/hasnath/android/keyboard/UserBigramDictionarya$Bigram;
    iget-object v1, p0, Lnet/hasnath/android/keyboard/UserBigramDictionarya$Bigram;->word1:Ljava/lang/String;

    iget-object v2, v0, Lnet/hasnath/android/keyboard/UserBigramDictionarya$Bigram;->word1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/hasnath/android/keyboard/UserBigramDictionarya$Bigram;->word2:Ljava/lang/String;

    iget-object v2, v0, Lnet/hasnath/android/keyboard/UserBigramDictionarya$Bigram;->word2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/UserBigramDictionarya$Bigram;->word1:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/hasnath/android/keyboard/UserBigramDictionarya$Bigram;->word2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
