.class Lnet/hasnath/android/habijabi/SeekBarPreference$1;
.super Ljava/lang/Object;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hasnath/android/habijabi/SeekBarPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hasnath/android/habijabi/SeekBarPreference;


# direct methods
.method constructor <init>(Lnet/hasnath/android/habijabi/SeekBarPreference;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/hasnath/android/habijabi/SeekBarPreference$1;->this$0:Lnet/hasnath/android/habijabi/SeekBarPreference;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 151
    if-eqz p3, :cond_0

    .line 152
    iget-object v6, p0, Lnet/hasnath/android/habijabi/SeekBarPreference$1;->this$0:Lnet/hasnath/android/habijabi/SeekBarPreference;

    iget-object v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference$1;->this$0:Lnet/hasnath/android/habijabi/SeekBarPreference;

    iget-object v1, p0, Lnet/hasnath/android/habijabi/SeekBarPreference$1;->this$0:Lnet/hasnath/android/habijabi/SeekBarPreference;

    # getter for: Lnet/hasnath/android/habijabi/SeekBarPreference;->mMin:F
    invoke-static {v1}, Lnet/hasnath/android/habijabi/SeekBarPreference;->access$1(Lnet/hasnath/android/habijabi/SeekBarPreference;)F

    move-result v2

    iget-object v1, p0, Lnet/hasnath/android/habijabi/SeekBarPreference$1;->this$0:Lnet/hasnath/android/habijabi/SeekBarPreference;

    # getter for: Lnet/hasnath/android/habijabi/SeekBarPreference;->mMax:F
    invoke-static {v1}, Lnet/hasnath/android/habijabi/SeekBarPreference;->access$2(Lnet/hasnath/android/habijabi/SeekBarPreference;)F

    move-result v3

    iget-object v1, p0, Lnet/hasnath/android/habijabi/SeekBarPreference$1;->this$0:Lnet/hasnath/android/habijabi/SeekBarPreference;

    # getter for: Lnet/hasnath/android/habijabi/SeekBarPreference;->mStep:F
    invoke-static {v1}, Lnet/hasnath/android/habijabi/SeekBarPreference;->access$3(Lnet/hasnath/android/habijabi/SeekBarPreference;)F

    move-result v4

    iget-object v1, p0, Lnet/hasnath/android/habijabi/SeekBarPreference$1;->this$0:Lnet/hasnath/android/habijabi/SeekBarPreference;

    # getter for: Lnet/hasnath/android/habijabi/SeekBarPreference;->mLogScale:Z
    invoke-static {v1}, Lnet/hasnath/android/habijabi/SeekBarPreference;->access$4(Lnet/hasnath/android/habijabi/SeekBarPreference;)Z

    move-result v5

    move v1, p2

    # invokes: Lnet/hasnath/android/habijabi/SeekBarPreference;->percentToSteppedVal(IFFFZ)F
    invoke-static/range {v0 .. v5}, Lnet/hasnath/android/habijabi/SeekBarPreference;->access$5(Lnet/hasnath/android/habijabi/SeekBarPreference;IFFFZ)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v6, v0}, Lnet/hasnath/android/habijabi/SeekBarPreference;->setVal(Ljava/lang/Float;)V

    .line 153
    iget-object v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference$1;->this$0:Lnet/hasnath/android/habijabi/SeekBarPreference;

    # getter for: Lnet/hasnath/android/habijabi/SeekBarPreference;->mSeek:Landroid/widget/SeekBar;
    invoke-static {v0}, Lnet/hasnath/android/habijabi/SeekBarPreference;->access$6(Lnet/hasnath/android/habijabi/SeekBarPreference;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lnet/hasnath/android/habijabi/SeekBarPreference$1;->this$0:Lnet/hasnath/android/habijabi/SeekBarPreference;

    # invokes: Lnet/hasnath/android/habijabi/SeekBarPreference;->getProgressVal()I
    invoke-static {v1}, Lnet/hasnath/android/habijabi/SeekBarPreference;->access$7(Lnet/hasnath/android/habijabi/SeekBarPreference;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 155
    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/habijabi/SeekBarPreference$1;->this$0:Lnet/hasnath/android/habijabi/SeekBarPreference;

    # invokes: Lnet/hasnath/android/habijabi/SeekBarPreference;->showVal()V
    invoke-static {v0}, Lnet/hasnath/android/habijabi/SeekBarPreference;->access$8(Lnet/hasnath/android/habijabi/SeekBarPreference;)V

    .line 156
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 149
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 148
    return-void
.end method
