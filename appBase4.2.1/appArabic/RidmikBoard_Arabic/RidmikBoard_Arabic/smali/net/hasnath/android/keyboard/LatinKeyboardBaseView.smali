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

.field private emojiFont:Landroid/graphics/Typeface;

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

.field private themeIndex:I

.field private useEmojiFont:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 169
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101023c

    aput v2, v0, v1

    sput-object v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->LONG_PRESSABLE_STATE_SET:[I

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 428
    const v0, 0x7f010020

    invoke-direct {p0, p1, p2, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 429
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 432
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 176
    sget-object v14, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    .line 178
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mSymbolColorScheme:I

    .line 202
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOldPreviewKeyIndex:I

    .line 203
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mShowPreview:Z

    .line 204
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mShowTouchPoints:Z

    .line 221
    new-instance v14, Ljava/util/WeakHashMap;

    invoke-direct {v14}, Ljava/util/WeakHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardCache:Ljava/util/WeakHashMap;

    .line 232
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    .line 235
    new-instance v14, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-direct {v14}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerQueue:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;

    .line 238
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOldPointerCount:I

    .line 240
    new-instance v14, Lnet/hasnath/android/keyboard/ProximityKeyDetector;

    invoke-direct {v14}, Lnet/hasnath/android/keyboard/ProximityKeyDetector;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyDetector:Lnet/hasnath/android/keyboard/KeyDetector;

    .line 244
    new-instance v14, Lnet/hasnath/android/keyboard/SwipeTracker;

    invoke-direct {v14}, Lnet/hasnath/android/keyboard/SwipeTracker;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mSwipeTracker:Lnet/hasnath/android/keyboard/SwipeTracker;

    .line 252
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    .line 262
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mClipRegion:Landroid/graphics/Rect;

    .line 264
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mTextHeightCache:Ljava/util/HashMap;

    .line 266
    const v14, 0x3f0ccccd    # 0.55f

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->KEY_LABEL_VERTICAL_ADJUSTMENT_FACTOR:F

    .line 267
    const-string v14, "H"

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->KEY_LABEL_HEIGHT_REFERENCE_CHAR:Ljava/lang/String;

    .line 269
    new-instance v14, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;-><init>(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHandler:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    .line 272
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->emojiFont:Landroid/graphics/Typeface;

    .line 435
    sget-object v14, Lridmik/keyboard/R$styleable;->LatinKeyboardBaseView:[I

    const v15, 0x7f0d0001

    .line 434
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v14, v2, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 437
    .local v3, "a":Landroid/content/res/TypedArray;
    const-string v14, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 438
    .local v7, "inflate":Landroid/view/LayoutInflater;
    const/4 v11, 0x0

    .line 439
    .local v11, "previewLayout":I
    const/4 v8, 0x0

    .line 442
    .local v8, "keyTextSize":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v10

    .line 444
    .local v10, "n":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v10, :cond_0

    .line 526
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 529
    .local v12, "res":Landroid/content/res/Resources;
    const v14, 0x7f0b000d

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHintTextSize:F

    .line 530
    const v14, 0x7f08005a

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHintToLeft:I

    .line 531
    const v14, 0x7f08005b

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHintToUp:I

    .line 532
    const/4 v14, 0x7

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHintBottomPaddingPlus:I

    .line 534
    new-instance v14, Landroid/widget/PopupWindow;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 535
    if-eqz v11, :cond_1

    .line 536
    const/4 v14, 0x0

    invoke-virtual {v7, v11, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    .line 537
    const v14, 0x7f0b000b

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewTextSizeLarge:I

    .line 538
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 543
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 544
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const v15, 0x7f0d0002

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 545
    const v14, 0x7f08004c

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDelayBeforePreview:I

    .line 546
    const v14, 0x7f08004d

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDelayAfterPreview:I

    .line 548
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardParent:Landroid/view/View;

    .line 549
    new-instance v14, Landroid/widget/PopupWindow;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    .line 550
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    const v15, 0x7f0d0003

    invoke-virtual {v14, v15}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 553
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    .line 554
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 555
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    int-to-float v15, v8

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 556
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    sget-object v15, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    const/16 v15, 0xff

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 559
    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPadding:Landroid/graphics/Rect;

    .line 560
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 562
    const/high16 v14, 0x43fa0000    # 500.0f

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mSwipeThreshold:I

    .line 564
    const v14, 0x7f090003

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDisambiguateSwipe:Z

    .line 565
    const v14, 0x7f0b000f

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardSlideAllowance:F

    .line 568
    new-instance v9, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$1;-><init>(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)V

    .line 606
    .local v9, "listener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    const/4 v6, 0x1

    .line 607
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

    .line 608
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 610
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 611
    const-string v15, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v14

    .line 610
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHasDistinctMultitouch:Z

    .line 612
    const v14, 0x7f080053

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyRepeatInterval:I

    .line 613
    return-void

    .line 445
    .end local v6    # "ignoreMultitouch":Z
    .end local v9    # "listener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    .end local v12    # "res":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 447
    .local v4, "attr":I
    packed-switch v4, :pswitch_data_0

    .line 444
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 449
    :pswitch_0
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 452
    :pswitch_1
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyHysteresisDistance:F

    goto :goto_2

    .line 455
    :pswitch_2
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mVerticalCorrection:F

    goto :goto_2

    .line 458
    :pswitch_3
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 459
    goto :goto_2

    .line 461
    :pswitch_4
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewOffset:I

    goto :goto_2

    .line 464
    :pswitch_5
    const/16 v14, 0x50

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewHeight:I

    goto :goto_2

    .line 467
    :pswitch_6
    const/16 v14, 0x12

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyTextSize:I

    goto :goto_2

    .line 470
    :pswitch_7
    const/high16 v14, -0x1000000

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyTextColor:I

    goto :goto_2

    .line 473
    :pswitch_8
    const/high16 v14, -0x1000000

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHintColor:I

    goto :goto_2

    .line 476
    :pswitch_9
    const/high16 v14, -0x1000000

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mModifierTextColor:I

    goto :goto_2

    .line 479
    :pswitch_a
    const/high16 v14, -0x1000000

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyDarkTextColor:I

    goto :goto_2

    .line 482
    :pswitch_b
    const/16 v14, 0xe

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mLabelTextSize:I

    goto :goto_2

    .line 485
    :pswitch_c
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPopupLayout:I

    goto/16 :goto_2

    .line 488
    :pswitch_d
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mShadowColor:I

    goto/16 :goto_2

    .line 491
    :pswitch_e
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDarkShadowColor:I

    goto/16 :goto_2

    .line 494
    :pswitch_f
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mShadowRadius:F

    goto/16 :goto_2

    .line 498
    :pswitch_10
    const/high16 v14, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mBackgroundDimAmount:F

    goto/16 :goto_2

    .line 502
    :pswitch_11
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 503
    .local v13, "textStyle":I
    packed-switch v13, :pswitch_data_1

    .line 511
    invoke-static {v13}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    goto/16 :goto_2

    .line 505
    :pswitch_12
    sget-object v14, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    goto/16 :goto_2

    .line 508
    :pswitch_13
    sget-object v14, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iput-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    goto/16 :goto_2

    .line 516
    .end local v13    # "textStyle":I
    :pswitch_14
    const/4 v14, 0x0

    invoke-virtual {v3, v4, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mSymbolColorScheme:I

    goto/16 :goto_2

    .line 541
    .end local v4    # "attr":I
    .restart local v12    # "res":Landroid/content/res/Resources;
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mShowPreview:Z

    goto/16 :goto_1

    .line 447
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

    .line 503
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method static synthetic access$0(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;ILnet/hasnath/android/keyboard/PointerTracker;)V
    .locals 0

    .prologue
    .line 1159
    invoke-direct {p0, p1, p2}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->showKey(ILnet/hasnath/android/keyboard/PointerTracker;)V

    return-void
.end method

.method static synthetic access$1(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$2(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyRepeatInterval:I

    return v0
.end method

.method static synthetic access$3(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;ILnet/hasnath/android/keyboard/PointerTracker;)Z
    .locals 1

    .prologue
    .line 1279
    invoke-direct {p0, p1, p2}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->openPopupIfRequired(ILnet/hasnath/android/keyboard/PointerTracker;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Lnet/hasnath/android/keyboard/SwipeTracker;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mSwipeTracker:Lnet/hasnath/android/keyboard/SwipeTracker;

    return-object v0
.end method

.method static synthetic access$6(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mSwipeThreshold:I

    return v0
.end method

.method static synthetic access$7(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDisambiguateSwipe:Z

    return v0
.end method

.method static synthetic access$8(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    return-object v0
.end method

.method static synthetic access$9(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)V
    .locals 0

    .prologue
    .line 1719
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->dismissPopupKeyboard()V

    return-void
.end method

.method private computeProximityThreshold(Lnet/hasnath/android/keyboard/Keyboard;)V
    .locals 8
    .param p1, "keyboard"    # Lnet/hasnath/android/keyboard/Keyboard;

    .prologue
    .line 811
    if-nez p1, :cond_1

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 813
    .local v3, "keys":[Lnet/hasnath/android/keyboard/Keyboard$Key;
    if-eqz v3, :cond_0

    .line 814
    array-length v4, v3

    .line 815
    .local v4, "length":I
    const/4 v0, 0x0

    .line 816
    .local v0, "dimensionSum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v4, :cond_2

    .line 820
    if-ltz v0, :cond_0

    if-eqz v4, :cond_0

    .line 821
    iget-object v5, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyDetector:Lnet/hasnath/android/keyboard/KeyDetector;

    int-to-float v6, v0

    const v7, 0x3fb33333    # 1.4f

    mul-float/2addr v6, v7

    int-to-float v7, v4

    div-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Lnet/hasnath/android/keyboard/KeyDetector;->setProximityThreshold(I)V

    goto :goto_0

    .line 817
    :cond_2
    aget-object v2, v3, v1

    .line 818
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

    .line 816
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private dismissKeyPreview()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1131
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1133
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->showPreview(ILnet/hasnath/android/keyboard/PointerTracker;)V

    .line 1134
    return-void

    .line 1131
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hasnath/android/keyboard/PointerTracker;

    .line 1132
    .local v0, "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    invoke-virtual {v0, v3}, Lnet/hasnath/android/keyboard/PointerTracker;->updateKey(I)V

    goto :goto_0
.end method

.method private dismissPopupKeyboard()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1720
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1721
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1722
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    .line 1723
    iput v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardOriginX:I

    .line 1724
    iput v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardOriginY:I

    .line 1725
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->invalidateAllKeys()V

    .line 1727
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
    .line 1510
    iget-wide v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardPopupTime:J

    .line 1511
    iget v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardOriginX:I

    sub-int v2, p2, v2

    int-to-float v5, v2

    iget v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardOriginY:I

    sub-int v2, p3, v2

    int-to-float v6, v2

    const/4 v7, 0x0

    move-wide v2, p4

    move v4, p1

    .line 1510
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private getPointerTracker(I)Lnet/hasnath/android/keyboard/PointerTracker;
    .locals 10
    .param p1, "id"    # I

    .prologue
    .line 1515
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    .line 1516
    .local v9, "pointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/hasnath/android/keyboard/PointerTracker;>;"
    iget-object v7, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 1517
    .local v7, "keys":[Lnet/hasnath/android/keyboard/Keyboard$Key;
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    .line 1520
    .local v8, "listener":Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-le v1, p1, :cond_0

    .line 1531
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/hasnath/android/keyboard/PointerTracker;

    return-object v2

    .line 1522
    :cond_0
    new-instance v0, Lnet/hasnath/android/keyboard/PointerTracker;

    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHandler:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyDetector:Lnet/hasnath/android/keyboard/KeyDetector;

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1523
    iget v6, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mLongPressDelay:I

    move-object v4, p0

    .line 1522
    invoke-direct/range {v0 .. v6}, Lnet/hasnath/android/keyboard/PointerTracker;-><init>(ILnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;Lnet/hasnath/android/keyboard/KeyDetector;Lnet/hasnath/android/keyboard/PointerTracker$UIProxy;Landroid/content/res/Resources;I)V

    .line 1524
    .local v0, "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    if-eqz v7, :cond_1

    .line 1525
    iget v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyHysteresisDistance:F

    invoke-virtual {v0, v7, v2}, Lnet/hasnath/android/keyboard/PointerTracker;->setKeyboard([Lnet/hasnath/android/keyboard/Keyboard$Key;F)V

    .line 1526
    :cond_1
    if-eqz v8, :cond_2

    .line 1527
    invoke-virtual {v0, v8}, Lnet/hasnath/android/keyboard/PointerTracker;->setOnKeyboardActionListener(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;)V

    .line 1528
    :cond_2
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1520
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static hasMultiplePopupChars(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z
    .locals 2
    .param p0, "key"    # Lnet/hasnath/android/keyboard/Keyboard$Key;

    .prologue
    const/4 v0, 0x1

    .line 1461
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 1464
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

    .line 1300
    iget v2, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupResId:I

    .line 1301
    .local v2, "popupKeyboardId":I
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1302
    const-string v3, "layout_inflater"

    .line 1301
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 1303
    .local v7, "inflater":Landroid/view/LayoutInflater;
    iget v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPopupLayout:I

    invoke-virtual {v7, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1304
    .local v6, "container":Landroid/view/View;
    if-nez v6, :cond_0

    .line 1305
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1308
    :cond_0
    const v1, 0x7f0f0011

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    .line 1309
    .local v8, "miniKeyboard":Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;
    new-instance v1, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$2;

    invoke-direct {v1, p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$2;-><init>(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;)V

    invoke-virtual {v8, v1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->setOnKeyboardActionListener(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;)V

    .line 1341
    new-instance v1, Lnet/hasnath/android/keyboard/MiniKeyboardKeyDetector;

    iget v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardSlideAllowance:F

    invoke-direct {v1, v3}, Lnet/hasnath/android/keyboard/MiniKeyboardKeyDetector;-><init>(F)V

    iput-object v1, v8, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyDetector:Lnet/hasnath/android/keyboard/KeyDetector;

    .line 1343
    iput-object v4, v8, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1346
    iget-object v1, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1347
    new-instance v0, Lnet/hasnath/android/keyboard/Keyboard;

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 1348
    const/4 v4, -0x1

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingRight()I

    move-result v9

    add-int/2addr v5, v9

    .line 1347
    invoke-direct/range {v0 .. v5}, Lnet/hasnath/android/keyboard/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 1352
    .local v0, "keyboard":Lnet/hasnath/android/keyboard/Keyboard;
    :goto_0
    invoke-virtual {v8, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->setKeyboard(Lnet/hasnath/android/keyboard/Keyboard;)V

    .line 1353
    invoke-virtual {v8, p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->setPopupParent(Landroid/view/View;)V

    .line 1355
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getWidth()I

    move-result v1

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1356
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getHeight()I

    move-result v3

    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1355
    invoke-virtual {v6, v1, v3}, Landroid/view/View;->measure(II)V

    .line 1358
    return-object v6

    .line 1350
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
    .line 1506
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
    .line 1478
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
    .line 1482
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
    .line 1486
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

    .line 1490
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1491
    iget-object v1, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isAsciiDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1492
    const/4 v0, 0x1

    .line 1494
    :cond_0
    return v0
.end method

.method static isNumberAtRightmostPopupChar(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z
    .locals 2
    .param p0, "key"    # Lnet/hasnath/android/keyboard/Keyboard$Key;

    .prologue
    .line 1498
    iget-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1499
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

    .line 1500
    const/4 v0, 0x1

    .line 1502
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

    .line 1362
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 1370
    :goto_0
    return v1

    .line 1363
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/hasnath/android/keyboard/Keyboard$Key;

    iget v0, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->edgeFlags:I

    .line 1370
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
    .locals 48

    .prologue
    .line 846
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardChanged:Z

    if-eqz v3, :cond_3

    .line 847
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardChanged:Z

    if-eqz v3, :cond_2

    .line 848
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

    .line 850
    :cond_1
    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v46

    .line 851
    .local v46, "width":I
    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 852
    .local v22, "height":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v46

    move/from16 v1, v22

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    .line 853
    new-instance v3, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mCanvas:Landroid/graphics/Canvas;

    .line 855
    .end local v22    # "height":I
    .end local v46    # "width":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->invalidateAllKeys()V

    .line 856
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardChanged:Z

    .line 858
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mCanvas:Landroid/graphics/Canvas;

    .line 859
    .local v2, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 861
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    if-nez v3, :cond_4

    .line 1123
    :goto_0
    return-void

    .line 863
    :cond_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPaint:Landroid/graphics/Paint;

    .line 864
    .local v7, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    .line 865
    .local v29, "keyBackground":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mClipRegion:Landroid/graphics/Rect;

    .line 866
    .local v14, "clipRegion":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    .line 867
    .local v39, "padding":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v26

    .line 868
    .local v26, "kbdPaddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v27

    .line 869
    .local v27, "kbdPaddingTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-object/from16 v31, v0

    .line 870
    .local v31, "keys":[Lnet/hasnath/android/keyboard/Keyboard$Key;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mInvalidatedKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-object/from16 v25, v0

    .line 873
    .local v25, "invalidKey":Lnet/hasnath/android/keyboard/Keyboard$Key;
    const/16 v16, 0x0

    .line 874
    .local v16, "drawSingleKey":Z
    if-eqz v25, :cond_5

    invoke-virtual {v2, v14}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 877
    move-object/from16 v0, v25

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    add-int v3, v3, v26

    add-int/lit8 v3, v3, -0x1

    iget v4, v14, Landroid/graphics/Rect;->left:I

    if-gt v3, v4, :cond_5

    .line 878
    move-object/from16 v0, v25

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    add-int v3, v3, v27

    add-int/lit8 v3, v3, -0x1

    iget v4, v14, Landroid/graphics/Rect;->top:I

    if-gt v3, v4, :cond_5

    .line 879
    move-object/from16 v0, v25

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    move-object/from16 v0, v25

    iget v4, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    add-int v3, v3, v26

    add-int/lit8 v3, v3, 0x1

    iget v4, v14, Landroid/graphics/Rect;->right:I

    if-lt v3, v4, :cond_5

    .line 880
    move-object/from16 v0, v25

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    move-object/from16 v0, v25

    iget v4, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->height:I

    add-int/2addr v3, v4

    add-int v3, v3, v27

    add-int/lit8 v3, v3, 0x1

    iget v4, v14, Landroid/graphics/Rect;->bottom:I

    if-lt v3, v4, :cond_5

    .line 881
    const/16 v16, 0x1

    .line 884
    :cond_5
    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 886
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Ridmik.ttf"

    invoke-static {v3, v4}, Lnet/hasnath/android/keyboard/Typefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    .line 887
    .local v9, "banglaASCIIFont":Landroid/graphics/Typeface;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->useEmojiFont:Z

    .line 889
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    iget-boolean v3, v3, Lnet/hasnath/android/keyboard/Keyboard;->isEmoji:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->useEmojiFont:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->emojiFont:Landroid/graphics/Typeface;

    if-nez v3, :cond_6

    .line 891
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ridmik.plugins.coloremoji"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v38

    .line 892
    .local v38, "otherContext":Landroid/content/Context;
    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    .line 893
    .local v8, "am":Landroid/content/res/AssetManager;
    const-string v3, "fonts/notocoloremoji.ttf"

    invoke-static {v8, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->emojiFont:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    .end local v8    # "am":Landroid/content/res/AssetManager;
    .end local v38    # "otherContext":Landroid/content/Context;
    :cond_6
    :goto_1
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v30, v0

    .line 901
    .local v30, "keyCount":I
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_2
    move/from16 v0, v24

    move/from16 v1, v30

    if-lt v0, v1, :cond_8

    .line 1095
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mInvalidatedKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 1103
    const/16 v41, 0x0

    .line 1105
    .local v41, "showGesture":Z
    if-eqz v41, :cond_7

    .line 1106
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mShowTouchPoints:Z

    if-eqz v3, :cond_7

    .line 1107
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v47

    :goto_3
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_26

    .line 1121
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDrawPending:Z

    .line 1122
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_0

    .line 902
    .end local v41    # "showGesture":Z
    :cond_8
    aget-object v28, v31, v24

    .line 903
    .local v28, "key":Lnet/hasnath/android/keyboard/Keyboard$Key;
    if-eqz v16, :cond_9

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_9

    .line 901
    :goto_4
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 906
    :cond_9
    move-object/from16 v0, v28

    iget-boolean v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->modifier:Z

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyDarkTextColor:I

    :goto_5
    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 907
    invoke-virtual/range {v28 .. v28}, Lnet/hasnath/android/keyboard/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v18

    .line 908
    .local v18, "drawableState":[I
    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 913
    move-object/from16 v0, v28

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v3, :cond_18

    const/16 v32, 0x0

    .line 915
    .local v32, "label":Ljava/lang/String;
    :goto_6
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 916
    .local v11, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, v28

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    iget v4, v11, Landroid/graphics/Rect;->right:I

    if-ne v3, v4, :cond_a

    move-object/from16 v0, v28

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->height:I

    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    if-eq v3, v4, :cond_b

    .line 917
    :cond_a
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v28

    iget v5, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    move-object/from16 v0, v28

    iget v6, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->height:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 921
    :cond_b
    move-object/from16 v0, v28

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    add-int v3, v3, v26

    int-to-float v3, v3

    move-object/from16 v0, v28

    iget v4, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    add-int v4, v4, v27

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 922
    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 924
    move-object/from16 v0, p0

    iget v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->themeIndex:I

    sget v4, Lnet/hasnath/android/keyboard/LatinIME;->LOLIPOP_THEME_INDEX:I

    if-eq v3, v4, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->themeIndex:I

    sget v4, Lnet/hasnath/android/keyboard/LatinIME;->LOLIPOP_THEME_INDEX:I

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_11

    .line 925
    :cond_c
    move-object/from16 v0, v28

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    if-eqz v3, :cond_d

    move-object/from16 v0, v28

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x20

    if-ne v3, v4, :cond_d

    .line 927
    move-object/from16 v0, p0

    iget v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->themeIndex:I

    sget v4, Lnet/hasnath/android/keyboard/LatinIME;->LOLIPOP_THEME_INDEX:I

    if-ne v3, v4, :cond_19

    .line 928
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020031

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 932
    .local v15, "dr":Landroid/graphics/drawable/Drawable;
    :goto_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v28

    iget v5, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    move-object/from16 v0, v28

    iget v6, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->height:I

    invoke-virtual {v15, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 933
    invoke-virtual {v15, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 936
    .end local v15    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_d
    move-object/from16 v0, v28

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    if-eqz v3, :cond_f

    move-object/from16 v0, v28

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_e

    move-object/from16 v0, v28

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, -0x1b1

    if-eq v3, v4, :cond_e

    move-object/from16 v0, v28

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, -0x1b2

    if-ne v3, v4, :cond_f

    .line 937
    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->themeIndex:I

    sget v4, Lnet/hasnath/android/keyboard/LatinIME;->LOLIPOP_THEME_INDEX:I

    if-ne v3, v4, :cond_1b

    .line 938
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getKeyboard()Lnet/hasnath/android/keyboard/Keyboard;

    move-result-object v3

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/Keyboard;->isShifted()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 939
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v28

    iput-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 950
    :cond_f
    :goto_8
    move-object/from16 v0, v28

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    if-eqz v3, :cond_10

    move-object/from16 v0, v28

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0xa

    if-ne v3, v4, :cond_10

    .line 951
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020044

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v28

    iput-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 954
    :cond_10
    move-object/from16 v0, v28

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    if-eqz v3, :cond_11

    move-object/from16 v0, v28

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v4, -0x5

    if-ne v3, v4, :cond_11

    .line 955
    move-object/from16 v0, p0

    iget v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->themeIndex:I

    sget v4, Lnet/hasnath/android/keyboard/LatinIME;->LOLIPOP_THEME_INDEX:I

    if-ne v3, v4, :cond_1d

    .line 956
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v28

    iput-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    .line 962
    :cond_11
    :goto_9
    const/16 v40, 0x1

    .line 963
    .local v40, "shouldDrawIcon":Z
    if-eqz v32, :cond_15

    .line 966
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1e

    move-object/from16 v0, v28

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    array-length v3, v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1e

    .line 967
    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mLabelTextSize:I

    move/from16 v35, v0

    .line 968
    .local v35, "labelSize":I
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 974
    :goto_a
    move-object/from16 v0, v28

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    if-eqz v3, :cond_1f

    move-object/from16 v0, v28

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x2328

    if-le v3, v4, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->useEmojiFont:Z

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->emojiFont:Landroid/graphics/Typeface;

    if-eqz v3, :cond_1f

    .line 975
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->emojiFont:Landroid/graphics/Typeface;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 980
    :cond_12
    :goto_b
    move/from16 v0, v35

    int-to-float v3, v0

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 982
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mTextHeightCache:Ljava/util/HashMap;

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    .line 984
    .local v34, "labelHeightValue":Ljava/lang/Integer;
    if-eqz v34, :cond_20

    .line 985
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v33

    .line 1004
    .local v33, "labelHeight":I
    :goto_c
    move-object/from16 v0, v28

    iget-boolean v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->modifier:Z

    if-eqz v3, :cond_21

    .line 1005
    move-object/from16 v0, p0

    iget v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mModifierTextColor:I

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1006
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1014
    :goto_d
    move-object/from16 v0, v28

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    move-object/from16 v0, v39

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    move-object/from16 v0, v39

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    div-int/lit8 v12, v3, 0x2

    .line 1015
    .local v12, "centerX":I
    move-object/from16 v0, v28

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->height:I

    move-object/from16 v0, v39

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, v39

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHintBottomPaddingPlus:I

    add-int/2addr v3, v4

    div-int/lit8 v13, v3, 0x2

    .line 1016
    .local v13, "centerY":I
    int-to-float v3, v13

    .line 1017
    move/from16 v0, v33

    int-to-float v4, v0

    const v5, 0x3f0ccccd    # 0.55f

    mul-float/2addr v4, v5

    .line 1016
    add-float v10, v3, v4

    .line 1019
    .local v10, "baseline":F
    int-to-float v3, v12

    move-object/from16 v0, v32

    invoke-virtual {v2, v0, v3, v10, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1024
    move-object/from16 v0, v28

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v3, :cond_14

    move-object/from16 v0, v28

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_14

    .line 1025
    move-object/from16 v0, p0

    iget v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHintTextSize:F

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1026
    move-object/from16 v0, p0

    iget v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHintColor:I

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1027
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1030
    invoke-direct/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->useBanglaFont()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1031
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1035
    :cond_13
    invoke-static/range {v28 .. v28}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isNumberAtLeftmostPopupChar(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1036
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, v28

    iget-object v4, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1045
    .local v23, "hintLabel":Ljava/lang/String;
    :goto_e
    if-eqz v23, :cond_14

    .line 1048
    move-object/from16 v0, p0

    iget v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHintToLeft:I

    sub-int v3, v12, v3

    div-int/lit8 v4, v35, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHintToUp:I

    sub-int v4, v13, v4

    div-int/lit8 v5, v35, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v3, v4, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1053
    .end local v23    # "hintLabel":Ljava/lang/String;
    :cond_14
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1057
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->shouldDrawLabelAndIcon(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v40

    .line 1062
    .end local v10    # "baseline":F
    .end local v12    # "centerX":I
    .end local v13    # "centerY":I
    .end local v33    # "labelHeight":I
    .end local v34    # "labelHeightValue":Ljava/lang/Integer;
    .end local v35    # "labelSize":I
    :cond_15
    move-object/from16 v0, v28

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_16

    if-eqz v40, :cond_16

    .line 1068
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->shouldDrawIconFully(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1069
    move-object/from16 v0, v28

    iget v0, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    move/from16 v19, v0

    .line 1070
    .local v19, "drawableWidth":I
    move-object/from16 v0, v28

    iget v0, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->height:I

    move/from16 v17, v0

    .line 1071
    .local v17, "drawableHeight":I
    const/16 v20, 0x0

    .line 1072
    .local v20, "drawableX":I
    const/16 v21, -0x1

    .line 1086
    .local v21, "drawableY":I
    :goto_f
    move/from16 v0, v20

    int-to-float v3, v0

    move/from16 v0, v21

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1087
    move-object/from16 v0, v28

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1088
    move-object/from16 v0, v28

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1089
    move/from16 v0, v20

    neg-int v3, v0

    int-to-float v3, v3

    move/from16 v0, v21

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1093
    .end local v17    # "drawableHeight":I
    .end local v19    # "drawableWidth":I
    .end local v20    # "drawableX":I
    .end local v21    # "drawableY":I
    :cond_16
    move-object/from16 v0, v28

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    neg-int v3, v3

    sub-int v3, v3, v26

    int-to-float v3, v3

    move-object/from16 v0, v28

    iget v4, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    neg-int v4, v4

    sub-int v4, v4, v27

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_4

    .line 906
    .end local v11    # "bounds":Landroid/graphics/Rect;
    .end local v18    # "drawableState":[I
    .end local v32    # "label":Ljava/lang/String;
    .end local v40    # "shouldDrawIcon":Z
    :cond_17
    move-object/from16 v0, p0

    iget v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyTextColor:I

    goto/16 :goto_5

    .line 913
    .restart local v18    # "drawableState":[I
    :cond_18
    move-object/from16 v0, v28

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_6

    .line 930
    .restart local v11    # "bounds":Landroid/graphics/Rect;
    .restart local v32    # "label":Ljava/lang/String;
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .restart local v15    # "dr":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_7

    .line 941
    .end local v15    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v28

    iput-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_8

    .line 943
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getKeyboard()Lnet/hasnath/android/keyboard/Keyboard;

    move-result-object v3

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/Keyboard;->isShifted()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 944
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v28

    iput-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_8

    .line 946
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200d4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v28

    iput-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_8

    .line 957
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v28

    iput-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_9

    .line 970
    .restart local v40    # "shouldDrawIcon":Z
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyTextSize:I

    move/from16 v35, v0

    .line 971
    .restart local v35    # "labelSize":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_a

    .line 976
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->useBanglaFont()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 977
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_b

    .line 987
    .restart local v34    # "labelHeightValue":Ljava/lang/Integer;
    :cond_20
    new-instance v44, Landroid/graphics/Rect;

    invoke-direct/range {v44 .. v44}, Landroid/graphics/Rect;-><init>()V

    .line 988
    .local v44, "textBounds":Landroid/graphics/Rect;
    const-string v3, "H"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v7, v3, v4, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 989
    invoke-virtual/range {v44 .. v44}, Landroid/graphics/Rect;->height()I

    move-result v33

    .line 990
    .restart local v33    # "labelHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mTextHeightCache:Ljava/util/HashMap;

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    .line 1008
    .end local v44    # "textBounds":Landroid/graphics/Rect;
    :cond_21
    move-object/from16 v0, p0

    iget v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyTextColor:I

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1009
    move-object/from16 v0, p0

    iget v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mShadowRadius:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v28

    iget-boolean v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->modifier:Z

    if-eqz v3, :cond_22

    move-object/from16 v0, p0

    iget v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDarkShadowColor:I

    :goto_10
    invoke-virtual {v7, v4, v5, v6, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/16 :goto_d

    :cond_22
    move-object/from16 v0, p0

    iget v3, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mShadowColor:I

    goto :goto_10

    .line 1037
    .restart local v10    # "baseline":F
    .restart local v12    # "centerX":I
    .restart local v13    # "centerY":I
    :cond_23
    invoke-static/range {v28 .. v28}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isNumberAtRightmostPopupChar(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1038
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, v28

    iget-object v4, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    move-object/from16 v0, v28

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

    move-result-object v23

    .line 1039
    .restart local v23    # "hintLabel":Ljava/lang/String;
    goto/16 :goto_e

    .line 1042
    .end local v23    # "hintLabel":Ljava/lang/String;
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, v28

    iget-object v4, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    move-object/from16 v0, v28

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

    move-result-object v23

    .restart local v23    # "hintLabel":Ljava/lang/String;
    goto/16 :goto_e

    .line 1074
    .end local v10    # "baseline":F
    .end local v12    # "centerX":I
    .end local v13    # "centerY":I
    .end local v23    # "hintLabel":Ljava/lang/String;
    .end local v33    # "labelHeight":I
    .end local v34    # "labelHeightValue":Ljava/lang/Integer;
    .end local v35    # "labelSize":I
    :cond_25
    move-object/from16 v0, v28

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    .line 1075
    .restart local v19    # "drawableWidth":I
    move-object/from16 v0, v28

    iget-object v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    .line 1076
    .restart local v17    # "drawableHeight":I
    move-object/from16 v0, v28

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    move-object/from16 v0, v39

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    move-object/from16 v0, v39

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    sub-int v3, v3, v19

    div-int/lit8 v20, v3, 0x2

    .line 1077
    .restart local v20    # "drawableX":I
    move-object/from16 v0, v28

    iget v3, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->height:I

    move-object/from16 v0, v39

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    move-object/from16 v0, v39

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int v3, v3, v17

    div-int/lit8 v21, v3, 0x2

    .restart local v21    # "drawableY":I
    goto/16 :goto_f

    .line 1107
    .end local v11    # "bounds":Landroid/graphics/Rect;
    .end local v17    # "drawableHeight":I
    .end local v18    # "drawableState":[I
    .end local v19    # "drawableWidth":I
    .end local v20    # "drawableX":I
    .end local v21    # "drawableY":I
    .end local v28    # "key":Lnet/hasnath/android/keyboard/Keyboard$Key;
    .end local v32    # "label":Ljava/lang/String;
    .end local v40    # "shouldDrawIcon":Z
    .restart local v41    # "showGesture":Z
    :cond_26
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lnet/hasnath/android/keyboard/PointerTracker;

    .line 1108
    .local v45, "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    invoke-virtual/range {v45 .. v45}, Lnet/hasnath/android/keyboard/PointerTracker;->getStartX()I

    move-result v42

    .line 1109
    .local v42, "startX":I
    invoke-virtual/range {v45 .. v45}, Lnet/hasnath/android/keyboard/PointerTracker;->getStartY()I

    move-result v43

    .line 1110
    .local v43, "startY":I
    invoke-virtual/range {v45 .. v45}, Lnet/hasnath/android/keyboard/PointerTracker;->getLastX()I

    move-result v36

    .line 1111
    .local v36, "lastX":I
    invoke-virtual/range {v45 .. v45}, Lnet/hasnath/android/keyboard/PointerTracker;->getLastY()I

    move-result v37

    .line 1113
    .local v37, "lastY":I
    const/16 v3, 0x80

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1114
    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1115
    const v3, -0xcc4a1b

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1116
    move/from16 v0, v42

    int-to-float v3, v0

    move/from16 v0, v43

    int-to-float v4, v0

    move/from16 v0, v36

    int-to-float v5, v0

    move/from16 v0, v37

    int-to-float v6, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 894
    .end local v24    # "i":I
    .end local v30    # "keyCount":I
    .end local v36    # "lastX":I
    .end local v37    # "lastY":I
    .end local v41    # "showGesture":Z
    .end local v42    # "startX":I
    .end local v43    # "startY":I
    .end local v45    # "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    :catch_0
    move-exception v3

    goto/16 :goto_1
.end method

.method private onCancelEvent(Lnet/hasnath/android/keyboard/PointerTracker;IIJ)V
    .locals 2
    .param p1, "tracker"    # Lnet/hasnath/android/keyboard/PointerTracker;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "eventTime"    # J

    .prologue
    .line 1683
    invoke-virtual {p1, p2, p3, p4, p5}, Lnet/hasnath/android/keyboard/PointerTracker;->onCancelEvent(IIJ)V

    .line 1684
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerQueue:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->remove(Lnet/hasnath/android/keyboard/PointerTracker;)V

    .line 1685
    return-void
.end method

.method private onDownEvent(Lnet/hasnath/android/keyboard/PointerTracker;IIJ)V
    .locals 2
    .param p1, "tracker"    # Lnet/hasnath/android/keyboard/PointerTracker;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "eventTime"    # J

    .prologue
    .line 1655
    invoke-virtual {p1, p2, p3}, Lnet/hasnath/android/keyboard/PointerTracker;->isOnModifierKey(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1658
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerQueue:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p4, p5}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->releaseAllPointersExcept(Lnet/hasnath/android/keyboard/PointerTracker;J)V

    .line 1660
    :cond_0
    invoke-virtual {p1, p2, p3, p4, p5}, Lnet/hasnath/android/keyboard/PointerTracker;->onDownEvent(IIJ)V

    .line 1661
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerQueue:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->add(Lnet/hasnath/android/keyboard/PointerTracker;)V

    .line 1662
    return-void
.end method

.method private onUpEvent(Lnet/hasnath/android/keyboard/PointerTracker;IIJ)V
    .locals 4
    .param p1, "tracker"    # Lnet/hasnath/android/keyboard/PointerTracker;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "eventTime"    # J

    .prologue
    .line 1665
    invoke-virtual {p1}, Lnet/hasnath/android/keyboard/PointerTracker;->isModifier()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1668
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerQueue:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v1, p1, p4, p5}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->releaseAllPointersExcept(Lnet/hasnath/android/keyboard/PointerTracker;J)V

    .line 1678
    :goto_0
    invoke-virtual {p1, p2, p3, p4, p5}, Lnet/hasnath/android/keyboard/PointerTracker;->onUpEvent(IIJ)V

    .line 1679
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerQueue:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v1, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->remove(Lnet/hasnath/android/keyboard/PointerTracker;)V

    .line 1680
    return-void

    .line 1670
    :cond_0
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerQueue:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v1, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->lastIndexOf(Lnet/hasnath/android/keyboard/PointerTracker;)I

    move-result v0

    .line 1671
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 1672
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerQueue:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v1, p1, p4, p5}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->releaseAllPointersOlderThan(Lnet/hasnath/android/keyboard/PointerTracker;J)V

    goto :goto_0

    .line 1674
    :cond_1
    const-string v1, "LatinKeyboardBaseView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onUpEvent: corresponding down event not found for pointer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1675
    iget v3, p1, Lnet/hasnath/android/keyboard/PointerTracker;->mPointerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1674
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private openPopupIfRequired(ILnet/hasnath/android/keyboard/PointerTracker;)Z
    .locals 3
    .param p1, "keyIndex"    # I
    .param p2, "tracker"    # Lnet/hasnath/android/keyboard/PointerTracker;

    .prologue
    const/4 v1, 0x0

    .line 1281
    iget v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPopupLayout:I

    if-nez v2, :cond_1

    .line 1296
    :cond_0
    :goto_0
    return v1

    .line 1285
    :cond_1
    invoke-virtual {p2, p1}, Lnet/hasnath/android/keyboard/PointerTracker;->getKey(I)Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-result-object v0

    .line 1286
    .local v0, "popupKey":Lnet/hasnath/android/keyboard/Keyboard$Key;
    if-eqz v0, :cond_0

    .line 1288
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->onLongPress(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v1

    .line 1289
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 1290
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->dismissKeyPreview()V

    .line 1291
    iget v2, p2, Lnet/hasnath/android/keyboard/PointerTracker;->mPointerId:I

    iput v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardTrackerId:I

    .line 1293
    invoke-virtual {p2}, Lnet/hasnath/android/keyboard/PointerTracker;->setAlreadyProcessed()V

    .line 1294
    iget-object v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerQueue:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;

    invoke-virtual {v2, p2}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->remove(Lnet/hasnath/android/keyboard/PointerTracker;)V

    goto :goto_0
.end method

.method private shouldDrawIconFully(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z
    .locals 1
    .param p1, "key"    # Lnet/hasnath/android/keyboard/Keyboard$Key;

    .prologue
    .line 1468
    invoke-static {p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isNumberAtEdgeOfPopupChars(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isLatinF1Key(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1469
    invoke-static {p1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->hasPuncOrSmileysPopup(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1468
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
    .line 1473
    invoke-static {p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isNumberAtEdgeOfPopupChars(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isNonMicLatinF1Key(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1474
    invoke-static {p1}, Lnet/hasnath/android/keyboard/LatinKeyboard;->hasPuncOrSmileysPopup(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1473
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showKey(ILnet/hasnath/android/keyboard/PointerTracker;)V
    .locals 13
    .param p1, "keyIndex"    # I
    .param p2, "tracker"    # Lnet/hasnath/android/keyboard/PointerTracker;

    .prologue
    .line 1160
    invoke-virtual {p2, p1}, Lnet/hasnath/android/keyboard/PointerTracker;->getKey(I)Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-result-object v1

    .line 1161
    .local v1, "key":Lnet/hasnath/android/keyboard/Keyboard$Key;
    if-nez v1, :cond_0

    .line 1246
    :goto_0
    return-void

    .line 1166
    :cond_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Ridmik.ttf"

    invoke-static {v8, v9}, Lnet/hasnath/android/keyboard/Typefaces;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1168
    .local v0, "banglaASCIIFont":Landroid/graphics/Typeface;
    iget-object v8, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    if-eqz v8, :cond_4

    iget-object v8, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    const/16 v9, 0x2328

    if-le v8, v9, :cond_4

    iget-boolean v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->useEmojiFont:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->emojiFont:Landroid/graphics/Typeface;

    if-eqz v8, :cond_4

    .line 1169
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1170
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->emojiFont:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1171
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    iget-object v9, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1193
    :goto_1
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1194
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1193
    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->measure(II)V

    .line 1195
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    iget v9, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    .line 1196
    iget-object v10, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    .line 1195
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1197
    .local v6, "popupWidth":I
    iget v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewHeight:I

    .line 1198
    .local v3, "popupHeight":I
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1199
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_1

    .line 1200
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1201
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1204
    :cond_1
    iget v8, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    iget v9, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    sub-int v9, v6, v9

    div-int/lit8 v9, v9, 0x2

    sub-int v4, v8, v9

    .line 1205
    .local v4, "popupPreviewX":I
    iget v8, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    sub-int/2addr v8, v3

    iget v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewOffset:I

    add-int v5, v8, v9

    .line 1207
    .local v5, "popupPreviewY":I
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHandler:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->cancelDismissPreview()V

    .line 1208
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOffsetInWindow:[I

    if-nez v8, :cond_2

    .line 1209
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOffsetInWindow:[I

    .line 1210
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOffsetInWindow:[I

    invoke-virtual {p0, v8}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getLocationInWindow([I)V

    .line 1211
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOffsetInWindow:[I

    const/4 v9, 0x0

    aget v10, v8, v9

    iget v11, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPopupPreviewOffsetX:I

    add-int/2addr v10, v11

    aput v10, v8, v9

    .line 1212
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOffsetInWindow:[I

    const/4 v9, 0x1

    aget v10, v8, v9

    iget v11, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPopupPreviewOffsetY:I

    add-int/2addr v10, v11

    aput v10, v8, v9

    .line 1213
    const/4 v8, 0x2

    new-array v7, v8, [I

    .line 1214
    .local v7, "windowLocation":[I
    invoke-virtual {p0, v7}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getLocationOnScreen([I)V

    .line 1215
    const/4 v8, 0x1

    aget v8, v7, v8

    iput v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mWindowY:I

    .line 1218
    .end local v7    # "windowLocation":[I
    :cond_2
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1219
    iget v8, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupResId:I

    if-eqz v8, :cond_a

    sget-object v8, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->LONG_PRESSABLE_STATE_SET:[I

    .line 1218
    :goto_2
    invoke-virtual {v9, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1220
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOffsetInWindow:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    add-int/2addr v4, v8

    .line 1221
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOffsetInWindow:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    add-int/2addr v5, v8

    .line 1224
    iget v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mWindowY:I

    add-int/2addr v8, v5

    if-gez v8, :cond_3

    .line 1227
    iget v8, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    iget v9, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    if-gt v8, v9, :cond_b

    .line 1228
    iget v8, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x4004000000000000L    # 2.5

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v4, v8

    .line 1232
    :goto_3
    add-int/2addr v5, v3

    .line 1235
    :cond_3
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1236
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v4, v5, v6, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1244
    :goto_4
    iput v5, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPopupPreviewDisplayedY:I

    .line 1245
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1172
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "popupHeight":I
    .end local v4    # "popupPreviewX":I
    .end local v5    # "popupPreviewY":I
    .end local v6    # "popupWidth":I
    :cond_4
    iget-object v8, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_6

    invoke-direct {p0, v1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->shouldDrawLabelAndIcon(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1173
    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1174
    iget-object v8, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_5

    iget-object v8, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    .line 1173
    :goto_5
    invoke-virtual {v9, v10, v11, v12, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1175
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1174
    :cond_5
    iget-object v8, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 1177
    :cond_6
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1178
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Lnet/hasnath/android/keyboard/PointerTracker;->getPreviewText(Lnet/hasnath/android/keyboard/Keyboard$Key;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {p0, v9}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1179
    iget-object v8, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_8

    iget-object v8, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->codes:[I

    array-length v8, v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_8

    .line 1180
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v9, 0x0

    iget v10, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyTextSize:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1181
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->useBanglaFont()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1182
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1

    .line 1184
    :cond_7
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1

    .line 1186
    :cond_8
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    const/4 v9, 0x0

    iget v10, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewTextSizeLarge:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1187
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->useBanglaFont()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1188
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1

    .line 1190
    :cond_9
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewText:Landroid/widget/TextView;

    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyTextStyle:Landroid/graphics/Typeface;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1

    .line 1219
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "popupHeight":I
    .restart local v4    # "popupPreviewX":I
    .restart local v5    # "popupPreviewY":I
    .restart local v6    # "popupWidth":I
    :cond_a
    sget-object v8, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->EMPTY_STATE_SET:[I

    goto/16 :goto_2

    .line 1230
    :cond_b
    iget v8, v1, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x4004000000000000L    # 2.5

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v4, v8

    goto/16 :goto_3

    .line 1238
    :cond_c
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1239
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1240
    iget-object v8, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v9, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardParent:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_4
.end method

.method private useBanglaFont()Z
    .locals 1

    .prologue
    .line 1126
    invoke-static {}, Lnet/hasnath/android/keyboard/LatinIME;->useBanglaFont()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 780
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/Keyboard;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 781
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getKeyboardLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 785
    .end local p1    # "label":Ljava/lang/CharSequence;
    :cond_0
    return-object p1
.end method

.method public closing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1704
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1705
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHandler:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->cancelAllMessages()V

    .line 1707
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->dismissPopupKeyboard()V

    .line 1708
    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    .line 1709
    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mCanvas:Landroid/graphics/Canvas;

    .line 1710
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardCache:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 1711
    return-void
.end method

.method public getKeyboard()Lnet/hasnath/android/keyboard/Keyboard;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    return-object v0
.end method

.method protected getKeyboardLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    instance-of v0, v0, Lnet/hasnath/android/keyboard/LatinKeyboard;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    check-cast v0, Lnet/hasnath/android/keyboard/LatinKeyboard;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboard;->getInputLocale()Ljava/util/Locale;

    move-result-object v0

    .line 774
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
    .line 627
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    return-object v0
.end method

.method public getPointerCount()I
    .locals 1

    .prologue
    .line 1543
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOldPointerCount:I

    return v0
.end method

.method public getSymbolColorScheme()I
    .locals 1

    .prologue
    .line 740
    iget v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mSymbolColorScheme:I

    return v0
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 1730
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1731
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->dismissPopupKeyboard()V

    .line 1732
    const/4 v0, 0x1

    .line 1734
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDistinctMultitouch()Z
    .locals 1

    .prologue
    .line 677
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHasDistinctMultitouch:Z

    return v0
.end method

.method public invalidateAllKeys()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1255
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDrawPending:Z

    .line 1257
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->invalidate()V

    .line 1258
    return-void
.end method

.method public invalidateKey(Lnet/hasnath/android/keyboard/Keyboard$Key;)V
    .locals 6
    .param p1, "key"    # Lnet/hasnath/android/keyboard/Keyboard$Key;

    .prologue
    .line 1268
    if-nez p1, :cond_0

    .line 1277
    :goto_0
    return-void

    .line 1270
    :cond_0
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mInvalidatedKey:Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 1272
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDirtyRect:Landroid/graphics/Rect;

    iget v1, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 1273
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

    .line 1272
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 1274
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->onBufferDraw()V

    .line 1275
    iget v0, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p1, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 1276
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

    .line 1275
    invoke-virtual {p0, v0, v1, v2, v3}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->invalidate(IIII)V

    goto :goto_0
.end method

.method public isInSlidingKeyInput()Z
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    if-eqz v0, :cond_0

    .line 1536
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isInSlidingKeyInput()Z

    move-result v0

    .line 1538
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
    .line 724
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mShowPreview:Z

    return v0
.end method

.method public isProximityCorrectionEnabled()Z
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyDetector:Lnet/hasnath/android/keyboard/KeyDetector;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/KeyDetector;->isProximityCorrectionEnabled()Z

    move-result v0

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/Keyboard;->isShifted()Z

    move-result v0

    .line 705
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1715
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1716
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->closing()V

    .line 1717
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 838
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 839
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDrawPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardChanged:Z

    if-eqz v0, :cond_1

    .line 840
    :cond_0
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->onBufferDraw()V

    .line 842
    :cond_1
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 843
    return-void
.end method

.method protected onLongPress(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z
    .locals 20
    .param p1, "popupKey"    # Lnet/hasnath/android/keyboard/Keyboard$Key;

    .prologue
    .line 1385
    move-object/from16 v0, p1

    iget v4, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->popupResId:I

    if-nez v4, :cond_0

    .line 1386
    const/4 v4, 0x0

    .line 1457
    :goto_0
    return v4

    .line 1388
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardCache:Ljava/util/WeakHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 1389
    .local v11, "container":Landroid/view/View;
    if-nez v11, :cond_1

    .line 1390
    invoke-direct/range {p0 .. p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->inflateMiniKeyboardContainer(Lnet/hasnath/android/keyboard/Keyboard$Key;)Landroid/view/View;

    move-result-object v11

    .line 1391
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardCache:Ljava/util/WeakHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v11}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    :cond_1
    const v4, 0x7f0f0011

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    .line 1394
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mWindowOffset:[I

    if-nez v4, :cond_2

    .line 1395
    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mWindowOffset:[I

    .line 1396
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mWindowOffset:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getLocationInWindow([I)V

    .line 1406
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getKeyboard()Lnet/hasnath/android/keyboard/Keyboard;

    move-result-object v4

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v15

    .line 1407
    .local v15, "miniKeys":Ljava/util/List;, "Ljava/util/List<Lnet/hasnath/android/keyboard/Keyboard$Key;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x0

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/hasnath/android/keyboard/Keyboard$Key;

    iget v14, v4, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    .line 1411
    .local v14, "miniKeyWidth":I
    :goto_1
    invoke-static/range {p1 .. p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->hasMultiplePopupChars(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static/range {p1 .. p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isNumberAtLeftmostPopupChar(Lnet/hasnath/android/keyboard/Keyboard$Key;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1410
    const/4 v13, 0x1

    .line 1412
    .local v13, "isNumberAtLeftmost":Z
    :goto_2
    move-object/from16 v0, p1

    iget v4, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mWindowOffset:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int v16, v4, v5

    .line 1413
    .local v16, "popupX":I
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v4

    add-int v16, v16, v4

    .line 1414
    if-eqz v13, :cond_6

    .line 1415
    move-object/from16 v0, p1

    iget v4, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    sub-int/2addr v4, v14

    add-int v16, v16, v4

    .line 1416
    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int v16, v16, v4

    .line 1422
    :goto_3
    move-object/from16 v0, p1

    iget v4, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mWindowOffset:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int v17, v4, v5

    .line 1423
    .local v17, "popupY":I
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v4

    add-int v17, v17, v4

    .line 1424
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v17, v17, v4

    .line 1425
    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int v17, v17, v4

    .line 1426
    move/from16 v18, v16

    .line 1427
    .local v18, "x":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mShowPreview:Z

    if-eqz v4, :cond_7

    invoke-static {v15}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isOneRowKeys(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPopupPreviewDisplayedY:I

    move/from16 v19, v0

    .line 1429
    .local v19, "y":I
    :goto_4
    move/from16 v10, v18

    .line 1430
    .local v10, "adjustedX":I
    if-gez v18, :cond_8

    .line 1431
    const/4 v10, 0x0

    .line 1435
    :cond_3
    :goto_5
    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mWindowOffset:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardOriginX:I

    .line 1436
    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int v4, v4, v19

    move-object/from16 v0, p0

    iget-object v5, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mWindowOffset:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardOriginY:I

    .line 1437
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    move/from16 v0, v19

    invoke-virtual {v4, v10, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->setPopupOffset(II)V

    .line 1438
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->isShifted()Z

    move-result v5

    invoke-virtual {v4, v5}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->setShifted(Z)Z

    .line 1440
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->setPreviewEnabled(Z)V

    .line 1441
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v11}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1442
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget v5, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewHeight:I

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1445
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardPopup:Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1449
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1450
    .local v8, "eventTime":J
    move-object/from16 v0, p0

    iput-wide v8, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardPopupTime:J

    .line 1451
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget v4, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->x:I

    .line 1452
    move-object/from16 v0, p1

    iget v6, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->width:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v4

    move-object/from16 v0, p1

    iget v4, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->y:I

    move-object/from16 v0, p1

    iget v7, v0, Lnet/hasnath/android/keyboard/Keyboard$Key;->height:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v4

    move-object/from16 v4, p0

    .line 1451
    invoke-direct/range {v4 .. v9}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->generateMiniKeyboardMotionEvent(IIIJ)Landroid/view/MotionEvent;

    move-result-object v12

    .line 1453
    .local v12, "downEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    invoke-virtual {v4, v12}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1454
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    .line 1456
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->invalidateAllKeys()V

    .line 1457
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1407
    .end local v8    # "eventTime":J
    .end local v10    # "adjustedX":I
    .end local v12    # "downEvent":Landroid/view/MotionEvent;
    .end local v13    # "isNumberAtLeftmost":Z
    .end local v14    # "miniKeyWidth":I
    .end local v16    # "popupX":I
    .end local v17    # "popupY":I
    .end local v18    # "x":I
    .end local v19    # "y":I
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 1410
    .restart local v14    # "miniKeyWidth":I
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1418
    .restart local v13    # "isNumberAtLeftmost":Z
    .restart local v16    # "popupX":I
    :cond_6
    add-int v16, v16, v14

    .line 1419
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v16, v16, v4

    .line 1420
    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int v16, v16, v4

    goto/16 :goto_3

    .restart local v17    # "popupY":I
    .restart local v18    # "x":I
    :cond_7
    move/from16 v19, v17

    .line 1427
    goto/16 :goto_4

    .line 1432
    .restart local v10    # "adjustedX":I
    .restart local v19    # "y":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    move/from16 v0, v18

    if-le v0, v4, :cond_3

    .line 1433
    invoke-virtual/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v10, v4, v5

    goto/16 :goto_5
.end method

.method public onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 791
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    if-nez v1, :cond_0

    .line 793
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

    .line 792
    invoke-virtual {p0, v1, v2}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->setMeasuredDimension(II)V

    .line 802
    :goto_0
    return-void

    .line 795
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

    .line 796
    .local v0, "width":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit8 v2, v0, 0xa

    if-ge v1, v2, :cond_1

    .line 797
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 800
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

    .line 799
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
    .line 826
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 828
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mBuffer:Landroid/graphics/Bitmap;

    .line 829
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 25
    .param p1, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 1548
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 1549
    .local v3, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v23

    .line 1550
    .local v23, "pointerCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOldPointerCount:I

    move/from16 v22, v0

    .line 1551
    .local v22, "oldPointerCount":I
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOldPointerCount:I

    .line 1556
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHasDistinctMultitouch:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move/from16 v0, v23

    if-le v0, v2, :cond_0

    const/4 v2, 0x1

    move/from16 v0, v22

    if-le v0, v2, :cond_0

    .line 1557
    const/4 v2, 0x1

    .line 1651
    :goto_0
    return v2

    .line 1561
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mSwipeTracker:Lnet/hasnath/android/keyboard/SwipeTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lnet/hasnath/android/keyboard/SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1564
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    if-nez v2, :cond_1

    .line 1565
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1566
    invoke-direct/range {p0 .. p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->dismissKeyPreview()V

    .line 1567
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHandler:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->cancelKeyTimers()V

    .line 1568
    const/4 v2, 0x1

    goto :goto_0

    .line 1571
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    .line 1572
    .local v6, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v20

    .line 1573
    .local v20, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    .line 1574
    .local v19, "id":I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v10, v2

    .line 1575
    .local v10, "x":I
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v11, v2

    .line 1579
    .local v11, "y":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    if-eqz v2, :cond_5

    .line 1580
    move-object/from16 v0, p0

    iget v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardTrackerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v21

    .line 1581
    .local v21, "miniKeyboardPointerIndex":I
    if-ltz v21, :cond_3

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    .line 1582
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v4, v2

    .line 1583
    .local v4, "miniKeyboardX":I
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v9, v2

    move-object/from16 v0, p0

    iget v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->themeIndex:I

    sget v12, Lnet/hasnath/android/keyboard/LatinIME;->LOLIPOP_THEME_INDEX:I

    if-eq v2, v12, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->themeIndex:I

    sget v12, Lnet/hasnath/android/keyboard/LatinIME;->LOLIPOP_THEME_INDEX:I

    add-int/lit8 v12, v12, 0x1

    if-ne v2, v12, :cond_4

    :cond_2
    const/16 v2, 0x32

    :goto_1
    sub-int v5, v9, v2

    .local v5, "miniKeyboardY":I
    move-object/from16 v2, p0

    .line 1584
    invoke-direct/range {v2 .. v7}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->generateMiniKeyboardMotionEvent(IIIJ)Landroid/view/MotionEvent;

    move-result-object v24

    .line 1586
    .local v24, "translated":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboard:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1587
    invoke-virtual/range {v24 .. v24}, Landroid/view/MotionEvent;->recycle()V

    .line 1589
    .end local v4    # "miniKeyboardX":I
    .end local v5    # "miniKeyboardY":I
    .end local v24    # "translated":Landroid/view/MotionEvent;
    :cond_3
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1583
    .restart local v4    # "miniKeyboardX":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 1592
    .end local v4    # "miniKeyboardX":I
    .end local v21    # "miniKeyboardPointerIndex":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHandler:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->isInKeyRepeat()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1594
    const/4 v2, 0x2

    if-ne v3, v2, :cond_6

    .line 1595
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1597
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPointerTracker(I)Lnet/hasnath/android/keyboard/PointerTracker;

    move-result-object v8

    .line 1600
    .local v8, "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    const/4 v2, 0x1

    move/from16 v0, v23

    if-le v0, v2, :cond_7

    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/PointerTracker;->isModifier()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1601
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHandler:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->cancelKeyRepeatTimer()V

    .line 1609
    .end local v8    # "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHasDistinctMultitouch:Z

    if-nez v2, :cond_b

    .line 1611
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPointerTracker(I)Lnet/hasnath/android/keyboard/PointerTracker;

    move-result-object v8

    .line 1612
    .restart local v8    # "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_8

    const/4 v2, 0x2

    move/from16 v0, v22

    if-ne v0, v2, :cond_8

    .line 1615
    invoke-virtual {v8, v10, v11, v6, v7}, Lnet/hasnath/android/keyboard/PointerTracker;->onDownEvent(IIJ)V

    .line 1626
    :goto_2
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1616
    :cond_8
    const/4 v2, 0x2

    move/from16 v0, v23

    if-ne v0, v2, :cond_9

    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_9

    .line 1619
    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/PointerTracker;->getLastX()I

    move-result v2

    invoke-virtual {v8}, Lnet/hasnath/android/keyboard/PointerTracker;->getLastY()I

    move-result v9

    invoke-virtual {v8, v2, v9, v6, v7}, Lnet/hasnath/android/keyboard/PointerTracker;->onUpEvent(IIJ)V

    goto :goto_2

    .line 1620
    :cond_9
    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_a

    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_a

    move v9, v3

    move-wide v12, v6

    .line 1621
    invoke-virtual/range {v8 .. v13}, Lnet/hasnath/android/keyboard/PointerTracker;->onTouchEvent(IIIJ)V

    goto :goto_2

    .line 1623
    :cond_a
    const-string v2, "LatinKeyboardBaseView"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "Unknown touch panel behavior: pointer count is "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1624
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

    .line 1623
    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1629
    .end local v8    # "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    :cond_b
    const/4 v2, 0x2

    if-ne v3, v2, :cond_d

    .line 1630
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v23

    if-lt v0, v1, :cond_c

    .line 1651
    .end local v18    # "i":I
    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1631
    .restart local v18    # "i":I
    :cond_c
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPointerTracker(I)Lnet/hasnath/android/keyboard/PointerTracker;

    move-result-object v8

    .line 1632
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

    .line 1630
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 1635
    .end local v8    # "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    .end local v18    # "i":I
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPointerTracker(I)Lnet/hasnath/android/keyboard/PointerTracker;

    move-result-object v8

    .line 1636
    .restart local v8    # "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_4

    :pswitch_1
    move-object/from16 v12, p0

    move-object v13, v8

    move v14, v10

    move v15, v11

    move-wide/from16 v16, v6

    .line 1639
    invoke-direct/range {v12 .. v17}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->onDownEvent(Lnet/hasnath/android/keyboard/PointerTracker;IIJ)V

    goto :goto_4

    :pswitch_2
    move-object/from16 v12, p0

    move-object v13, v8

    move v14, v10

    move v15, v11

    move-wide/from16 v16, v6

    .line 1643
    invoke-direct/range {v12 .. v17}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->onUpEvent(Lnet/hasnath/android/keyboard/PointerTracker;IIJ)V

    goto :goto_4

    :pswitch_3
    move-object/from16 v12, p0

    move-object v13, v8

    move v14, v10

    move v15, v11

    move-wide/from16 v16, v6

    .line 1646
    invoke-direct/range {v12 .. v17}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->onCancelEvent(Lnet/hasnath/android/keyboard/PointerTracker;IIJ)V

    goto :goto_4

    .line 1636
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
    .line 638
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    if-eqz v1, :cond_0

    .line 639
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->dismissKeyPreview()V

    .line 642
    :cond_0
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHandler:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->cancelKeyTimers()V

    .line 643
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHandler:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->cancelPopupPreview()V

    .line 644
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    .line 646
    invoke-static {p1}, Lnet/hasnath/android/keyboard/LatinImeLogger;->onSetKeyboard(Lnet/hasnath/android/keyboard/Keyboard;)V

    .line 647
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyDetector:Lnet/hasnath/android/keyboard/KeyDetector;

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingLeft()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    .line 648
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mVerticalCorrection:F

    add-float/2addr v3, v4

    .line 647
    invoke-virtual {v1, p1, v2, v3}, Lnet/hasnath/android/keyboard/KeyDetector;->setKeyboard(Lnet/hasnath/android/keyboard/Keyboard;FF)[Lnet/hasnath/android/keyboard/Keyboard$Key;

    move-result-object v1

    iput-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeys:[Lnet/hasnath/android/keyboard/Keyboard$Key;

    .line 649
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardVerticalGap:I

    .line 652
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 655
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->requestLayout()V

    .line 657
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardChanged:Z

    .line 658
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->invalidateAllKeys()V

    .line 659
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->computeProximityThreshold(Lnet/hasnath/android/keyboard/Keyboard;)V

    .line 660
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 661
    return-void

    .line 652
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hasnath/android/keyboard/PointerTracker;

    .line 653
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
    .line 732
    iput p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mLongPressDelay:I

    .line 734
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 737
    return-void

    .line 734
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hasnath/android/keyboard/PointerTracker;

    .line 735
    .local v0, "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    iget v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mLongPressDelay:I

    invoke-virtual {v0, v2}, Lnet/hasnath/android/keyboard/PointerTracker;->setLongPressKeyTimeout(I)V

    goto :goto_0
.end method

.method public setOnKeyboardActionListener(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;)V
    .locals 3
    .param p1, "listener"    # Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    .prologue
    .line 616
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    .line 617
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPointerTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 620
    return-void

    .line 617
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hasnath/android/keyboard/PointerTracker;

    .line 618
    .local v0, "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    invoke-virtual {v0, p1}, Lnet/hasnath/android/keyboard/PointerTracker;->setOnKeyboardActionListener(Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;)V

    goto :goto_0
.end method

.method public setPopupOffset(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 748
    iput p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPopupPreviewOffsetX:I

    .line 749
    iput p2, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPopupPreviewOffsetY:I

    .line 750
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 751
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 744
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mMiniKeyboardParent:Landroid/view/View;

    .line 745
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0
    .param p1, "previewEnabled"    # Z

    .prologue
    .line 715
    iput-boolean p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mShowPreview:Z

    .line 716
    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 760
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyDetector:Lnet/hasnath/android/keyboard/KeyDetector;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/keyboard/KeyDetector;->setProximityCorrectionEnabled(Z)V

    .line 761
    return-void
.end method

.method public setShifted(Z)Z
    .locals 1
    .param p1, "shifted"    # Z

    .prologue
    .line 686
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    invoke-virtual {v0, p1}, Lnet/hasnath/android/keyboard/Keyboard;->setShifted(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->invalidateAllKeys()V

    .line 690
    const/4 v0, 0x1

    .line 693
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setThemeIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 833
    iput p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->themeIndex:I

    .line 834
    return-void
.end method

.method public showPreview(ILnet/hasnath/android/keyboard/PointerTracker;)V
    .locals 6
    .param p1, "keyIndex"    # I
    .param p2, "tracker"    # Lnet/hasnath/android/keyboard/PointerTracker;

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 1137
    iget v2, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOldPreviewKeyIndex:I

    .line 1138
    .local v2, "oldKeyIndex":I
    iput p1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mOldPreviewKeyIndex:I

    .line 1139
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    instance-of v3, v3, Lnet/hasnath/android/keyboard/LatinKeyboard;

    if-eqz v3, :cond_2

    .line 1140
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboard:Lnet/hasnath/android/keyboard/Keyboard;

    check-cast v3, Lnet/hasnath/android/keyboard/LatinKeyboard;

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/LatinKeyboard;->isLanguageSwitchEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v4

    .line 1144
    .local v1, "isLanguageSwitchEnabled":Z
    :goto_0
    if-eqz p2, :cond_3

    .line 1145
    invoke-virtual {p2, p1}, Lnet/hasnath/android/keyboard/PointerTracker;->isSpaceKey(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2, v2}, Lnet/hasnath/android/keyboard/PointerTracker;->isSpaceKey(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1147
    .local v0, "hidePreviewOrShowSpaceKeyPreview":Z
    :goto_1
    if-eq v2, p1, :cond_1

    .line 1148
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mShowPreview:Z

    if-nez v3, :cond_0

    .line 1149
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1150
    :cond_0
    const/4 v3, -0x1

    if-ne p1, v3, :cond_4

    .line 1151
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHandler:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->cancelPopupPreview()V

    .line 1152
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHandler:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    iget v4, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDelayAfterPreview:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->dismissPreview(J)V

    .line 1157
    :cond_1
    :goto_2
    return-void

    .end local v0    # "hidePreviewOrShowSpaceKeyPreview":Z
    .end local v1    # "isLanguageSwitchEnabled":Z
    :cond_2
    move v1, v0

    .line 1139
    goto :goto_0

    .restart local v1    # "isLanguageSwitchEnabled":Z
    :cond_3
    move v0, v4

    .line 1144
    goto :goto_1

    .line 1153
    .restart local v0    # "hidePreviewOrShowSpaceKeyPreview":Z
    :cond_4
    if-eqz p2, :cond_1

    .line 1154
    iget-object v3, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mHandler:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;

    iget v4, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mDelayBeforePreview:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5, p1, p2}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$UIHandler;->popupPreview(JILnet/hasnath/android/keyboard/PointerTracker;)V

    goto :goto_2
.end method

.method protected swipeDown()V
    .locals 1

    .prologue
    .line 1700
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-interface {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->swipeDown()V

    .line 1701
    return-void
.end method

.method protected swipeLeft()V
    .locals 1

    .prologue
    .line 1692
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-interface {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->swipeLeft()V

    .line 1693
    return-void
.end method

.method protected swipeRight()V
    .locals 1

    .prologue
    .line 1688
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-interface {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->swipeRight()V

    .line 1689
    return-void
.end method

.method protected swipeUp()V
    .locals 1

    .prologue
    .line 1696
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;->mKeyboardActionListener:Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;

    invoke-interface {v0}, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$OnKeyboardActionListener;->swipeUp()V

    .line 1697
    return-void
.end method
