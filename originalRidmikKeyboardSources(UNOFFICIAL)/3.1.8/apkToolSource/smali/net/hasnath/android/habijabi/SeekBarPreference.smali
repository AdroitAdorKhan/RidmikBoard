.class public Lnet/hasnath/android/habijabi/SeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "SeekBarPreference.java"


# instance fields
.field private mAsPercent:Z

.field private mDefaultValue:F

.field private mDisplayFormat:Ljava/lang/String;

.field private mLogScale:Z

.field private mMax:F

.field private mMaxText:Landroid/widget/TextView;

.field private mMin:F

.field private mMinText:Landroid/widget/TextView;

.field private mPrevVal:F

.field private mSeek:Landroid/widget/SeekBar;

.field private mStep:F

.field private mVal:F

.field private mValText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-virtual {p0, p1, p2}, Lnet/hasnath/android/habijabi/SeekBarPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method static synthetic access$1(Lnet/hasnath/android/habijabi/SeekBarPreference;)F
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mMin:F

    return v0
.end method

.method static synthetic access$2(Lnet/hasnath/android/habijabi/SeekBarPreference;)F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mMax:F

    return v0
.end method

.method static synthetic access$3(Lnet/hasnath/android/habijabi/SeekBarPreference;)F
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mStep:F

    return v0
.end method

.method static synthetic access$4(Lnet/hasnath/android/habijabi/SeekBarPreference;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mLogScale:Z

    return v0
.end method

.method static synthetic access$5(Lnet/hasnath/android/habijabi/SeekBarPreference;IFFFZ)F
    .locals 1

    .prologue
    .line 107
    invoke-direct/range {p0 .. p5}, Lnet/hasnath/android/habijabi/SeekBarPreference;->percentToSteppedVal(IFFFZ)F

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lnet/hasnath/android/habijabi/SeekBarPreference;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mSeek:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$7(Lnet/hasnath/android/habijabi/SeekBarPreference;)I
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Lnet/hasnath/android/habijabi/SeekBarPreference;->getProgressVal()I

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lnet/hasnath/android/habijabi/SeekBarPreference;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lnet/hasnath/android/habijabi/SeekBarPreference;->showVal()V

    return-void
.end method

.method private formatFloatDisplay(Ljava/lang/Float;)Ljava/lang/String;
    .locals 5
    .param p1, "val"    # Ljava/lang/Float;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 73
    iget-boolean v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mAsPercent:Z

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "%d%%"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    .line 77
    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mDisplayFormat:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 78
    iget v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mDefaultValue:F

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mDisplayFormat:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " (Default)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mDisplayFormat:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPercent(FFF)I
    .locals 2
    .param p1, "val"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 124
    const/high16 v0, 0x42c80000    # 100.0f

    sub-float v1, p1, p2

    mul-float/2addr v0, v1

    sub-float v1, p3, p2

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getProgressVal()I
    .locals 4

    .prologue
    .line 128
    iget-boolean v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mLogScale:Z

    if-eqz v0, :cond_0

    .line 129
    iget v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mVal:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mMin:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mMax:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lnet/hasnath/android/habijabi/SeekBarPreference;->getPercent(FFF)I

    move-result v0

    .line 131
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mVal:F

    iget v1, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mMin:F

    iget v2, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mMax:F

    invoke-direct {p0, v0, v1, v2}, Lnet/hasnath/android/habijabi/SeekBarPreference;->getPercent(FFF)I

    move-result v0

    goto :goto_0
.end method

.method private percentToSteppedVal(IFFFZ)F
    .locals 8
    .param p1, "percent"    # I
    .param p2, "min"    # F
    .param p3, "max"    # F
    .param p4, "step"    # F
    .param p5, "logScale"    # Z

    .prologue
    .line 109
    if-eqz p5, :cond_0

    .line 110
    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v2, v0

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v3, v0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lnet/hasnath/android/habijabi/SeekBarPreference;->percentToSteppedVal(IFFFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v7, v0

    .line 120
    .local v7, "val":F
    :goto_0
    return v7

    .line 112
    .end local v7    # "val":F
    :cond_0
    int-to-float v0, p1

    sub-float v1, p3, p2

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v6, v0, v1

    .line 113
    .local v6, "delta":F
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_1

    .line 114
    div-float v0, v6, p4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    mul-float v6, v0, p4

    .line 116
    :cond_1
    add-float v7, p2, v6

    .restart local v7    # "val":F
    goto :goto_0
.end method

.method private showVal()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mValText:Landroid/widget/TextView;

    iget v1, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mVal:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/hasnath/android/habijabi/SeekBarPreference;->formatFloatDisplay(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mVal:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/hasnath/android/habijabi/SeekBarPreference;->formatFloatDisplay(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getValString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mVal:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 42
    const v1, 0x7f030015

    invoke-virtual {p0, v1}, Lnet/hasnath/android/habijabi/SeekBarPreference;->setDialogLayoutResource(I)V

    .line 44
    sget-object v1, Lnet/hasnath/android/keyboard/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mMin:F

    .line 46
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mMax:F

    .line 47
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mStep:F

    .line 48
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mAsPercent:Z

    .line 49
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mLogScale:Z

    .line 50
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mDisplayFormat:Ljava/lang/String;

    .line 51
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mDefaultValue:F

    .line 53
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 137
    const v0, 0x7f07001c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mSeek:Landroid/widget/SeekBar;

    .line 138
    const v0, 0x7f07001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mMinText:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f07001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mMaxText:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f07001b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mValText:Landroid/widget/TextView;

    .line 142
    invoke-direct {p0}, Lnet/hasnath/android/habijabi/SeekBarPreference;->showVal()V

    .line 143
    iget-object v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mMinText:Landroid/widget/TextView;

    iget v1, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mMin:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/hasnath/android/habijabi/SeekBarPreference;->formatFloatDisplay(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mMaxText:Landroid/widget/TextView;

    iget v1, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mMax:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/hasnath/android/habijabi/SeekBarPreference;->formatFloatDisplay(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mSeek:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lnet/hasnath/android/habijabi/SeekBarPreference;->getProgressVal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 147
    iget-object v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mSeek:Landroid/widget/SeekBar;

    new-instance v1, Lnet/hasnath/android/habijabi/SeekBarPreference$1;

    invoke-direct {v1, p0}, Lnet/hasnath/android/habijabi/SeekBarPreference$1;-><init>(Lnet/hasnath/android/habijabi/SeekBarPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 159
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 160
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 169
    if-nez p1, :cond_0

    .line 170
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/SeekBarPreference;->restoreVal()V

    .line 178
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/SeekBarPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mVal:F

    invoke-virtual {p0, v0}, Lnet/hasnath/android/habijabi/SeekBarPreference;->persistFloat(F)Z

    .line 175
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/SeekBarPreference;->savePrevVal()V

    .line 177
    :cond_1
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/SeekBarPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Float;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/hasnath/android/habijabi/SeekBarPreference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 62
    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mDefaultValue:F

    .line 63
    if-eqz p1, :cond_0

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/hasnath/android/habijabi/SeekBarPreference;->getPersistedFloat(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/hasnath/android/habijabi/SeekBarPreference;->setVal(Ljava/lang/Float;)V

    .line 68
    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/SeekBarPreference;->savePrevVal()V

    .line 69
    return-void

    .line 66
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lnet/hasnath/android/habijabi/SeekBarPreference;->setVal(Ljava/lang/Float;)V

    goto :goto_0
.end method

.method protected restoreVal()V
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mPrevVal:F

    iput v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mVal:F

    .line 101
    return-void
.end method

.method protected savePrevVal()V
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mVal:F

    iput v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mPrevVal:F

    .line 97
    return-void
.end method

.method protected setVal(Ljava/lang/Float;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/Float;

    .prologue
    .line 92
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference;->mVal:F

    .line 93
    return-void
.end method
