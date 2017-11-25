.class public Lnet/hasnath/android/keyboard/Keyboard$Key;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field private static final KEY_STATE_NORMAL:[I

.field private static final KEY_STATE_NORMAL_OFF:[I

.field private static final KEY_STATE_NORMAL_ON:[I

.field private static final KEY_STATE_PRESSED:[I

.field private static final KEY_STATE_PRESSED_OFF:[I

.field private static final KEY_STATE_PRESSED_ON:[I


# instance fields
.field public codes:[I

.field public edgeFlags:I

.field public gap:I

.field public height:I

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconPreview:Landroid/graphics/drawable/Drawable;

.field private keyboard:Lnet/hasnath/android/keyboard/Keyboard;

.field public label:Ljava/lang/CharSequence;

.field public modifier:Z

.field public on:Z

.field public popupCharacters:Ljava/lang/CharSequence;

.field public popupResId:I

.field public pressed:Z

.field public repeatable:Z

.field public sticky:Z

.field public text:Ljava/lang/CharSequence;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 289
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    .line 294
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    .line 300
    new-array v0, v3, [I

    .line 301
    const v1, 0x101009f

    aput v1, v0, v2

    .line 300
    sput-object v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    .line 304
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    .line 309
    new-array v0, v2, [I

    sput-object v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->KEY_STATE_NORMAL:[I

    .line 312
    new-array v0, v3, [I

    .line 313
    const v1, 0x10100a7

    aput v1, v0, v2

    .line 312
    sput-object v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->KEY_STATE_PRESSED:[I

    .line 314
    return-void

    .line 289
    :array_0
    .array-data 4
        0x101009f
        0x10100a0
    .end array-data

    .line 294
    :array_1
    .array-data 4
        0x10100a7
        0x101009f
        0x10100a0
    .end array-data

    .line 304
    :array_2
    .array-data 4
        0x10100a7
        0x101009f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lnet/hasnath/android/keyboard/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Lnet/hasnath/android/keyboard/Keyboard$Row;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 335
    invoke-direct {p0, p2}, Lnet/hasnath/android/keyboard/Keyboard$Key;-><init>(Lnet/hasnath/android/keyboard/Keyboard$Row;)V

    .line 337
    iput p3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    .line 338
    iput p4, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    .line 340
    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 341
    sget-object v4, Lridmik/keyboard/R$styleable;->Keyboard:[I

    .line 340
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 345
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->keyboard:Lnet/hasnath/android/keyboard/Keyboard;

    invoke-static {v3}, Lnet/hasnath/android/keyboard/Keyboard;->access$0(Lnet/hasnath/android/keyboard/Keyboard;)I

    move-result v3

    iget v4, p2, Lnet/hasnath/android/keyboard/Keyboard$Row;->defaultWidth:I

    .line 343
    invoke-static {v0, v6, v3, v4}, Lnet/hasnath/android/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v3

    iput v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    .line 348
    iget-object v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->keyboard:Lnet/hasnath/android/keyboard/Keyboard;

    invoke-static {v3}, Lnet/hasnath/android/keyboard/Keyboard;->access$2(Lnet/hasnath/android/keyboard/Keyboard;)I

    move-result v3

    iget v4, p2, Lnet/hasnath/android/keyboard/Keyboard$Row;->defaultHeight:I

    .line 346
    invoke-static {v0, v7, v3, v4}, Lnet/hasnath/android/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v3

    iput v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->height:I

    .line 351
    iget-object v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->keyboard:Lnet/hasnath/android/keyboard/Keyboard;

    invoke-static {v3}, Lnet/hasnath/android/keyboard/Keyboard;->access$0(Lnet/hasnath/android/keyboard/Keyboard;)I

    move-result v3

    iget v4, p2, Lnet/hasnath/android/keyboard/Keyboard$Row;->defaultHorizontalGap:I

    .line 349
    invoke-static {v0, v8, v3, v4}, Lnet/hasnath/android/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v3

    iput v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->gap:I

    .line 352
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 353
    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 354
    sget-object v4, Lridmik/keyboard/R$styleable;->Keyboard_Key:[I

    .line 353
    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 355
    iget v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    iget v4, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->gap:I

    add-int/2addr v3, v4

    iput v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    .line 356
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 357
    .local v1, "codesValue":Landroid/util/TypedValue;
    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 359
    iget v3, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-eq v3, v4, :cond_0

    .line 360
    iget v3, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x11

    if-ne v3, v4, :cond_6

    .line 361
    :cond_0
    new-array v3, v7, [I

    iget v4, v1, Landroid/util/TypedValue;->data:I

    aput v4, v3, v6

    iput-object v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    .line 366
    :cond_1
    :goto_0
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 367
    iget-object v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 368
    iget-object v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 369
    iget-object v5, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 368
    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 371
    :cond_2
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 373
    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupResId:I

    .line 376
    const/16 v3, 0x8

    .line 375
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->repeatable:Z

    .line 378
    const/4 v3, 0x5

    .line 377
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->modifier:Z

    .line 380
    const/4 v3, 0x6

    .line 379
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->sticky:Z

    .line 381
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->edgeFlags:I

    .line 382
    iget v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->edgeFlags:I

    iget v4, p2, Lnet/hasnath/android/keyboard/Keyboard$Row;->rowEdgeFlags:I

    or-int/2addr v3, v4

    iput v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->edgeFlags:I

    .line 384
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 385
    iget-object v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 386
    iget-object v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 390
    :cond_3
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 391
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 394
    iget-object v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    if-nez v3, :cond_4

    iget-object v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 395
    new-array v3, v7, [I

    iget-object v4, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    aput v4, v3, v6

    iput-object v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    .line 409
    :cond_4
    iget-object v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    if-eqz v3, :cond_5

    iget-object v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    aget v3, v3, v6

    const/16 v4, 0x2328

    if-le v3, v4, :cond_5

    .line 410
    iget-object v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    aget v3, v3, v6

    invoke-virtual {p0, v3}, Lnet/hasnath/android/keyboard/Keyboard$Key;->getEmijoByUnicode(I)Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, "ll":Ljava/lang/String;
    iput-object v2, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 412
    iput-object v2, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 415
    .end local v2    # "ll":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 416
    return-void

    .line 362
    :cond_6
    iget v3, v1, Landroid/util/TypedValue;->type:I

    if-ne v3, v9, :cond_1

    .line 363
    iget-object v3, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lnet/hasnath/android/keyboard/Keyboard$Key;->parseCSV(Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    goto/16 :goto_0
.end method

.method public constructor <init>(Lnet/hasnath/android/keyboard/Keyboard$Row;)V
    .locals 1
    .param p1, "parent"    # Lnet/hasnath/android/keyboard/Keyboard$Row;

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    invoke-static {p1}, Lnet/hasnath/android/keyboard/Keyboard$Row;->access$0(Lnet/hasnath/android/keyboard/Keyboard$Row;)Lnet/hasnath/android/keyboard/Keyboard;

    move-result-object v0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->keyboard:Lnet/hasnath/android/keyboard/Keyboard;

    .line 319
    iget v0, p1, Lnet/hasnath/android/keyboard/Keyboard$Row;->defaultHeight:I

    iput v0, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->height:I

    .line 320
    iget v0, p1, Lnet/hasnath/android/keyboard/Keyboard$Row;->defaultWidth:I

    iput v0, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    .line 321
    iget v0, p1, Lnet/hasnath/android/keyboard/Keyboard$Row;->defaultHorizontalGap:I

    iput v0, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->gap:I

    .line 322
    iget v0, p1, Lnet/hasnath/android/keyboard/Keyboard$Row;->rowEdgeFlags:I

    iput v0, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->edgeFlags:I

    .line 323
    return-void
.end method


# virtual methods
.method public getCurrentDrawableState()[I
    .locals 2

    .prologue
    .line 507
    sget-object v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->KEY_STATE_NORMAL:[I

    .line 509
    .local v0, "states":[I
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->on:Z

    if-eqz v1, :cond_2

    .line 510
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_1

    .line 511
    sget-object v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    .line 528
    :cond_0
    :goto_0
    return-object v0

    .line 513
    :cond_1
    sget-object v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    .line 515
    goto :goto_0

    .line 516
    :cond_2
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->sticky:Z

    if-eqz v1, :cond_4

    .line 517
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_3

    .line 518
    sget-object v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    .line 519
    goto :goto_0

    .line 520
    :cond_3
    sget-object v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    .line 522
    goto :goto_0

    .line 523
    :cond_4
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_0

    .line 524
    sget-object v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->KEY_STATE_PRESSED:[I

    goto :goto_0
.end method

.method public getEmijoByUnicode(I)Ljava/lang/String;
    .locals 2
    .param p1, "unicode"    # I

    .prologue
    .line 424
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public isInside(II)Z
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 475
    iget v6, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x1

    if-lez v6, :cond_4

    move v1, v4

    .line 476
    .local v1, "leftEdge":Z
    :goto_0
    iget v6, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x2

    if-lez v6, :cond_5

    move v2, v4

    .line 477
    .local v2, "rightEdge":Z
    :goto_1
    iget v6, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x4

    if-lez v6, :cond_6

    move v3, v4

    .line 478
    .local v3, "topEdge":Z
    :goto_2
    iget v6, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v6, v6, 0x8

    if-lez v6, :cond_7

    move v0, v4

    .line 479
    .local v0, "bottomEdge":Z
    :goto_3
    iget v6, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    if-ge p1, v6, :cond_0

    if-eqz v1, :cond_8

    iget v6, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    iget v7, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    add-int/2addr v6, v7

    if-gt p1, v6, :cond_8

    .line 480
    :cond_0
    iget v6, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    iget v7, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    add-int/2addr v6, v7

    if-lt p1, v6, :cond_1

    if-eqz v2, :cond_8

    iget v6, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    if-lt p1, v6, :cond_8

    .line 481
    :cond_1
    iget v6, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    if-ge p2, v6, :cond_2

    if-eqz v3, :cond_8

    iget v6, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    iget v7, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->height:I

    add-int/2addr v6, v7

    if-gt p2, v6, :cond_8

    .line 482
    :cond_2
    iget v6, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    iget v7, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->height:I

    add-int/2addr v6, v7

    if-lt p2, v6, :cond_3

    if-eqz v0, :cond_8

    iget v6, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    if-lt p2, v6, :cond_8

    .line 485
    :cond_3
    :goto_4
    return v4

    .end local v0    # "bottomEdge":Z
    .end local v1    # "leftEdge":Z
    .end local v2    # "rightEdge":Z
    .end local v3    # "topEdge":Z
    :cond_4
    move v1, v5

    .line 475
    goto :goto_0

    .restart local v1    # "leftEdge":Z
    :cond_5
    move v2, v5

    .line 476
    goto :goto_1

    .restart local v2    # "rightEdge":Z
    :cond_6
    move v3, v5

    .line 477
    goto :goto_2

    .restart local v3    # "topEdge":Z
    :cond_7
    move v0, v5

    .line 478
    goto :goto_3

    .restart local v0    # "bottomEdge":Z
    :cond_8
    move v4, v5

    .line 485
    goto :goto_4
.end method

.method public onPressed()V
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->pressed:Z

    .line 429
    return-void

    .line 428
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onReleased(Z)V
    .locals 3
    .param p1, "inside"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 438
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->pressed:Z

    .line 439
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->sticky:Z

    if-eqz v0, :cond_0

    .line 440
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->on:Z

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->on:Z

    .line 442
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 438
    goto :goto_0

    :cond_2
    move v1, v2

    .line 440
    goto :goto_1
.end method

.method parseCSV(Ljava/lang/String;)[I
    .locals 9
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, "count":I
    const/4 v2, 0x0

    .line 447
    .local v2, "lastIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 448
    add-int/lit8 v0, v0, 0x1

    .line 449
    :goto_0
    const-string v6, ","

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gtz v2, :cond_1

    .line 453
    :cond_0
    new-array v5, v0, [I

    .line 454
    .local v5, "values":[I
    const/4 v0, 0x0

    .line 455
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v4, p1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    .local v4, "st":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_2

    .line 463
    return-object v5

    .line 450
    .end local v4    # "st":Ljava/util/StringTokenizer;
    .end local v5    # "values":[I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    .restart local v4    # "st":Ljava/util/StringTokenizer;
    .restart local v5    # "values":[I
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "count":I
    .local v1, "count":I
    :try_start_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 459
    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1

    .end local v0    # "count":I
    .restart local v1    # "count":I
    :catch_0
    move-exception v3

    .line 460
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    const-string v6, "Keyboard"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error parsing keycodes "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_1
.end method

.method public squaredDistanceFrom(II)I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 496
    iget v2, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    iget v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v0, v2, p1

    .line 497
    .local v0, "xDist":I
    iget v2, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    iget v3, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->height:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v1, v2, p2

    .line 498
    .local v1, "yDist":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    return v2
.end method
