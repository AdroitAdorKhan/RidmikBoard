.class public Lnet/hasnath/android/keyboard/LatinKeyboardView;
.super Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;
.source "LatinKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;
    }
.end annotation


# static fields
.field static final DEBUG_AUTO_PLAY:Z = false

.field static final DEBUG_LINE:Z = false

.field static final KEYCODE_DELETE:I = -0x5

.field static final KEYCODE_F1:I = -0x67

.field static final KEYCODE_NEXT_LANGUAGE:I = -0x68

.field static final KEYCODE_OPTIONS:I = -0x64

.field static final KEYCODE_OPTIONS_LONGPRESS:I = -0x65

.field static final KEYCODE_PREV_LANGUAGE:I = -0x69

.field static final KEYCODE_SHIFT:I = -0x1

.field static final KEYCODE_TAB:I = 0x9

.field static final KEYCODE_VOICE:I = -0x66

.field private static final MSG_TOUCH_DOWN:I = 0x1

.field private static final MSG_TOUCH_UP:I = 0x2


# instance fields
.field private mAsciiKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

.field private mDisableDisambiguation:Z

.field private mDownDelivered:Z

.field private mDroppingEvents:Z

.field mHandler2:Landroid/os/Handler;

.field private mJumpThresholdSquare:I

.field private mLastRowY:I

.field private mLastX:I

.field private mLastY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPhoneKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

.field private mPlaying:Z

.field private mStringIndex:I

.field private mStringToPlay:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const v0, 0x7fffffff

    iput v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mJumpThresholdSquare:I

    .line 289
    const/16 v0, 0x100

    new-array v0, v0, [Lnet/hasnath/android/keyboard/Keyboard$Key;

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mAsciiKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 66
    return-void
.end method

.method static synthetic access$0(Lnet/hasnath/android/keyboard/LatinKeyboardView;)Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mPlaying:Z

    return v0
.end method

.method static synthetic access$1(Lnet/hasnath/android/keyboard/LatinKeyboardView;)I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mStringIndex:I

    return v0
.end method

.method static synthetic access$2(Lnet/hasnath/android/keyboard/LatinKeyboardView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mStringToPlay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lnet/hasnath/android/keyboard/LatinKeyboardView;Z)V
    .locals 0

    .prologue
    .line 290
    iput-boolean p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mPlaying:Z

    return-void
.end method

.method static synthetic access$4(Lnet/hasnath/android/keyboard/LatinKeyboardView;)[Lnet/hasnath/android/keyboard/Keyboard$Key;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mAsciiKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    return-object v0
.end method

.method static synthetic access$5(Lnet/hasnath/android/keyboard/LatinKeyboardView;I)V
    .locals 0

    .prologue
    .line 287
    iput p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mStringIndex:I

    return-void
.end method

.method static synthetic access$6(Lnet/hasnath/android/keyboard/LatinKeyboardView;Z)V
    .locals 0

    .prologue
    .line 288
    iput-boolean p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mDownDelivered:Z

    return-void
.end method

.method private findKeys()V
    .locals 5

    .prologue
    .line 420
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getKeyboard()Lnet/hasnath/android/keyboard/Keyboard;

    move-result-object v3

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 422
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Lnet/hasnath/android/keyboard/Keyboard$Key;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 428
    return-void

    .line 423
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/hasnath/android/keyboard/Keyboard$Key;

    iget-object v3, v3, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v0, v3, v4

    .line 424
    .local v0, "code":I
    if-ltz v0, :cond_1

    const/16 v3, 0xff

    if-gt v0, v3, :cond_1

    .line 425
    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mAsciiKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/hasnath/android/keyboard/Keyboard$Key;

    aput-object v3, v4, v0

    .line 422
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private handleSuddenJump(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 180
    .local v8, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v12, v0

    .line 181
    .local v12, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v13, v0

    .line 182
    .local v13, "y":I
    const/4 v10, 0x0

    .line 185
    .local v10, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mDisableDisambiguation:Z

    .line 188
    :cond_0
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mDisableDisambiguation:Z

    if-eqz v0, :cond_2

    .line 190
    const/4 v0, 0x1

    if-ne v8, v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mDisableDisambiguation:Z

    .line 191
    :cond_1
    const/4 v0, 0x0

    .line 241
    :goto_0
    return v0

    .line 194
    :cond_2
    packed-switch v8, :pswitch_data_0

    .line 239
    :cond_3
    :goto_1
    iput v12, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mLastX:I

    .line 240
    iput v13, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mLastY:I

    move v0, v10

    .line 241
    goto :goto_0

    .line 197
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mDroppingEvents:Z

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mDisableDisambiguation:Z

    goto :goto_1

    .line 202
    :pswitch_1
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mLastX:I

    sub-int/2addr v0, v12

    iget v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mLastX:I

    sub-int/2addr v1, v12

    mul-int/2addr v0, v1

    iget v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mLastY:I

    sub-int/2addr v1, v13

    iget v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mLastY:I

    sub-int/2addr v2, v13

    mul-int/2addr v1, v2

    add-int v9, v0, v1

    .line 206
    .local v9, "distanceSquare":I
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mJumpThresholdSquare:I

    if-le v9, v0, :cond_6

    .line 207
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mLastY:I

    iget v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mLastRowY:I

    if-lt v0, v1, :cond_4

    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mLastRowY:I

    if-ge v13, v0, :cond_6

    .line 209
    :cond_4
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mDroppingEvents:Z

    if-nez v0, :cond_5

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mDroppingEvents:Z

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 213
    const/4 v4, 0x1

    .line 214
    iget v5, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mLastX:I

    int-to-float v5, v5

    iget v6, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mLastY:I

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    .line 212
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 215
    .local v11, "translated":Landroid/view/MotionEvent;
    invoke-super {p0, v11}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 216
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 218
    .end local v11    # "translated":Landroid/view/MotionEvent;
    :cond_5
    const/4 v10, 0x1

    .line 219
    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mDroppingEvents:Z

    if-eqz v0, :cond_3

    .line 221
    const/4 v10, 0x1

    .line 223
    goto :goto_1

    .line 225
    .end local v9    # "distanceSquare":I
    :pswitch_2
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mDroppingEvents:Z

    if-eqz v0, :cond_3

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 229
    const/4 v4, 0x0

    .line 230
    int-to-float v5, v12

    int-to-float v6, v13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    .line 228
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 231
    .restart local v11    # "translated":Landroid/view/MotionEvent;
    invoke-super {p0, v11}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 232
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mDroppingEvents:Z

    goto :goto_1

    .line 194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private invokeOnKey(I)Z
    .locals 3
    .param p1, "primaryCode"    # I

    .prologue
    const/4 v2, -0x1

    .line 134
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getOnKeyboardActionListener()Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v2, v2}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onKey(I[III)V

    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method private setKeyboardLocal(Lnet/hasnath/android/keyboard/Keyboard;)V
    .locals 0
    .param p1, "k"    # Lnet/hasnath/android/keyboard/Keyboard;

    .prologue
    .line 360
    return-void
.end method


# virtual methods
.method protected adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 142
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getKeyboard()Lnet/hasnath/android/keyboard/Keyboard;

    move-result-object v0

    .line 143
    .local v0, "keyboard":Lnet/hasnath/android/keyboard/Keyboard;
    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/Keyboard;->isShifted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    instance-of v1, v0, Lnet/hasnath/android/keyboard/LatinKeyboard;

    if-eqz v1, :cond_0

    .line 145
    check-cast v0, Lnet/hasnath/android/keyboard/LatinKeyboard;

    .end local v0    # "keyboard":Lnet/hasnath/android/keyboard/Keyboard;
    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboard;->isAlphaKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 147
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    sget v1, Lnet/hasnath/android/keyboard/LatinIME;->langNow:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xe5

    if-ne v1, v2, :cond_1

    .line 154
    .end local p1    # "label":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p1

    .line 152
    .restart local p1    # "label":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getKeyboardLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 443
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;->getInstance()Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;

    move-result-object v3

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;->reset()V

    .line 444
    const/4 v2, 0x1

    .line 445
    .local v2, "tryGC":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    if-nez v2, :cond_1

    .line 473
    :cond_0
    return-void

    .line 447
    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    const/4 v2, 0x0

    .line 445
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;->getInstance()Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;

    move-result-object v3

    const-string v4, "LatinKeyboardView"

    invoke-virtual {v3, v4, v0}, Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v2

    goto :goto_1
.end method

.method protected onLongPress(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z
    .locals 7
    .param p1, "key"    # Lnet/hasnath/android/keyboard/Keyboard$Key;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v5, -0x1

    .line 100
    iget-object v3, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v1, v3, v4

    .line 101
    .local v1, "primaryCode":I
    const/16 v3, -0x64

    if-ne v1, v3, :cond_0

    .line 102
    const/16 v2, -0x65

    invoke-direct {p0, v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->invokeOnKey(I)Z

    move-result v2

    .line 129
    :goto_0
    return v2

    .line 103
    :cond_0
    const/16 v3, 0x30

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getKeyboard()Lnet/hasnath/android/keyboard/Keyboard;

    move-result-object v3

    iget-object v4, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mPhoneKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    if-ne v3, v4, :cond_1

    .line 105
    const/16 v2, 0x2b

    invoke-direct {p0, v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->invokeOnKey(I)Z

    move-result v2

    goto :goto_0

    .line 106
    :cond_1
    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    .line 107
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getOnKeyboardActionListener()Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v3

    const/16 v4, -0x14b

    invoke-interface {v3, v4, v6, v5, v5}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onKey(I[III)V

    goto :goto_0

    .line 110
    :cond_2
    sget-boolean v3, Lnet/hasnath/android/keyboard/LatinIME;->CUT_COPY_PASTE:Z

    if-eqz v3, :cond_9

    .line 112
    const/16 v0, -0x385

    .line 113
    .local v0, "currentKey":I
    const/16 v3, 0x63

    if-eq v1, v3, :cond_3

    const/16 v3, 0x43

    if-ne v1, v3, :cond_5

    .line 114
    :cond_3
    const/16 v0, -0x3b1

    .line 121
    :cond_4
    :goto_1
    const/16 v3, -0x385

    if-eq v0, v3, :cond_9

    .line 122
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getOnKeyboardActionListener()Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v3

    invoke-interface {v3, v0, v6, v5, v5}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onKey(I[III)V

    goto :goto_0

    .line 115
    :cond_5
    const/16 v3, 0x76

    if-eq v1, v3, :cond_6

    const/16 v3, 0x56

    if-ne v1, v3, :cond_7

    .line 116
    :cond_6
    const/16 v0, -0x3b2

    goto :goto_1

    .line 117
    :cond_7
    const/16 v3, 0x78

    if-eq v1, v3, :cond_8

    const/16 v3, 0x58

    if-ne v1, v3, :cond_4

    .line 118
    :cond_8
    const/16 v0, -0x3b3

    goto :goto_1

    .line 129
    .end local v0    # "currentKey":I
    :cond_9
    invoke-super {p0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->onLongPress(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v2

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 246
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getKeyboard()Lnet/hasnath/android/keyboard/Keyboard;

    move-result-object v0

    check-cast v0, Lnet/hasnath/android/keyboard/LatinKeyboard;

    .line 254
    .local v0, "keyboard":Lnet/hasnath/android/keyboard/LatinKeyboard;
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->handleSuddenJump(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    :goto_0
    return v2

    .line 258
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 259
    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboard;->keyReleased()V

    .line 262
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 263
    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboard;->getLanguageChangeDirection()I

    move-result v1

    .line 264
    .local v1, "languageDirection":I
    if-eqz v1, :cond_3

    .line 265
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getOnKeyboardActionListener()Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v3

    .line 266
    if-ne v1, v2, :cond_2

    const/16 v2, -0x68

    .line 267
    :goto_1
    const/4 v4, 0x0

    iget v5, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mLastX:I

    iget v6, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mLastY:I

    .line 265
    invoke-interface {v3, v2, v4, v5, v6}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->onKey(I[III)V

    .line 268
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 269
    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboard;->keyReleased()V

    .line 270
    invoke-super {p0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 266
    :cond_2
    const/16 v2, -0x69

    goto :goto_1

    .line 274
    .end local v1    # "languageDirection":I
    :cond_3
    invoke-super {p0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public setKeyboard(Lnet/hasnath/android/keyboard/Keyboard;)V
    .locals 3
    .param p1, "newKeyboard"    # Lnet/hasnath/android/keyboard/Keyboard;

    .prologue
    .line 84
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getKeyboard()Lnet/hasnath/android/keyboard/Keyboard;

    move-result-object v0

    .line 85
    .local v0, "oldKeyboard":Lnet/hasnath/android/keyboard/Keyboard;
    instance-of v1, v0, Lnet/hasnath/android/keyboard/LatinKeyboard;

    if-eqz v1, :cond_0

    .line 87
    check-cast v0, Lnet/hasnath/android/keyboard/LatinKeyboard;

    .end local v0    # "oldKeyboard":Lnet/hasnath/android/keyboard/Keyboard;
    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboard;->keyReleased()V

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->setKeyboard(Lnet/hasnath/android/keyboard/Keyboard;)V

    .line 91
    invoke-virtual {p1}, Lnet/hasnath/android/keyboard/Keyboard;->getMinWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x7

    iput v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mJumpThresholdSquare:I

    .line 92
    iget v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mJumpThresholdSquare:I

    iget v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mJumpThresholdSquare:I

    mul-int/2addr v1, v2

    iput v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mJumpThresholdSquare:I

    .line 94
    invoke-virtual {p1}, Lnet/hasnath/android/keyboard/Keyboard;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mLastRowY:I

    .line 95
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->setKeyboardLocal(Lnet/hasnath/android/keyboard/Keyboard;)V

    .line 96
    return-void
.end method

.method public setPhoneKeyboard(Lnet/hasnath/android/keyboard/Keyboard;)V
    .locals 0
    .param p1, "phoneKeyboard"    # Lnet/hasnath/android/keyboard/Keyboard;

    .prologue
    .line 69
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mPhoneKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    .line 70
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 2
    .param p1, "previewEnabled"    # Z

    .prologue
    .line 74
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getKeyboard()Lnet/hasnath/android/keyboard/Keyboard;

    move-result-object v0

    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView;->mPhoneKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    if-ne v0, v1, :cond_0

    .line 76
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->setPreviewEnabled(Z)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-super {p0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->setPreviewEnabled(Z)V

    goto :goto_0
.end method

.method public setShiftLocked(Z)Z
    .locals 2
    .param p1, "shiftLocked"    # Z

    .prologue
    .line 158
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->getKeyboard()Lnet/hasnath/android/keyboard/Keyboard;

    move-result-object v0

    .line 159
    .local v0, "keyboard":Lnet/hasnath/android/keyboard/Keyboard;
    instance-of v1, v0, Lnet/hasnath/android/keyboard/LatinKeyboard;

    if-eqz v1, :cond_0

    .line 160
    check-cast v0, Lnet/hasnath/android/keyboard/LatinKeyboard;

    .end local v0    # "keyboard":Lnet/hasnath/android/keyboard/Keyboard;
    invoke-virtual {v0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->setShiftLocked(Z)V

    .line 161
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->invalidateAllKeys()V

    .line 162
    const/4 v1, 0x1

    .line 164
    :goto_0
    return v1

    .restart local v0    # "keyboard":Lnet/hasnath/android/keyboard/Keyboard;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startPlaying(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 439
    return-void
.end method
