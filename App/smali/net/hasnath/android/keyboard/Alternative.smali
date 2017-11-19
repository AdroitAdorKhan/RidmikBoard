.class public Lnet/hasnath/android/keyboard/Alternative;
.super Ljava/lang/Object;
.source "Alternative.java"


# instance fields
.field private alts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Alternative;->alts:Ljava/util/HashMap;

    .line 13
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Alternative;->alts:Ljava/util/HashMap;

    const/16 v1, 0x995

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Alternative;->alts:Ljava/util/HashMap;

    const/16 v1, 0x997

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Alternative;->alts:Ljava/util/HashMap;

    const/16 v1, 0x982

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Alternative;->alts:Ljava/util/HashMap;

    const/16 v1, 0x999

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Alternative;->alts:Ljava/util/HashMap;

    const/16 v1, 0x9b8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Alternative;->alts:Ljava/util/HashMap;

    const/16 v1, 0x9a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Alternative;->alts:Ljava/util/HashMap;

    const/16 v1, 0x9a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [I

    fill-array-data v2, :array_6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Alternative;->alts:Ljava/util/HashMap;

    const/16 v1, 0x9a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Alternative;->alts:Ljava/util/HashMap;

    const/16 v1, 0x9a7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Alternative;->alts:Ljava/util/HashMap;

    const/16 v1, 0x9ac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Alternative;->alts:Ljava/util/HashMap;

    const/16 v1, 0x9a8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Alternative;->alts:Ljava/util/HashMap;

    const/16 v1, 0x99a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Alternative;->alts:Ljava/util/HashMap;

    const/16 v1, 0x99c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [I

    fill-array-data v2, :array_c

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Alternative;->alts:Ljava/util/HashMap;

    const/16 v1, 0x9af

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [I

    fill-array-data v2, :array_d

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Alternative;->alts:Ljava/util/HashMap;

    const/16 v1, 0x99d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Alternative;->alts:Ljava/util/HashMap;

    const/16 v1, 0x9b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [I

    fill-array-data v2, :array_f

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Alternative;->alts:Ljava/util/HashMap;

    const/16 v1, 0x9dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void

    .line 13
    nop

    :array_0
    .array-data 4
        0x995
        0x996
    .end array-data

    .line 14
    :array_1
    .array-data 4
        0x997
        0x998
    .end array-data

    .line 15
    :array_2
    .array-data 4
        0x982
        0x999
        0x99e
    .end array-data

    .line 16
    :array_3
    .array-data 4
        0x999
        0x99e
    .end array-data

    .line 17
    :array_4
    .array-data 4
        0x9b8
        0x9b6
        0x9b7
    .end array-data

    .line 18
    :array_5
    .array-data 4
        0x9a4
        0x99f
    .end array-data

    .line 19
    :array_6
    .array-data 4
        0x9a5
        0x9a0
        0x9ce
    .end array-data

    .line 20
    :array_7
    .array-data 4
        0x9a6
        0x9a7
    .end array-data

    .line 21
    :array_8
    .array-data 4
        0x9a7
        0x9a2
    .end array-data

    .line 22
    :array_9
    .array-data 4
        0x9ac
        0x9ad
    .end array-data

    .line 23
    :array_a
    .array-data 4
        0x9a8
        0x9a3
    .end array-data

    .line 24
    :array_b
    .array-data 4
        0x99a
        0x99b
    .end array-data

    .line 25
    :array_c
    .array-data 4
        0x99c
        0x99d
        0x9af
    .end array-data

    .line 26
    :array_d
    .array-data 4
        0x9af
        0x99d
        0x99c
    .end array-data

    .line 27
    :array_e
    .array-data 4
        0x99d
        0x9af
    .end array-data

    .line 28
    :array_f
    .array-data 4
        0x9b0
        0x9dc
        0x9dd
    .end array-data

    .line 29
    :array_10
    .array-data 4
        0x9dc
        0x9dd
    .end array-data
.end method


# virtual methods
.method getAlts(I)[I
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 35
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Alternative;->alts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 36
    .local v0, "a":[I
    if-nez v0, :cond_0

    .line 37
    const/4 v1, 0x1

    new-array v0, v1, [I

    .end local v0    # "a":[I
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 38
    :cond_0
    return-object v0
.end method
