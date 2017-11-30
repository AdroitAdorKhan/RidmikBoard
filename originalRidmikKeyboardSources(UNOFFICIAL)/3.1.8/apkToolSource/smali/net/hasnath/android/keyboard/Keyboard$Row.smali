.class public Lnet/hasnath/android/keyboard/Keyboard$Row;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Row"
.end annotation


# instance fields
.field public defaultHeight:I

.field public defaultHorizontalGap:I

.field public defaultWidth:I

.field mKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hasnath/android/keyboard/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field public mode:I

.field private parent:Lnet/hasnath/android/keyboard/Keyboard;

.field public rowEdgeFlags:I

.field public verticalGap:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lnet/hasnath/android/keyboard/Keyboard;Landroid/content/res/XmlResourceParser;)V
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Lnet/hasnath/android/keyboard/Keyboard;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    .line 189
    iput-object p2, p0, Lnet/hasnath/android/keyboard/Keyboard$Row;->parent:Lnet/hasnath/android/keyboard/Keyboard;

    .line 190
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 191
    sget-object v2, Lnet/hasnath/android/keyboard/R$styleable;->Keyboard:[I

    .line 190
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 194
    .local v0, "a":Landroid/content/res/TypedArray;
    # getter for: Lnet/hasnath/android/keyboard/Keyboard;->mDisplayWidth:I
    invoke-static {p2}, Lnet/hasnath/android/keyboard/Keyboard;->access$0(Lnet/hasnath/android/keyboard/Keyboard;)I

    move-result v1

    # getter for: Lnet/hasnath/android/keyboard/Keyboard;->mDefaultWidth:I
    invoke-static {p2}, Lnet/hasnath/android/keyboard/Keyboard;->access$1(Lnet/hasnath/android/keyboard/Keyboard;)I

    move-result v2

    .line 192
    invoke-static {v0, v4, v1, v2}, Lnet/hasnath/android/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard$Row;->defaultWidth:I

    .line 197
    # getter for: Lnet/hasnath/android/keyboard/Keyboard;->mDisplayHeight:I
    invoke-static {p2}, Lnet/hasnath/android/keyboard/Keyboard;->access$2(Lnet/hasnath/android/keyboard/Keyboard;)I

    move-result v1

    # getter for: Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHeight:I
    invoke-static {p2}, Lnet/hasnath/android/keyboard/Keyboard;->access$3(Lnet/hasnath/android/keyboard/Keyboard;)I

    move-result v2

    .line 195
    invoke-static {v0, v5, v1, v2}, Lnet/hasnath/android/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard$Row;->defaultHeight:I

    .line 199
    const/4 v1, 0x2

    .line 200
    # getter for: Lnet/hasnath/android/keyboard/Keyboard;->mDisplayWidth:I
    invoke-static {p2}, Lnet/hasnath/android/keyboard/Keyboard;->access$0(Lnet/hasnath/android/keyboard/Keyboard;)I

    move-result v2

    # getter for: Lnet/hasnath/android/keyboard/Keyboard;->mDefaultHorizontalGap:I
    invoke-static {p2}, Lnet/hasnath/android/keyboard/Keyboard;->access$4(Lnet/hasnath/android/keyboard/Keyboard;)I

    move-result v3

    .line 198
    invoke-static {v0, v1, v2, v3}, Lnet/hasnath/android/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard$Row;->defaultHorizontalGap:I

    .line 202
    const/4 v1, 0x3

    .line 203
    # getter for: Lnet/hasnath/android/keyboard/Keyboard;->mDisplayHeight:I
    invoke-static {p2}, Lnet/hasnath/android/keyboard/Keyboard;->access$2(Lnet/hasnath/android/keyboard/Keyboard;)I

    move-result v2

    # getter for: Lnet/hasnath/android/keyboard/Keyboard;->mDefaultVerticalGap:I
    invoke-static {p2}, Lnet/hasnath/android/keyboard/Keyboard;->access$5(Lnet/hasnath/android/keyboard/Keyboard;)I

    move-result v3

    .line 201
    invoke-static {v0, v1, v2, v3}, Lnet/hasnath/android/keyboard/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard$Row;->verticalGap:I

    .line 204
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 206
    sget-object v2, Lnet/hasnath/android/keyboard/R$styleable;->Keyboard_Row:[I

    .line 205
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 207
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard$Row;->rowEdgeFlags:I

    .line 208
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lnet/hasnath/android/keyboard/Keyboard$Row;->mode:I

    .line 210
    return-void
.end method

.method public constructor <init>(Lnet/hasnath/android/keyboard/Keyboard;)V
    .locals 1
    .param p1, "parent"    # Lnet/hasnath/android/keyboard/Keyboard;

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    .line 185
    iput-object p1, p0, Lnet/hasnath/android/keyboard/Keyboard$Row;->parent:Lnet/hasnath/android/keyboard/Keyboard;

    .line 186
    return-void
.end method

.method static synthetic access$0(Lnet/hasnath/android/keyboard/Keyboard$Row;)Lnet/hasnath/android/keyboard/Keyboard;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard$Row;->parent:Lnet/hasnath/android/keyboard/Keyboard;

    return-object v0
.end method
