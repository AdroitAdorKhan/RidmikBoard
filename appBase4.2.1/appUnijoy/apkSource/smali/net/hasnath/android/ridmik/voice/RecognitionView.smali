.class public Lnet/hasnath/android/ridmik/voice/RecognitionView;
.super Ljava/lang/Object;
.source "RecognitionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hasnath/android/ridmik/voice/RecognitionView$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecognitionView"


# instance fields
.field private mButton:Landroid/view/View;

.field private mButtonText:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mError:Landroid/graphics/drawable/Drawable;

.field private mImage:Landroid/widget/ImageView;

.field private mInitializing:Landroid/graphics/drawable/Drawable;

.field private mLevel:I

.field private mMaxMicrophoneLevel:F

.field private mMinMicrophoneLevel:F

.field private mProgress:Landroid/view/View;

.field private mSpeakNow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

.field private mText:Landroid/widget/TextView;

.field private mUiHandler:Landroid/os/Handler;

.field private mUpdateVolumeRunnable:Ljava/lang/Runnable;

.field private mView:Landroid/view/View;

.field private mVolume:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v3, 0x0

    iput v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mVolume:F

    .line 71
    const/4 v3, 0x0

    iput v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mLevel:I

    .line 74
    sget-object v3, Lnet/hasnath/android/ridmik/voice/RecognitionView$State;->READY:Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    iput-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mState:Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    .line 80
    new-instance v3, Lnet/hasnath/android/ridmik/voice/RecognitionView$1;

    invoke-direct {v3, p0}, Lnet/hasnath/android/ridmik/voice/RecognitionView$1;-><init>(Lnet/hasnath/android/ridmik/voice/RecognitionView;)V

    iput-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mUpdateVolumeRunnable:Ljava/lang/Runnable;

    .line 102
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    .line 105
    const-string v3, "layout_inflater"

    .line 104
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 106
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030013

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mView:Landroid/view/View;

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 109
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "latin_ime_min_microphone_level"

    const/high16 v4, 0x41700000    # 15.0f

    .line 108
    invoke-static {v0, v3, v4}, Lnet/hasnath/android/ridmik/voice/SettingsUtil;->getSettingsFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mMinMicrophoneLevel:F

    .line 111
    const-string v3, "latin_ime_max_microphone_level"

    const/high16 v4, 0x41f00000    # 30.0f

    .line 110
    invoke-static {v0, v3, v4}, Lnet/hasnath/android/ridmik/voice/SettingsUtil;->getSettingsFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mMaxMicrophoneLevel:F

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 116
    .local v2, "r":Landroid/content/res/Resources;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    .line 117
    iget-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v4, 0x7f020085

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v4, 0x7f020086

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v4, 0x7f020087

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v4, 0x7f020088

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v4, 0x7f020089

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v4, 0x7f02008a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    const v4, 0x7f02008b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    const v3, 0x7f020079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mInitializing:Landroid/graphics/drawable/Drawable;

    .line 126
    const v3, 0x7f020041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mError:Landroid/graphics/drawable/Drawable;

    .line 128
    iget-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mView:Landroid/view/View;

    const v4, 0x7f0f0019

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    .line 129
    iget-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mView:Landroid/view/View;

    const v4, 0x7f0f001b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mButton:Landroid/view/View;

    .line 130
    iget-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mButton:Landroid/view/View;

    invoke-virtual {v3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mView:Landroid/view/View;

    const v4, 0x7f0f0018

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mText:Landroid/widget/TextView;

    .line 132
    iget-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mView:Landroid/view/View;

    const v4, 0x7f0f001c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mButtonText:Landroid/widget/TextView;

    .line 133
    iget-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mView:Landroid/view/View;

    const v4, 0x7f0f001a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mProgress:Landroid/view/View;

    .line 135
    iput-object p1, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mContext:Landroid/content/Context;

    .line 136
    return-void
.end method

.method static synthetic access$0(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Lnet/hasnath/android/ridmik/voice/RecognitionView$State;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mState:Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    return-object v0
.end method

.method static synthetic access$1(Lnet/hasnath/android/ridmik/voice/RecognitionView;)F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mMinMicrophoneLevel:F

    return v0
.end method

.method static synthetic access$10(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$11(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$12(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mInitializing:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$13(Lnet/hasnath/android/ridmik/voice/RecognitionView;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->prepareDialog(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$14(Lnet/hasnath/android/ridmik/voice/RecognitionView;Lnet/hasnath/android/ridmik/voice/RecognitionView$State;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mState:Lnet/hasnath/android/ridmik/voice/RecognitionView$State;

    return-void
.end method

.method static synthetic access$15(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mError:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$16(Lnet/hasnath/android/ridmik/voice/RecognitionView;Ljava/nio/ShortBuffer;II)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0, p1, p2, p3}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->showWave(Ljava/nio/ShortBuffer;II)V

    return-void
.end method

.method static synthetic access$17(Lnet/hasnath/android/ridmik/voice/RecognitionView;)V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->exitWorking()V

    return-void
.end method

.method static synthetic access$2(Lnet/hasnath/android/ridmik/voice/RecognitionView;)F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mMaxMicrophoneLevel:F

    return v0
.end method

.method static synthetic access$3(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mSpeakNow:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lnet/hasnath/android/ridmik/voice/RecognitionView;)F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mVolume:F

    return v0
.end method

.method static synthetic access$5(Lnet/hasnath/android/ridmik/voice/RecognitionView;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mLevel:I

    return v0
.end method

.method static synthetic access$6(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7(Lnet/hasnath/android/ridmik/voice/RecognitionView;I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mLevel:I

    return-void
.end method

.method static synthetic access$8(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lnet/hasnath/android/ridmik/voice/RecognitionView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mUpdateVolumeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private exitWorking()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mProgress:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 322
    return-void
.end method

.method private static getAverageAbs(Ljava/nio/ShortBuffer;III)I
    .locals 5
    .param p0, "buffer"    # Ljava/nio/ShortBuffer;
    .param p1, "start"    # I
    .param p2, "i"    # I
    .param p3, "npw"    # I

    .prologue
    .line 224
    mul-int v4, p2, p3

    add-int v1, p1, v4

    .line 225
    .local v1, "from":I
    add-int v0, v1, p3

    .line 226
    .local v0, "end":I
    const/4 v2, 0x0

    .line 227
    .local v2, "total":I
    move v3, v1

    .local v3, "x":I
    :goto_0
    if-lt v3, v0, :cond_0

    .line 230
    div-int v4, v2, p3

    return v4

    .line 228
    :cond_0
    invoke-virtual {p0, v3}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 227
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private prepareDialog(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "spinVisible"    # Z
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "image"    # Landroid/graphics/drawable/Drawable;
    .param p4, "btnTxt"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 208
    if-eqz p1, :cond_0

    .line 209
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    :goto_0
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showWave(Ljava/nio/ShortBuffer;II)V
    .locals 32
    .param p1, "waveBuffer"    # Ljava/nio/ShortBuffer;
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I

    .prologue
    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v27

    check-cast v27, Landroid/view/View;

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getWidth()I

    move-result v23

    .line 244
    .local v23, "w":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getHeight()I

    move-result v13

    .line 245
    .local v13, "h":I
    if-lez v23, :cond_0

    if-gtz v13, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    sget-object v27, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v0, v13, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 250
    .local v7, "b":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 251
    .local v8, "c":Landroid/graphics/Canvas;
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 252
    .local v18, "paint":Landroid/graphics/Paint;
    const/16 v27, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    const/16 v27, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 254
    sget-object v27, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 255
    const/16 v27, 0x90

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 257
    new-instance v11, Landroid/graphics/CornerPathEffect;

    const/high16 v27, 0x40400000    # 3.0f

    move/from16 v0, v27

    invoke-direct {v11, v0}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 258
    .local v11, "effect":Landroid/graphics/PathEffect;
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 260
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v17

    .line 262
    .local v17, "numSamples":I
    if-nez p3, :cond_3

    .line 263
    move/from16 v12, v17

    .line 268
    .local v12, "endIndex":I
    :goto_1
    move/from16 v0, p2

    add-int/lit16 v0, v0, -0x7d0

    move/from16 v22, v0

    .line 269
    .local v22, "startIndex":I
    if-gez v22, :cond_2

    .line 270
    const/16 v22, 0x0

    .line 272
    :cond_2
    const/16 v16, 0xc8

    .line 273
    .local v16, "numSamplePerWave":I
    const/high16 v20, 0x39200000

    .line 275
    .local v20, "scale":F
    sub-int v27, v12, v22

    move/from16 v0, v27

    div-int/lit16 v9, v0, 0xc8

    .line 276
    .local v9, "count":I
    const/high16 v27, 0x3f800000    # 1.0f

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v27, v27, v28

    int-to-float v0, v9

    move/from16 v28, v0

    div-float v10, v27, v28

    .line 277
    .local v10, "deltaX":F
    div-int/lit8 v27, v13, 0x2

    add-int/lit8 v26, v27, -0x8

    .line 278
    .local v26, "yMax":I
    new-instance v19, Landroid/graphics/Path;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Path;-><init>()V

    .line 279
    .local v19, "path":Landroid/graphics/Path;
    const/16 v27, 0x0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 280
    const/16 v24, 0x0

    .line 281
    .local v24, "x":F
    const/16 v27, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 282
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-lt v14, v9, :cond_4

    .line 290
    const/high16 v27, 0x40800000    # 4.0f

    cmpl-float v27, v10, v27

    if-lez v27, :cond_6

    .line 291
    const/high16 v27, 0x40400000    # 3.0f

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 295
    :goto_3
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mProgress:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 299
    .local v15, "mProgressParams":Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v27, 0x0

    .line 300
    neg-int v0, v13

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v29

    .line 299
    invoke-static/range {v27 .. v29}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    iput v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v27

    check-cast v27, Landroid/view/View;

    const/16 v29, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    check-cast v28, Landroid/view/View;

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getPaddingTop()I

    move-result v30

    const/16 v31, 0x3

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mImage:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    check-cast v28, Landroid/view/View;

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getPaddingBottom()I

    move-result v28

    .line 304
    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mProgress:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 265
    .end local v9    # "count":I
    .end local v10    # "deltaX":F
    .end local v12    # "endIndex":I
    .end local v14    # "i":I
    .end local v15    # "mProgressParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v16    # "numSamplePerWave":I
    .end local v19    # "path":Landroid/graphics/Path;
    .end local v20    # "scale":F
    .end local v22    # "startIndex":I
    .end local v24    # "x":F
    .end local v26    # "yMax":I
    :cond_3
    move/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .restart local v12    # "endIndex":I
    goto/16 :goto_1

    .line 283
    .restart local v9    # "count":I
    .restart local v10    # "deltaX":F
    .restart local v14    # "i":I
    .restart local v16    # "numSamplePerWave":I
    .restart local v19    # "path":Landroid/graphics/Path;
    .restart local v20    # "scale":F
    .restart local v22    # "startIndex":I
    .restart local v24    # "x":F
    .restart local v26    # "yMax":I
    :cond_4
    const/16 v27, 0xc8

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v27

    invoke-static {v0, v1, v14, v2}, Lnet/hasnath/android/ridmik/voice/RecognitionView;->getAverageAbs(Ljava/nio/ShortBuffer;III)I

    move-result v6

    .line 284
    .local v6, "avabs":I
    and-int/lit8 v27, v14, 0x1

    if-nez v27, :cond_5

    const/16 v21, -0x1

    .line 285
    .local v21, "sign":I
    :goto_4
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v27, v0

    mul-int v28, v6, v13

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x39200000

    mul-float v28, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(FF)F

    move-result v27

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v25, v27, v28

    .line 286
    .local v25, "y":F
    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 287
    add-float v24, v24, v10

    .line 288
    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 282
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 284
    .end local v21    # "sign":I
    .end local v25    # "y":F
    :cond_5
    const/16 v21, 0x1

    goto :goto_4

    .line 293
    .end local v6    # "avabs":I
    :cond_6
    const/16 v27, 0x1

    float-to-double v0, v10

    move-wide/from16 v28, v0

    const-wide v30, 0x3fa999999999999aL    # 0.05

    sub-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_3
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lnet/hasnath/android/ridmik/voice/RecognitionView$7;

    invoke-direct {v1, p0}, Lnet/hasnath/android/ridmik/voice/RecognitionView$7;-><init>(Lnet/hasnath/android/ridmik/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mView:Landroid/view/View;

    return-object v0
.end method

.method public restoreState()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lnet/hasnath/android/ridmik/voice/RecognitionView$2;

    invoke-direct {v1, p0}, Lnet/hasnath/android/ridmik/voice/RecognitionView$2;-><init>(Lnet/hasnath/android/ridmik/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    return-void
.end method

.method public showError(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lnet/hasnath/android/ridmik/voice/RecognitionView$5;

    invoke-direct {v1, p0, p1}, Lnet/hasnath/android/ridmik/voice/RecognitionView$5;-><init>(Lnet/hasnath/android/ridmik/voice/RecognitionView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method

.method public showInitializing()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lnet/hasnath/android/ridmik/voice/RecognitionView$3;

    invoke-direct {v1, p0}, Lnet/hasnath/android/ridmik/voice/RecognitionView$3;-><init>(Lnet/hasnath/android/ridmik/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    return-void
.end method

.method public showListening()V
    .locals 4

    .prologue
    .line 164
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lnet/hasnath/android/ridmik/voice/RecognitionView$4;

    invoke-direct {v1, p0}, Lnet/hasnath/android/ridmik/voice/RecognitionView$4;-><init>(Lnet/hasnath/android/ridmik/voice/RecognitionView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mUpdateVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    return-void
.end method

.method public showWorking(Ljava/io/ByteArrayOutputStream;II)V
    .locals 2
    .param p1, "waveBuffer"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "speechStartPosition"    # I
    .param p3, "speechEndPosition"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lnet/hasnath/android/ridmik/voice/RecognitionView$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lnet/hasnath/android/ridmik/voice/RecognitionView$6;-><init>(Lnet/hasnath/android/ridmik/voice/RecognitionView;Ljava/io/ByteArrayOutputStream;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method

.method public updateVoiceMeter(F)V
    .locals 0
    .param p1, "rmsdB"    # F

    .prologue
    .line 175
    iput p1, p0, Lnet/hasnath/android/ridmik/voice/RecognitionView;->mVolume:F

    .line 176
    return-void
.end method
