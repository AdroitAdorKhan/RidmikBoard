.class public Lnet/hasnath/ridmikparser/RidmikParser;
.super Ljava/lang/Object;
.source "RidmikParser.java"


# instance fields
.field private autoCorrect:Lnet/hasnath/android/keyboard/AutoCorrect;

.field private unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lnet/hasnath/ridmikparser/BanglaUnicode;

    invoke-direct {v0}, Lnet/hasnath/ridmikparser/BanglaUnicode;-><init>()V

    iput-object v0, p0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hasnath/ridmikparser/RidmikParser;->autoCorrect:Lnet/hasnath/android/keyboard/AutoCorrect;

    .line 21
    new-instance v0, Lnet/hasnath/android/keyboard/AutoCorrect;

    invoke-direct {v0, p1}, Lnet/hasnath/android/keyboard/AutoCorrect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/hasnath/ridmikparser/RidmikParser;->autoCorrect:Lnet/hasnath/android/keyboard/AutoCorrect;

    .line 22
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .param p0, "arg"    # [Ljava/lang/String;

    .prologue
    .line 35
    return-void
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

    .line 306
    if-ne p2, v4, :cond_1

    if-ne p1, v4, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v2

    .line 309
    :cond_1
    if-ne p2, v4, :cond_2

    move v2, v3

    .line 310
    goto :goto_0

    .line 312
    :cond_2
    iget-object v4, p0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    invoke-virtual {v4, p3, p4}, Lnet/hasnath/ridmikparser/BanglaUnicode;->getDjkt(CC)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "djkt":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 314
    invoke-virtual {p0, p2, v0}, Lnet/hasnath/ridmikparser/RidmikParser;->isCharInString(CLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 317
    :cond_3
    iget-object v2, p0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    invoke-virtual {v2, p3, p4}, Lnet/hasnath/ridmikparser/BanglaUnicode;->getDjktt(CC)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "djktt":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 319
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

    .line 324
    goto :goto_0
.end method

.method isCharInString(CLjava/lang/String;)Z
    .locals 2
    .param p1, "now"    # C
    .param p2, "foo"    # Ljava/lang/String;

    .prologue
    .line 299
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 300
    const/4 v0, 0x0

    .line 301
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
    .line 295
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
    .line 289
    const-string v0, "AEIOUaeiou"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 290
    const/4 v0, 0x0

    .line 291
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

    .line 329
    const/16 v3, 0x6e

    if-ne p2, v3, :cond_1

    const/16 v3, 0x67

    if-ne p3, v3, :cond_1

    if-ne p4, v4, :cond_1

    move v1, v2

    .line 348
    :cond_0
    :goto_0
    return v1

    .line 332
    :cond_1
    if-eq p4, v4, :cond_0

    const/16 v3, 0x7a

    if-eq p4, v3, :cond_0

    const/16 v3, 0x77

    if-eq p4, v3, :cond_0

    .line 335
    iget-object v3, p0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    invoke-virtual {v3, p2, p3}, Lnet/hasnath/ridmikparser/BanglaUnicode;->getDualJkt(CC)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "foo":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 338
    invoke-virtual {p0, p4, v0}, Lnet/hasnath/ridmikparser/RidmikParser;->isCharInString(CLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 340
    :cond_2
    iget-object v3, p0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    invoke-virtual {v3, p3}, Lnet/hasnath/ridmikparser/BanglaUnicode;->getJkt(C)Ljava/lang/String;

    move-result-object v0

    .line 341
    if-eqz v0, :cond_3

    .line 342
    invoke-virtual {p0, p4, v0}, Lnet/hasnath/ridmikparser/RidmikParser;->isCharInString(CLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    .line 348
    goto :goto_0
.end method

.method public toBangla(Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p1, "engWord"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string v16, "[\u0981-\u09fa]+"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    move-object/from16 v16, p1

    .line 285
    :goto_0
    return-object v16

    .line 55
    :cond_0
    const/4 v4, 0x1

    .line 56
    .local v4, "correct":Z
    if-eqz v4, :cond_1

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/ridmikparser/RidmikParser;->autoCorrect:Lnet/hasnath/android/keyboard/AutoCorrect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/AutoCorrect;->getCorrection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, "corrected":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 59
    move-object/from16 p1, v5

    .line 63
    .end local v5    # "corrected":Ljava/lang/String;
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v13, "st":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 65
    .local v2, "carry":C
    const/4 v12, 0x0

    .line 66
    .local v12, "secondCarry":C
    const/4 v15, 0x0

    .line 67
    .local v15, "thirdCarry":C
    const/4 v14, 0x0

    .line 68
    .local v14, "tempNoCarry":Z
    const/4 v8, 0x0

    .line 70
    .local v8, "jukta":Z
    const/4 v11, 0x0

    .line 71
    .local v11, "prevJukta":Z
    const/4 v10, 0x0

    .line 74
    .local v10, "prevDual":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 77
    .local v3, "charArray":[C
    array-length v0, v3

    move/from16 v17, v0

    const/16 v16, 0x0

    .end local v11    # "prevJukta":Z
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_2

    .line 285
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 77
    :cond_2
    aget-char v9, v3, v16

    .line 80
    .local v9, "now":C
    const/16 v18, 0x61

    move/from16 v0, v18

    if-lt v9, v0, :cond_3

    const/16 v18, 0x7a

    move/from16 v0, v18

    if-le v9, v0, :cond_6

    :cond_3
    const/16 v18, 0x41

    move/from16 v0, v18

    if-lt v9, v0, :cond_4

    const/16 v18, 0x5a

    move/from16 v0, v18

    if-le v9, v0, :cond_6

    :cond_4
    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v9, v0, :cond_5

    const/16 v18, 0x39

    move/from16 v0, v18

    if-le v9, v0, :cond_6

    .line 81
    :cond_5
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    const/4 v2, 0x0

    .line 77
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 87
    :cond_6
    const/16 v18, 0x41

    move/from16 v0, v18

    if-eq v9, v0, :cond_7

    const/16 v18, 0x42

    move/from16 v0, v18

    if-eq v9, v0, :cond_7

    const/16 v18, 0x43

    move/from16 v0, v18

    if-eq v9, v0, :cond_7

    const/16 v18, 0x45

    move/from16 v0, v18

    if-eq v9, v0, :cond_7

    const/16 v18, 0x46

    move/from16 v0, v18

    if-eq v9, v0, :cond_7

    const/16 v18, 0x50

    move/from16 v0, v18

    if-eq v9, v0, :cond_7

    const/16 v18, 0x58

    move/from16 v0, v18

    if-ne v9, v0, :cond_8

    .line 88
    :cond_7
    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    .line 89
    :cond_8
    const/16 v18, 0x4b

    move/from16 v0, v18

    if-eq v9, v0, :cond_9

    const/16 v18, 0x4c

    move/from16 v0, v18

    if-eq v9, v0, :cond_9

    const/16 v18, 0x4d

    move/from16 v0, v18

    if-eq v9, v0, :cond_9

    const/16 v18, 0x56

    move/from16 v0, v18

    if-eq v9, v0, :cond_9

    const/16 v18, 0x59

    move/from16 v0, v18

    if-eq v9, v0, :cond_9

    const/16 v18, 0x57

    move/from16 v0, v18

    if-eq v9, v0, :cond_9

    const/16 v18, 0x51

    move/from16 v0, v18

    if-ne v9, v0, :cond_a

    .line 90
    :cond_9
    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    .line 92
    :cond_a
    const/16 v18, 0x48

    move/from16 v0, v18

    if-ne v9, v0, :cond_b

    const/16 v18, 0x54

    move/from16 v0, v18

    if-eq v2, v0, :cond_b

    .line 93
    const/16 v9, 0x68

    .line 96
    :cond_b
    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnet/hasnath/ridmikparser/RidmikParser;->isVowel(C)Z

    move-result v18

    if-eqz v18, :cond_d

    :cond_c
    const/16 v18, 0x77

    move/from16 v0, v18

    if-ne v9, v0, :cond_d

    .line 97
    const/16 v9, 0x4f

    .line 100
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lnet/hasnath/ridmikparser/RidmikParser;->isVowel(C)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 103
    const/16 v18, 0x72

    move/from16 v0, v18

    if-ne v2, v0, :cond_f

    const/16 v18, 0x72

    move/from16 v0, v18

    if-ne v12, v0, :cond_f

    const/16 v18, 0x69

    move/from16 v0, v18

    if-ne v9, v0, :cond_f

    .line 105
    if-nez v15, :cond_e

    .line 106
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x2

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 107
    const-string v18, "\u098b"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :goto_3
    const/16 v2, 0x69

    .line 113
    goto/16 :goto_2

    .line 109
    :cond_e
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x3

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 110
    const-string v18, "\u09c3"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 118
    :cond_f
    if-eqz v12, :cond_1b

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v2}, Lnet/hasnath/ridmikparser/BanglaUnicode;->getDualKar(CC)Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, "dual":Ljava/lang/String;
    :goto_4
    if-eqz v6, :cond_1d

    .line 123
    const/16 v18, 0x6f

    move/from16 v0, v18

    if-eq v2, v0, :cond_10

    .line 124
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 125
    :cond_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lnet/hasnath/ridmikparser/RidmikParser;->isVowel(C)Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lnet/hasnath/ridmikparser/BanglaUnicode;->get(C)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lnet/hasnath/ridmikparser/BanglaUnicode;->get(C)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .end local v6    # "dual":Ljava/lang/String;
    :cond_11
    :goto_5
    const/16 v18, 0x79

    move/from16 v0, v18

    if-eq v9, v0, :cond_12

    const/16 v18, 0x5a

    move/from16 v0, v18

    if-eq v9, v0, :cond_12

    const/16 v18, 0x72

    move/from16 v0, v18

    if-ne v9, v0, :cond_13

    .line 151
    :cond_12
    const/4 v8, 0x0

    .line 155
    :cond_13
    if-eqz v8, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v2}, Lnet/hasnath/ridmikparser/BanglaUnicode;->getDual(CC)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_23

    const/4 v14, 0x1

    .line 157
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lnet/hasnath/ridmikparser/RidmikParser;->isConsonant(C)Z

    move-result v18

    if-eqz v18, :cond_30

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnet/hasnath/ridmikparser/RidmikParser;->isConsonant(C)Z

    move-result v18

    if-eqz v18, :cond_30

    if-nez v14, :cond_30

    .line 161
    const/16 v18, 0x79

    move/from16 v0, v18

    if-eq v9, v0, :cond_14

    const/16 v18, 0x5a

    move/from16 v0, v18

    if-ne v9, v0, :cond_15

    .line 162
    :cond_14
    const/16 v18, 0x79

    move/from16 v0, v18

    if-ne v9, v0, :cond_24

    const/16 v18, 0x71

    move/from16 v0, v18

    if-ne v2, v0, :cond_24

    const/16 v18, 0x71

    move/from16 v0, v18

    if-ne v12, v0, :cond_24

    .line 181
    :cond_15
    :goto_7
    const/16 v18, 0x6b

    move/from16 v0, v18

    if-ne v12, v0, :cond_16

    const/16 v18, 0x6b

    move/from16 v0, v18

    if-ne v2, v0, :cond_16

    const/16 v18, 0x68

    move/from16 v0, v18

    if-ne v9, v0, :cond_16

    .line 182
    const/16 v2, 0x53

    .line 185
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v2}, Lnet/hasnath/ridmikparser/BanglaUnicode;->getDual(CC)Ljava/lang/String;

    move-result-object v6

    .line 187
    .restart local v6    # "dual":Ljava/lang/String;
    if-eqz v6, :cond_29

    if-nez v10, :cond_29

    .line 189
    const/4 v10, 0x1

    .line 191
    const/16 v18, 0x67

    move/from16 v0, v18

    if-ne v15, v0, :cond_17

    const/16 v18, 0x6b

    move/from16 v0, v18

    if-ne v12, v0, :cond_17

    const/16 v18, 0x53

    move/from16 v0, v18

    if-ne v2, v0, :cond_17

    const/16 v18, 0x68

    move/from16 v0, v18

    if-ne v9, v0, :cond_17

    .line 192
    const/4 v8, 0x0

    move v11, v8

    .line 194
    :cond_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lnet/hasnath/ridmikparser/RidmikParser;->isVowel(C)Z

    move-result v18

    if-nez v18, :cond_25

    if-eqz v12, :cond_25

    if-nez v11, :cond_25

    const/4 v7, 0x0

    .line 196
    .local v7, "firstOrAfterVowelOrJukta":Z
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v12, v2, v9}, Lnet/hasnath/ridmikparser/RidmikParser;->dualSitsUnder(CCCC)Z

    move-result v18

    if-eqz v18, :cond_27

    if-nez v7, :cond_27

    .line 197
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 198
    const/16 v18, 0x72

    move/from16 v0, v18

    if-ne v12, v0, :cond_18

    const/16 v18, 0x72

    move/from16 v0, v18

    if-ne v15, v0, :cond_18

    .line 199
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 200
    :cond_18
    if-eqz v8, :cond_26

    .line 204
    :cond_19
    :goto_9
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    move v11, v8

    .line 207
    .restart local v11    # "prevJukta":Z
    const/4 v8, 0x1

    .line 280
    .end local v6    # "dual":Ljava/lang/String;
    .end local v7    # "firstOrAfterVowelOrJukta":Z
    .end local v11    # "prevJukta":Z
    :cond_1a
    :goto_a
    move v15, v12

    .line 281
    move v12, v2

    .line 282
    move v2, v9

    goto/16 :goto_2

    .line 120
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v2}, Lnet/hasnath/ridmikparser/BanglaUnicode;->getDual(CC)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "dual":Ljava/lang/String;
    goto/16 :goto_4

    .line 128
    :cond_1c
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 129
    :cond_1d
    const/16 v18, 0x6f

    move/from16 v0, v18

    if-ne v9, v0, :cond_1f

    if-eqz v2, :cond_1f

    .line 130
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnet/hasnath/ridmikparser/RidmikParser;->isVowel(C)Z

    move-result v18

    if-eqz v18, :cond_1e

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    move-object/from16 v18, v0

    const/16 v19, 0x4f

    invoke-virtual/range {v18 .. v19}, Lnet/hasnath/ridmikparser/BanglaUnicode;->get(C)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 133
    :cond_1e
    move v15, v12

    .line 134
    move v12, v2

    .line 135
    move v2, v9

    .line 136
    goto/16 :goto_2

    .line 138
    :cond_1f
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnet/hasnath/ridmikparser/RidmikParser;->isVowel(C)Z

    move-result v18

    if-nez v18, :cond_20

    if-nez v2, :cond_22

    .line 139
    :cond_20
    const/16 v18, 0x61

    move/from16 v0, v18

    if-ne v9, v0, :cond_21

    if-eqz v2, :cond_21

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    move-object/from16 v18, v0

    const/16 v19, 0x79

    invoke-virtual/range {v18 .. v19}, Lnet/hasnath/ridmikparser/BanglaUnicode;->get(C)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    move-object/from16 v19, v0

    const/16 v20, 0x61

    invoke-virtual/range {v19 .. v20}, Lnet/hasnath/ridmikparser/BanglaUnicode;->getKar(C)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 142
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lnet/hasnath/ridmikparser/BanglaUnicode;->get(C)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 144
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lnet/hasnath/ridmikparser/BanglaUnicode;->getKar(C)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 155
    .end local v6    # "dual":Ljava/lang/String;
    :cond_23
    const/4 v14, 0x0

    goto/16 :goto_6

    .line 164
    :cond_24
    const/16 v9, 0x7a

    goto/16 :goto_7

    .line 194
    .restart local v6    # "dual":Ljava/lang/String;
    :cond_25
    const/4 v7, 0x1

    goto/16 :goto_8

    .line 201
    .restart local v7    # "firstOrAfterVowelOrJukta":Z
    :cond_26
    if-eqz v12, :cond_19

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lnet/hasnath/ridmikparser/RidmikParser;->isVowel(C)Z

    move-result v18

    if-nez v18, :cond_19

    .line 202
    const-string v18, "\u09cd"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 210
    :cond_27
    if-eqz v8, :cond_28

    .line 211
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x2

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 219
    :goto_b
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    move v11, v8

    .line 221
    .restart local v11    # "prevJukta":Z
    const/4 v8, 0x0

    .line 225
    goto/16 :goto_a

    .line 212
    .end local v11    # "prevJukta":Z
    :cond_28
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 226
    .end local v7    # "firstOrAfterVowelOrJukta":Z
    :cond_29
    const/4 v10, 0x0

    .line 227
    move v11, v8

    .line 228
    .restart local v11    # "prevJukta":Z
    const/4 v8, 0x0

    .line 230
    const/16 v18, 0x72

    move/from16 v0, v18

    if-eq v12, v0, :cond_2b

    const/16 v18, 0x72

    move/from16 v0, v18

    if-ne v2, v0, :cond_2b

    const/16 v18, 0x7a

    move/from16 v0, v18

    if-ne v9, v0, :cond_2b

    .line 231
    const-string v18, "\u200d\u09cd"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_2a
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lnet/hasnath/ridmikparser/BanglaUnicode;->get(C)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 233
    :cond_2b
    const/16 v18, 0x72

    move/from16 v0, v18

    if-ne v2, v0, :cond_2c

    const/16 v18, 0x72

    move/from16 v0, v18

    if-ne v12, v0, :cond_2a

    .line 235
    :cond_2c
    const/16 v18, 0x72

    move/from16 v0, v18

    if-ne v2, v0, :cond_2d

    const/16 v18, 0x72

    move/from16 v0, v18

    if-ne v12, v0, :cond_2d

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lnet/hasnath/ridmikparser/RidmikParser;->isConsonant(C)Z

    move-result v18

    if-nez v18, :cond_2a

    .line 237
    :cond_2d
    const/16 v18, 0x72

    move/from16 v0, v18

    if-ne v2, v0, :cond_2f

    const/16 v18, 0x72

    move/from16 v0, v18

    if-ne v12, v0, :cond_2f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lnet/hasnath/ridmikparser/RidmikParser;->isVowel(C)Z

    move-result v18

    if-nez v18, :cond_2e

    if-nez v15, :cond_2f

    .line 238
    :cond_2e
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 239
    const-string v18, "\u09cd"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 242
    :cond_2f
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v12, v2, v9}, Lnet/hasnath/ridmikparser/RidmikParser;->notJukta(CCCC)Z

    move-result v18

    if-nez v18, :cond_2a

    .line 244
    const-string v18, "\u09cd"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const/4 v8, 0x1

    goto :goto_c

    .line 253
    .end local v6    # "dual":Ljava/lang/String;
    .end local v11    # "prevJukta":Z
    :cond_30
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lnet/hasnath/ridmikparser/RidmikParser;->isConsonant(C)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 254
    const/4 v10, 0x0

    .line 255
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnet/hasnath/ridmikparser/RidmikParser;->isVowel(C)Z

    move-result v18

    if-eqz v18, :cond_31

    const/16 v18, 0x5a

    move/from16 v0, v18

    if-ne v9, v0, :cond_31

    .line 256
    const-string v18, "\u09cd"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_31
    if-nez v2, :cond_32

    const/16 v18, 0x78

    move/from16 v0, v18

    if-ne v9, v0, :cond_32

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    move-object/from16 v18, v0

    const/16 v19, 0x65

    invoke-virtual/range {v18 .. v19}, Lnet/hasnath/ridmikparser/BanglaUnicode;->get(C)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_32
    move v11, v8

    .line 262
    .restart local v11    # "prevJukta":Z
    const/4 v8, 0x0

    .line 265
    const/16 v18, 0x77

    move/from16 v0, v18

    if-ne v9, v0, :cond_33

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnet/hasnath/ridmikparser/RidmikParser;->isConsonant(C)Z

    move-result v18

    if-eqz v18, :cond_33

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lnet/hasnath/ridmikparser/RidmikParser;->isConsonant(C)Z

    move-result v18

    if-eqz v18, :cond_33

    .line 266
    const-string v18, "\u09cd"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    move v11, v8

    .line 268
    .local v11, "prevJukta":I
    const/4 v8, 0x1

    .line 271
    .end local v11    # "prevJukta":I
    :cond_33
    const/16 v18, 0x6b

    move/from16 v0, v18

    if-ne v15, v0, :cond_35

    const/16 v18, 0x53

    move/from16 v0, v18

    if-ne v12, v0, :cond_35

    const/16 v18, 0x68

    move/from16 v0, v18

    if-ne v2, v0, :cond_35

    const/16 v18, 0x4e

    move/from16 v0, v18

    if-eq v9, v0, :cond_34

    const/16 v18, 0x6d

    move/from16 v0, v18

    if-ne v9, v0, :cond_35

    .line 272
    :cond_34
    const-string v18, "\u09cd"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const/4 v11, 0x0

    .line 274
    .local v11, "prevJukta":Z
    const/4 v8, 0x1

    .line 276
    .end local v11    # "prevJukta":Z
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/ridmikparser/RidmikParser;->unicode:Lnet/hasnath/ridmikparser/BanglaUnicode;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lnet/hasnath/ridmikparser/BanglaUnicode;->get(C)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a
.end method
