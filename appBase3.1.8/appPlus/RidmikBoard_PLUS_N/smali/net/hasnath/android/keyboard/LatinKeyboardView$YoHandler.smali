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
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 369
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->removeMessages(I)V

    .line 370
    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->removeMessages(I)V

    .line 371
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$0(Lnet/hasnath/android/keyboard/LatinKeyboardView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 415
    :goto_0
    return-void

    .line 373
    :cond_0
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 375
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$1(Lnet/hasnath/android/keyboard/LatinKeyboardView;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$2(Lnet/hasnath/android/keyboard/LatinKeyboardView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$3(Lnet/hasnath/android/keyboard/LatinKeyboardView;Z)V

    goto :goto_0

    .line 379
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$2(Lnet/hasnath/android/keyboard/LatinKeyboardView;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$1(Lnet/hasnath/android/keyboard/LatinKeyboardView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 380
    .local v9, "c":C
    :goto_1
    const/16 v1, 0xff

    if-gt v9, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$4(Lnet/hasnath/android/keyboard/LatinKeyboardView;)[Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-result-object v1

    aget-object v1, v1, v9

    if-eqz v1, :cond_2

    .line 388
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$4(Lnet/hasnath/android/keyboard/LatinKeyboardView;)[Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-result-object v1

    aget-object v1, v1, v9

    iget v1, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    add-int/lit8 v13, v1, 0xa

    .line 389
    .local v13, "x":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$4(Lnet/hasnath/android/keyboard/LatinKeyboardView;)[Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-result-object v1

    aget-object v1, v1, v9

    iget v1, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    add-int/lit8 v15, v1, 0x1a

    .line 390
    .local v15, "y":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 391
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 392
    const/4 v5, 0x0

    int-to-float v6, v13

    int-to-float v7, v15

    const/4 v8, 0x0

    .line 390
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 393
    .local v11, "me":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-virtual {v1, v11}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 394
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 395
    const/4 v1, 0x2

    const-wide/16 v2, 0x1f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 397
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$6(Lnet/hasnath/android/keyboard/LatinKeyboardView;Z)V

    goto/16 :goto_0

    .line 381
    .end local v11    # "me":Landroid/view/MotionEvent;
    .end local v13    # "x":I
    .end local v15    # "y":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$1(Lnet/hasnath/android/keyboard/LatinKeyboardView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$5(Lnet/hasnath/android/keyboard/LatinKeyboardView;I)V

    .line 382
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$1(Lnet/hasnath/android/keyboard/LatinKeyboardView;)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$2(Lnet/hasnath/android/keyboard/LatinKeyboardView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$3(Lnet/hasnath/android/keyboard/LatinKeyboardView;Z)V

    goto/16 :goto_0

    .line 386
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$2(Lnet/hasnath/android/keyboard/LatinKeyboardView;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$1(Lnet/hasnath/android/keyboard/LatinKeyboardView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto/16 :goto_1

    .line 400
    .end local v9    # "c":C
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$2(Lnet/hasnath/android/keyboard/LatinKeyboardView;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$1(Lnet/hasnath/android/keyboard/LatinKeyboardView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 401
    .local v10, "cUp":C
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$4(Lnet/hasnath/android/keyboard/LatinKeyboardView;)[Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-result-object v1

    aget-object v1, v1, v10

    iget v1, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    add-int/lit8 v14, v1, 0xa

    .line 402
    .local v14, "x2":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$4(Lnet/hasnath/android/keyboard/LatinKeyboardView;)[Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-result-object v1

    aget-object v1, v1, v10

    iget v1, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    add-int/lit8 v16, v1, 0x1a

    .line 403
    .local v16, "y2":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-static {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$1(Lnet/hasnath/android/keyboard/LatinKeyboardView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$5(Lnet/hasnath/android/keyboard/LatinKeyboardView;I)V

    .line 405
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 406
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 407
    const/4 v5, 0x1

    int-to-float v6, v14

    move/from16 v0, v16

    int-to-float v7, v0

    const/4 v8, 0x0

    .line 405
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    .line 408
    .local v12, "me2":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    invoke-virtual {v1, v12}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 409
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    .line 410
    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 412
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/LatinKeyboardView$YoHandler;->outer:Lnet/hasnath/android/keyboard/LatinKeyboardView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/hasnath/android/keyboard/LatinKeyboardView;->access$6(Lnet/hasnath/android/keyboard/LatinKeyboardView;Z)V

    goto/16 :goto_0

    .line 373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
