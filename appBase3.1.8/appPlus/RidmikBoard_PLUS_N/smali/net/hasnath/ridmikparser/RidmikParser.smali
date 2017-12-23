.class public Lnet/hasnath/ridmikparser/RidmikParser;
.super Ljava/lang/Object;
.source "RidmikParser.java"


# instance fields
.field private unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lnet/hasnath/ridmikparser/BanglaUnicode;

    invoke-direct {v0}, Lnet/hasnath/ridmikparser/BanglaUnicode;-><init>()V

    iput-object v0, p0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    .line 14
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "arg"    # [Ljava/lang/String;

    .prologue
    .line 19
    new-instance v1, Lnet/hasnath/ridmikparser/RidmikParser;

    invoke-direct {v1}, Lnet/hasnath/ridmikparser/RidmikParser;-><init>()V

    .line 20
    .local v1, "parser":Lnet/hasnath/ridmikparser/RidmikParser;
    new-instance v2, Ljava/util/Scanner;

    sget-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 21
    .local v2, "sc":Ljava/util/Scanner;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Enter:"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    :goto_0
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 28
    return-void

    .line 24
    :cond_0
    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "eng":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Lnet/hasnath/ridmikparser/RidmikParser;->toBangla(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method dualSitsUnder(CCCC)Z
    .locals 5
    .param p1, "thirdCarry"    # C
    .param p2, "secondCarry"    # C
    .param p3, "carry"    # C
    .param p4, "now"    # C

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x72

    .line 281
    if-ne p2, v4, :cond_1

    if-ne p1, v4, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v2

    .line 284
    :cond_1
    if-ne p2, v4, :cond_2

    move v2, v3

    .line 285
    goto :goto_0

    .line 287
    :cond_2
    iget-object v4, p0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    invoke-virtual {v4, p3, p4}, Lnet/hasnath/ridmikparser/BanglaUnicode;->getDjkt(CC)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "djkt":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 289
    invoke-virtual {p0, p2, v0}, Lnet/hasnath/ridmikparser/RidmikParser;->isCharInString(CLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 292
    :cond_3
    iget-object v2, p0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    invoke-virtual {v2, p3, p4}, Lnet/hasnath/ridmikparser/BanglaUnicode;->getDjktt(CC)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "djktt":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_0

    :cond_4
    move v2, v3

    .line 299
    goto :goto_0
.end method

.method isCharInString(CLjava/lang/String;)Z
    .locals 2
    .param p1, "now"    # C
    .param p2, "foo"    # Ljava/lang/String;

    .prologue
    .line 274
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 275
    const/4 v0, 0x0

    .line 276
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isConsonant(C)Z
    .locals 1
    .param p1, "now"    # C

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lnet/hasnath/ridmikparser/RidmikParser;->isVowel(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVowel(C)Z
    .locals 2
    .param p1, "now"    # C

    .prologue
    .line 264
    const-string v0, "AEIOUaeiou"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 265
    const/4 v0, 0x0

    .line 266
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method notJukta(CCCC)Z
    .locals 5
    .param p1, "thirdCarry"    # C
    .param p2, "secondCarry"    # C
    .param p3, "carry"    # C
    .param p4, "now"    # C

    .prologue
    const/16 v4, 0x72

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 304
    const/16 v3, 0x6e

    if-ne p2, v3, :cond_1

    const/16 v3, 0x67

    if-ne p3, v3, :cond_1

    if-ne p4, v4, :cond_1

    move v1, v2

    .line 323
    :cond_0
    :goto_0
    return v1

    .line 307
    :cond_1
    if-eq p4, v4, :cond_0

    const/16 v3, 0x7a

    if-eq p4, v3, :cond_0

    const/16 v3, 0x77

    if-eq p4, v3, :cond_0

    .line 310
    iget-object v3, p0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    invoke-virtual {v3, p2, p3}, Lnet/hasnath/ridmikparser/BanglaUnicode;->getDualJkt(CC)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "foo":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 313
    invoke-virtual {p0, p4, v0}, Lnet/hasnath/ridmikparser/RidmikParser;->isCharInString(CLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 315
    :cond_2
    iget-object v3, p0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    invoke-virtual {v3, p3}, Lnet/hasnath/ridmikparser/BanglaUnicode;->getJkt(C)Ljava/lang/String;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_3

    .line 317
    invoke-virtual {p0, p4, v0}, Lnet/hasnath/ridmikparser/RidmikParser;->isCharInString(CLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    .line 323
    goto :goto_0
.end method

.method public toBangla(Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p1, "engWord"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v10, "st":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 40
    .local v1, "carry":C
    const/4 v9, 0x0

    .line 41
    .local v9, "secondCarry":C
    const/4 v12, 0x0

    .line 42
    .local v12, "thirdCarry":C
    const/4 v11, 0x0

    .line 43
    .local v11, "tempNoCarry":Z
    const/4 v5, 0x0

    .line 45
    .local v5, "jukta":Z
    const/4 v8, 0x0

    .line 46
    .local v8, "prevJukta":Z
    const/4 v7, 0x0

    .line 49
    .local v7, "prevDual":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 52
    .local v2, "charArray":[C
    array-length v14, v2

    const/4 v13, 0x0

    .end local v8    # "prevJukta":Z
    :goto_0
    if-lt v13, v14, :cond_0

    .line 260
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 52
    :cond_0
    aget-char v6, v2, v13

    .line 55
    .local v6, "now":C
    const/16 v15, 0x61

    if-lt v6, v15, :cond_1

    const/16 v15, 0x7a

    if-le v6, v15, :cond_4

    :cond_1
    const/16 v15, 0x41

    if-lt v6, v15, :cond_2

    const/16 v15, 0x5a

    if-le v6, v15, :cond_4

    :cond_2
    const/16 v15, 0x30

    if-lt v6, v15, :cond_3

    const/16 v15, 0x39

    if-le v6, v15, :cond_4

    .line 56
    :cond_3
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    const/4 v1, 0x0

    .line 52
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 62
    :cond_4
    const/16 v15, 0x41

    if-eq v6, v15, :cond_5

    const/16 v15, 0x42

    if-eq v6, v15, :cond_5

    const/16 v15, 0x43

    if-eq v6, v15, :cond_5

    const/16 v15, 0x45

    if-eq v6, v15, :cond_5

    const/16 v15, 0x46

    if-eq v6, v15, :cond_5

    const/16 v15, 0x50

    if-eq v6, v15, :cond_5

    const/16 v15, 0x58

    if-ne v6, v15, :cond_6

    .line 63
    :cond_5
    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    .line 64
    :cond_6
    const/16 v15, 0x4b

    if-eq v6, v15, :cond_7

    const/16 v15, 0x4c

    if-eq v6, v15, :cond_7

    const/16 v15, 0x4d

    if-eq v6, v15, :cond_7

    const/16 v15, 0x56

    if-eq v6, v15, :cond_7

    const/16 v15, 0x59

    if-eq v6, v15, :cond_7

    const/16 v15, 0x57

    if-eq v6, v15, :cond_7

    const/16 v15, 0x51

    if-ne v6, v15, :cond_8

    .line 65
    :cond_7
    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    .line 67
    :cond_8
    const/16 v15, 0x48

    if-ne v6, v15, :cond_9

    const/16 v15, 0x54

    if-eq v1, v15, :cond_9

    .line 68
    const/16 v6, 0x68

    .line 71
    :cond_9
    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lnet/hasnath/ridmikparser/RidmikParser;->isVowel(C)Z

    move-result v15

    if-eqz v15, :cond_b

    :cond_a
    const/16 v15, 0x77

    if-ne v6, v15, :cond_b

    .line 72
    const/16 v6, 0x4f

    .line 75
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lnet/hasnath/ridmikparser/RidmikParser;->isVowel(C)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 78
    const/16 v15, 0x72

    if-ne v1, v15, :cond_d

    const/16 v15, 0x72

    if-ne v9, v15, :cond_d

    const/16 v15, 0x69

    if-ne v6, v15, :cond_d

    .line 80
    if-nez v12, :cond_c

    .line 81
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 82
    const-string v15, "\u098b"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :goto_2
    const/16 v1, 0x69

    .line 88
    goto/16 :goto_1

    .line 84
    :cond_c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x3

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 85
    const-string v15, "\u09c3"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 93
    :cond_d
    if-eqz v9, :cond_19

    .line 94
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    invoke-virtual {v15, v6, v1}, Lnet/hasnath/ridmikparser/BanglaUnicode;->getDualKar(CC)Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, "dual":Ljava/lang/String;
    :goto_3
    if-eqz v3, :cond_1b

    .line 98
    const/16 v15, 0x6f

    if-eq v1, v15, :cond_e

    .line 99
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 100
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lnet/hasnath/ridmikparser/RidmikParser;->isVowel(C)Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 101
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    invoke-virtual {v15, v1}, Lnet/hasnath/ridmikparser/BanglaUnicode;->get(C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lnet/hasnath/ridmikparser/BanglaUnicode;->get(C)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .end local v3    # "dual":Ljava/lang/String;
    :cond_f
    :goto_4
    const/16 v15, 0x79

    if-eq v6, v15, :cond_10

    const/16 v15, 0x5a

    if-eq v6, v15, :cond_10

    const/16 v15, 0x72

    if-ne v6, v15, :cond_11

    .line 126
    :cond_10
    const/4 v5, 0x0

    .line 130
    :cond_11
    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    invoke-virtual {v15, v6, v1}, Lnet/hasnath/ridmikparser/BanglaUnicode;->getDual(CC)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_21

    const/4 v11, 0x1

    .line 132
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lnet/hasnath/ridmikparser/RidmikParser;->isConsonant(C)Z

    move-result v15

    if-eqz v15, :cond_2e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lnet/hasnath/ridmikparser/RidmikParser;->isConsonant(C)Z

    move-result v15

    if-eqz v15, :cond_2e

    if-nez v11, :cond_2e

    .line 136
    const/16 v15, 0x79

    if-eq v6, v15, :cond_12

    const/16 v15, 0x5a

    if-ne v6, v15, :cond_13

    .line 137
    :cond_12
    const/16 v15, 0x79

    if-ne v6, v15, :cond_22

    const/16 v15, 0x71

    if-ne v1, v15, :cond_22

    const/16 v15, 0x71

    if-ne v9, v15, :cond_22

    .line 156
    :cond_13
    :goto_6
    const/16 v15, 0x6b

    if-ne v9, v15, :cond_14

    const/16 v15, 0x6b

    if-ne v1, v15, :cond_14

    const/16 v15, 0x68

    if-ne v6, v15, :cond_14

    .line 157
    const/16 v1, 0x53

    .line 160
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    invoke-virtual {v15, v6, v1}, Lnet/hasnath/ridmikparser/BanglaUnicode;->getDual(CC)Ljava/lang/String;

    move-result-object v3

    .line 162
    .restart local v3    # "dual":Ljava/lang/String;
    if-eqz v3, :cond_27

    if-nez v7, :cond_27

    .line 164
    const/4 v7, 0x1

    .line 166
    const/16 v15, 0x67

    if-ne v12, v15, :cond_15

    const/16 v15, 0x6b

    if-ne v9, v15, :cond_15

    const/16 v15, 0x53

    if-ne v1, v15, :cond_15

    const/16 v15, 0x68

    if-ne v6, v15, :cond_15

    .line 167
    const/4 v5, 0x0

    move v8, v5

    .line 169
    :cond_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lnet/hasnath/ridmikparser/RidmikParser;->isVowel(C)Z

    move-result v15

    if-nez v15, :cond_23

    if-eqz v9, :cond_23

    if-nez v8, :cond_23

    const/4 v4, 0x0

    .line 171
    .local v4, "firstOrAfterVowelOrJukta":Z
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v9, v1, v6}, Lnet/hasnath/ridmikparser/RidmikParser;->dualSitsUnder(CCCC)Z

    move-result v15

    if-eqz v15, :cond_25

    if-nez v4, :cond_25

    .line 172
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 173
    const/16 v15, 0x72

    if-ne v9, v15, :cond_16

    const/16 v15, 0x72

    if-ne v12, v15, :cond_16

    .line 174
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 175
    :cond_16
    if-eqz v5, :cond_24

    .line 179
    :cond_17
    :goto_8
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    move v8, v5

    .line 182
    .restart local v8    # "prevJukta":Z
    const/4 v5, 0x1

    .line 255
    .end local v3    # "dual":Ljava/lang/String;
    .end local v4    # "firstOrAfterVowelOrJukta":Z
    .end local v8    # "prevJukta":Z
    :cond_18
    :goto_9
    move v12, v9

    .line 256
    move v9, v1

    .line 257
    move v1, v6

    goto/16 :goto_1

    .line 95
    :cond_19
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    invoke-virtual {v15, v6, v1}, Lnet/hasnath/ridmikparser/BanglaUnicode;->getDual(CC)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "dual":Ljava/lang/String;
    goto/16 :goto_3

    .line 103
    :cond_1a
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 104
    :cond_1b
    const/16 v15, 0x6f

    if-ne v6, v15, :cond_1d

    if-eqz v1, :cond_1d

    .line 105
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lnet/hasnath/ridmikparser/RidmikParser;->isVowel(C)Z

    move-result v15

    if-eqz v15, :cond_1c

    .line 106
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    const/16 v16, 0x4f

    invoke-virtual/range {v15 .. v16}, Lnet/hasnath/ridmikparser/BanglaUnicode;->get(C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 108
    :cond_1c
    move v12, v9

    .line 109
    move v9, v1

    .line 110
    move v1, v6

    .line 111
    goto/16 :goto_1

    .line 113
    :cond_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lnet/hasnath/ridmikparser/RidmikParser;->isVowel(C)Z

    move-result v15

    if-nez v15, :cond_1e

    if-nez v1, :cond_20

    .line 114
    :cond_1e
    const/16 v15, 0x61

    if-ne v6, v15, :cond_1f

    if-eqz v1, :cond_1f

    .line 115
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    const/16 v16, 0x79

    invoke-virtual/range {v15 .. v16}, Lnet/hasnath/ridmikparser/BanglaUnicode;->get(C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    move-object/from16 v16, v0

    const/16 v17, 0x61

    invoke-virtual/range {v16 .. v17}, Lnet/hasnath/ridmikparser/BanglaUnicode;->getKar(C)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 117
    :cond_1f
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    invoke-virtual {v15, v6}, Lnet/hasnath/ridmikparser/BanglaUnicode;->get(C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 119
    :cond_20
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    invoke-virtual {v15, v6}, Lnet/hasnath/ridmikparser/BanglaUnicode;->getKar(C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 130
    .end local v3    # "dual":Ljava/lang/String;
    :cond_21
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 139
    :cond_22
    const/16 v6, 0x7a

    goto/16 :goto_6

    .line 169
    .restart local v3    # "dual":Ljava/lang/String;
    :cond_23
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 176
    .restart local v4    # "firstOrAfterVowelOrJukta":Z
    :cond_24
    if-eqz v9, :cond_17

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lnet/hasnath/ridmikparser/RidmikParser;->isVowel(C)Z

    move-result v15

    if-nez v15, :cond_17

    .line 177
    const-string v15, "\u09cd"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 185
    :cond_25
    if-eqz v5, :cond_26

    .line 186
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 194
    :goto_a
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    move v8, v5

    .line 196
    .restart local v8    # "prevJukta":Z
    const/4 v5, 0x0

    .line 200
    goto/16 :goto_9

    .line 187
    .end local v8    # "prevJukta":Z
    :cond_26
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 201
    .end local v4    # "firstOrAfterVowelOrJukta":Z
    :cond_27
    const/4 v7, 0x0

    .line 202
    move v8, v5

    .line 203
    .restart local v8    # "prevJukta":Z
    const/4 v5, 0x0

    .line 205
    const/16 v15, 0x72

    if-eq v9, v15, :cond_29

    const/16 v15, 0x72

    if-ne v1, v15, :cond_29

    const/16 v15, 0x7a

    if-ne v6, v15, :cond_29

    .line 206
    const-string v15, "\u200d\u09cd"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_28
    :goto_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    invoke-virtual {v15, v6}, Lnet/hasnath/ridmikparser/BanglaUnicode;->get(C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 208
    :cond_29
    const/16 v15, 0x72

    if-ne v1, v15, :cond_2a

    const/16 v15, 0x72

    if-ne v9, v15, :cond_28

    .line 210
    :cond_2a
    const/16 v15, 0x72

    if-ne v1, v15, :cond_2b

    const/16 v15, 0x72

    if-ne v9, v15, :cond_2b

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lnet/hasnath/ridmikparser/RidmikParser;->isConsonant(C)Z

    move-result v15

    if-nez v15, :cond_28

    .line 212
    :cond_2b
    const/16 v15, 0x72

    if-ne v1, v15, :cond_2d

    const/16 v15, 0x72

    if-ne v9, v15, :cond_2d

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lnet/hasnath/ridmikparser/RidmikParser;->isVowel(C)Z

    move-result v15

    if-nez v15, :cond_2c

    if-nez v12, :cond_2d

    .line 213
    :cond_2c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 214
    const-string v15, "\u09cd"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 217
    :cond_2d
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v9, v1, v6}, Lnet/hasnath/ridmikparser/RidmikParser;->notJukta(CCCC)Z

    move-result v15

    if-nez v15, :cond_28

    .line 219
    const-string v15, "\u09cd"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const/4 v5, 0x1

    goto :goto_b

    .line 228
    .end local v3    # "dual":Ljava/lang/String;
    .end local v8    # "prevJukta":Z
    :cond_2e
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lnet/hasnath/ridmikparser/RidmikParser;->isConsonant(C)Z

    move-result v15

    if-eqz v15, :cond_18

    .line 229
    const/4 v7, 0x0

    .line 230
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lnet/hasnath/ridmikparser/RidmikParser;->isVowel(C)Z

    move-result v15

    if-eqz v15, :cond_2f

    const/16 v15, 0x5a

    if-ne v6, v15, :cond_2f

    .line 231
    const-string v15, "\u09cd"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_2f
    if-nez v1, :cond_30

    const/16 v15, 0x78

    if-ne v6, v15, :cond_30

    .line 234
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    const/16 v16, 0x65

    invoke-virtual/range {v15 .. v16}, Lnet/hasnath/ridmikparser/BanglaUnicode;->get(C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_30
    move v8, v5

    .line 237
    .restart local v8    # "prevJukta":Z
    const/4 v5, 0x0

    .line 240
    const/16 v15, 0x77

    if-ne v6, v15, :cond_31

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lnet/hasnath/ridmikparser/RidmikParser;->isConsonant(C)Z

    move-result v15

    if-eqz v15, :cond_31

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lnet/hasnath/ridmikparser/RidmikParser;->isConsonant(C)Z

    move-result v15

    if-eqz v15, :cond_31

    .line 241
    const-string v15, "\u09cd"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    move v8, v5

    .line 243
    .local v8, "prevJukta":I
    const/4 v5, 0x1

    .line 246
    .end local v8    # "prevJukta":I
    :cond_31
    const/16 v15, 0x6b

    if-ne v12, v15, :cond_33

    const/16 v15, 0x53

    if-ne v9, v15, :cond_33

    const/16 v15, 0x68

    if-ne v1, v15, :cond_33

    const/16 v15, 0x4e

    if-eq v6, v15, :cond_32

    const/16 v15, 0x6d

    if-ne v6, v15, :cond_33

    .line 247
    :cond_32
    const-string v15, "\u09cd"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const/4 v8, 0x0

    .line 249
    .local v8, "prevJukta":Z
    const/4 v5, 0x1

    .line 251
    .end local v8    # "prevJukta":Z
    :cond_33
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    invoke-virtual {v15, v6}, Lnet/hasnath/ridmikparser/BanglaUnicode;->get(C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9
.end method
