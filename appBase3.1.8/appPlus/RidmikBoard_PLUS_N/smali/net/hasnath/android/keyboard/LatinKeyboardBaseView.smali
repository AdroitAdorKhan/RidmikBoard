.class public Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;
.super Landroid/view/View;
.source "LatinKeyboardBaseView.java"

# interfaces
.implements Lnet/hasnath/android/keyboard/PointerTracker$UIProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;,
        Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;,
        Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LONG_PRESSABLE_STATE_SET:[I

.field static final NOT_A_KEY:I = -0x1

.field public static final NOT_A_TOUCH_COORDINATE:I = -0x1

.field private static final NUMBER_HINT_VERTICAL_ADJUSTMENT_PIXEL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LatinKeyboardBaseView"


# instance fields
.field private final KEY_LABEL_HEIGHT_REFERENCE_CHAR:Ljava/lang/String;

.field private final KEY_LABEL_VERTICAL_ADJUSTMENT_FACTOR:F

.field private mBackgroundDimAmount:F

.field private mBuffer:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private final mClipRegion:Landroid/graphics/Rect;

.field private mDarkShadowColor:I

.field private final mDelayAfterPreview:I

.field private final mDelayBeforePreview:I

.field private final mDirtyRect:Landroid/graphics/Rect;

.field private final mDisambiguateSwipe:Z

.field private mDrawPending:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

.field private final mHasDistinctMultitouch:Z

.field private final mHintBottomPaddingPlus:I

.field private mHintColor:I

.field private final mHintTextSize:F

.field private final mHintToLeft:I

.field private final mHintToUp:I

.field private mInvalidatedKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

.field private mKeyBackground:Landroid/graphics/drawable/Drawable;

.field private mKeyDarkTextColor:I

.field protected mKeyDetector:Lnet/hasnath/android/keyboard/KeyDetector;

.field private mKeyHysteresisDistance:F

.field private final mKeyRepeatInterval:I

.field private mKeyTextColor:I

.field private mKeyTextSize:I

.field private mKeyTextStyle:Landroid/graphics/Typeface;

.field private mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

.field private mKeyboardActionListener:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

.field private mKeyboardChanged:Z

.field private mKeyboardVerticalGap:I

.field private mKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

.field private mLabelTextSize:I

.field private mLongPressDelay:I

.field private mMiniKeyboard:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

.field private final mMiniKeyboardCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lnet/hasnath/android/keyboard/Keyboard$Key;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniKeyboardOriginX:I

.field private mMiniKeyboardOriginY:I

.field private mMiniKeyboardParent:Landroid/view/View;

.field private mMiniKeyboardPopup:Landroid/widget/PopupWindow;

.field private mMiniKeyboardPopupTime:J

.field private final mMiniKeyboardSlideAllowance:F

.field private mMiniKeyboardTrackerId:I

.field private mModifierTextColor:I

.field private mOffsetInWindow:[I

.field private mOldPointerCount:I

.field private mOldPreviewKeyIndex:I

.field private final mPadding:Landroid/graphics/Rect;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPointerQueue:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;

.field private final mPointerTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/hasnath/android/keyboard/PointerTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupLayout:I

.field private mPopupPreviewDisplayedY:I

.field private mPopupPreviewOffsetX:I

.field private mPopupPreviewOffsetY:I

.field private mPreviewHeight:I

.field private mPreviewOffset:I

.field private mPreviewPopup:Landroid/widget/PopupWindow;

.field private mPreviewText:Landroid/widget/TextView;

.field private mPreviewTextSizeLarge:I

.field private mShadowColor:I

.field private mShadowRadius:F

.field private mShowPreview:Z

.field private mShowTouchPoints:Z

.field private final mSwipeThreshold:I

.field private final mSwipeTracker:Lnet/hasnath/android/keyboard/SwipeTracker;

.field private mSymbolColorScheme:I

.field private final mTextHeightCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalCorrection:F

.field private mWindowOffset:[I

.field private mWindowY:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 170
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101023c

    aput v2, v0, v1

    sput-object v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->LONG_PRESSABLE_STATE_SET:[I

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 426
    const v0, 0x7f010020

    invoke-direct {p0, p1, p2, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 427
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 430
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 177
    sget-object v14, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    .line 179
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mSymbolColorScheme:I

    .line 203
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOldPreviewKeyIndex:I

    .line 204
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mShowPreview:Z

    .line 205
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mShowTouchPoints:Z

    .line 222
    new-instance v14, Ljava/util/WeakHashMap;

    invoke-direct {v14}, Ljava/util/WeakHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardCache:Ljava/util/WeakHashMap;

    .line 233
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    .line 236
    new-instance v14, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-direct {v14}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerQueue:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;

    .line 239
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOldPointerCount:I

    .line 241
    new-instance v14, Lnet/hasnath/android/keyboard/ProximityKeyDetector;

    invoke-direct {v14}, Lnet/hasnath/android/keyboard/ProximityKeyDetector;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyDetector:Lnet/hasnath/android/keyboard/KeyDetector;

    .line 245
    new-instance v14, Lnet/hasnath/android/keyboard/SwipeTracker;

    invoke-direct {v14}, Lnet/hasnath/android/keyboard/SwipeTracker;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mSwipeTracker:Lnet/hasnath/android/keyboard/SwipeTracker;

    .line 253
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    .line 263
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mClipRegion:Landroid/graphics/Rect;

    .line 265
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mTextHeightCache:Ljava/util/HashMap;

    .line 267
    const v14, 0x3f0ccccd    # 0.55f

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->KEY_LABEL_VERTICAL_ADJUSTMENT_FACTOR:F

    .line 268
    const-string v14, "H"

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->KEY_LABEL_HEIGHT_REFERENCE_CHAR:Ljava/lang/String;

    .line 270
    new-instance v14, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;-><init>(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHandler:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    .line 433
    sget-object v14, Lnet/hasnath/android/keyboard/R$styleable;->LatinKeyboardBaseView:[I

    const v15, 0x7f0e0001

    .line 432
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v14, v2, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 435
    .local v3, "a":Landroid/content/res/TypedArray;
    const-string v14, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 436
    .local v7, "inflate":Landroid/view/LayoutInflater;
    const/4 v11, 0x0

    .line 437
    .local v11, "previewLayout":I
    const/4 v8, 0x0

    .line 440
    .local v8, "keyTextSize":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v10

    .line 442
    .local v10, "n":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v10, :cond_0

    .line 524
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 527
    .local v12, "res":Landroid/content/res/Resources;
    const v14, 0x7f0c000d

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHintTextSize:F

    .line 528
    const v14, 0x7f090059

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHintToLeft:I

    .line 529
    const v14, 0x7f09005a

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHintToUp:I

    .line 530
    const/4 v14, 0x7

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHintBottomPaddingPlus:I

    .line 532
    new-instance v14, Landroid/widget/PopupWindow;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 533
    if-eqz v11, :cond_1

    .line 534
    const/4 v14, 0x0

    invoke-virtual {v7, v11, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    .line 535
    const v14, 0x7f0c000b

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewTextSizeLarge:I

    .line 536
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 541
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 542
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const v15, 0x7f0e0002

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 543
    const v14, 0x7f09004b

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDelayBeforePreview:I

    .line 544
    const v14, 0x7f09004c

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDelayAfterPreview:I

    .line 546
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardParent:Landroid/view/View;

    .line 547
    new-instance v14, Landroid/widget/PopupWindow;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    .line 548
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 549
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    const v15, 0x7f0e0003

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 551
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    .line 552
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 553
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    int-to-float v15, v8

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 554
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    sget-object v15, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 555
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    const/16 v15, 0xff

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 557
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPadding:Landroid/graphics/Rect;

    .line 558
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 560
    const/high16 v14, 0x43fa0000    # 500.0f

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mSwipeThreshold:I

    .line 562
    const v14, 0x7f0a0003

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDisambiguateSwipe:Z

    .line 563
    const v14, 0x7f0c000f

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardSlideAllowance:F

    .line 566
    new-instance v9, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$1;-><init>(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)V

    .line 604
    .local v9, "listener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    const/4 v6, 0x1

    .line 605
    .local v6, "ignoreMultitouch":Z
    new-instance v14, Landroid/view/GestureDetector;

    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v15, v9, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 606
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 608
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 609
    const-string v15, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    .line 608
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHasDistinctMultitouch:Z

    .line 610
    const v14, 0x7f090052

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyRepeatInterval:I

    .line 611
    return-void

    .line 443
    .end local v6    # "ignoreMultitouch":Z
    .end local v9    # "listener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    .end local v12    # "res":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 445
    .local v4, "attr":I
    packed-switch v4, :pswitch_data_0

    .line 442
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 447
    :pswitch_0
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 450
    :pswitch_1
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyHysteresisDistance:F

    goto :goto_2

    .line 453
    :pswitch_2
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mVerticalCorrection:F

    goto :goto_2

    .line 456
    :pswitch_3
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 457
    goto :goto_2

    .line 459
    :pswitch_4
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewOffset:I

    goto :goto_2

    .line 462
    :pswitch_5
    const/16 v14, 0x50

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewHeight:I

    goto :goto_2

    .line 465
    :pswitch_6
    const/16 v14, 0x12

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyTextSize:I

    goto :goto_2

    .line 468
    :pswitch_7
    const/high16 v14, -0x1000000

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyTextColor:I

    goto :goto_2

    .line 471
    :pswitch_8
    const/high16 v14, -0x1000000

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHintColor:I

    goto :goto_2

    .line 474
    :pswitch_9
    const/high16 v14, -0x1000000

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mModifierTextColor:I

    goto :goto_2

    .line 477
    :pswitch_a
    const/high16 v14, -0x1000000

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyDarkTextColor:I

    goto :goto_2

    .line 480
    :pswitch_b
    const/16 v14, 0xe

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mLabelTextSize:I

    goto :goto_2

    .line 483
    :pswitch_c
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPopupLayout:I

    goto/16 :goto_2

    .line 486
    :pswitch_d
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mShadowColor:I

    goto/16 :goto_2

    .line 489
    :pswitch_e
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDarkShadowColor:I

    goto/16 :goto_2

    .line 492
    :pswitch_f
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mShadowRadius:F

    goto/16 :goto_2

    .line 496
    :pswitch_10
    const/high16 v14, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mBackgroundDimAmount:F

    goto/16 :goto_2

    .line 500
    :pswitch_11
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 501
    .local v13, "textStyle":I
    packed-switch v13, :pswitch_data_1

    .line 509
    invoke-static {v13}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    goto/16 :goto_2

    .line 503
    :pswitch_12
    sget-object v14, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    goto/16 :goto_2

    .line 506
    :pswitch_13
    sget-object v14, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    goto/16 :goto_2

    .line 514
    .end local v13    # "textStyle":I
    :pswitch_14
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mSymbolColorScheme:I

    goto/16 :goto_2

    .line 539
    .end local v4    # "attr":I
    .restart local v12    # "res":Landroid/content/res/Resources;
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mShowPreview:Z

    goto/16 :goto_1

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
        :pswitch_b
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_8
        :pswitch_9
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_14
    .end packed-switch

    .line 501
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method static synthetic access$0(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;ILnet/hasnath/android/keyboard/PointerTracker;)V
    .locals 0

    .prologue
    .line 1096
    invoke-direct {p0, p1, p2}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->showKey(ILnet/hasnath/android/keyboard/PointerTracker;)V

    return-void
.end method

.method static synthetic access$1(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$2(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyRepeatInterval:I

    return v0
.end method

.method static synthetic access$3(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;ILnet/hasnath/android/keyboard/PointerTracker;)Z
    .locals 1

    .prologue
    .line 1212
    invoke-direct {p0, p1, p2}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->openPopupIfRequired(ILnet/hasnath/android/keyboard/PointerTracker;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Lnet/hasnath/android/keyboard/SwipeTracker;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mSwipeTracker:Lnet/hasnath/android/keyboard/SwipeTracker;

    return-object v0
.end method

.method static synthetic access$6(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mSwipeThreshold:I

    return v0
.end method

.method static synthetic access$7(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDisambiguateSwipe:Z

    return v0
.end method

.method static synthetic access$8(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    return-object v0
.end method

.method static synthetic access$9(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)V
    .locals 0

    .prologue
    .line 1654
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->dismissPopupKeyboard()V

    return-void
.end method

.method private computeProximityThreshold(Lnet/hasnath/android/keyboard/Keyboard;)V
    .locals 8
    .param p1, "keyboard"    # Lnet/hasnath/android/keyboard/Keyboard;

    .prologue
    .line 809
    if-nez p1, :cond_1

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 811
    .local v3, "keys":[Lnet/hasnath/android/keyboard/Keyboard$Key;
    if-eqz v3, :cond_0

    .line 812
    array-length v4, v3

    .line 813
    .local v4, "length":I
    const/4 v0, 0x0

    .line 814
    .local v0, "dimensionSum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v4, :cond_2

    .line 818
    if-ltz v0, :cond_0

    if-eqz v4, :cond_0

    .line 819
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyDetector:Lnet/hasnath/android/keyboard/KeyDetector;

    int-to-float v6, v0

    const v7, 0x3fb33333    # 1.4f

    mul-float/2addr v6, v7

    int-to-float v7, v4

    div-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Lnet/hasnath/android/keyboard/KeyDetector;->setProximityThreshold(I)V

    goto :goto_0

    .line 815
    :cond_2
    aget-object v2, v3, v1

    .line 816
    .local v2, "key":Lnet/hasnath/android/keyboard/Keyboard$Key;
    iget v5, v2, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    iget v6, v2, Lnet/hasnath/android/keyboard/Keyboard$Key;->height:I

    iget v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardVerticalGap:I

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, v2, Lnet/hasnath/android/keyboard/Keyboard$Key;->gap:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 814
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private dismissKeyPreview()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1068
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1070
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->showPreview(ILnet/hasnath/android/keyboard/PointerTracker;)V

    .line 1071
    return-void

    .line 1068
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hasnath/android/keyboard/PointerTracker;

    .line 1069
    .local v0, "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    invoke-virtual {v0, v3}, Lnet/hasnath/android/keyboard/PointerTracker;->updateKey(I)V

    goto :goto_0
.end method

.method private dismissPopupKeyboard()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1655
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1657
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    .line 1658
    iput v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardOriginX:I

    .line 1659
    iput v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardOriginY:I

    .line 1660
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->invalidateAllKeys()V

    .line 1662
    :cond_0
    return-void
.end method

.method private generateMiniKeyboardMotionEvent(IIIJ)Landroid/view/MotionEvent;
    .locals 8
    .param p1, "action"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "eventTime"    # J

    .prologue
    .line 1445
    iget-wide v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardPopupTime:J

    .line 1446
    iget v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardOriginX:I

    sub-int v2, p2, v2

    int-to-float v5, v2

    iget v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardOriginY:I

    sub-int v2, p3, v2

    int-to-float v6, v2

    const/4 v7, 0x0

    move-wide v2, p4

    move v4, p1

    .line 1445
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private getPointerTracker(I)Lnet/hasnath/android/keyboard/PointerTracker;
    .locals 10
    .param p1, "id"    # I

    .prologue
    .line 1450
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    .line 1451
    .local v9, "pointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hasnath/android/keyboard/PointerTracker;>;"
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 1452
    .local v7, "keys":[Lnet/hasnath/android/keyboard/Keyboard$Key;
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    .line 1455
    .local v8, "listener":Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-le v1, p1, :cond_0

    .line 1466
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/hasnath/android/keyboard/PointerTracker;

    return-object v2

    .line 1457
    :cond_0
    new-instance v0, Lnet/hasnath/android/keyboard/PointerTracker;

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHandler:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyDetector:Lnet/hasnath/android/keyboard/KeyDetector;

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1458
    iget v6, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mLongPressDelay:I

    move-object v4, p0

    .line 1457
    invoke-direct/range {v0 .. v6}, Lnet/hasnath/android/keyboard/PointerTracker;-><init>(ILnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;Lnet/hasnath/android/keyboard/KeyDetector;Lnet/hasnath/android/keyboard/PointerTracker$UIProxy;Landroid/content/res/Resources;I)V

    .line 1459
    .local v0, "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    if-eqz v7, :cond_1

    .line 1460
    iget v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyHysteresisDistance:F

    invoke-virtual {v0, v7, v2}, Lnet/hasnath/android/keyboard/PointerTracker;->setKeyboard([Lnet/hasnath/android/keyboard/Keyboard$Key;F)V

    .line 1461
    :cond_1
    if-eqz v8, :cond_2

    .line 1462
    invoke-virtual {v0, v8}, Lnet/hasnath/android/keyboard/PointerTracker;->setOnKeyboardActionListener(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;)V

    .line 1463
    :cond_2
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1455
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static hasMultiplePopupChars(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z
    .locals 2
    .param p0, "key"    # Lnet/hasnath/android/keyboard/Keyboard$Key;

    .prologue
    const/4 v0, 0x1

    .line 1396
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 1399
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inflateMiniKeyboardContainer(Lnet/hasnath/android/keyboard/Keyboard$Key;)Landroid/view/View;
    .locals 11
    .param p1, "popupKey"    # Lnet/hasnath/android/keyboard/Keyboard$Key;

    .prologue
    const/4 v4, 0x0

    const/high16 v10, -0x80000000

    .line 1233
    iget v2, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupResId:I

    .line 1234
    .local v2, "popupKeyboardId":I
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1235
    const-string v3, "layout_inflater"

    .line 1234
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 1236
    .local v7, "inflater":Landroid/view/LayoutInflater;
    iget v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPopupLayout:I

    invoke-virtual {v7, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1237
    .local v6, "container":Landroid/view/View;
    if-nez v6, :cond_0

    .line 1238
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1241
    :cond_0
    const v1, 0x7f070012

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    .line 1242
    .local v8, "miniKeyboard":Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;
    new-instance v1, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$2;

    invoke-direct {v1, p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$2;-><init>(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)V

    invoke-virtual {v8, v1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->setOnKeyboardActionListener(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;)V

    .line 1274
    new-instance v1, Lnet/hasnath/android/keyboard/MiniKeyboardKeyDetector;

    iget v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardSlideAllowance:F

    invoke-direct {v1, v3}, Lnet/hasnath/android/keyboard/MiniKeyboardKeyDetector;-><init>(F)V

    iput-object v1, v8, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyDetector:Lnet/hasnath/android/keyboard/KeyDetector;

    .line 1276
    iput-object v4, v8, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1279
    iget-object v1, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1280
    new-instance v0, Lnet/hasnath/android/keyboard/Keyboard;

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 1281
    const/4 v4, -0x1

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingRight()I

    move-result v9

    add-int/2addr v5, v9

    .line 1280
    invoke-direct/range {v0 .. v5}, Lnet/hasnath/android/keyboard/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 1285
    .local v0, "keyboard":Lnet/hasnath/android/keyboard/Keyboard;
    :goto_0
    invoke-virtual {v8, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->setKeyboard(Lnet/hasnath/android/keyboard/Keyboard;)V

    .line 1286
    invoke-virtual {v8, p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->setPopupParent(Landroid/view/View;)V

    .line 1288
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getWidth()I

    move-result v1

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1289
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getHeight()I

    move-result v3

    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1288
    invoke-virtual {v6, v1, v3}, Landroid/view/View;->measure(II)V

    .line 1291
    return-object v6

    .line 1283
    .end local v0    # "keyboard":Lnet/hasnath/android/keyboard/Keyboard;
    :cond_1
    new-instance v0, Lnet/hasnath/android/keyboard/Keyboard;

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lnet/hasnath/android/keyboard/Keyboard;-><init>(Landroid/content/Context;I)V

    .restart local v0    # "keyboard":Lnet/hasnath/android/keyboard/Keyboard;
    goto :goto_0
.end method

.method private static isAsciiDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 1441
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLatinF1Key(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z
    .locals 1
    .param p1, "key"    # Lnet/hasnath/android/keyboard/Keyboard$Key;

    .prologue
    .line 1413
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    instance-of v0, v0, Lnet/hasnath/android/keyboard/LatinKeyboard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    check-cast v0, Lnet/hasnath/android/keyboard/LatinKeyboard;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->isF1Key(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNonMicLatinF1Key(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z
    .locals 1
    .param p1, "key"    # Lnet/hasnath/android/keyboard/Keyboard$Key;

    .prologue
    .line 1417
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isLatinF1Key(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNumberAtEdgeOfPopupChars(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z
    .locals 1
    .param p0, "key"    # Lnet/hasnath/android/keyboard/Keyboard$Key;

    .prologue
    .line 1421
    invoke-static {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isNumberAtLeftmostPopupChar(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isNumberAtRightmostPopupChar(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isNumberAtLeftmostPopupChar(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z
    .locals 2
    .param p0, "key"    # Lnet/hasnath/android/keyboard/Keyboard$Key;

    .prologue
    const/4 v0, 0x0

    .line 1425
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1426
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isAsciiDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1427
    const/4 v0, 0x1

    .line 1429
    :cond_0
    return v0
.end method

.method static isNumberAtRightmostPopupChar(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z
    .locals 2
    .param p0, "key"    # Lnet/hasnath/android/keyboard/Keyboard$Key;

    .prologue
    .line 1433
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1434
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    iget-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isAsciiDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1435
    const/4 v0, 0x1

    .line 1437
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isOneRowKeys(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/hasnath/android/keyboard/Keyboard$Key;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "keys":Ljava/util/List;, "Ljava/util/List<Lnet/hasnath/android/keyboard/Keyboard$Key;>;"
    const/4 v2, 0x0

    .line 1295
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 1303
    :goto_0
    return v1

    .line 1296
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/hasnath/android/keyboard/Keyboard$Key;

    iget v0, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->edgeFlags:I

    .line 1303
    .local v0, "edgeFlags":I
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private onBufferDraw()V
    .locals 44

    .prologue
    .line 839
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardChanged:Z

    if-eqz v3, :cond_3

    .line 840
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardChanged:Z

    if-eqz v3, :cond_2

    .line 841
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 843
    :cond_1
    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    .line 844
    .local v42, "width":I
    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 845
    .local v19, "height":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v42

    move/from16 v1, v19

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    .line 846
    new-instance v3, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mCanvas:Landroid/graphics/Canvas;

    .line 848
    .end local v19    # "height":I
    .end local v42    # "width":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->invalidateAllKeys()V

    .line 849
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardChanged:Z

    .line 851
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mCanvas:Landroid/graphics/Canvas;

    .line 852
    .local v2, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 854
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    if-nez v3, :cond_4

    .line 1060
    :goto_0
    return-void

    .line 856
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    .line 857
    .local v7, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    .line 858
    .local v26, "keyBackground":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mClipRegion:Landroid/graphics/Rect;

    .line 859
    .local v12, "clipRegion":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    .line 860
    .local v35, "padding":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v23

    .line 861
    .local v23, "kbdPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v24

    .line 862
    .local v24, "kbdPaddingTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-object/from16 v28, v0

    .line 863
    .local v28, "keys":[Lnet/hasnath/android/keyboard/Keyboard$Key;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mInvalidatedKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-object/from16 v22, v0

    .line 866
    .local v22, "invalidKey":Lnet/hasnath/android/keyboard/Keyboard$Key;
    const/4 v13, 0x0

    .line 867
    .local v13, "drawSingleKey":Z
    if-eqz v22, :cond_5

    invoke-virtual {v2, v12}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 870
    move-object/from16 v0, v22

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    add-int v3, v3, v23

    add-int/lit8 v3, v3, -0x1

    iget v4, v12, Landroid/graphics/Rect;->left:I

    if-gt v3, v4, :cond_5

    .line 871
    move-object/from16 v0, v22

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    add-int v3, v3, v24

    add-int/lit8 v3, v3, -0x1

    iget v4, v12, Landroid/graphics/Rect;->top:I

    if-gt v3, v4, :cond_5

    .line 872
    move-object/from16 v0, v22

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    move-object/from16 v0, v22

    iget v4, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    add-int v3, v3, v23

    add-int/lit8 v3, v3, 0x1

    iget v4, v12, Landroid/graphics/Rect;->right:I

    if-lt v3, v4, :cond_5

    .line 873
    move-object/from16 v0, v22

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    move-object/from16 v0, v22

    iget v4, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->height:I

    add-int/2addr v3, v4

    add-int v3, v3, v24

    add-int/lit8 v3, v3, 0x1

    iget v4, v12, Landroid/graphics/Rect;->bottom:I

    if-lt v3, v4, :cond_5

    .line 874
    const/4 v13, 0x1

    .line 877
    :cond_5
    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 883
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v27, v0

    .line 884
    .local v27, "keyCount":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v27

    if-lt v0, v1, :cond_7

    .line 1032
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mInvalidatedKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 1040
    const/16 v37, 0x0

    .line 1042
    .local v37, "showGesture":Z
    if-eqz v37, :cond_6

    .line 1043
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mShowTouchPoints:Z

    if-eqz v3, :cond_6

    .line 1044
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v43

    :goto_2
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_19

    .line 1058
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDrawPending:Z

    .line 1059
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_0

    .line 885
    .end local v37    # "showGesture":Z
    :cond_7
    aget-object v25, v28, v21

    .line 886
    .local v25, "key":Lnet/hasnath/android/keyboard/Keyboard$Key;
    if-eqz v13, :cond_8

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_8

    .line 884
    :goto_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 889
    :cond_8
    move-object/from16 v0, v25

    iget-boolean v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->modifier:Z

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyDarkTextColor:I

    :goto_4
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 890
    invoke-virtual/range {v25 .. v25}, Lnet/hasnath/android/keyboard/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v15

    .line 891
    .local v15, "drawableState":[I
    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 895
    move-object/from16 v0, v25

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v3, :cond_11

    const/16 v29, 0x0

    .line 897
    .local v29, "label":Ljava/lang/String;
    :goto_5
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 898
    .local v9, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, v25

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    iget v4, v9, Landroid/graphics/Rect;->right:I

    if-ne v3, v4, :cond_9

    move-object/from16 v0, v25

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->height:I

    iget v4, v9, Landroid/graphics/Rect;->bottom:I

    if-eq v3, v4, :cond_a

    .line 899
    :cond_9
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v25

    iget v5, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    move-object/from16 v0, v25

    iget v6, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->height:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 901
    :cond_a
    move-object/from16 v0, v25

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    add-int v3, v3, v23

    int-to-float v3, v3

    move-object/from16 v0, v25

    iget v4, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    add-int v4, v4, v24

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 902
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 904
    const/16 v36, 0x1

    .line 905
    .local v36, "shouldDrawIcon":Z
    if-eqz v29, :cond_e

    .line 908
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_12

    move-object/from16 v0, v25

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    array-length v3, v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_12

    .line 909
    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mLabelTextSize:I

    move/from16 v32, v0

    .line 910
    .local v32, "labelSize":I
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 916
    :goto_6
    invoke-direct/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->useBanglaFont()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 917
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Ridmik.ttf"

    invoke-static {v3, v4}, Lnet/hasnath/android/keyboard/Typefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 919
    :cond_b
    move/from16 v0, v32

    int-to-float v3, v0

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 921
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mTextHeightCache:Ljava/util/HashMap;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    .line 923
    .local v31, "labelHeightValue":Ljava/lang/Integer;
    if-eqz v31, :cond_13

    .line 924
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v30

    .line 943
    .local v30, "labelHeight":I
    :goto_7
    move-object/from16 v0, v25

    iget-boolean v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->modifier:Z

    if-eqz v3, :cond_14

    .line 944
    move-object/from16 v0, p0

    iget v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mModifierTextColor:I

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 945
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 954
    :goto_8
    move-object/from16 v0, v25

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    div-int/lit8 v10, v3, 0x2

    .line 955
    .local v10, "centerX":I
    move-object/from16 v0, v25

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->height:I

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHintBottomPaddingPlus:I

    add-int/2addr v3, v4

    div-int/lit8 v11, v3, 0x2

    .line 956
    .local v11, "centerY":I
    int-to-float v3, v11

    .line 957
    move/from16 v0, v30

    int-to-float v4, v0

    const v5, 0x3f0ccccd    # 0.55f

    mul-float/2addr v4, v5

    .line 956
    add-float v8, v3, v4

    .line 959
    .local v8, "baseline":F
    int-to-float v3, v10

    move-object/from16 v0, v29

    invoke-virtual {v2, v0, v3, v8, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 964
    move-object/from16 v0, v25

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v3, :cond_d

    move-object/from16 v0, v25

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_d

    .line 965
    move-object/from16 v0, p0

    iget v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHintTextSize:F

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 966
    move-object/from16 v0, p0

    iget v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHintColor:I

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 967
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 970
    invoke-direct/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->useBanglaFont()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 971
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Ridmik.ttf"

    invoke-static {v3, v4}, Lnet/hasnath/android/keyboard/Typefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 975
    :cond_c
    invoke-static/range {v25 .. v25}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isNumberAtLeftmostPopupChar(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 976
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, v25

    iget-object v4, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 985
    .local v20, "hintLabel":Ljava/lang/String;
    :goto_9
    if-eqz v20, :cond_d

    .line 988
    move-object/from16 v0, p0

    iget v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHintToLeft:I

    sub-int v3, v10, v3

    div-int/lit8 v4, v32, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHintToUp:I

    sub-int v4, v11, v4

    div-int/lit8 v5, v32, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3, v4, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 993
    .end local v20    # "hintLabel":Ljava/lang/String;
    :cond_d
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 997
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->shouldDrawLabelAndIcon(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v36

    .line 999
    .end local v8    # "baseline":F
    .end local v10    # "centerX":I
    .end local v11    # "centerY":I
    .end local v30    # "labelHeight":I
    .end local v31    # "labelHeightValue":Ljava/lang/Integer;
    .end local v32    # "labelSize":I
    :cond_e
    move-object/from16 v0, v25

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_f

    if-eqz v36, :cond_f

    .line 1005
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->shouldDrawIconFully(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1006
    move-object/from16 v0, v25

    iget v0, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    move/from16 v16, v0

    .line 1007
    .local v16, "drawableWidth":I
    move-object/from16 v0, v25

    iget v14, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->height:I

    .line 1008
    .local v14, "drawableHeight":I
    const/16 v17, 0x0

    .line 1009
    .local v17, "drawableX":I
    const/16 v18, -0x1

    .line 1023
    .local v18, "drawableY":I
    :goto_a
    move/from16 v0, v17

    int-to-float v3, v0

    move/from16 v0, v18

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1024
    move-object/from16 v0, v25

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v4, v5, v0, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1025
    move-object/from16 v0, v25

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1026
    move/from16 v0, v17

    neg-int v3, v0

    int-to-float v3, v3

    move/from16 v0, v18

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1030
    .end local v14    # "drawableHeight":I
    .end local v16    # "drawableWidth":I
    .end local v17    # "drawableX":I
    .end local v18    # "drawableY":I
    :cond_f
    move-object/from16 v0, v25

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    neg-int v3, v3

    sub-int v3, v3, v23

    int-to-float v3, v3

    move-object/from16 v0, v25

    iget v4, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    neg-int v4, v4

    sub-int v4, v4, v24

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_3

    .line 889
    .end local v9    # "bounds":Landroid/graphics/Rect;
    .end local v15    # "drawableState":[I
    .end local v29    # "label":Ljava/lang/String;
    .end local v36    # "shouldDrawIcon":Z
    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyTextColor:I

    goto/16 :goto_4

    .line 895
    .restart local v15    # "drawableState":[I
    :cond_11
    move-object/from16 v0, v25

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_5

    .line 912
    .restart local v9    # "bounds":Landroid/graphics/Rect;
    .restart local v29    # "label":Ljava/lang/String;
    .restart local v36    # "shouldDrawIcon":Z
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyTextSize:I

    move/from16 v32, v0

    .line 913
    .restart local v32    # "labelSize":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_6

    .line 926
    .restart local v31    # "labelHeightValue":Ljava/lang/Integer;
    :cond_13
    new-instance v40, Landroid/graphics/Rect;

    invoke-direct/range {v40 .. v40}, Landroid/graphics/Rect;-><init>()V

    .line 927
    .local v40, "textBounds":Landroid/graphics/Rect;
    const-string v3, "H"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v7, v3, v4, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 928
    invoke-virtual/range {v40 .. v40}, Landroid/graphics/Rect;->height()I

    move-result v30

    .line 929
    .restart local v30    # "labelHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mTextHeightCache:Ljava/util/HashMap;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 947
    .end local v40    # "textBounds":Landroid/graphics/Rect;
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyTextColor:I

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 948
    move-object/from16 v0, p0

    iget v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mShadowRadius:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v25

    iget-boolean v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->modifier:Z

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDarkShadowColor:I

    :goto_b
    invoke-virtual {v7, v4, v5, v6, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/16 :goto_8

    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mShadowColor:I

    goto :goto_b

    .line 977
    .restart local v8    # "baseline":F
    .restart local v10    # "centerX":I
    .restart local v11    # "centerY":I
    :cond_16
    invoke-static/range {v25 .. v25}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isNumberAtRightmostPopupChar(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 978
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, v25

    iget-object v4, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    move-object/from16 v0, v25

    iget-object v5, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 979
    .restart local v20    # "hintLabel":Ljava/lang/String;
    goto/16 :goto_9

    .line 982
    .end local v20    # "hintLabel":Ljava/lang/String;
    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, v25

    iget-object v4, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    move-object/from16 v0, v25

    iget-object v5, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "hintLabel":Ljava/lang/String;
    goto/16 :goto_9

    .line 1011
    .end local v8    # "baseline":F
    .end local v10    # "centerX":I
    .end local v11    # "centerY":I
    .end local v20    # "hintLabel":Ljava/lang/String;
    .end local v30    # "labelHeight":I
    .end local v31    # "labelHeightValue":Ljava/lang/Integer;
    .end local v32    # "labelSize":I
    :cond_18
    move-object/from16 v0, v25

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 1012
    .restart local v16    # "drawableWidth":I
    move-object/from16 v0, v25

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    .line 1013
    .restart local v14    # "drawableHeight":I
    move-object/from16 v0, v25

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    sub-int v3, v3, v16

    div-int/lit8 v17, v3, 0x2

    .line 1014
    .restart local v17    # "drawableX":I
    move-object/from16 v0, v25

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->height:I

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v14

    div-int/lit8 v18, v3, 0x2

    .restart local v18    # "drawableY":I
    goto/16 :goto_a

    .line 1044
    .end local v9    # "bounds":Landroid/graphics/Rect;
    .end local v14    # "drawableHeight":I
    .end local v15    # "drawableState":[I
    .end local v16    # "drawableWidth":I
    .end local v17    # "drawableX":I
    .end local v18    # "drawableY":I
    .end local v25    # "key":Lnet/hasnath/android/keyboard/Keyboard$Key;
    .end local v29    # "label":Ljava/lang/String;
    .end local v36    # "shouldDrawIcon":Z
    .restart local v37    # "showGesture":Z
    :cond_19
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lnet/hasnath/android/keyboard/PointerTracker;

    .line 1045
    .local v41, "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    invoke-virtual/range {v41 .. v41}, Lnet/hasnath/android/keyboard/PointerTracker;->getStartX()I

    move-result v38

    .line 1046
    .local v38, "startX":I
    invoke-virtual/range {v41 .. v41}, Lnet/hasnath/android/keyboard/PointerTracker;->getStartY()I

    move-result v39

    .line 1047
    .local v39, "startY":I
    invoke-virtual/range {v41 .. v41}, Lnet/hasnath/android/keyboard/PointerTracker;->getLastX()I

    move-result v33

    .line 1048
    .local v33, "lastX":I
    invoke-virtual/range {v41 .. v41}, Lnet/hasnath/android/keyboard/PointerTracker;->getLastY()I

    move-result v34

    .line 1050
    .local v34, "lastY":I
    const/16 v3, 0x80

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1051
    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1052
    const v3, -0xcc4a1b

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1053
    move/from16 v0, v38

    int-to-float v3, v0

    move/from16 v0, v39

    int-to-float v4, v0

    move/from16 v0, v33

    int-to-float v5, v0

    move/from16 v0, v34

    int-to-float v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method private onCancelEvent(Lnet/hasnath/android/keyboard/PointerTracker;IIJ)V
    .locals 1
    .param p1, "tracker"    # Lnet/hasnath/android/keyboard/PointerTracker;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "eventTime"    # J

    .prologue
    .line 1618
    invoke-virtual {p1, p2, p3, p4, p5}, Lnet/hasnath/android/keyboard/PointerTracker;->onCancelEvent(IIJ)V

    .line 1619
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerQueue:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->remove(Lnet/hasnath/android/keyboard/PointerTracker;)V

    .line 1620
    return-void
.end method

.method private onDownEvent(Lnet/hasnath/android/keyboard/PointerTracker;IIJ)V
    .locals 2
    .param p1, "tracker"    # Lnet/hasnath/android/keyboard/PointerTracker;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "eventTime"    # J

    .prologue
    .line 1590
    invoke-virtual {p1, p2, p3}, Lnet/hasnath/android/keyboard/PointerTracker;->isOnModifierKey(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1593
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerQueue:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p4, p5}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->releaseAllPointersExcept(Lnet/hasnath/android/keyboard/PointerTracker;J)V

    .line 1595
    :cond_0
    invoke-virtual {p1, p2, p3, p4, p5}, Lnet/hasnath/android/keyboard/PointerTracker;->onDownEvent(IIJ)V

    .line 1596
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerQueue:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->add(Lnet/hasnath/android/keyboard/PointerTracker;)V

    .line 1597
    return-void
.end method

.method private onUpEvent(Lnet/hasnath/android/keyboard/PointerTracker;IIJ)V
    .locals 4
    .param p1, "tracker"    # Lnet/hasnath/android/keyboard/PointerTracker;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "eventTime"    # J

    .prologue
    .line 1600
    invoke-virtual {p1}, Lnet/hasnath/android/keyboard/PointerTracker;->isModifier()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1603
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerQueue:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v1, p1, p4, p5}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->releaseAllPointersExcept(Lnet/hasnath/android/keyboard/PointerTracker;J)V

    .line 1613
    :goto_0
    invoke-virtual {p1, p2, p3, p4, p5}, Lnet/hasnath/android/keyboard/PointerTracker;->onUpEvent(IIJ)V

    .line 1614
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerQueue:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v1, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->remove(Lnet/hasnath/android/keyboard/PointerTracker;)V

    .line 1615
    return-void

    .line 1605
    :cond_0
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerQueue:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v1, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->lastIndexOf(Lnet/hasnath/android/keyboard/PointerTracker;)I

    move-result v0

    .line 1606
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 1607
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerQueue:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v1, p1, p4, p5}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->releaseAllPointersOlderThan(Lnet/hasnath/android/keyboard/PointerTracker;J)V

    goto :goto_0

    .line 1609
    :cond_1
    const-string v1, "LatinKeyboardBaseView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onUpEvent: corresponding down event not found for pointer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1610
    iget v3, p1, Lnet/hasnath/android/keyboard/PointerTracker;->mPointerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1609
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private openPopupIfRequired(ILnet/hasnath/android/keyboard/PointerTracker;)Z
    .locals 3
    .param p1, "keyIndex"    # I
    .param p2, "tracker"    # Lnet/hasnath/android/keyboard/PointerTracker;

    .prologue
    const/4 v1, 0x0

    .line 1214
    iget v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPopupLayout:I

    if-nez v2, :cond_1

    .line 1229
    :cond_0
    :goto_0
    return v1

    .line 1218
    :cond_1
    invoke-virtual {p2, p1}, Lnet/hasnath/android/keyboard/PointerTracker;->getKey(I)Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-result-object v0

    .line 1219
    .local v0, "popupKey":Lnet/hasnath/android/keyboard/Keyboard$Key;
    if-eqz v0, :cond_0

    .line 1221
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->onLongPress(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v1

    .line 1222
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 1223
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->dismissKeyPreview()V

    .line 1224
    iget v2, p2, Lnet/hasnath/android/keyboard/PointerTracker;->mPointerId:I

    iput v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardTrackerId:I

    .line 1226
    invoke-virtual {p2}, Lnet/hasnath/android/keyboard/PointerTracker;->setAlreadyProcessed()V

    .line 1227
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerQueue:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v2, p2}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->remove(Lnet/hasnath/android/keyboard/PointerTracker;)V

    goto :goto_0
.end method

.method private shouldDrawIconFully(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z
    .locals 1
    .param p1, "key"    # Lnet/hasnath/android/keyboard/Keyboard$Key;

    .prologue
    .line 1403
    invoke-static {p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isNumberAtEdgeOfPopupChars(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isLatinF1Key(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1404
    invoke-static {p1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->hasPuncOrSmileysPopup(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1403
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shouldDrawLabelAndIcon(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z
    .locals 1
    .param p1, "key"    # Lnet/hasnath/android/keyboard/Keyboard$Key;

    .prologue
    .line 1408
    invoke-static {p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isNumberAtEdgeOfPopupChars(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isNonMicLatinF1Key(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1409
    invoke-static {p1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->hasPuncOrSmileysPopup(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1408
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showKey(ILnet/hasnath/android/keyboard/PointerTracker;)V
    .locals 12
    .param p1, "keyIndex"    # I
    .param p2, "tracker"    # Lnet/hasnath/android/keyboard/PointerTracker;

    .prologue
    .line 1097
    invoke-virtual {p2, p1}, Lnet/hasnath/android/keyboard/PointerTracker;->getKey(I)Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-result-object v0

    .line 1098
    .local v0, "key":Lnet/hasnath/android/keyboard/Keyboard$Key;
    if-nez v0, :cond_0

    .line 1179
    :goto_0
    return-void

    .line 1105
    :cond_0
    iget-object v7, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_5

    invoke-direct {p0, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->shouldDrawLabelAndIcon(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1106
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1107
    iget-object v7, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    iget-object v7, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 1106
    :goto_1
    invoke-virtual {v8, v9, v10, v11, v7}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1108
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1126
    :goto_2
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1127
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1126
    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->measure(II)V

    .line 1128
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    iget v8, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    .line 1129
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    .line 1128
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1130
    .local v5, "popupWidth":I
    iget v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewHeight:I

    .line 1131
    .local v2, "popupHeight":I
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1132
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_1

    .line 1133
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1134
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1137
    :cond_1
    iget v7, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    iget v8, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    sub-int v8, v5, v8

    div-int/lit8 v8, v8, 0x2

    sub-int v3, v7, v8

    .line 1138
    .local v3, "popupPreviewX":I
    iget v7, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    sub-int/2addr v7, v2

    iget v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewOffset:I

    add-int v4, v7, v8

    .line 1140
    .local v4, "popupPreviewY":I
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHandler:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v7}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->cancelDismissPreview()V

    .line 1141
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOffsetInWindow:[I

    if-nez v7, :cond_2

    .line 1142
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOffsetInWindow:[I

    .line 1143
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOffsetInWindow:[I

    invoke-virtual {p0, v7}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getLocationInWindow([I)V

    .line 1144
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOffsetInWindow:[I

    const/4 v8, 0x0

    aget v9, v7, v8

    iget v10, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPopupPreviewOffsetX:I

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 1145
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOffsetInWindow:[I

    const/4 v8, 0x1

    aget v9, v7, v8

    iget v10, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPopupPreviewOffsetY:I

    add-int/2addr v9, v10

    aput v9, v7, v8

    .line 1146
    const/4 v7, 0x2

    new-array v6, v7, [I

    .line 1147
    .local v6, "windowLocation":[I
    invoke-virtual {p0, v6}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getLocationOnScreen([I)V

    .line 1148
    const/4 v7, 0x1

    aget v7, v6, v7

    iput v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mWindowY:I

    .line 1151
    .end local v6    # "windowLocation":[I
    :cond_2
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1152
    iget v7, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupResId:I

    if-eqz v7, :cond_9

    sget-object v7, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->LONG_PRESSABLE_STATE_SET:[I

    .line 1151
    :goto_3
    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1153
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOffsetInWindow:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    add-int/2addr v3, v7

    .line 1154
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOffsetInWindow:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/2addr v4, v7

    .line 1157
    iget v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mWindowY:I

    add-int/2addr v7, v4

    if-gez v7, :cond_3

    .line 1160
    iget v7, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    iget v8, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    if-gt v7, v8, :cond_a

    .line 1161
    iget v7, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    int-to-double v7, v7

    const-wide/high16 v9, 0x4004000000000000L    # 2.5

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v3, v7

    .line 1165
    :goto_4
    add-int/2addr v4, v2

    .line 1168
    :cond_3
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1169
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v3, v4, v5, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1177
    :goto_5
    iput v4, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPopupPreviewDisplayedY:I

    .line 1178
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1107
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "popupHeight":I
    .end local v3    # "popupPreviewX":I
    .end local v4    # "popupPreviewY":I
    .end local v5    # "popupWidth":I
    :cond_4
    iget-object v7, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 1110
    :cond_5
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1111
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Lnet/hasnath/android/keyboard/PointerTracker;->getPreviewText(Lnet/hasnath/android/keyboard/Keyboard$Key;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {p0, v8}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    iget-object v7, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_7

    iget-object v7, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    array-length v7, v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_7

    .line 1113
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    iget v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyTextSize:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1114
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->useBanglaFont()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1115
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Ridmik.ttf"

    invoke-static {v8, v9}, Lnet/hasnath/android/keyboard/Typefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    .line 1117
    :cond_6
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    .line 1119
    :cond_7
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v8, 0x0

    iget v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewTextSizeLarge:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1120
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->useBanglaFont()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1121
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Ridmik.ttf"

    invoke-static {v8, v9}, Lnet/hasnath/android/keyboard/Typefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    .line 1123
    :cond_8
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_2

    .line 1152
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v2    # "popupHeight":I
    .restart local v3    # "popupPreviewX":I
    .restart local v4    # "popupPreviewY":I
    .restart local v5    # "popupWidth":I
    :cond_9
    sget-object v7, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->EMPTY_STATE_SET:[I

    goto/16 :goto_3

    .line 1163
    :cond_a
    iget v7, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    int-to-double v7, v7

    const-wide/high16 v9, 0x4004000000000000L    # 2.5

    mul-double/2addr v7, v9

    double-to-int v7, v7

    sub-int/2addr v3, v7

    goto/16 :goto_4

    .line 1171
    :cond_b
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1172
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1173
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardParent:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_5
.end method

.method private useBanglaFont()Z
    .locals 1

    .prologue
    .line 1063
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIME;->useBanglaFont()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 778
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 779
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getKeyboardLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 783
    .end local p1    # "label":Ljava/lang/CharSequence;
    :cond_0
    return-object p1
.end method

.method public closing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1639
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1640
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHandler:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->cancelAllMessages()V

    .line 1642
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->dismissPopupKeyboard()V

    .line 1643
    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    .line 1644
    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mCanvas:Landroid/graphics/Canvas;

    .line 1645
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 1646
    return-void
.end method

.method public getKeyboard()Lnet/hasnath/android/keyboard/Keyboard;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    return-object v0
.end method

.method protected getKeyboardLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    instance-of v0, v0, Lnet/hasnath/android/keyboard/LatinKeyboard;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    check-cast v0, Lnet/hasnath/android/keyboard/LatinKeyboard;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboard;->getInputLocale()Ljava/util/Locale;

    move-result-object v0

    .line 772
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_0
.end method

.method protected getOnKeyboardActionListener()Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    return-object v0
.end method

.method public getPointerCount()I
    .locals 1

    .prologue
    .line 1478
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOldPointerCount:I

    return v0
.end method

.method public getSymbolColorScheme()I
    .locals 1

    .prologue
    .line 738
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mSymbolColorScheme:I

    return v0
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 1665
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1666
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->dismissPopupKeyboard()V

    .line 1667
    const/4 v0, 0x1

    .line 1669
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDistinctMultitouch()Z
    .locals 1

    .prologue
    .line 675
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHasDistinctMultitouch:Z

    return v0
.end method

.method public invalidateAllKeys()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1188
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDrawPending:Z

    .line 1190
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->invalidate()V

    .line 1191
    return-void
.end method

.method public invalidateKey(Lnet/hasnath/android/keyboard/Keyboard$Key;)V
    .locals 6
    .param p1, "key"    # Lnet/hasnath/android/keyboard/Keyboard$Key;

    .prologue
    .line 1201
    if-nez p1, :cond_0

    .line 1210
    :goto_0
    return-void

    .line 1203
    :cond_0
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mInvalidatedKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 1205
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    iget v1, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 1206
    iget v3, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    iget v4, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    iget v5, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 1205
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 1207
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->onBufferDraw()V

    .line 1208
    iget v0, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 1209
    iget v2, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    iget v3, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    iget v4, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->height:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    .line 1208
    invoke-virtual {p0, v0, v1, v2, v3}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->invalidate(IIII)V

    goto :goto_0
.end method

.method public isInSlidingKeyInput()Z
    .locals 1

    .prologue
    .line 1470
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    if-eqz v0, :cond_0

    .line 1471
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isInSlidingKeyInput()Z

    move-result v0

    .line 1473
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerQueue:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->isInSlidingKeyInput()Z

    move-result v0

    goto :goto_0
.end method

.method public isPreviewEnabled()Z
    .locals 1

    .prologue
    .line 722
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mShowPreview:Z

    return v0
.end method

.method public isProximityCorrectionEnabled()Z
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyDetector:Lnet/hasnath/android/keyboard/KeyDetector;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyDetector;->isProximityCorrectionEnabled()Z

    move-result v0

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/Keyboard;->isShifted()Z

    move-result v0

    .line 703
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1650
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1651
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->closing()V

    .line 1652
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 831
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 832
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDrawPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardChanged:Z

    if-eqz v0, :cond_1

    .line 833
    :cond_0
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->onBufferDraw()V

    .line 835
    :cond_1
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 836
    return-void
.end method

.method protected onLongPress(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z
    .locals 19
    .param p1, "popupKey"    # Lnet/hasnath/android/keyboard/Keyboard$Key;

    .prologue
    .line 1321
    move-object/from16 v0, p1

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupResId:I

    if-nez v3, :cond_0

    .line 1322
    const/4 v3, 0x0

    .line 1392
    :goto_0
    return v3

    .line 1324
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardCache:Ljava/util/WeakHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 1325
    .local v10, "container":Landroid/view/View;
    if-nez v10, :cond_1

    .line 1326
    invoke-direct/range {p0 .. p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->inflateMiniKeyboardContainer(Lnet/hasnath/android/keyboard/Keyboard$Key;)Landroid/view/View;

    move-result-object v10

    .line 1327
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardCache:Ljava/util/WeakHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v10}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    :cond_1
    const v3, 0x7f070012

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    .line 1330
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mWindowOffset:[I

    if-nez v3, :cond_2

    .line 1331
    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mWindowOffset:[I

    .line 1332
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mWindowOffset:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getLocationInWindow([I)V

    .line 1342
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getKeyboard()Lnet/hasnath/android/keyboard/Keyboard;

    move-result-object v3

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v14

    .line 1343
    .local v14, "miniKeys":Ljava/util/List;, "Ljava/util/List<Lnet/hasnath/android/keyboard/Keyboard$Key;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v3, 0x0

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/hasnath/android/keyboard/Keyboard$Key;

    iget v13, v3, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    .line 1347
    .local v13, "miniKeyWidth":I
    :goto_1
    invoke-static/range {p1 .. p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->hasMultiplePopupChars(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static/range {p1 .. p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isNumberAtLeftmostPopupChar(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1346
    const/4 v12, 0x1

    .line 1348
    .local v12, "isNumberAtLeftmost":Z
    :goto_2
    move-object/from16 v0, p1

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mWindowOffset:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int v15, v3, v4

    .line 1349
    .local v15, "popupX":I
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v15, v3

    .line 1350
    if-eqz v12, :cond_6

    .line 1351
    move-object/from16 v0, p1

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    sub-int/2addr v3, v13

    add-int/2addr v15, v3

    .line 1352
    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v15, v3

    .line 1358
    :goto_3
    move-object/from16 v0, p1

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mWindowOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int v16, v3, v4

    .line 1359
    .local v16, "popupY":I
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v3

    add-int v16, v16, v3

    .line 1360
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v16, v16, v3

    .line 1361
    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int v16, v16, v3

    .line 1362
    move/from16 v17, v15

    .line 1363
    .local v17, "x":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mShowPreview:Z

    if-eqz v3, :cond_7

    invoke-static {v14}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isOneRowKeys(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPopupPreviewDisplayedY:I

    move/from16 v18, v0

    .line 1365
    .local v18, "y":I
    :goto_4
    move/from16 v9, v17

    .line 1366
    .local v9, "adjustedX":I
    if-gez v17, :cond_8

    .line 1367
    const/4 v9, 0x0

    .line 1371
    :cond_3
    :goto_5
    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mWindowOffset:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardOriginX:I

    .line 1372
    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int v3, v3, v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mWindowOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardOriginY:I

    .line 1373
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    move/from16 v0, v18

    invoke-virtual {v3, v9, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->setPopupOffset(II)V

    .line 1374
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isShifted()Z

    move-result v4

    invoke-virtual {v3, v4}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->setShifted(Z)Z

    .line 1376
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->setPreviewEnabled(Z)V

    .line 1377
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v10}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1378
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1379
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1380
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v3, v0, v4, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1384
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1385
    .local v7, "eventTime":J
    move-object/from16 v0, p0

    iput-wide v7, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardPopupTime:J

    .line 1386
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    .line 1387
    move-object/from16 v0, p1

    iget v5, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    move-object/from16 v0, p1

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    move-object/from16 v0, p1

    iget v6, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->height:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    move-object/from16 v3, p0

    .line 1386
    invoke-direct/range {v3 .. v8}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->generateMiniKeyboardMotionEvent(IIIJ)Landroid/view/MotionEvent;

    move-result-object v11

    .line 1388
    .local v11, "downEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    invoke-virtual {v3, v11}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1389
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 1391
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->invalidateAllKeys()V

    .line 1392
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1343
    .end local v7    # "eventTime":J
    .end local v9    # "adjustedX":I
    .end local v11    # "downEvent":Landroid/view/MotionEvent;
    .end local v12    # "isNumberAtLeftmost":Z
    .end local v13    # "miniKeyWidth":I
    .end local v15    # "popupX":I
    .end local v16    # "popupY":I
    .end local v17    # "x":I
    .end local v18    # "y":I
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 1346
    .restart local v13    # "miniKeyWidth":I
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 1354
    .restart local v12    # "isNumberAtLeftmost":Z
    .restart local v15    # "popupX":I
    :cond_6
    add-int/2addr v15, v13

    .line 1355
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v15, v3

    .line 1356
    invoke-virtual {v10}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v15, v3

    goto/16 :goto_3

    .restart local v16    # "popupY":I
    .restart local v17    # "x":I
    :cond_7
    move/from16 v18, v16

    .line 1363
    goto/16 :goto_4

    .line 1368
    .restart local v9    # "adjustedX":I
    .restart local v18    # "y":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    move/from16 v0, v17

    if-le v0, v3, :cond_3

    .line 1369
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v9, v3, v4

    goto/16 :goto_5
.end method

.method public onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 789
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    if-nez v1, :cond_0

    .line 791
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 790
    invoke-virtual {p0, v1, v2}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->setMeasuredDimension(II)V

    .line 800
    :goto_0
    return-void

    .line 793
    :cond_0
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/Keyboard;->getMinWidth()I

    move-result v1

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingRight()I

    move-result v2

    add-int v0, v1, v2

    .line 794
    .local v0, "width":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit8 v2, v0, 0xa

    if-ge v1, v2, :cond_1

    .line 795
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 798
    :cond_1
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/Keyboard;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 797
    invoke-virtual {p0, v0, v1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 824
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 826
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    .line 827
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 1483
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 1484
    .local v3, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v23

    .line 1485
    .local v23, "pointerCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOldPointerCount:I

    move/from16 v22, v0

    .line 1486
    .local v22, "oldPointerCount":I
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOldPointerCount:I

    .line 1491
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHasDistinctMultitouch:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move/from16 v0, v23

    if-le v0, v2, :cond_0

    const/4 v2, 0x1

    move/from16 v0, v22

    if-le v0, v2, :cond_0

    .line 1492
    const/4 v2, 0x1

    .line 1586
    :goto_0
    return v2

    .line 1496
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mSwipeTracker:Lnet/hasnath/android/keyboard/SwipeTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lnet/hasnath/android/keyboard/SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1499
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    if-nez v2, :cond_1

    .line 1500
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1501
    invoke-direct/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->dismissKeyPreview()V

    .line 1502
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHandler:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->cancelKeyTimers()V

    .line 1503
    const/4 v2, 0x1

    goto :goto_0

    .line 1506
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    .line 1507
    .local v6, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v20

    .line 1508
    .local v20, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    .line 1509
    .local v19, "id":I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v10, v2

    .line 1510
    .local v10, "x":I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v11, v2

    .line 1514
    .local v11, "y":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    if-eqz v2, :cond_3

    .line 1515
    move-object/from16 v0, p0

    iget v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardTrackerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v21

    .line 1516
    .local v21, "miniKeyboardPointerIndex":I
    if-ltz v21, :cond_2

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 1517
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v4, v2

    .line 1518
    .local v4, "miniKeyboardX":I
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v5, v2

    .local v5, "miniKeyboardY":I
    move-object/from16 v2, p0

    .line 1519
    invoke-direct/range {v2 .. v7}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->generateMiniKeyboardMotionEvent(IIIJ)Landroid/view/MotionEvent;

    move-result-object v24

    .line 1521
    .local v24, "translated":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1522
    invoke-virtual/range {v24 .. v24}, Landroid/view/MotionEvent;->recycle()V

    .line 1524
    .end local v4    # "miniKeyboardX":I
    .end local v5    # "miniKeyboardY":I
    .end local v24    # "translated":Landroid/view/MotionEvent;
    :cond_2
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1527
    .end local v21    # "miniKeyboardPointerIndex":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHandler:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->isInKeyRepeat()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1529
    const/4 v2, 0x2

    if-ne v3, v2, :cond_4

    .line 1530
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1532
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPointerTracker(I)Lnet/hasnath/android/keyboard/PointerTracker;

    move-result-object v8

    .line 1535
    .local v8, "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    const/4 v2, 0x1

    move/from16 v0, v23

    if-le v0, v2, :cond_5

    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/PointerTracker;->isModifier()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1536
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHandler:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->cancelKeyRepeatTimer()V

    .line 1544
    .end local v8    # "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHasDistinctMultitouch:Z

    if-nez v2, :cond_9

    .line 1546
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPointerTracker(I)Lnet/hasnath/android/keyboard/PointerTracker;

    move-result-object v8

    .line 1547
    .restart local v8    # "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_6

    const/4 v2, 0x2

    move/from16 v0, v22

    if-ne v0, v2, :cond_6

    .line 1550
    invoke-virtual {v8, v10, v11, v6, v7}, Lnet/hasnath/android/keyboard/PointerTracker;->onDownEvent(IIJ)V

    .line 1561
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1551
    :cond_6
    const/4 v2, 0x2

    move/from16 v0, v23

    if-ne v0, v2, :cond_7

    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_7

    .line 1554
    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/PointerTracker;->getLastX()I

    move-result v2

    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/PointerTracker;->getLastY()I

    move-result v9

    invoke-virtual {v8, v2, v9, v6, v7}, Lnet/hasnath/android/keyboard/PointerTracker;->onUpEvent(IIJ)V

    goto :goto_1

    .line 1555
    :cond_7
    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_8

    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_8

    move v9, v3

    move-wide v12, v6

    .line 1556
    invoke-virtual/range {v8 .. v13}, Lnet/hasnath/android/keyboard/PointerTracker;->onTouchEvent(IIIJ)V

    goto :goto_1

    .line 1558
    :cond_8
    const-string v2, "LatinKeyboardBaseView"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "Unknown touch panel behavior: pointer count is "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1559
    const-string v12, " (old "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ")"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1558
    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1564
    .end local v8    # "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    :cond_9
    const/4 v2, 0x2

    if-ne v3, v2, :cond_b

    .line 1565
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v23

    if-lt v0, v1, :cond_a

    .line 1586
    .end local v18    # "i":I
    :goto_3
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1566
    .restart local v18    # "i":I
    :cond_a
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPointerTracker(I)Lnet/hasnath/android/keyboard/PointerTracker;

    move-result-object v8

    .line 1567
    .restart local v8    # "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v8, v2, v9, v6, v7}, Lnet/hasnath/android/keyboard/PointerTracker;->onMoveEvent(IIJ)V

    .line 1565
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 1570
    .end local v8    # "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    .end local v18    # "i":I
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPointerTracker(I)Lnet/hasnath/android/keyboard/PointerTracker;

    move-result-object v8

    .line 1571
    .restart local v8    # "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    :pswitch_1
    move-object/from16 v12, p0

    move-object v13, v8

    move v14, v10

    move v15, v11

    move-wide/from16 v16, v6

    .line 1574
    invoke-direct/range {v12 .. v17}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->onDownEvent(Lnet/hasnath/android/keyboard/PointerTracker;IIJ)V

    goto :goto_3

    :pswitch_2
    move-object/from16 v12, p0

    move-object v13, v8

    move v14, v10

    move v15, v11

    move-wide/from16 v16, v6

    .line 1578
    invoke-direct/range {v12 .. v17}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->onUpEvent(Lnet/hasnath/android/keyboard/PointerTracker;IIJ)V

    goto :goto_3

    :pswitch_3
    move-object/from16 v12, p0

    move-object v13, v8

    move v14, v10

    move v15, v11

    move-wide/from16 v16, v6

    .line 1581
    invoke-direct/range {v12 .. v17}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->onCancelEvent(Lnet/hasnath/android/keyboard/PointerTracker;IIJ)V

    goto :goto_3

    .line 1571
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setKeyboard(Lnet/hasnath/android/keyboard/Keyboard;)V
    .locals 5
    .param p1, "keyboard"    # Lnet/hasnath/android/keyboard/Keyboard;

    .prologue
    .line 636
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    if-eqz v1, :cond_0

    .line 637
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->dismissKeyPreview()V

    .line 640
    :cond_0
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHandler:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->cancelKeyTimers()V

    .line 641
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHandler:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->cancelPopupPreview()V

    .line 642
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    .line 644
    invoke-static {p1}, Lnet/hasnath/android/keyboard/LatinImeLogger;->onSetKeyboard(Lnet/hasnath/android/keyboard/Keyboard;)V

    .line 645
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyDetector:Lnet/hasnath/android/keyboard/KeyDetector;

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    .line 646
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mVerticalCorrection:F

    add-float/2addr v3, v4

    .line 645
    invoke-virtual {v1, p1, v2, v3}, Lnet/hasnath/android/keyboard/KeyDetector;->setKeyboard(Lnet/hasnath/android/keyboard/Keyboard;FF)[Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 647
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardVerticalGap:I

    .line 650
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 653
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->requestLayout()V

    .line 655
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardChanged:Z

    .line 656
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->invalidateAllKeys()V

    .line 657
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->computeProximityThreshold(Lnet/hasnath/android/keyboard/Keyboard;)V

    .line 658
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 659
    return-void

    .line 650
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hasnath/android/keyboard/PointerTracker;

    .line 651
    .local v0, "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    iget v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyHysteresisDistance:F

    invoke-virtual {v0, v2, v3}, Lnet/hasnath/android/keyboard/PointerTracker;->setKeyboard([Lnet/hasnath/android/keyboard/Keyboard$Key;F)V

    goto :goto_0
.end method

.method public setLongPressDelay(I)V
    .locals 3
    .param p1, "longPressDelay"    # I

    .prologue
    .line 730
    iput p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mLongPressDelay:I

    .line 732
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 735
    return-void

    .line 732
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hasnath/android/keyboard/PointerTracker;

    .line 733
    .local v0, "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    iget v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mLongPressDelay:I

    invoke-virtual {v0, v2}, Lnet/hasnath/android/keyboard/PointerTracker;->setLongPressKeyTimeout(I)V

    goto :goto_0
.end method

.method public setOnKeyboardActionListener(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;)V
    .locals 3
    .param p1, "listener"    # Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    .prologue
    .line 614
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    .line 615
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 618
    return-void

    .line 615
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hasnath/android/keyboard/PointerTracker;

    .line 616
    .local v0, "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    invoke-virtual {v0, p1}, Lnet/hasnath/android/keyboard/PointerTracker;->setOnKeyboardActionListener(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;)V

    goto :goto_0
.end method

.method public setPopupOffset(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 746
    iput p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPopupPreviewOffsetX:I

    .line 747
    iput p2, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPopupPreviewOffsetY:I

    .line 748
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 749
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 742
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardParent:Landroid/view/View;

    .line 743
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0
    .param p1, "previewEnabled"    # Z

    .prologue
    .line 713
    iput-boolean p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mShowPreview:Z

    .line 714
    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 758
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyDetector:Lnet/hasnath/android/keyboard/KeyDetector;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/keyboard/KeyDetector;->setProximityCorrectionEnabled(Z)V

    .line 759
    return-void
.end method

.method public setShifted(Z)Z
    .locals 1
    .param p1, "shifted"    # Z

    .prologue
    .line 684
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/keyboard/Keyboard;->setShifted(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->invalidateAllKeys()V

    .line 688
    const/4 v0, 0x1

    .line 691
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showPreview(ILnet/hasnath/android/keyboard/PointerTracker;)V
    .locals 6
    .param p1, "keyIndex"    # I
    .param p2, "tracker"    # Lnet/hasnath/android/keyboard/PointerTracker;

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 1074
    iget v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOldPreviewKeyIndex:I

    .line 1075
    .local v2, "oldKeyIndex":I
    iput p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOldPreviewKeyIndex:I

    .line 1076
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    instance-of v3, v3, Lnet/hasnath/android/keyboard/LatinKeyboard;

    if-eqz v3, :cond_2

    .line 1077
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    check-cast v3, Lnet/hasnath/android/keyboard/LatinKeyboard;

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/LatinKeyboard;->isLanguageSwitchEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v4

    .line 1081
    .local v1, "isLanguageSwitchEnabled":Z
    :goto_0
    if-eqz p2, :cond_3

    .line 1082
    invoke-virtual {p2, p1}, Lnet/hasnath/android/keyboard/PointerTracker;->isSpaceKey(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2, v2}, Lnet/hasnath/android/keyboard/PointerTracker;->isSpaceKey(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1084
    .local v0, "hidePreviewOrShowSpaceKeyPreview":Z
    :goto_1
    if-eq v2, p1, :cond_1

    .line 1085
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mShowPreview:Z

    if-nez v3, :cond_0

    .line 1086
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1087
    :cond_0
    const/4 v3, -0x1

    if-ne p1, v3, :cond_4

    .line 1088
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHandler:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->cancelPopupPreview()V

    .line 1089
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHandler:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    iget v4, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDelayAfterPreview:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->dismissPreview(J)V

    .line 1094
    :cond_1
    :goto_2
    return-void

    .end local v0    # "hidePreviewOrShowSpaceKeyPreview":Z
    .end local v1    # "isLanguageSwitchEnabled":Z
    :cond_2
    move v1, v0

    .line 1076
    goto :goto_0

    .restart local v1    # "isLanguageSwitchEnabled":Z
    :cond_3
    move v0, v4

    .line 1081
    goto :goto_1

    .line 1090
    .restart local v0    # "hidePreviewOrShowSpaceKeyPreview":Z
    :cond_4
    if-eqz p2, :cond_1

    .line 1091
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHandler:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    iget v4, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDelayBeforePreview:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5, p1, p2}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->popupPreview(JILnet/hasnath/android/keyboard/PointerTracker;)V

    goto :goto_2
.end method

.method protected swipeDown()V
    .locals 1

    .prologue
    .line 1635
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-interface {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->swipeDown()V

    .line 1636
    return-void
.end method

.method protected swipeLeft()V
    .locals 1

    .prologue
    .line 1627
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-interface {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->swipeLeft()V

    .line 1628
    return-void
.end method

.method protected swipeRight()V
    .locals 1

    .prologue
    .line 1623
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-interface {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->swipeRight()V

    .line 1624
    return-void
.end method

.method protected swipeUp()V
    .locals 1

    .prologue
    .line 1631
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-interface {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->swipeUp()V

    .line 1632
    return-void
.end method
