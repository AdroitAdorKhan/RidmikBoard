.class Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;
.super Lnet/hasnath/android/keyboard/Keyboard$Key;
.source "LatinKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/LatinKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LatinKey"
.end annotation


# instance fields
.field private final KEY_STATE_FUNCTIONAL_NORMAL:[I

.field private final KEY_STATE_FUNCTIONAL_PRESSED:[I

.field private mShiftLockEnabled:Z

.field final synthetic this$0:Lnet/hasnath/android/keyboard/LatinKeyboard;


# direct methods
.method public constructor <init>(Lnet/hasnath/android/keyboard/LatinKeyboard;Landroid/content/res/Resources;Lnet/hasnath/android/keyboard/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 7
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parent"    # Lnet/hasnath/android/keyboard/Keyboard$Row;
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    const/4 v6, 0x0

    .line 926
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboard;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 927
    invoke-direct/range {v0 .. v5}, Lnet/hasnath/android/keyboard/Keyboard$Key;-><init>(Landroid/content/res/Resources;Lnet/hasnath/android/keyboard/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 913
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 914
    const v1, 0x10100a3

    aput v1, v0, v6

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->KEY_STATE_FUNCTIONAL_NORMAL:[I

    .line 918
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 920
    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->KEY_STATE_FUNCTIONAL_PRESSED:[I

    .line 928
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 930
    iput v6, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->popupResId:I

    .line 933
    :cond_0
    return-void

    .line 918
    nop

    :array_0
    .array-data 4
        0x10100a3
        0x10100a7
    .end array-data
.end method

.method static synthetic access$0(Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;)V
    .locals 0

    .prologue
    .line 935
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->enableShiftLock()V

    return-void
.end method

.method private enableShiftLock()V
    .locals 1

    .prologue
    .line 936
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->mShiftLockEnabled:Z

    .line 937
    return-void
.end method

.method private isFunctionalKey()Z
    .locals 1

    .prologue
    .line 942
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->sticky:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->modifier:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCurrentDrawableState()[I
    .locals 1

    .prologue
    .line 971
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->isFunctionalKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 972
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->pressed:Z

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->KEY_STATE_FUNCTIONAL_PRESSED:[I

    .line 978
    :goto_0
    return-object v0

    .line 975
    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->KEY_STATE_FUNCTIONAL_NORMAL:[I

    goto :goto_0

    .line 978
    :cond_1
    invoke-super {p0}, Lnet/hasnath/android/keyboard/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v0

    goto :goto_0
.end method

.method public isInside(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 961
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboard;

    invoke-virtual {v1, p0, p1, p2}, Lnet/hasnath/android/keyboard/LatinKeyboard;->isInside(Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;II)Z

    move-result v0

    .line 962
    .local v0, "result":Z
    return v0
.end method

.method isInsideSuper(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 966
    invoke-super {p0, p1, p2}, Lnet/hasnath/android/keyboard/Keyboard$Key;->isInside(II)Z

    move-result v0

    return v0
.end method

.method public onReleased(Z)V
    .locals 1
    .param p1, "inside"    # Z

    .prologue
    .line 947
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->mShiftLockEnabled:Z

    if-nez v0, :cond_0

    .line 948
    invoke-super {p0, p1}, Lnet/hasnath/android/keyboard/Keyboard$Key;->onReleased(Z)V

    .line 952
    :goto_0
    return-void

    .line 950
    :cond_0
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->pressed:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->pressed:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public squaredDistanceFrom(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 984
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->this$0:Lnet/hasnath/android/keyboard/LatinKeyboard;

    invoke-static {v3}, Lnet/hasnath/android/keyboard/LatinKeyboard;->access$0(Lnet/hasnath/android/keyboard/LatinKeyboard;)I

    move-result v0

    .line 985
    .local v0, "verticalGap":I
    iget v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->x:I

    iget v4, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v1, v3, p1

    .line 986
    .local v1, "xDist":I
    iget v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->y:I

    iget v4, p0, Lnet/hasnath/android/keyboard/LatinKeyboard$LatinKey;->height:I

    add-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v2, v3, p2

    .line 987
    .local v2, "yDist":I
    mul-int v3, v1, v1

    mul-int v4, v2, v2

    add-int/2addr v3, v4

    return v3
.end method
