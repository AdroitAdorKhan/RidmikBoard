.class public final Lridmik/keyboard/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lridmik/keyboard/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final Keyboard:[I

.field public static final Keyboard_Key:[I

.field public static final Keyboard_Key_capsLabel:I = 0xd

.field public static final Keyboard_Key_codes:I = 0x1

.field public static final Keyboard_Key_iconPreview:I = 0x9

.field public static final Keyboard_Key_isCursor:I = 0x7

.field public static final Keyboard_Key_isModifier:I = 0x5

.field public static final Keyboard_Key_isRepeatable:I = 0x8

.field public static final Keyboard_Key_isSticky:I = 0x6

.field public static final Keyboard_Key_keyEdgeFlags:I = 0x4

.field public static final Keyboard_Key_keyIcon:I = 0xe

.field public static final Keyboard_Key_keyLabel:I = 0xb

.field public static final Keyboard_Key_keyOutputText:I = 0xa

.field public static final Keyboard_Key_keyboardMode:I = 0x0

.field public static final Keyboard_Key_popupCharacters:I = 0x3

.field public static final Keyboard_Key_popupKeyboard:I = 0x2

.field public static final Keyboard_Key_shiftLabel:I = 0xc

.field public static final Keyboard_Row:[I

.field public static final Keyboard_Row_extension:I = 0x2

.field public static final Keyboard_Row_keyboardMode:I = 0x1

.field public static final Keyboard_Row_rowEdgeFlags:I = 0x0

.field public static final Keyboard_horizontalGap:I = 0x2

.field public static final Keyboard_horizontalPad:I = 0x4

.field public static final Keyboard_keyHeight:I = 0x1

.field public static final Keyboard_keyWidth:I = 0x0

.field public static final Keyboard_layoutColumns:I = 0x7

.field public static final Keyboard_layoutRows:I = 0x6

.field public static final Keyboard_verticalGap:I = 0x3

.field public static final Keyboard_verticalPad:I = 0x5

.field public static final LatinKeyboardBaseView:[I

.field public static final LatinKeyboardBaseView_backgroundDimAmount:I = 0x11

.field public static final LatinKeyboardBaseView_darkShadowColor:I = 0xd

.field public static final LatinKeyboardBaseView_hintColor:I = 0xe

.field public static final LatinKeyboardBaseView_keyBackground:I = 0x1

.field public static final LatinKeyboardBaseView_keyDarkTextColor:I = 0x5

.field public static final LatinKeyboardBaseView_keyHysteresisDistance:I = 0x9

.field public static final LatinKeyboardBaseView_keyPreviewHeight:I = 0x8

.field public static final LatinKeyboardBaseView_keyPreviewLayout:I = 0x6

.field public static final LatinKeyboardBaseView_keyPreviewOffset:I = 0x7

.field public static final LatinKeyboardBaseView_keyTextColor:I = 0x4

.field public static final LatinKeyboardBaseView_keyTextSize:I = 0x2

.field public static final LatinKeyboardBaseView_keyTextStyle:I = 0x12

.field public static final LatinKeyboardBaseView_keyboardViewStyle:I = 0x0

.field public static final LatinKeyboardBaseView_labelTextSize:I = 0x3

.field public static final LatinKeyboardBaseView_modifierTextColor:I = 0xf

.field public static final LatinKeyboardBaseView_popupLayout:I = 0xb

.field public static final LatinKeyboardBaseView_shadowColor:I = 0xc

.field public static final LatinKeyboardBaseView_shadowRadius:I = 0x10

.field public static final LatinKeyboardBaseView_symbolColorScheme:I = 0x13

.field public static final LatinKeyboardBaseView_verticalCorrection:I = 0xa

.field public static final SeekBarPreference:[I

.field public static final SeekBarPreference_asPercent:I = 0x2

.field public static final SeekBarPreference_defaultVal:I = 0x6

.field public static final SeekBarPreference_displayFormat:I = 0x5

.field public static final SeekBarPreference_logScale:I = 0x4

.field public static final SeekBarPreference_maxValue:I = 0x1

.field public static final SeekBarPreference_minValue:I = 0x0

.field public static final SeekBarPreference_step:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1645
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lridmik/keyboard/R$styleable;->Keyboard:[I

    .line 1843
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lridmik/keyboard/R$styleable;->Keyboard_Key:[I

    .line 2092
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lridmik/keyboard/R$styleable;->Keyboard_Row:[I

    .line 2189
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lridmik/keyboard/R$styleable;->LatinKeyboardBaseView:[I

    .line 2523
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lridmik/keyboard/R$styleable;->SeekBarPreference:[I

    .line 2624
    return-void

    .line 1645
    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
    .end array-data

    .line 1843
    :array_1
    .array-data 4
        0x7f010009
        0x7f01000b
        0x7f01000c
        0x7f01000d
        0x7f01000e
        0x7f01000f
        0x7f010010
        0x7f010011
        0x7f010012
        0x7f010013
        0x7f010014
        0x7f010015
        0x7f010016
        0x7f010017
        0x7f010018
    .end array-data

    .line 2092
    :array_2
    .array-data 4
        0x7f010008
        0x7f010009
        0x7f01000a
    .end array-data

    .line 2189
    :array_3
    .array-data 4
        0x7f010020
        0x7f010021
        0x7f010022
        0x7f010023
        0x7f010024
        0x7f010025
        0x7f010026
        0x7f010027
        0x7f010028
        0x7f010029
        0x7f01002a
        0x7f01002b
        0x7f01002c
        0x7f01002d
        0x7f01002e
        0x7f01002f
        0x7f010030
        0x7f010031
        0x7f010032
        0x7f010033
    .end array-data

    .line 2523
    :array_4
    .array-data 4
        0x7f010019
        0x7f01001a
        0x7f01001b
        0x7f01001c
        0x7f01001d
        0x7f01001e
        0x7f01001f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
