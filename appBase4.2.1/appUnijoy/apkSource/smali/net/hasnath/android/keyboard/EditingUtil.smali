.class public Lnet/hasnath/android/keyboard/EditingUtil;
.super Ljava/lang/Object;
.source "EditingUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hasnath/android/keyboard/EditingUtil$Range;,
        Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;
    }
.end annotation


# static fields
.field private static final LOOKBACK_CHARACTER_NUM:I = 0xf

.field private static sMethodGetSelectedText:Ljava/lang/reflect/Method;

.field private static sMethodSetComposingRegion:Ljava/lang/reflect/Method;

.field private static sMethodsInitialized:Z

.field private static final spaceRegex:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 177
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/hasnath/android/keyboard/EditingUtil;->spaceRegex:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendText(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V
    .locals 4
    .param p0, "connection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 50
    if-nez p0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 58
    const/4 v1, 0x0

    invoke-interface {p0, v3, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 59
    .local v0, "charBeforeCursor":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 60
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    :cond_1
    invoke-interface {p0, p1, v3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_0
.end method

.method public static deleteWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V
    .locals 5
    .param p0, "connection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "separators"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lnet/hasnath/android/keyboard/EditingUtil;->getWordRangeAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Lnet/hasnath/android/keyboard/EditingUtil$Range;)Lnet/hasnath/android/keyboard/EditingUtil$Range;

    move-result-object v1

    .line 101
    .local v1, "range":Lnet/hasnath/android/keyboard/EditingUtil$Range;
    if-nez v1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 106
    invoke-static {p0}, Lnet/hasnath/android/keyboard/EditingUtil;->getCursorPosition(Landroid/view/inputmethod/InputConnection;)I

    move-result v2

    iget v3, v1, Lnet/hasnath/android/keyboard/EditingUtil$Range;->charsBefore:I

    sub-int v0, v2, v3

    .line 107
    .local v0, "newCursor":I
    invoke-interface {p0, v0, v0}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 108
    const/4 v2, 0x0

    iget v3, v1, Lnet/hasnath/android/keyboard/EditingUtil$Range;->charsBefore:I

    iget v4, v1, Lnet/hasnath/android/keyboard/EditingUtil$Range;->charsAfter:I

    add-int/2addr v3, v4

    invoke-interface {p0, v2, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0
.end method

.method private static getCursorPosition(Landroid/view/inputmethod/InputConnection;)I
    .locals 3
    .param p0, "connection"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 71
    .line 72
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v2, 0x0

    .line 71
    invoke-interface {p0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 73
    .local v0, "extracted":Landroid/view/inputmethod/ExtractedText;
    if-nez v0, :cond_0

    .line 74
    const/4 v1, -0x1

    .line 76
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public static getPreviousWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "connection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "sentenceSeperators"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 182
    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {p0, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 183
    .local v1, "prev":Ljava/lang/CharSequence;
    if-nez v1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-object v3

    .line 186
    :cond_1
    sget-object v4, Lnet/hasnath/android/keyboard/EditingUtil;->spaceRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "w":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    array-length v4, v2

    add-int/lit8 v4, v4, -0x2

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 188
    array-length v4, v2

    add-int/lit8 v4, v4, -0x2

    aget-object v4, v2, v4

    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    aget-object v5, v2, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 189
    .local v0, "lastChar":C
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 192
    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    aget-object v3, v2, v3

    goto :goto_0
.end method

.method private static getSelectedText(Landroid/view/inputmethod/InputConnection;II)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    const/4 v6, 0x0

    .line 292
    const/4 v0, 0x0

    .line 293
    .local v0, "result":Ljava/lang/CharSequence;
    sget-boolean v2, Lnet/hasnath/android/keyboard/EditingUtil;->sMethodsInitialized:Z

    if-nez v2, :cond_0

    .line 294
    invoke-static {}, Lnet/hasnath/android/keyboard/EditingUtil;->initializeMethodsForReflection()V

    .line 296
    :cond_0
    sget-object v2, Lnet/hasnath/android/keyboard/EditingUtil;->sMethodGetSelectedText:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 298
    :try_start_0
    sget-object v2, Lnet/hasnath/android/keyboard/EditingUtil;->sMethodGetSelectedText:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/CharSequence;
    check-cast v0, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "result":Ljava/lang/CharSequence;
    move-object v1, v0

    .line 315
    .end local v0    # "result":Ljava/lang/CharSequence;
    .local v1, "result":Ljava/lang/CharSequence;
    :goto_0
    return-object v1

    .line 304
    .end local v1    # "result":Ljava/lang/CharSequence;
    :catch_0
    move-exception v2

    .line 312
    :cond_1
    :goto_1
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 313
    sub-int v2, p2, p1

    invoke-interface {p0, v2, v6}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 314
    .restart local v0    # "result":Ljava/lang/CharSequence;
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-object v1, v0

    .line 315
    .end local v0    # "result":Ljava/lang/CharSequence;
    .restart local v1    # "result":Ljava/lang/CharSequence;
    goto :goto_0

    .line 302
    .end local v1    # "result":Ljava/lang/CharSequence;
    :catch_1
    move-exception v2

    goto :goto_1

    .line 300
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public static getWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Lnet/hasnath/android/keyboard/EditingUtil$Range;)Ljava/lang/String;
    .locals 2
    .param p0, "connection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "separators"    # Ljava/lang/String;
    .param p2, "range"    # Lnet/hasnath/android/keyboard/EditingUtil$Range;

    .prologue
    .line 89
    invoke-static {p0, p1, p2}, Lnet/hasnath/android/keyboard/EditingUtil;->getWordRangeAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Lnet/hasnath/android/keyboard/EditingUtil$Range;)Lnet/hasnath/android/keyboard/EditingUtil$Range;

    move-result-object v0

    .line 90
    .local v0, "r":Lnet/hasnath/android/keyboard/EditingUtil$Range;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lnet/hasnath/android/keyboard/EditingUtil$Range;->word:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getWordAtCursorOrSelection(Landroid/view/inputmethod/InputConnection;IILjava/lang/String;)Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;
    .locals 10
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I
    .param p3, "wordSeparators"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 227
    if-ne p1, p2, :cond_1

    .line 229
    new-instance v4, Lnet/hasnath/android/keyboard/EditingUtil$Range;

    invoke-direct {v4}, Lnet/hasnath/android/keyboard/EditingUtil$Range;-><init>()V

    .line 230
    .local v4, "range":Lnet/hasnath/android/keyboard/EditingUtil$Range;
    invoke-static {p0, p3, v4}, Lnet/hasnath/android/keyboard/EditingUtil;->getWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Lnet/hasnath/android/keyboard/EditingUtil$Range;)Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, "touching":Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 232
    new-instance v5, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;

    invoke-direct {v5}, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;-><init>()V

    .line 233
    .local v5, "selWord":Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;
    iput-object v6, v5, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    .line 234
    iget v7, v4, Lnet/hasnath/android/keyboard/EditingUtil$Range;->charsBefore:I

    sub-int v7, p1, v7

    iput v7, v5, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->start:I

    .line 235
    iget v7, v4, Lnet/hasnath/android/keyboard/EditingUtil$Range;->charsAfter:I

    add-int/2addr v7, p2

    iput v7, v5, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->end:I

    .line 268
    .end local v4    # "range":Lnet/hasnath/android/keyboard/EditingUtil$Range;
    .end local v5    # "selWord":Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;
    .end local v6    # "touching":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object v5

    .line 240
    :cond_1
    invoke-interface {p0, v9, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 241
    .local v1, "charsBefore":Ljava/lang/CharSequence;
    invoke-static {v1, p3}, Lnet/hasnath/android/keyboard/EditingUtil;->isWordBoundary(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 246
    invoke-interface {p0, v9, v8}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 247
    .local v0, "charsAfter":Ljava/lang/CharSequence;
    invoke-static {v0, p3}, Lnet/hasnath/android/keyboard/EditingUtil;->isWordBoundary(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 252
    invoke-static {p0, p1, p2}, Lnet/hasnath/android/keyboard/EditingUtil;->getSelectedText(Landroid/view/inputmethod/InputConnection;II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 253
    .restart local v6    # "touching":Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 255
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 256
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v3, :cond_2

    .line 262
    new-instance v5, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;

    invoke-direct {v5}, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;-><init>()V

    .line 263
    .restart local v5    # "selWord":Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;
    iput p1, v5, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->start:I

    .line 264
    iput p2, v5, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->end:I

    .line 265
    iput-object v6, v5, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    goto :goto_0

    .line 257
    .end local v5    # "selWord":Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;
    :cond_2
    add-int/lit8 v7, v2, 0x1

    invoke-interface {v6, v2, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static getWordRangeAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Lnet/hasnath/android/keyboard/EditingUtil$Range;)Lnet/hasnath/android/keyboard/EditingUtil$Range;
    .locals 11
    .param p0, "connection"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "sep"    # Ljava/lang/String;
    .param p2, "range"    # Lnet/hasnath/android/keyboard/EditingUtil$Range;

    .prologue
    const/16 v7, 0x3e8

    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 141
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-object v4

    .line 144
    :cond_1
    invoke-interface {p0, v7, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 145
    .local v1, "before":Ljava/lang/CharSequence;
    invoke-interface {p0, v7, v10}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 146
    .local v0, "after":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 152
    .local v5, "start":I
    :goto_1
    if-lez v5, :cond_2

    add-int/lit8 v7, v5, -0x1

    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lnet/hasnath/android/keyboard/EditingUtil;->isWhitespace(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 155
    :cond_2
    const/4 v3, -0x1

    .line 156
    .local v3, "end":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_4

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lnet/hasnath/android/keyboard/EditingUtil;->isWhitespace(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 158
    :cond_4
    invoke-static {p0}, Lnet/hasnath/android/keyboard/EditingUtil;->getCursorPosition(Landroid/view/inputmethod/InputConnection;)I

    move-result v2

    .line 159
    .local v2, "cursor":I
    if-ltz v5, :cond_0

    add-int v7, v2, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    add-int/2addr v8, v9

    if-gt v7, v8, :cond_0

    .line 160
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 160
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 163
    .local v6, "word":Ljava/lang/String;
    if-eqz p2, :cond_6

    move-object v4, p2

    .line 164
    .local v4, "returnRange":Lnet/hasnath/android/keyboard/EditingUtil$Range;
    :goto_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v7, v5

    iput v7, v4, Lnet/hasnath/android/keyboard/EditingUtil$Range;->charsBefore:I

    .line 165
    iput v3, v4, Lnet/hasnath/android/keyboard/EditingUtil$Range;->charsAfter:I

    .line 166
    iput-object v6, v4, Lnet/hasnath/android/keyboard/EditingUtil$Range;->word:Ljava/lang/String;

    goto :goto_0

    .line 152
    .end local v2    # "cursor":I
    .end local v3    # "end":I
    .end local v4    # "returnRange":Lnet/hasnath/android/keyboard/EditingUtil$Range;
    .end local v6    # "word":Ljava/lang/String;
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 163
    .restart local v2    # "cursor":I
    .restart local v3    # "end":I
    .restart local v6    # "word":Ljava/lang/String;
    :cond_6
    new-instance v4, Lnet/hasnath/android/keyboard/EditingUtil$Range;

    invoke-direct {v4}, Lnet/hasnath/android/keyboard/EditingUtil$Range;-><init>()V

    goto :goto_2
.end method

.method private static initializeMethodsForReflection()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 278
    :try_start_0
    const-class v0, Landroid/view/inputmethod/InputConnection;

    const-string v1, "getSelectedText"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lnet/hasnath/android/keyboard/EditingUtil;->sMethodGetSelectedText:Ljava/lang/reflect/Method;

    .line 279
    const-class v0, Landroid/view/inputmethod/InputConnection;

    const-string v1, "setComposingRegion"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 280
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 279
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lnet/hasnath/android/keyboard/EditingUtil;->sMethodSetComposingRegion:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    sput-boolean v5, Lnet/hasnath/android/keyboard/EditingUtil;->sMethodsInitialized:Z

    .line 285
    return-void

    .line 281
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static isWhitespace(ILjava/lang/String;)Z
    .locals 1
    .param p0, "code"    # I
    .param p1, "whitespace"    # Ljava/lang/String;

    .prologue
    .line 174
    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isWordBoundary(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 1
    .param p0, "singleChar"    # Ljava/lang/CharSequence;
    .param p1, "wordSeparators"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static underlineWord(Landroid/view/inputmethod/InputConnection;Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;)V
    .locals 4
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "word"    # Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;

    .prologue
    .line 325
    sget-boolean v0, Lnet/hasnath/android/keyboard/EditingUtil;->sMethodsInitialized:Z

    if-nez v0, :cond_0

    .line 326
    invoke-static {}, Lnet/hasnath/android/keyboard/EditingUtil;->initializeMethodsForReflection()V

    .line 328
    :cond_0
    sget-object v0, Lnet/hasnath/android/keyboard/EditingUtil;->sMethodSetComposingRegion:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 330
    :try_start_0
    sget-object v0, Lnet/hasnath/android/keyboard/EditingUtil;->sMethodSetComposingRegion:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->start:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p1, Lnet/hasnath/android/keyboard/EditingUtil$SelectedWord;->end:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :cond_1
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    goto :goto_0

    .line 333
    :catch_1
    move-exception v0

    goto :goto_0

    .line 331
    :catch_2
    move-exception v0

    goto :goto_0
.end method
