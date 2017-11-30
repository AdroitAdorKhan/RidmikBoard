.class public Lnet/hasnath/android/keyboard/DialogSeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "DialogSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final androidns:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"


# instance fields
.field private mMax:I

.field private mMin:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStep:I

.field private mSuffix:Ljava/lang/String;

.field private mValue:I

.field private mValueText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput v3, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mValue:I

    .line 28
    invoke-virtual {p0, v4}, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->setPersistent(Z)V

    .line 30
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "text"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mSuffix:Ljava/lang/String;

    .line 31
    const-string v0, "min"

    invoke-interface {p2, v2, v0, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mMin:I

    .line 32
    const-string v0, "max"

    const/16 v1, 0x64

    invoke-interface {p2, v2, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mMax:I

    .line 33
    const-string v0, "step"

    invoke-interface {p2, v2, v0, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mStep:I

    .line 35
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->setDialogLayoutResource(I)V

    .line 36
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 41
    const v2, 0x7f0f0014

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    .local v0, "dialogMessage":Landroid/widget/TextView;
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const v2, 0x7f0f0016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mValueText:Landroid/widget/TextView;

    .line 46
    const v2, 0x7f0f0015

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 47
    iget-object v2, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 48
    iget-object v2, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mMax:I

    iget v4, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mMin:I

    sub-int/2addr v3, v4

    iget v4, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mStep:I

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 49
    iget-object v2, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mValue:I

    iget v4, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mMin:I

    sub-int/2addr v3, v4

    iget v4, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mStep:I

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 51
    iget v2, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "t":Ljava/lang/String;
    iget-object v2, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mValueText:Landroid/widget/TextView;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mSuffix:Ljava/lang/String;

    if-nez v3, :cond_0

    .end local v1    # "t":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void

    .line 52
    .restart local v1    # "t":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mSuffix:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 69
    if-eqz p1, :cond_0

    .line 70
    iget-object v1, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget v2, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mStep:I

    mul-int/2addr v1, v2

    iget v2, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mMin:I

    add-int v0, v1, v2

    .line 71
    .local v0, "value":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->setValue(I)V

    .line 75
    .end local v0    # "value":I
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seek"    # Landroid/widget/SeekBar;
    .param p2, "value"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 101
    iget v1, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mStep:I

    mul-int/2addr v1, p2

    iget v2, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mMin:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "t":Ljava/lang/String;
    iget-object v1, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mValueText:Landroid/widget/TextView;

    iget-object v2, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mSuffix:Ljava/lang/String;

    if-nez v2, :cond_0

    .end local v0    # "t":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void

    .line 102
    .restart local v0    # "t":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mSuffix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restore"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 62
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->getPersistedInt(I)I

    move-result v0

    iput v0, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mValue:I

    .line 63
    return-void

    .line 62
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seek"    # Landroid/widget/SeekBar;

    .prologue
    .line 106
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seek"    # Landroid/widget/SeekBar;

    .prologue
    .line 109
    return-void
.end method

.method public setMax(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 88
    iput p1, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mMax:I

    .line 89
    iget v0, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mValue:I

    iget v1, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mMax:I

    if-le v0, v1, :cond_0

    .line 90
    iget v0, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mMax:I

    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->setValue(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public setMin(I)V
    .locals 1
    .param p1, "min"    # I

    .prologue
    .line 95
    iget v0, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mMax:I

    if-ge p1, v0, :cond_0

    .line 96
    iput p1, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mMin:I

    .line 98
    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 78
    iget v0, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mMax:I

    if-le p1, v0, :cond_1

    .line 79
    iget p1, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mMax:I

    .line 83
    :cond_0
    :goto_0
    iput p1, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mValue:I

    .line 84
    invoke-virtual {p0, p1}, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->persistInt(I)Z

    .line 85
    return-void

    .line 80
    :cond_1
    iget v0, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_0

    .line 81
    iget p1, p0, Lnet/hasnath/android/keyboard/DialogSeekBarPreference;->mMin:I

    goto :goto_0
.end method
