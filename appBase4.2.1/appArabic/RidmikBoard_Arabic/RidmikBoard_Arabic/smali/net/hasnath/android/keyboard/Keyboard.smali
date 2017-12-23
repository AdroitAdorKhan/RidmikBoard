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
.field public isEmoji:Z

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
    .line 147
    const v0, 0x3fe66666    # 1.8f

    sput v0, Lnet/hasnath/android/keyboard/Keyboard;->SEARCH_DISTANCE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I

    .prologue
    .line 538
    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-direct {p0, p1, p2, v0, v1}, Lnet/hasnath/android/keyboard/Keyboard;-><init>(Landroid/content/Context;III)V

    .line 539
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

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-array v1, v3, [Lnet/hasnath/android/keyboard/Keyboard$Key;

    iput-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mShiftKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 104
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mShiftKeyIndices:[I

    .line 135
    const/16 v1, 0x64

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeyboardHeightPercentage:I

    .line 149
    iput-boolean v2, p0, Lnet/hasnath/android/keyboard/Keyboard;->isEmoji:Z

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->rows:Ljava/util/ArrayList;

    .line 572
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 573
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayWidth:I

    .line 574
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayHeight:I

    .line 576
    iput p4, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeyboardHeightPercentage:I

    .line 577
    iput v2, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHorizontalGap:I

    .line 578
    iget v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayWidth:I

    div-int/lit8 v1, v1, 0xa

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultWidth:I

    .line 579
    iput v2, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultVerticalGap:I

    .line 580
    iget v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultWidth:I

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHeight:I

    .line 582
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeys:Ljava/util/List;

    .line 583
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 584
    iput p3, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeyboardMode:I

    .line 585
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lnet/hasnath/android/keyboard/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 586
    return-void

    .line 104
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

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-array v0, v2, [Lnet/hasnath/android/keyboard/Keyboard$Key;

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mShiftKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 104
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mShiftKeyIndices:[I

    .line 135
    const/16 v0, 0x64

    iput v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeyboardHeightPercentage:I

    .line 149
    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->isEmoji:Z

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->rows:Ljava/util/ArrayList;

    .line 551
    iput p4, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayWidth:I

    .line 552
    iput p5, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayHeight:I

    .line 554
    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHorizontalGap:I

    .line 555
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayWidth:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultWidth:I

    .line 556
    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultVerticalGap:I

    .line 557
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultWidth:I

    iput v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHeight:I

    .line 558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeys:Ljava/util/List;

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 560
    iput p3, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeyboardMode:I

    .line 561
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/hasnath/android/keyboard/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 562
    return-void

    .line 104
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
    .line 604
    invoke-direct {p0, p1, p2}, Lnet/hasnath/android/keyboard/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 605
    const/4 v6, 0x0

    .line 606
    .local v6, "x":I
    const/4 v7, 0x0

    .line 607
    .local v7, "y":I
    const/4 v1, 0x0

    .line 608
    .local v1, "column":I
    const/4 v8, 0x0

    iput v8, p0, Lnet/hasnath/android/keyboard/Keyboard;->mTotalWidth:I

    .line 610
    new-instance v5, Lnet/hasnath/android/keyboard/Keyboard$Row;

    invoke-direct {v5, p0}, Lnet/hasnath/android/keyboard/Keyboard$Row;-><init>(Lnet/hasnath/android/keyboard/Keyboard;)V

    .line 611
    .local v5, "row":Lnet/hasnath/android/keyboard/Keyboard$Row;
    iget v8, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHeight:I

    iput v8, v5, Lnet/hasnath/android/keyboard/Keyboard$Row;->defaultHeight:I

    .line 612
    iget v8, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultWidth:I

    iput v8, v5, Lnet/hasnath/android/keyboard/Keyboard$Row;->defaultWidth:I

    .line 613
    iget v8, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHorizontalGap:I

    iput v8, v5, Lnet/hasnath/android/keyboard/Keyboard$Row;->defaultHorizontalGap:I

    .line 614
    iget v8, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultVerticalGap:I

    iput v8, v5, Lnet/hasnath/android/keyboard/Keyboard$Row;->verticalGap:I

    .line 615
    const/16 v8, 0xc

    iput v8, v5, Lnet/hasnath/android/keyboard/Keyboard$Row;->rowEdgeFlags:I

    .line 616
    const/4 v8, -0x1

    if-ne p4, v8, :cond_0

    const v4, 0x7fffffff

    .line 617
    .local v4, "maxColumns":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lt v2, v8, :cond_1

    .line 638
    iget v8, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHeight:I

    add-int/2addr v8, v7

    iput v8, p0, Lnet/hasnath/android/keyboard/Keyboard;->mTotalHeight:I

    .line 639
    iget-object v8, p0, Lnet/hasnath/android/keyboard/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    return-void

    .end local v2    # "i":I
    .end local v4    # "maxColumns":I
    :cond_0
    move v4, p4

    .line 616
    goto :goto_0

    .line 618
    .restart local v2    # "i":I
    .restart local v4    # "maxColumns":I
    :cond_1
    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 619
    .local v0, "c":C
    if-ge v1, v4, :cond_2

    .line 620
    iget v8, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultWidth:I

    add-int/2addr v8, v6

    add-int/2addr v8, p5

    iget v9, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayWidth:I

    if-le v8, v9, :cond_3

    .line 621
    :cond_2
    const/4 v6, 0x0

    .line 622
    iget v8, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultVerticalGap:I

    iget v9, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHeight:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 623
    const/4 v1, 0x0

    .line 625
    :cond_3
    new-instance v3, Lnet/hasnath/android/keyboard/Keyboard$Key;

    invoke-direct {v3, v5}, Lnet/hasnath/android/keyboard/Keyboard$Key;-><init>(Lnet/hasnath/android/keyboard/Keyboard$Row;)V

    .line 626
    .local v3, "key":Lnet/hasnath/android/keyboard/Keyboard$Key;
    iput v6, v3, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    .line 627
    iput v7, v3, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    .line 628
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lnet/hasnath/android/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 629
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v0, v8, v9

    iput-object v8, v3, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    .line 630
    add-int/lit8 v1, v1, 0x1

    .line 631
    iget v8, v3, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    iget v9, v3, Lnet/hasnath/android/keyboard/Keyboard$Key;->gap:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 632
    iget-object v8, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    iget-object v8, v5, Lnet/hasnath/android/keyboard/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    iget v8, p0, Lnet/hasnath/android/keyboard/Keyboard;->mTotalWidth:I

    if-le v6, v8, :cond_4

    .line 635
    iput v6, p0, Lnet/hasnath/android/keyboard/Keyboard;->mTotalWidth:I

    .line 617
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static synthetic access$0(Lnet/hasnath/android/keyboard/Keyboard;)I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$1(Lnet/hasnath/android/keyboard/Keyboard;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method static synthetic access$2(Lnet/hasnath/android/keyboard/Keyboard;)I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$3(Lnet/hasnath/android/keyboard/Keyboard;)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method static synthetic access$4(Lnet/hasnath/android/keyboard/Keyboard;)I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method static synthetic access$5(Lnet/hasnath/android/keyboard/Keyboard;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method private computeNearestNeighbors()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 755
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/Keyboard;->getMinWidth()I

    move-result v10

    add-int/lit8 v10, v10, 0xa

    add-int/lit8 v10, v10, -0x1

    div-int/lit8 v10, v10, 0xa

    iput v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellWidth:I

    .line 756
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/Keyboard;->getHeight()I

    move-result v10

    add-int/lit8 v10, v10, 0x5

    add-int/lit8 v10, v10, -0x1

    div-int/lit8 v10, v10, 0x5

    iput v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellHeight:I

    .line 757
    const/16 v10, 0x32

    new-array v10, v10, [[I

    iput-object v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mGridNeighbors:[[I

    .line 758
    iget-object v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v6, v10, [I

    .line 759
    .local v6, "indices":[I
    iget v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellWidth:I

    mul-int/lit8 v4, v10, 0xa

    .line 760
    .local v4, "gridWidth":I
    iget v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellHeight:I

    mul-int/lit8 v3, v10, 0x5

    .line 761
    .local v3, "gridHeight":I
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_0
    if-lt v8, v4, :cond_0

    .line 779
    return-void

    .line 762
    :cond_0
    const/4 v9, 0x0

    .local v9, "y":I
    :goto_1
    if-lt v9, v3, :cond_1

    .line 761
    iget v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellWidth:I

    add-int/2addr v8, v10

    goto :goto_0

    .line 763
    :cond_1
    const/4 v1, 0x0

    .line 764
    .local v1, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lt v5, v10, :cond_2

    .line 774
    new-array v0, v1, [I

    .line 775
    .local v0, "cell":[I
    invoke-static {v6, v13, v0, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 776
    iget-object v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mGridNeighbors:[[I

    iget v11, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellHeight:I

    div-int v11, v9, v11

    mul-int/lit8 v11, v11, 0xa

    iget v12, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellWidth:I

    div-int v12, v8, v12

    add-int/2addr v11, v12

    aput-object v0, v10, v11

    .line 762
    iget v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellHeight:I

    add-int/2addr v9, v10

    goto :goto_1

    .line 765
    .end local v0    # "cell":[I
    :cond_2
    iget-object v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 766
    .local v7, "key":Lnet/hasnath/android/keyboard/Keyboard$Key;
    invoke-virtual {v7, v8, v9}, Lnet/hasnath/android/keyboard/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Lnet/hasnath/android/keyboard/Keyboard;->mProximityThreshold:I

    if-lt v10, v11, :cond_3

    .line 767
    iget v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellWidth:I

    add-int/2addr v10, v8

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v10, v9}, Lnet/hasnath/android/keyboard/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Lnet/hasnath/android/keyboard/Keyboard;->mProximityThreshold:I

    if-lt v10, v11, :cond_3

    .line 768
    iget v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellWidth:I

    add-int/2addr v10, v8

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellHeight:I

    add-int/2addr v11, v9

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7, v10, v11}, Lnet/hasnath/android/keyboard/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    .line 769
    iget v11, p0, Lnet/hasnath/android/keyboard/Keyboard;->mProximityThreshold:I

    if-lt v10, v11, :cond_3

    .line 770
    iget v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellHeight:I

    add-int/2addr v10, v9

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v8, v10}, Lnet/hasnath/android/keyboard/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v10

    iget v11, p0, Lnet/hasnath/android/keyboard/Keyboard;->mProximityThreshold:I

    if-ge v10, v11, :cond_4

    .line 771
    :cond_3
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput v5, v6, v1

    move v1, v2

    .line 764
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
    .line 918
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 919
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_1

    .line 926
    .end local p3    # "defValue":I
    :cond_0
    :goto_0
    return p3

    .line 920
    .restart local p3    # "defValue":I
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 921
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    goto :goto_0

    .line 922
    :cond_2
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 924
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
    .line 809
    const/4 v11, 0x0

    .line 810
    .local v11, "inKey":Z
    const/4 v12, 0x0

    .line 811
    .local v12, "inRow":Z
    const/4 v14, 0x0

    .line 812
    .local v14, "leftMostKey":Z
    const/4 v15, 0x0

    .line 813
    .local v15, "row":I
    const/4 v5, 0x0

    .line 814
    .local v5, "x":I
    const/4 v6, 0x0

    .line 815
    .local v6, "y":I
    const/4 v13, 0x0

    .line 816
    .local v13, "key":Lnet/hasnath/android/keyboard/Keyboard$Key;
    const/4 v4, 0x0

    .line 817
    .local v4, "currentRow":Lnet/hasnath/android/keyboard/Keyboard$Row;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 818
    .local v3, "res":Landroid/content/res/Resources;
    const/16 v16, 0x0

    .line 822
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

    .line 880
    .end local v9    # "event":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultVerticalGap:I

    sub-int v2, v6, v2

    move-object/from16 v0, p0

    iput v2, v0, Lnet/hasnath/android/keyboard/Keyboard;->mTotalHeight:I

    .line 881
    return-void

    .line 823
    .restart local v9    # "event":I
    :cond_1
    const/4 v2, 0x2

    if-ne v9, v2, :cond_a

    .line 824
    :try_start_1
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 825
    .local v17, "tag":Ljava/lang/String;
    const-string v2, "Row"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 826
    const/4 v12, 0x1

    .line 827
    const/4 v5, 0x0

    .line 828
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lnet/hasnath/android/keyboard/Keyboard;->createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lnet/hasnath/android/keyboard/Keyboard$Row;

    move-result-object v4

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    iget v2, v4, Lnet/hasnath/android/keyboard/Keyboard$Row;->mode:I

    if-eqz v2, :cond_2

    iget v2, v4, Lnet/hasnath/android/keyboard/Keyboard$Row;->mode:I

    move-object/from16 v0, p0

    iget v7, v0, Lnet/hasnath/android/keyboard/Keyboard;->mKeyboardMode:I

    if-eq v2, v7, :cond_2

    const/16 v16, 0x1

    .line 831
    :goto_2
    if-eqz v16, :cond_0

    .line 832
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lnet/hasnath/android/keyboard/Keyboard;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V

    .line 833
    const/4 v12, 0x0

    .line 835
    goto :goto_0

    .line 830
    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    .line 835
    :cond_3
    const-string v2, "Key"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 836
    const/4 v11, 0x1

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    .line 837
    invoke-virtual/range {v2 .. v7}, Lnet/hasnath/android/keyboard/Keyboard;->createKeyFromXml(Landroid/content/res/Resources;Lnet/hasnath/android/keyboard/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-result-object v13

    .line 838
    iget-object v2, v13, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    if-eqz v2, :cond_4

    iget-object v2, v13, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    const/4 v7, 0x0

    aget v2, v2, v7

    const/16 v7, 0x2328

    if-le v2, v7, :cond_4

    .line 839
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lnet/hasnath/android/keyboard/Keyboard;->isEmoji:Z

    .line 841
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    iget-object v2, v13, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    const/4 v7, 0x0

    aget v2, v2, v7

    const/4 v7, -0x1

    if-ne v2, v7, :cond_8

    .line 844
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard;->mShiftKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    array-length v2, v2

    if-lt v10, v2, :cond_6

    .line 851
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    .end local v10    # "i":I
    :cond_5
    :goto_5
    iget-object v2, v4, Lnet/hasnath/android/keyboard/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 876
    .end local v9    # "event":I
    .end local v17    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 877
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

    .line 878
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 845
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v9    # "event":I
    .restart local v10    # "i":I
    .restart local v17    # "tag":Ljava/lang/String;
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard;->mShiftKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    aget-object v2, v2, v10

    if-nez v2, :cond_7

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard;->mShiftKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    aput-object v13, v2, v10

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard;->mShiftKeyIndices:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/hasnath/android/keyboard/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    aput v7, v2, v10

    goto :goto_4

    .line 844
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 852
    .end local v10    # "i":I
    :cond_8
    iget-object v2, v13, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    const/4 v7, 0x0

    aget v2, v2, v7

    const/4 v7, -0x6

    if-ne v2, v7, :cond_5

    .line 853
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 856
    :cond_9
    const-string v2, "Keyboard"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lnet/hasnath/android/keyboard/Keyboard;->parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    goto/16 :goto_0

    .line 859
    .end local v17    # "tag":Ljava/lang/String;
    :cond_a
    const/4 v2, 0x3

    if-ne v9, v2, :cond_0

    .line 860
    if-eqz v11, :cond_b

    .line 861
    const/4 v11, 0x0

    .line 862
    iget v2, v13, Lnet/hasnath/android/keyboard/Keyboard$Key;->gap:I

    iget v7, v13, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    add-int/2addr v2, v7

    add-int/2addr v5, v2

    .line 863
    move-object/from16 v0, p0

    iget v2, v0, Lnet/hasnath/android/keyboard/Keyboard;->mTotalWidth:I

    if-le v5, v2, :cond_0

    .line 864
    move-object/from16 v0, p0

    iput v5, v0, Lnet/hasnath/android/keyboard/Keyboard;->mTotalWidth:I

    goto/16 :goto_0

    .line 866
    :cond_b
    if-eqz v12, :cond_0

    .line 867
    const/4 v12, 0x0

    .line 868
    iget v2, v4, Lnet/hasnath/android/keyboard/Keyboard$Row;->verticalGap:I

    add-int/2addr v6, v2

    .line 869
    iget v2, v4, Lnet/hasnath/android/keyboard/Keyboard$Row;->defaultHeight:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/2addr v6, v2

    .line 870
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0
.end method

.method private parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    const/4 v4, 0x0

    .line 895
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 896
    sget-object v2, Lridmik/keyboard/R$styleable;->Keyboard:[I

    .line 895
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 900
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayWidth:I

    iget v2, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayWidth:I

    div-int/lit8 v2, v2, 0xa

    .line 898
    invoke-static {v0, v4, v1, v2}, Lnet/hasnath/android/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultWidth:I

    .line 902
    const/4 v1, 0x1

    .line 903
    iget v2, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayHeight:I

    const/16 v3, 0x32

    .line 901
    invoke-static {v0, v1, v2, v3}, Lnet/hasnath/android/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHeight:I

    .line 905
    iget v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHeight:I

    iget v2, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeyboardHeightPercentage:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHeight:I

    .line 907
    const/4 v1, 0x2

    .line 908
    iget v2, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayWidth:I

    .line 906
    invoke-static {v0, v1, v2, v4}, Lnet/hasnath/android/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHorizontalGap:I

    .line 910
    const/4 v1, 0x3

    .line 911
    iget v2, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDisplayHeight:I

    .line 909
    invoke-static {v0, v1, v2, v4}, Lnet/hasnath/android/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultVerticalGap:I

    .line 912
    iget v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultWidth:I

    int-to-float v1, v1

    sget v2, Lnet/hasnath/android/keyboard/Keyboard;->SEARCH_DISTANCE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mProximityThreshold:I

    .line 913
    iget v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mProximityThreshold:I

    iget v2, p0, Lnet/hasnath/android/keyboard/Keyboard;->mProximityThreshold:I

    mul-int/2addr v1, v2

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mProximityThreshold:I

    .line 914
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 915
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
    .line 886
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .local v0, "event":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 892
    :goto_0
    return-void

    .line 887
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 888
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
    .line 805
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
    .line 800
    new-instance v0, Lnet/hasnath/android/keyboard/Keyboard$Row;

    invoke-direct {v0, p1, p0, p2}, Lnet/hasnath/android/keyboard/Keyboard$Row;-><init>(Landroid/content/res/Resources;Lnet/hasnath/android/keyboard/Keyboard;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 718
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mTotalHeight:I

    return v0
.end method

.method protected getHorizontalGap()I
    .locals 1

    .prologue
    .line 682
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method protected getKeyHeight()I
    .locals 1

    .prologue
    .line 698
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method protected getKeyWidth()I
    .locals 1

    .prologue
    .line 706
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
    .line 674
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public getMinWidth()I
    .locals 1

    .prologue
    .line 722
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
    .line 678
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mModifierKeys:Ljava/util/List;

    return-object v0
.end method

.method public getNearestKeys(II)[I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 789
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mGridNeighbors:[[I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lnet/hasnath/android/keyboard/Keyboard;->computeNearestNeighbors()V

    .line 790
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/Keyboard;->getMinWidth()I

    move-result v1

    if-ge p1, v1, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/Keyboard;->getHeight()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 791
    iget v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellHeight:I

    div-int v1, p2, v1

    mul-int/lit8 v1, v1, 0xa

    iget v2, p0, Lnet/hasnath/android/keyboard/Keyboard;->mCellWidth:I

    div-int v2, p1, v2

    add-int v0, v1, v2

    .line 792
    .local v0, "index":I
    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 793
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mGridNeighbors:[[I

    aget-object v1, v1, v0

    .line 796
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
    .line 750
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mShiftKeyIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getShiftKeyIndices()[I
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mShiftKeyIndices:[I

    return-object v0
.end method

.method protected getVerticalGap()I
    .locals 1

    .prologue
    .line 690
    iget v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 739
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/Keyboard;->mShifted:Z

    return v0
.end method

.method final resize(II)V
    .locals 12
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    .line 643
    iget-object v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 644
    .local v3, "numRows":I
    const/4 v5, 0x0

    .local v5, "rowIndex":I
    :goto_0
    if-lt v5, v3, :cond_0

    .line 667
    iput p1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mTotalWidth:I

    .line 671
    return-void

    .line 645
    :cond_0
    iget-object v10, p0, Lnet/hasnath/android/keyboard/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/hasnath/android/keyboard/Keyboard$Row;

    .line 646
    .local v4, "row":Lnet/hasnath/android/keyboard/Keyboard$Row;
    iget-object v10, v4, Lnet/hasnath/android/keyboard/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 647
    .local v2, "numKeys":I
    const/4 v7, 0x0

    .line 648
    .local v7, "totalGap":I
    const/4 v8, 0x0

    .line 649
    .local v8, "totalWidth":I
    const/4 v1, 0x0

    .local v1, "keyIndex":I
    :goto_1
    if-lt v1, v2, :cond_2

    .line 656
    add-int v10, v7, v8

    if-le v10, p1, :cond_1

    .line 657
    const/4 v9, 0x0

    .line 658
    .local v9, "x":I
    sub-int v10, p1, v7

    int-to-float v10, v10

    int-to-float v11, v8

    div-float v6, v10, v11

    .line 659
    .local v6, "scaleFactor":F
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v2, :cond_4

    .line 644
    .end local v6    # "scaleFactor":F
    .end local v9    # "x":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 650
    :cond_2
    iget-object v10, v4, Lnet/hasnath/android/keyboard/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 651
    .local v0, "key":Lnet/hasnath/android/keyboard/Keyboard$Key;
    if-lez v1, :cond_3

    .line 652
    iget v10, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->gap:I

    add-int/2addr v7, v10

    .line 654
    :cond_3
    iget v10, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    add-int/2addr v8, v10

    .line 649
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 660
    .end local v0    # "key":Lnet/hasnath/android/keyboard/Keyboard$Key;
    .restart local v6    # "scaleFactor":F
    .restart local v9    # "x":I
    :cond_4
    iget-object v10, v4, Lnet/hasnath/android/keyboard/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 661
    .restart local v0    # "key":Lnet/hasnath/android/keyboard/Keyboard$Key;
    iget v10, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    float-to-int v10, v10

    iput v10, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    .line 662
    iput v9, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    .line 663
    iget v10, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    iget v11, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->gap:I

    add-int/2addr v10, v11

    add-int/2addr v9, v10

    .line 659
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method protected setHorizontalGap(I)V
    .locals 0
    .param p1, "gap"    # I

    .prologue
    .line 686
    iput p1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHorizontalGap:I

    .line 687
    return-void
.end method

.method protected setKeyHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 702
    iput p1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHeight:I

    .line 703
    return-void
.end method

.method protected setKeyWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 710
    iput p1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultWidth:I

    .line 711
    return-void
.end method

.method public setShifted(Z)Z
    .locals 5
    .param p1, "shiftState"    # Z

    .prologue
    const/4 v1, 0x0

    .line 726
    iget-object v3, p0, Lnet/hasnath/android/keyboard/Keyboard;->mShiftKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_1

    .line 731
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/Keyboard;->mShifted:Z

    if-eq v2, p1, :cond_0

    .line 732
    iput-boolean p1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mShifted:Z

    .line 733
    const/4 v1, 0x1

    .line 735
    :cond_0
    return v1

    .line 726
    :cond_1
    aget-object v0, v3, v2

    .line 727
    .local v0, "shiftKey":Lnet/hasnath/android/keyboard/Keyboard$Key;
    if-eqz v0, :cond_2

    .line 728
    iput-boolean p1, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->on:Z

    .line 726
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected setVerticalGap(I)V
    .locals 0
    .param p1, "gap"    # I

    .prologue
    .line 694
    iput p1, p0, Lnet/hasnath/android/keyboard/Keyboard;->mDefaultVerticalGap:I

    .line 695
    return-void
.end method
