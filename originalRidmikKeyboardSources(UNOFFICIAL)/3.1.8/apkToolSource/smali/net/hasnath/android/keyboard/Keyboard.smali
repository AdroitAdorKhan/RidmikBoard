.class public Lnet/hasnath/android/keyboard/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hasnath/android/keyboard/Keyboard$Key;,
        Lnet/hasnath/android/keyboard/Keyboard$Row;
    }
.end annotation


# static fields
.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field public static final EDGE_TOP:I = 0x4

.field private static final GRID_HEIGHT:I = 0x5

.field private static final GRID_SIZE:I = 0x32

.field private static final GRID_WIDTH:I = 0xa

.field public static final KEYCODE_ALT:I = -0x6

.field public static final KEYCODE_CANCEL:I = -0x3

.field public static final KEYCODE_DELETE:I = -0x5

.field public static final KEYCODE_DONE:I = -0x4

.field public static final KEYCODE_MODE_CHANGE:I = -0x2

.field public static final KEYCODE_SHIFT:I = -0x1

.field private static SEARCH_DISTANCE:F = 0.0f

.field static final TAG:Ljava/lang/String; = "Keyboard"

.field private static final TAG_KEY:Ljava/lang/String; = "Key"

.field private static final TAG_KEYBOARD:Ljava/lang/String; = "Keyboard"

.field private static final TAG_ROW:Ljava/lang/String; = "Row"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mDefaultHeight:I

.field private mDefaultHorizontalGap:I

.field private mDefaultVerticalGap:I

.field private mDefaultWidth:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mGridNeighbors:[[I

.field private mKeyHeight:I

.field private mKeyWidth:I

.field private mKeyboardHeightPercentage:I

.field private mKeyboardMode:I

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/hasnath/android/keyboard/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mLabel:Ljava/lang/CharSequence;

.field private mModifierKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/hasnath/android/keyboard/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityThreshold:I

.field private mShiftKeyIndices:[I

.field private mShiftKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

.field private mShifted:Z

.field private mTotalHeight:I

.field private mTotalWidth:I

.field private rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hasnath/android/keyboard/Keyboard$Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    const v0, 0x3fe66666    # 1.8f

    sput v0, Lnet/hasnath/android/keyboard/Keyboard;->SEARCH_DISTANCE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I

    .prologue
    .line 511
    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-direct {p0, p1, p2, v0, v1}, Lnet/hasnath/android/keyboard/Keyboard;-><init>(Landroid/content/Context;III)V

    .line 512
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "modeId"    # I
    .param p4, "keyboardHeightPercentage"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-array v1, v3, [Lnet/hasnath/android/keyboard/Keyboard$Key;

    iput-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mShiftKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 103
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mShiftKeyIndices:[I

    .line 134
    const/16 v1, 0x64

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeyboardHeightPercentage:I

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->rows:Ljava/util/ArrayList;

    .line 545
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 546
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayWidth:I

    .line 547
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayHeight:I

    .line 549
    iput p4, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeyboardHeightPercentage:I

    .line 550
    iput v2, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHorizontalGap:I

    .line 551
    iget v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayWidth:I

    div-int/lit8 v1, v1, 0xa

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultWidth:I

    .line 552
    iput v2, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultVerticalGap:I

    .line 553
    iget v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultWidth:I

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHeight:I

    .line 555
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeys:Ljava/util/List;

    .line 556
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 557
    iput p3, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeyboardMode:I

    .line 558
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lnet/hasnath/android/keyboard/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 559
    return-void

    .line 103
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "modeId"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-array v0, v2, [Lnet/hasnath/android/keyboard/Keyboard$Key;

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mShiftKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 103
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mShiftKeyIndices:[I

    .line 134
    const/16 v0, 0x64

    iput v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeyboardHeightPercentage:I

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->rows:Ljava/util/ArrayList;

    .line 524
    iput p4, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayWidth:I

    .line 525
    iput p5, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayHeight:I

    .line 527
    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHorizontalGap:I

    .line 528
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayWidth:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultWidth:I

    .line 529
    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultVerticalGap:I

    .line 530
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultWidth:I

    iput v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHeight:I

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeys:Ljava/util/List;

    .line 532
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 533
    iput p3, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeyboardMode:I

    .line 534
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/hasnath/android/keyboard/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 535
    return-void

    .line 103
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutTemplateResId"    # I
    .param p3, "characters"    # Ljava/lang/CharSequence;
    .param p4, "columns"    # I
    .param p5, "horizontalPadding"    # I

    .prologue
    .line 577
    invoke-direct {p0, p1, p2}, Lnet/hasnath/android/keyboard/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 578
    const/4 v6, 0x0

    .line 579
    .local v6, "x":I
    const/4 v7, 0x0

    .line 580
    .local v7, "y":I
    const/4 v1, 0x0

    .line 581
    .local v1, "column":I
    const/4 v8, 0x0

    iput v8, p0, Lnet/hasnath/android/keyboard/Keyboard;->mTotalWidth:I

    .line 583
    new-instance v5, Lnet/hasnath/android/keyboard/Keyboard$Row;

    invoke-direct {v5, p0}, Lnet/hasnath/android/keyboard/Keyboard$Row;-><init>(Lnet/hasnath/android/keyboard/Keyboard;)V

    .line 584
    .local v5, "row":Lnet/hasnath/android/keyboard/Keyboard$Row;
    iget v8, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHeight:I

    iput v8, v5, Lnet/hasnath/android/keyboard/Keyboard$Row;->defaultHeight:I

    .line 585
    iget v8, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultWidth:I

    iput v8, v5, Lnet/hasnath/android/keyboard/Keyboard$Row;->defaultWidth:I

    .line 586
    iget v8, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHorizontalGap:I

    iput v8, v5, Lnet/hasnath/android/keyboard/Keyboard$Row;->defaultHorizontalGap:I

    .line 587
    iget v8, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultVerticalGap:I

    iput v8, v5, Lnet/hasnath/android/keyboard/Keyboard$Row;->verticalGap:I

    .line 588
    const/16 v8, 0xc

    iput v8, v5, Lnet/hasnath/android/keyboard/Keyboard$Row;->rowEdgeFlags:I

    .line 589
    const/4 v8, -0x1

    if-ne p4, v8, :cond_0

    const v4, 0x7fffffff

    .line 590
    .local v4, "maxColumns":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lt v2, v8, :cond_1

    .line 611
    iget v8, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHeight:I

    add-int/2addr v8, v7

    iput v8, p0, Lnet/hasnath/android/keyboard/Keyboard;->mTotalHeight:I

    .line 612
    iget-object v8, p0, Lnet/hasnath/android/keyboard/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    return-void

    .end local v2    # "i":I
    .end local v4    # "maxColumns":I
    :cond_0
    move v4, p4

    .line 589
    goto :goto_0

    .line 591
    .restart local v2    # "i":I
    .restart local v4    # "maxColumns":I
    :cond_1
    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 592
    .local v0, "c":C
    if-ge v1, v4, :cond_2

    .line 593
    iget v8, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultWidth:I

    add-int/2addr v8, v6

    add-int/2addr v8, p5

    iget v9, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayWidth:I

    if-le v8, v9, :cond_3

    .line 594
    :cond_2
    const/4 v6, 0x0

    .line 595
    iget v8, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultVerticalGap:I

    iget v9, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHeight:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 596
    const/4 v1, 0x0

    .line 598
    :cond_3
    new-instance v3, Lnet/hasnath/android/keyboard/Keyboard$Key;

    invoke-direct {v3, v5}, Lnet/hasnath/android/keyboard/Keyboard$Key;-><init>(Lnet/hasnath/android/keyboard/Keyboard$Row;)V

    .line 599
    .local v3, "key":Lnet/hasnath/android/keyboard/Keyboard$Key;
    iput v6, v3, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    .line 600
    iput v7, v3, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    .line 601
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lnet/hasnath/android/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 602
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v0, v8, v9

    iput-object v8, v3, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    .line 603
    add-int/lit8 v1, v1, 0x1

    .line 604
    iget v8, v3, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    iget v9, v3, Lnet/hasnath/android/keyboard/Keyboard$Key;->gap:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 605
    iget-object v8, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    iget-object v8, v5, Lnet/hasnath/android/keyboard/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    iget v8, p0, Lnet/hasnath/android/keyboard/Keyboard;->mTotalWidth:I

    if-le v6, v8, :cond_4

    .line 608
    iput v6, p0, Lnet/hasnath/android/keyboard/Keyboard;->mTotalWidth:I

    .line 590
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static synthetic access$0(Lnet/hasnath/android/keyboard/Keyboard;)I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$1(Lnet/hasnath/android/keyboard/Keyboard;)I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method static synthetic access$2(Lnet/hasnath/android/keyboard/Keyboard;)I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$3(Lnet/hasnath/android/keyboard/Keyboard;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method static synthetic access$4(Lnet/hasnath/android/keyboard/Keyboard;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method static synthetic access$5(Lnet/hasnath/android/keyboard/Keyboard;)I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method private computeNearestNeighbors()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 728
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/Keyboard;->getMinWidth()I

    move-result v10

    add-int/lit8 v10, v10, 0xa

    add-int/lit8 v10, v10, -0x1

    div-int/lit8 v10, v10, 0xa

    iput v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellWidth:I

    .line 729
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/Keyboard;->getHeight()I

    move-result v10

    add-int/lit8 v10, v10, 0x5

    add-int/lit8 v10, v10, -0x1

    div-int/lit8 v10, v10, 0x5

    iput v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellHeight:I

    .line 730
    const/16 v10, 0x32

    new-array v10, v10, [[I

    iput-object v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mGridNeighbors:[[I

    .line 731
    iget-object v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v6, v10, [I

    .line 732
    .local v6, "indices":[I
    iget v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellWidth:I

    mul-int/lit8 v4, v10, 0xa

    .line 733
    .local v4, "gridWidth":I
    iget v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellHeight:I

    mul-int/lit8 v3, v10, 0x5

    .line 734
    .local v3, "gridHeight":I
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_0
    if-lt v8, v4, :cond_0

    .line 752
    return-void

    .line 735
    :cond_0
    const/4 v9, 0x0

    .local v9, "y":I
    :goto_1
    if-lt v9, v3, :cond_1

    .line 734
    iget v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellWidth:I

    add-int/2addr v8, v10

    goto :goto_0

    .line 736
    :cond_1
    const/4 v1, 0x0

    .line 737
    .local v1, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lt v5, v10, :cond_2

    .line 747
    new-array v0, v1, [I

    .line 748
    .local v0, "cell":[I
    invoke-static {v6, v13, v0, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 749
    iget-object v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mGridNeighbors:[[I

    iget v11, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellHeight:I

    div-int v11, v9, v11

    mul-int/lit8 v11, v11, 0xa

    iget v12, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellWidth:I

    div-int v12, v8, v12

    add-int/2addr v11, v12

    aput-object v0, v10, v11

    .line 735
    iget v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellHeight:I

    add-int/2addr v9, v10

    goto :goto_1

    .line 738
    .end local v0    # "cell":[I
    :cond_2
    iget-object v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 739
    .local v7, "key":Lnet/hasnath/android/keyboard/Keyboard$Key;
    invoke-virtual {v7, v8, v9}, Lnet/hasnath/android/keyboard/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Lnet/hasnath/android/keyboard/Keyboard;->mProximityThreshold:I

    if-lt v10, v11, :cond_3

    .line 740
    iget v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellWidth:I

    add-int/2addr v10, v8

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v10, v9}, Lnet/hasnath/android/keyboard/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Lnet/hasnath/android/keyboard/Keyboard;->mProximityThreshold:I

    if-lt v10, v11, :cond_3

    .line 741
    iget v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellWidth:I

    add-int/2addr v10, v8

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellHeight:I

    add-int/2addr v11, v9

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7, v10, v11}, Lnet/hasnath/android/keyboard/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    .line 742
    iget v11, p0, Lnet/hasnath/android/keyboard/Keyboard;->mProximityThreshold:I

    if-lt v10, v11, :cond_3

    .line 743
    iget v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellHeight:I

    add-int/2addr v10, v9

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v8, v10}, Lnet/hasnath/android/keyboard/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Lnet/hasnath/android/keyboard/Keyboard;->mProximityThreshold:I

    if-ge v10, v11, :cond_4

    .line 744
    :cond_3
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput v5, v6, v1

    move v1, v2

    .line 737
    .end local v2    # "count":I
    .restart local v1    # "count":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method static getDimensionOrFraction(Landroid/content/res/TypedArray;III)I
    .locals 3
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "defValue"    # I

    .prologue
    .line 888
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 889
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_1

    .line 896
    .end local p3    # "defValue":I
    :cond_0
    :goto_0
    return p3

    .line 890
    .restart local p3    # "defValue":I
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 891
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    goto :goto_0

    .line 892
    :cond_2
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 894
    int-to-float v1, p3

    invoke-virtual {p0, p1, p2, p2, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p3

    goto :goto_0
.end method

.method private loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 782
    const/4 v11, 0x0

    .line 783
    .local v11, "inKey":Z
    const/4 v12, 0x0

    .line 784
    .local v12, "inRow":Z
    const/4 v14, 0x0

    .line 785
    .local v14, "leftMostKey":Z
    const/4 v15, 0x0

    .line 786
    .local v15, "row":I
    const/4 v5, 0x0

    .line 787
    .local v5, "x":I
    const/4 v6, 0x0

    .line 788
    .local v6, "y":I
    const/4 v13, 0x0

    .line 789
    .local v13, "key":Lnet/hasnath/android/keyboard/Keyboard$Key;
    const/4 v4, 0x0

    .line 790
    .local v4, "currentRow":Lnet/hasnath/android/keyboard/Keyboard$Row;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 791
    .local v3, "res":Landroid/content/res/Resources;
    const/16 v16, 0x0

    .line 795
    .local v16, "skipRow":Z
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .local v9, "event":I
    const/4 v2, 0x1

    if-ne v9, v2, :cond_1

    .line 850
    .end local v9    # "event":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultVerticalGap:I

    sub-int v2, v6, v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/hasnath/android/keyboard/Keyboard;->mTotalHeight:I

    .line 851
    return-void

    .line 796
    .restart local v9    # "event":I
    :cond_1
    const/4 v2, 0x2

    if-ne v9, v2, :cond_9

    .line 797
    :try_start_1
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 798
    .local v17, "tag":Ljava/lang/String;
    const-string v2, "Row"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 799
    const/4 v12, 0x1

    .line 800
    const/4 v5, 0x0

    .line 801
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lnet/hasnath/android/keyboard/Keyboard;->createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lnet/hasnath/android/keyboard/Keyboard$Row;

    move-result-object v4

    .line 802
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    iget v2, v4, Lnet/hasnath/android/keyboard/Keyboard$Row;->mode:I

    if-eqz v2, :cond_2

    iget v2, v4, Lnet/hasnath/android/keyboard/Keyboard$Row;->mode:I

    move-object/from16 v0, p0

    iget v7, v0, Lnet/hasnath/android/keyboard/Keyboard;->mKeyboardMode:I

    if-eq v2, v7, :cond_2

    const/16 v16, 0x1

    .line 804
    :goto_2
    if-eqz v16, :cond_0

    .line 805
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lnet/hasnath/android/keyboard/Keyboard;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V

    .line 806
    const/4 v12, 0x0

    .line 808
    goto :goto_0

    .line 803
    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    .line 808
    :cond_3
    const-string v2, "Key"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 809
    const/4 v11, 0x1

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    .line 810
    invoke-virtual/range {v2 .. v7}, Lnet/hasnath/android/keyboard/Keyboard;->createKeyFromXml(Landroid/content/res/Resources;Lnet/hasnath/android/keyboard/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-result-object v13

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    iget-object v2, v13, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    const/4 v7, 0x0

    aget v2, v2, v7

    const/4 v7, -0x1

    if-ne v2, v7, :cond_7

    .line 814
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard;->mShiftKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    array-length v2, v2

    if-lt v10, v2, :cond_5

    .line 821
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    .end local v10    # "i":I
    :cond_4
    :goto_5
    iget-object v2, v4, Lnet/hasnath/android/keyboard/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 846
    .end local v9    # "event":I
    .end local v17    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 847
    .local v8, "e":Ljava/lang/Exception;
    const-string v2, "Keyboard"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v18, "Parse error:"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 815
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v9    # "event":I
    .restart local v10    # "i":I
    .restart local v17    # "tag":Ljava/lang/String;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard;->mShiftKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    aget-object v2, v2, v10

    if-nez v2, :cond_6

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard;->mShiftKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    aput-object v13, v2, v10

    .line 817
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard;->mShiftKeyIndices:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/hasnath/android/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    aput v7, v2, v10

    goto :goto_4

    .line 814
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 822
    .end local v10    # "i":I
    :cond_7
    iget-object v2, v13, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    const/4 v7, 0x0

    aget v2, v2, v7

    const/4 v7, -0x6

    if-ne v2, v7, :cond_4

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 826
    :cond_8
    const-string v2, "Keyboard"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 827
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lnet/hasnath/android/keyboard/Keyboard;->parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto/16 :goto_0

    .line 829
    .end local v17    # "tag":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x3

    if-ne v9, v2, :cond_0

    .line 830
    if-eqz v11, :cond_a

    .line 831
    const/4 v11, 0x0

    .line 832
    iget v2, v13, Lnet/hasnath/android/keyboard/Keyboard$Key;->gap:I

    iget v7, v13, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    add-int/2addr v2, v7

    add-int/2addr v5, v2

    .line 833
    move-object/from16 v0, p0

    iget v2, v0, Lnet/hasnath/android/keyboard/Keyboard;->mTotalWidth:I

    if-le v5, v2, :cond_0

    .line 834
    move-object/from16 v0, p0

    iput v5, v0, Lnet/hasnath/android/keyboard/Keyboard;->mTotalWidth:I

    goto/16 :goto_0

    .line 836
    :cond_a
    if-eqz v12, :cond_0

    .line 837
    const/4 v12, 0x0

    .line 838
    iget v2, v4, Lnet/hasnath/android/keyboard/Keyboard$Row;->verticalGap:I

    add-int/2addr v6, v2

    .line 839
    iget v2, v4, Lnet/hasnath/android/keyboard/Keyboard$Row;->defaultHeight:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/2addr v6, v2

    .line 840
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0
.end method

.method private parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    const/4 v4, 0x0

    .line 865
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 866
    sget-object v2, Lnet/hasnath/android/keyboard/R$styleable;->Keyboard:[I

    .line 865
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 870
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayWidth:I

    iget v2, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayWidth:I

    div-int/lit8 v2, v2, 0xa

    .line 868
    invoke-static {v0, v4, v1, v2}, Lnet/hasnath/android/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultWidth:I

    .line 872
    const/4 v1, 0x1

    .line 873
    iget v2, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayHeight:I

    const/16 v3, 0x32

    .line 871
    invoke-static {v0, v1, v2, v3}, Lnet/hasnath/android/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHeight:I

    .line 875
    iget v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHeight:I

    iget v2, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeyboardHeightPercentage:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHeight:I

    .line 877
    const/4 v1, 0x2

    .line 878
    iget v2, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayWidth:I

    .line 876
    invoke-static {v0, v1, v2, v4}, Lnet/hasnath/android/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHorizontalGap:I

    .line 880
    const/4 v1, 0x3

    .line 881
    iget v2, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayHeight:I

    .line 879
    invoke-static {v0, v1, v2, v4}, Lnet/hasnath/android/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultVerticalGap:I

    .line 882
    iget v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultWidth:I

    int-to-float v1, v1

    sget v2, Lnet/hasnath/android/keyboard/Keyboard;->SEARCH_DISTANCE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mProximityThreshold:I

    .line 883
    iget v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mProximityThreshold:I

    iget v2, p0, Lnet/hasnath/android/keyboard/Keyboard;->mProximityThreshold:I

    mul-int/2addr v1, v2

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mProximityThreshold:I

    .line 884
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 885
    return-void
.end method

.method private skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    .locals 3
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 856
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .local v0, "event":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 862
    :goto_0
    return-void

    .line 857
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 858
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Row"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Lnet/hasnath/android/keyboard/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Lnet/hasnath/android/keyboard/Keyboard$Key;
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Lnet/hasnath/android/keyboard/Keyboard$Row;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 778
    new-instance v0, Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lnet/hasnath/android/keyboard/Keyboard$Key;-><init>(Landroid/content/res/Resources;Lnet/hasnath/android/keyboard/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method protected createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lnet/hasnath/android/keyboard/Keyboard$Row;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 773
    new-instance v0, Lnet/hasnath/android/keyboard/Keyboard$Row;

    invoke-direct {v0, p1, p0, p2}, Lnet/hasnath/android/keyboard/Keyboard$Row;-><init>(Landroid/content/res/Resources;Lnet/hasnath/android/keyboard/Keyboard;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 691
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mTotalHeight:I

    return v0
.end method

.method protected getHorizontalGap()I
    .locals 1

    .prologue
    .line 655
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method protected getKeyHeight()I
    .locals 1

    .prologue
    .line 671
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method protected getKeyWidth()I
    .locals 1

    .prologue
    .line 679
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/hasnath/android/keyboard/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public getMinWidth()I
    .locals 1

    .prologue
    .line 695
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mTotalWidth:I

    return v0
.end method

.method public getModifierKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/hasnath/android/keyboard/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 651
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mModifierKeys:Ljava/util/List;

    return-object v0
.end method

.method public getNearestKeys(II)[I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 762
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mGridNeighbors:[[I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lnet/hasnath/android/keyboard/Keyboard;->computeNearestNeighbors()V

    .line 763
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/Keyboard;->getMinWidth()I

    move-result v1

    if-ge p1, v1, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/Keyboard;->getHeight()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 764
    iget v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellHeight:I

    div-int v1, p2, v1

    mul-int/lit8 v1, v1, 0xa

    iget v2, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellWidth:I

    div-int v2, p1, v2

    add-int v0, v1, v2

    .line 765
    .local v0, "index":I
    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 766
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mGridNeighbors:[[I

    aget-object v1, v1, v0

    .line 769
    .end local v0    # "index":I
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public getShiftKeyIndex()I
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mShiftKeyIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getShiftKeyIndices()[I
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mShiftKeyIndices:[I

    return-object v0
.end method

.method protected getVerticalGap()I
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 712
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mShifted:Z

    return v0
.end method

.method final resize(II)V
    .locals 12
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    .line 616
    iget-object v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 617
    .local v3, "numRows":I
    const/4 v5, 0x0

    .local v5, "rowIndex":I
    :goto_0
    if-lt v5, v3, :cond_0

    .line 640
    iput p1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mTotalWidth:I

    .line 644
    return-void

    .line 618
    :cond_0
    iget-object v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/hasnath/android/keyboard/Keyboard$Row;

    .line 619
    .local v4, "row":Lnet/hasnath/android/keyboard/Keyboard$Row;
    iget-object v10, v4, Lnet/hasnath/android/keyboard/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 620
    .local v2, "numKeys":I
    const/4 v7, 0x0

    .line 621
    .local v7, "totalGap":I
    const/4 v8, 0x0

    .line 622
    .local v8, "totalWidth":I
    const/4 v1, 0x0

    .local v1, "keyIndex":I
    :goto_1
    if-lt v1, v2, :cond_2

    .line 629
    add-int v10, v7, v8

    if-le v10, p1, :cond_1

    .line 630
    const/4 v9, 0x0

    .line 631
    .local v9, "x":I
    sub-int v10, p1, v7

    int-to-float v10, v10

    int-to-float v11, v8

    div-float v6, v10, v11

    .line 632
    .local v6, "scaleFactor":F
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v2, :cond_4

    .line 617
    .end local v6    # "scaleFactor":F
    .end local v9    # "x":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 623
    :cond_2
    iget-object v10, v4, Lnet/hasnath/android/keyboard/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 624
    .local v0, "key":Lnet/hasnath/android/keyboard/Keyboard$Key;
    if-lez v1, :cond_3

    .line 625
    iget v10, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->gap:I

    add-int/2addr v7, v10

    .line 627
    :cond_3
    iget v10, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    add-int/2addr v8, v10

    .line 622
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 633
    .end local v0    # "key":Lnet/hasnath/android/keyboard/Keyboard$Key;
    .restart local v6    # "scaleFactor":F
    .restart local v9    # "x":I
    :cond_4
    iget-object v10, v4, Lnet/hasnath/android/keyboard/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 634
    .restart local v0    # "key":Lnet/hasnath/android/keyboard/Keyboard$Key;
    iget v10, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    float-to-int v10, v10

    iput v10, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    .line 635
    iput v9, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    .line 636
    iget v10, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    iget v11, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->gap:I

    add-int/2addr v10, v11

    add-int/2addr v9, v10

    .line 632
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method protected setHorizontalGap(I)V
    .locals 0
    .param p1, "gap"    # I

    .prologue
    .line 659
    iput p1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHorizontalGap:I

    .line 660
    return-void
.end method

.method protected setKeyHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 675
    iput p1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHeight:I

    .line 676
    return-void
.end method

.method protected setKeyWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 683
    iput p1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultWidth:I

    .line 684
    return-void
.end method

.method public setShifted(Z)Z
    .locals 5
    .param p1, "shiftState"    # Z

    .prologue
    const/4 v1, 0x0

    .line 699
    iget-object v3, p0, Lnet/hasnath/android/keyboard/Keyboard;->mShiftKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_1

    .line 704
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/Keyboard;->mShifted:Z

    if-eq v2, p1, :cond_0

    .line 705
    iput-boolean p1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mShifted:Z

    .line 706
    const/4 v1, 0x1

    .line 708
    :cond_0
    return v1

    .line 699
    :cond_1
    aget-object v0, v3, v2

    .line 700
    .local v0, "shiftKey":Lnet/hasnath/android/keyboard/Keyboard$Key;
    if-eqz v0, :cond_2

    .line 701
    iput-boolean p1, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->on:Z

    .line 699
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected setVerticalGap(I)V
    .locals 0
    .param p1, "gap"    # I

    .prologue
    .line 667
    iput p1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultVerticalGap:I

    .line 668
    return-void
.end method
