.class public Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;
.super Landroid/os/Handler;
.source "LatinKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/LatinKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YoHandler"
.end annotation


# instance fields
.field private final outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;


# direct methods
.method public constructor <init>(Lnet/hasnath/android/keyboard/LatinKeyboardView;)V
    .locals 0
    .param p1, "lv"    # Lnet/hasnath/android/keyboard/LatinKeyboardView;

    .prologue
    .line 364
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 365
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    .line 366
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 369
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->removeMessages(I)V

    .line 370
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->removeMessages(I)V

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$0(Lnet/hasnath/android/keyboard/LatinKeyboardView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 415
    :goto_0
    return-void

    .line 373
    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 375
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$1(Lnet/hasnath/android/keyboard/LatinKeyboardView;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v3}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$2(Lnet/hasnath/android/keyboard/LatinKeyboardView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$3(Lnet/hasnath/android/keyboard/LatinKeyboardView;Z)V

    goto :goto_0

    .line 379
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$2(Lnet/hasnath/android/keyboard/LatinKeyboardView;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v3}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$1(Lnet/hasnath/android/keyboard/LatinKeyboardView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 380
    .local v10, "c":C
    :goto_1
    const/16 v2, 0xff

    if-gt v10, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$4(Lnet/hasnath/android/keyboard/LatinKeyboardView;)[Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-result-object v2

    aget-object v2, v2, v10

    if-eqz v2, :cond_2

    .line 388
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$4(Lnet/hasnath/android/keyboard/LatinKeyboardView;)[Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-result-object v2

    aget-object v2, v2, v10

    iget v2, v2, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    add-int/lit8 v14, v2, 0xa

    .line 389
    .local v14, "x":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$4(Lnet/hasnath/android/keyboard/LatinKeyboardView;)[Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-result-object v2

    aget-object v2, v2, v10

    iget v2, v2, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    add-int/lit8 v16, v2, 0x1a

    .line 390
    .local v16, "y":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 391
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 392
    const/4 v6, 0x0

    int-to-float v7, v14

    move/from16 v0, v16

    int-to-float v8, v0

    const/4 v9, 0x0

    .line 390
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    .line 393
    .local v12, "me":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-virtual {v2, v12}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 394
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    .line 395
    const/4 v2, 0x2

    const-wide/16 v4, 0x1f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$6(Lnet/hasnath/android/keyboard/LatinKeyboardView;Z)V

    goto/16 :goto_0

    .line 381
    .end local v12    # "me":Landroid/view/MotionEvent;
    .end local v14    # "x":I
    .end local v16    # "y":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$1(Lnet/hasnath/android/keyboard/LatinKeyboardView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$5(Lnet/hasnath/android/keyboard/LatinKeyboardView;I)V

    .line 382
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$1(Lnet/hasnath/android/keyboard/LatinKeyboardView;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v3}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$2(Lnet/hasnath/android/keyboard/LatinKeyboardView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$3(Lnet/hasnath/android/keyboard/LatinKeyboardView;Z)V

    goto/16 :goto_0

    .line 386
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$2(Lnet/hasnath/android/keyboard/LatinKeyboardView;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v3}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$1(Lnet/hasnath/android/keyboard/LatinKeyboardView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto/16 :goto_1

    .line 400
    .end local v10    # "c":C
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$2(Lnet/hasnath/android/keyboard/LatinKeyboardView;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v3}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$1(Lnet/hasnath/android/keyboard/LatinKeyboardView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 401
    .local v11, "cUp":C
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$4(Lnet/hasnath/android/keyboard/LatinKeyboardView;)[Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-result-object v2

    aget-object v2, v2, v11

    iget v2, v2, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    add-int/lit8 v15, v2, 0xa

    .line 402
    .local v15, "x2":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$4(Lnet/hasnath/android/keyboard/LatinKeyboardView;)[Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-result-object v2

    aget-object v2, v2, v11

    iget v2, v2, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    add-int/lit8 v17, v2, 0x1a

    .line 403
    .local v17, "y2":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$1(Lnet/hasnath/android/keyboard/LatinKeyboardView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$5(Lnet/hasnath/android/keyboard/LatinKeyboardView;I)V

    .line 405
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 406
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 407
    const/4 v6, 0x1

    int-to-float v7, v15

    move/from16 v0, v17

    int-to-float v8, v0

    const/4 v9, 0x0

    .line 405
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v13

    .line 408
    .local v13, "me2":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-virtual {v2, v13}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 409
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    .line 410
    const/4 v2, 0x1

    const-wide/16 v4, 0x1f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$6(Lnet/hasnath/android/keyboard/LatinKeyboardView;Z)V

    goto/16 :goto_0

    .line 373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
