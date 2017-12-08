.class Lnet/hasnath/android/keyboard/Tutorial$Bubble;
.super Ljava/lang/Object;
.source "Tutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/Tutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Bubble"
.end annotation


# instance fields
.field bubbleBackground:Landroid/graphics/drawable/Drawable;

.field dismissOnClose:Z

.field dismissOnTouch:Z

.field gravity:I

.field inputView:Landroid/view/View;

.field text:Ljava/lang/CharSequence;

.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lnet/hasnath/android/keyboard/Tutorial;

.field width:I

.field window:Landroid/widget/PopupWindow;

.field x:I

.field y:I


# direct methods
.method constructor <init>(Lnet/hasnath/android/keyboard/Tutorial;Landroid/content/Context;Landroid/view/View;IIIII)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "inputView"    # Landroid/view/View;
    .param p4, "backgroundResource"    # I
    .param p5, "bx"    # I
    .param p6, "by"    # I
    .param p7, "textResource1"    # I
    .param p8, "textResource2"    # I

    .prologue
    .line 75
    iput-object p1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->this$0:Lnet/hasnath/android/keyboard/Tutorial;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->bubbleBackground:Landroid/graphics/drawable/Drawable;

    .line 77
    iput p5, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->x:I

    .line 78
    iput p6, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->y:I

    .line 79
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->width:I

    .line 80
    const/16 v1, 0x33

    iput v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->gravity:I

    .line 81
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 82
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 83
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 84
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 81
    iput-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->text:Ljava/lang/CharSequence;

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->dismissOnTouch:Z

    .line 86
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->dismissOnClose:Z

    .line 87
    iput-object p3, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->inputView:Landroid/view/View;

    .line 88
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    .line 89
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    check-cast v0, Landroid/view/LayoutInflater;

    .line 93
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->textView:Landroid/widget/TextView;

    .line 94
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->bubbleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 98
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 99
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 100
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 101
    return-void
.end method

.method static synthetic access$0(Lnet/hasnath/android/keyboard/Tutorial$Bubble;)Lnet/hasnath/android/keyboard/Tutorial;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->this$0:Lnet/hasnath/android/keyboard/Tutorial;

    return-object v0
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Landroid/view/View;Ljava/lang/CharSequence;Landroid/widget/TextView;)I
    .locals 12
    .param p1, "pop"    # Landroid/widget/PopupWindow;
    .param p2, "parentView"    # Landroid/view/View;
    .param p3, "text"    # Ljava/lang/CharSequence;
    .param p4, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 104
    invoke-virtual/range {p4 .. p4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int v11, v1, v2

    .line 105
    .local v11, "wid":I
    invoke-virtual/range {p4 .. p4}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v1, v2

    .line 111
    .local v8, "ht":I
    iget v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->width:I

    sub-int v3, v1, v11

    .line 113
    .local v3, "cap":I
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual/range {p4 .. p4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 114
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p3

    .line 113
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 115
    .local v0, "l":Landroid/text/Layout;
    const/4 v10, 0x0

    .line 116
    .local v10, "max":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-lt v9, v1, :cond_0

    .line 123
    iget v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->width:I

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 124
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 125
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    return v1

    .line 117
    :cond_0
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 116
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method


# virtual methods
.method hide()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 154
    :cond_0
    return-void
.end method

.method isShowing()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method show(II)V
    .locals 6
    .param p1, "offx"    # I
    .param p2, "offy"    # I

    .prologue
    .line 129
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->inputView:Landroid/view/View;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->text:Ljava/lang/CharSequence;

    iget-object v4, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2, v3, v4}, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->chooseSize(Landroid/widget/PopupWindow;Landroid/view/View;Ljava/lang/CharSequence;Landroid/widget/TextView;)I

    move-result v0

    .line 130
    .local v0, "textHeight":I
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr p2, v1

    .line 131
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->inputView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 132
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->inputView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 134
    :try_start_0
    iget v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->gravity:I

    and-int/lit8 v1, v1, 0x50

    const/16 v2, 0x50

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    sub-int/2addr p2, v1

    .line 135
    :cond_0
    iget v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->gravity:I

    and-int/lit8 v1, v1, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    .line 136
    :cond_1
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->textView:Landroid/widget/TextView;

    new-instance v2, Lnet/hasnath/android/keyboard/Tutorial$Bubble$1;

    invoke-direct {v2, p0}, Lnet/hasnath/android/keyboard/Tutorial$Bubble$1;-><init>(Lnet/hasnath/android/keyboard/Tutorial$Bubble;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 142
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->window:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->inputView:Landroid/view/View;

    const/4 v3, 0x0

    iget v4, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->x:I

    add-int/2addr v4, p1

    iget v5, p0, Lnet/hasnath/android/keyboard/Tutorial$Bubble;->y:I

    add-int/2addr v5, p2

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_2
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v1

    goto :goto_0
.end method
