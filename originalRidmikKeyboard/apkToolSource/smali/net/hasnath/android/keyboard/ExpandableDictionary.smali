.class public Lnet/hasnath/android/keyboard/ExpandableDictionary;
.super Lnet/hasnath/android/keyboard/Dictionary;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hasnath/android/keyboard/ExpandableDictionary$LoadDictionaryTask;,
        Lnet/hasnath/android/keyboard/ExpandableDictionary$NextWord;,
        Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;,
        Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;
    }
.end annotation


# static fields
.field static final BASE_CHARS:[C

.field protected static final MAX_WORD_LENGTH:I = 0x20

.field private static final QUOTE:C = '\''


# instance fields
.field private mCodes:[[I

.field private mContext:Landroid/content/Context;

.field private mDicTypeId:I

.field private mInputLength:I

.field private mMaxDepth:I

.field private mNextLettersFrequencies:[I

.field private mRequiresReload:Z

.field private mRoots:Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;

.field private mUpdatingDictionary:Z

.field private mUpdatingLock:Ljava/lang/Object;

.field private mWordBuilder:[C

.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x75

    const/16 v6, 0x61

    const/16 v5, 0x55

    const/16 v4, 0x4f

    const/16 v3, 0x6f

    .line 526
    const/16 v0, 0x500

    new-array v0, v0, [C

    const/4 v1, 0x1

    .line 527
    const/4 v2, 0x1

    aput-char v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x2

    aput-char v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x3

    aput-char v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x4

    aput-char v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x5

    aput-char v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x7

    aput-char v2, v0, v1

    const/16 v1, 0x8

    .line 528
    const/16 v2, 0x8

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x9

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xa

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xb

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xc

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xd

    aput-char v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xe

    aput-char v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xf

    aput-char v2, v0, v1

    const/16 v1, 0x10

    .line 529
    const/16 v2, 0x10

    aput-char v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x11

    aput-char v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x12

    aput-char v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x13

    aput-char v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x14

    aput-char v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x15

    aput-char v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x16

    aput-char v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x17

    aput-char v2, v0, v1

    const/16 v1, 0x18

    .line 530
    const/16 v2, 0x18

    aput-char v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x19

    aput-char v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x1a

    aput-char v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x1b

    aput-char v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x1c

    aput-char v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x1d

    aput-char v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x1e

    aput-char v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x1f

    aput-char v2, v0, v1

    const/16 v1, 0x20

    .line 531
    const/16 v2, 0x20

    aput-char v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x21

    aput-char v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x22

    aput-char v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x23

    aput-char v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x24

    aput-char v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x25

    aput-char v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x26

    aput-char v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x27

    aput-char v2, v0, v1

    const/16 v1, 0x28

    .line 532
    const/16 v2, 0x28

    aput-char v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x29

    aput-char v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x2a

    aput-char v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x2b

    aput-char v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x2d

    aput-char v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2e

    aput-char v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x2f

    aput-char v2, v0, v1

    const/16 v1, 0x30

    .line 533
    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x31

    aput-char v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x32

    aput-char v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x33

    aput-char v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x34

    aput-char v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x35

    aput-char v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x36

    aput-char v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x37

    aput-char v2, v0, v1

    const/16 v1, 0x38

    .line 534
    const/16 v2, 0x38

    aput-char v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x39

    aput-char v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x3b

    aput-char v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x3c

    aput-char v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x3d

    aput-char v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x3e

    aput-char v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x3f

    aput-char v2, v0, v1

    const/16 v1, 0x40

    .line 535
    const/16 v2, 0x40

    aput-char v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x42

    aput-char v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x43

    aput-char v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x46

    aput-char v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x47

    aput-char v2, v0, v1

    const/16 v1, 0x48

    .line 536
    const/16 v2, 0x48

    aput-char v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x49

    aput-char v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x4a

    aput-char v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x4b

    aput-char v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x4c

    aput-char v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x4d

    aput-char v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x4e

    aput-char v2, v0, v1

    aput-char v4, v0, v4

    const/16 v1, 0x50

    .line 537
    const/16 v2, 0x50

    aput-char v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x51

    aput-char v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x52

    aput-char v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x53

    aput-char v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x54

    aput-char v2, v0, v1

    aput-char v5, v0, v5

    const/16 v1, 0x56

    const/16 v2, 0x56

    aput-char v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x57

    aput-char v2, v0, v1

    const/16 v1, 0x58

    .line 538
    const/16 v2, 0x58

    aput-char v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x59

    aput-char v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x5a

    aput-char v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x5d

    aput-char v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0x5e

    aput-char v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x5f

    aput-char v2, v0, v1

    const/16 v1, 0x60

    .line 539
    const/16 v2, 0x60

    aput-char v2, v0, v1

    aput-char v6, v0, v6

    const/16 v1, 0x62

    const/16 v2, 0x62

    aput-char v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x66

    aput-char v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x67

    aput-char v2, v0, v1

    const/16 v1, 0x68

    .line 540
    const/16 v2, 0x68

    aput-char v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x69

    aput-char v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x6a

    aput-char v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x6b

    aput-char v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x6d

    aput-char v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    aput-char v3, v0, v3

    const/16 v1, 0x70

    .line 541
    const/16 v2, 0x70

    aput-char v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x71

    aput-char v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x72

    aput-char v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x73

    aput-char v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x74

    aput-char v2, v0, v1

    aput-char v7, v0, v7

    const/16 v1, 0x76

    const/16 v2, 0x76

    aput-char v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x77

    aput-char v2, v0, v1

    const/16 v1, 0x78

    .line 542
    const/16 v2, 0x78

    aput-char v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x79

    aput-char v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x7a

    aput-char v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x7c

    aput-char v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0x7e

    aput-char v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0x7f

    aput-char v2, v0, v1

    const/16 v1, 0x80

    .line 543
    const/16 v2, 0x80

    aput-char v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, 0x81

    aput-char v2, v0, v1

    const/16 v1, 0x82

    const/16 v2, 0x82

    aput-char v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, 0x83

    aput-char v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, 0x84

    aput-char v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, 0x85

    aput-char v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, 0x86

    aput-char v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, 0x87

    aput-char v2, v0, v1

    const/16 v1, 0x88

    .line 544
    const/16 v2, 0x88

    aput-char v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, 0x89

    aput-char v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, 0x8a

    aput-char v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, 0x8b

    aput-char v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, 0x8c

    aput-char v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, 0x8d

    aput-char v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0x8e

    aput-char v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, 0x8f

    aput-char v2, v0, v1

    const/16 v1, 0x90

    .line 545
    const/16 v2, 0x90

    aput-char v2, v0, v1

    const/16 v1, 0x91

    const/16 v2, 0x91

    aput-char v2, v0, v1

    const/16 v1, 0x92

    const/16 v2, 0x92

    aput-char v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0x93

    aput-char v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, 0x94

    aput-char v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0x95

    aput-char v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x96

    aput-char v2, v0, v1

    const/16 v1, 0x97

    const/16 v2, 0x97

    aput-char v2, v0, v1

    const/16 v1, 0x98

    .line 546
    const/16 v2, 0x98

    aput-char v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, 0x99

    aput-char v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0x9a

    aput-char v2, v0, v1

    const/16 v1, 0x9b

    const/16 v2, 0x9b

    aput-char v2, v0, v1

    const/16 v1, 0x9c

    const/16 v2, 0x9c

    aput-char v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0x9d

    aput-char v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, 0x9e

    aput-char v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, 0x9f

    aput-char v2, v0, v1

    const/16 v1, 0xa0

    .line 547
    const/16 v2, 0x20

    aput-char v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0xa1

    aput-char v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0xa2

    aput-char v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0xa3

    aput-char v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0xa4

    aput-char v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0xa5

    aput-char v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, 0xa6

    aput-char v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, 0xa7

    aput-char v2, v0, v1

    const/16 v1, 0xa8

    .line 548
    const/16 v2, 0x20

    aput-char v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0xa9

    aput-char v2, v0, v1

    const/16 v1, 0xaa

    aput-char v6, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0xab

    aput-char v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, 0xac

    aput-char v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0xad

    aput-char v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, 0xae

    aput-char v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0x20

    aput-char v2, v0, v1

    const/16 v1, 0xb0

    .line 549
    const/16 v2, 0xb0

    aput-char v2, v0, v1

    const/16 v1, 0xb1

    const/16 v2, 0xb1

    aput-char v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0x32

    aput-char v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0x33

    aput-char v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, 0x20

    aput-char v2, v0, v1

    const/16 v1, 0xb5

    const/16 v2, 0x3bc

    aput-char v2, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0xb6

    aput-char v2, v0, v1

    const/16 v1, 0xb7

    const/16 v2, 0xb7

    aput-char v2, v0, v1

    const/16 v1, 0xb8

    .line 550
    const/16 v2, 0x20

    aput-char v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0x31

    aput-char v2, v0, v1

    const/16 v1, 0xba

    aput-char v3, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0xbb

    aput-char v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x31

    aput-char v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, 0x31

    aput-char v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0x33

    aput-char v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0xbf

    aput-char v2, v0, v1

    const/16 v1, 0xc0

    .line 551
    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0xc2

    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0xc5

    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0xc6

    const/16 v2, 0xc6

    aput-char v2, v0, v1

    const/16 v1, 0xc7

    const/16 v2, 0x43

    aput-char v2, v0, v1

    const/16 v1, 0xc8

    .line 552
    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0x49

    aput-char v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, 0x49

    aput-char v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, 0x49

    aput-char v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, 0x49

    aput-char v2, v0, v1

    const/16 v1, 0xd0

    .line 553
    const/16 v2, 0xd0

    aput-char v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0x4e

    aput-char v2, v0, v1

    const/16 v1, 0xd2

    aput-char v4, v0, v1

    const/16 v1, 0xd3

    aput-char v4, v0, v1

    const/16 v1, 0xd4

    aput-char v4, v0, v1

    const/16 v1, 0xd5

    aput-char v4, v0, v1

    const/16 v1, 0xd6

    aput-char v4, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0xd7

    aput-char v2, v0, v1

    const/16 v1, 0xd8

    .line 554
    aput-char v4, v0, v1

    const/16 v1, 0xd9

    aput-char v5, v0, v1

    const/16 v1, 0xda

    aput-char v5, v0, v1

    const/16 v1, 0xdb

    aput-char v5, v0, v1

    const/16 v1, 0xdc

    aput-char v5, v0, v1

    const/16 v1, 0xdd

    const/16 v2, 0x59

    aput-char v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, 0xde

    aput-char v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, 0x73

    aput-char v2, v0, v1

    const/16 v1, 0xe0

    .line 556
    aput-char v6, v0, v1

    const/16 v1, 0xe1

    aput-char v6, v0, v1

    const/16 v1, 0xe2

    aput-char v6, v0, v1

    const/16 v1, 0xe3

    aput-char v6, v0, v1

    const/16 v1, 0xe4

    aput-char v6, v0, v1

    const/16 v1, 0xe5

    aput-char v6, v0, v1

    const/16 v1, 0xe6

    const/16 v2, 0xe6

    aput-char v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0xe8

    .line 557
    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, 0x69

    aput-char v2, v0, v1

    const/16 v1, 0xed

    const/16 v2, 0x69

    aput-char v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, 0x69

    aput-char v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, 0x69

    aput-char v2, v0, v1

    const/16 v1, 0xf0

    .line 558
    const/16 v2, 0xf0

    aput-char v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    const/16 v1, 0xf2

    aput-char v3, v0, v1

    const/16 v1, 0xf3

    aput-char v3, v0, v1

    const/16 v1, 0xf4

    aput-char v3, v0, v1

    const/16 v1, 0xf5

    aput-char v3, v0, v1

    const/16 v1, 0xf6

    aput-char v3, v0, v1

    const/16 v1, 0xf7

    const/16 v2, 0xf7

    aput-char v2, v0, v1

    const/16 v1, 0xf8

    .line 559
    aput-char v3, v0, v1

    const/16 v1, 0xf9

    aput-char v7, v0, v1

    const/16 v1, 0xfa

    aput-char v7, v0, v1

    const/16 v1, 0xfb

    aput-char v7, v0, v1

    const/16 v1, 0xfc

    aput-char v7, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0x79

    aput-char v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, 0xfe

    aput-char v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, 0x79

    aput-char v2, v0, v1

    const/16 v1, 0x100

    .line 560
    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0x101

    aput-char v6, v0, v1

    const/16 v1, 0x102

    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0x103

    aput-char v6, v0, v1

    const/16 v1, 0x104

    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0x105

    aput-char v6, v0, v1

    const/16 v1, 0x106

    const/16 v2, 0x43

    aput-char v2, v0, v1

    const/16 v1, 0x107

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0x108

    .line 561
    const/16 v2, 0x43

    aput-char v2, v0, v1

    const/16 v1, 0x109

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0x10a

    const/16 v2, 0x43

    aput-char v2, v0, v1

    const/16 v1, 0x10b

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0x10c

    const/16 v2, 0x43

    aput-char v2, v0, v1

    const/16 v1, 0x10d

    const/16 v2, 0x63

    aput-char v2, v0, v1

    const/16 v1, 0x10e

    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0x10f

    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0x110

    .line 562
    const/16 v2, 0x110

    aput-char v2, v0, v1

    const/16 v1, 0x111

    const/16 v2, 0x111

    aput-char v2, v0, v1

    const/16 v1, 0x112

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0x113

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x114

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0x115

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x116

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0x117

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x118

    .line 563
    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0x119

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x11a

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0x11b

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x11c

    const/16 v2, 0x47

    aput-char v2, v0, v1

    const/16 v1, 0x11d

    const/16 v2, 0x67

    aput-char v2, v0, v1

    const/16 v1, 0x11e

    const/16 v2, 0x47

    aput-char v2, v0, v1

    const/16 v1, 0x11f

    const/16 v2, 0x67

    aput-char v2, v0, v1

    const/16 v1, 0x120

    .line 564
    const/16 v2, 0x47

    aput-char v2, v0, v1

    const/16 v1, 0x121

    const/16 v2, 0x67

    aput-char v2, v0, v1

    const/16 v1, 0x122

    const/16 v2, 0x47

    aput-char v2, v0, v1

    const/16 v1, 0x123

    const/16 v2, 0x67

    aput-char v2, v0, v1

    const/16 v1, 0x124

    const/16 v2, 0x48

    aput-char v2, v0, v1

    const/16 v1, 0x125

    const/16 v2, 0x68

    aput-char v2, v0, v1

    const/16 v1, 0x126

    const/16 v2, 0x126

    aput-char v2, v0, v1

    const/16 v1, 0x127

    const/16 v2, 0x127

    aput-char v2, v0, v1

    const/16 v1, 0x128

    .line 565
    const/16 v2, 0x49

    aput-char v2, v0, v1

    const/16 v1, 0x129

    const/16 v2, 0x69

    aput-char v2, v0, v1

    const/16 v1, 0x12a

    const/16 v2, 0x49

    aput-char v2, v0, v1

    const/16 v1, 0x12b

    const/16 v2, 0x69

    aput-char v2, v0, v1

    const/16 v1, 0x12c

    const/16 v2, 0x49

    aput-char v2, v0, v1

    const/16 v1, 0x12d

    const/16 v2, 0x69

    aput-char v2, v0, v1

    const/16 v1, 0x12e

    const/16 v2, 0x49

    aput-char v2, v0, v1

    const/16 v1, 0x12f

    const/16 v2, 0x69

    aput-char v2, v0, v1

    const/16 v1, 0x130

    .line 566
    const/16 v2, 0x49

    aput-char v2, v0, v1

    const/16 v1, 0x131

    const/16 v2, 0x131

    aput-char v2, v0, v1

    const/16 v1, 0x132

    const/16 v2, 0x49

    aput-char v2, v0, v1

    const/16 v1, 0x133

    const/16 v2, 0x69

    aput-char v2, v0, v1

    const/16 v1, 0x134

    const/16 v2, 0x4a

    aput-char v2, v0, v1

    const/16 v1, 0x135

    const/16 v2, 0x6a

    aput-char v2, v0, v1

    const/16 v1, 0x136

    const/16 v2, 0x4b

    aput-char v2, v0, v1

    const/16 v1, 0x137

    const/16 v2, 0x6b

    aput-char v2, v0, v1

    const/16 v1, 0x138

    .line 567
    const/16 v2, 0x138

    aput-char v2, v0, v1

    const/16 v1, 0x139

    const/16 v2, 0x4c

    aput-char v2, v0, v1

    const/16 v1, 0x13a

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    const/16 v1, 0x13b

    const/16 v2, 0x4c

    aput-char v2, v0, v1

    const/16 v1, 0x13c

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    const/16 v1, 0x13d

    const/16 v2, 0x4c

    aput-char v2, v0, v1

    const/16 v1, 0x13e

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    const/16 v1, 0x13f

    const/16 v2, 0x4c

    aput-char v2, v0, v1

    const/16 v1, 0x140

    .line 568
    const/16 v2, 0x6c

    aput-char v2, v0, v1

    const/16 v1, 0x141

    const/16 v2, 0x141

    aput-char v2, v0, v1

    const/16 v1, 0x142

    const/16 v2, 0x142

    aput-char v2, v0, v1

    const/16 v1, 0x143

    const/16 v2, 0x4e

    aput-char v2, v0, v1

    const/16 v1, 0x144

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    const/16 v1, 0x145

    const/16 v2, 0x4e

    aput-char v2, v0, v1

    const/16 v1, 0x146

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    const/16 v1, 0x147

    const/16 v2, 0x4e

    aput-char v2, v0, v1

    const/16 v1, 0x148

    .line 569
    const/16 v2, 0x6e

    aput-char v2, v0, v1

    const/16 v1, 0x149

    const/16 v2, 0x2bc

    aput-char v2, v0, v1

    const/16 v1, 0x14a

    const/16 v2, 0x14a

    aput-char v2, v0, v1

    const/16 v1, 0x14b

    const/16 v2, 0x14b

    aput-char v2, v0, v1

    const/16 v1, 0x14c

    aput-char v4, v0, v1

    const/16 v1, 0x14d

    aput-char v3, v0, v1

    const/16 v1, 0x14e

    aput-char v4, v0, v1

    const/16 v1, 0x14f

    aput-char v3, v0, v1

    const/16 v1, 0x150

    .line 570
    aput-char v4, v0, v1

    const/16 v1, 0x151

    aput-char v3, v0, v1

    const/16 v1, 0x152

    const/16 v2, 0x152

    aput-char v2, v0, v1

    const/16 v1, 0x153

    const/16 v2, 0x153

    aput-char v2, v0, v1

    const/16 v1, 0x154

    const/16 v2, 0x52

    aput-char v2, v0, v1

    const/16 v1, 0x155

    const/16 v2, 0x72

    aput-char v2, v0, v1

    const/16 v1, 0x156

    const/16 v2, 0x52

    aput-char v2, v0, v1

    const/16 v1, 0x157

    const/16 v2, 0x72

    aput-char v2, v0, v1

    const/16 v1, 0x158

    .line 571
    const/16 v2, 0x52

    aput-char v2, v0, v1

    const/16 v1, 0x159

    const/16 v2, 0x72

    aput-char v2, v0, v1

    const/16 v1, 0x15a

    const/16 v2, 0x53

    aput-char v2, v0, v1

    const/16 v1, 0x15b

    const/16 v2, 0x73

    aput-char v2, v0, v1

    const/16 v1, 0x15c

    const/16 v2, 0x53

    aput-char v2, v0, v1

    const/16 v1, 0x15d

    const/16 v2, 0x73

    aput-char v2, v0, v1

    const/16 v1, 0x15e

    const/16 v2, 0x53

    aput-char v2, v0, v1

    const/16 v1, 0x15f

    const/16 v2, 0x73

    aput-char v2, v0, v1

    const/16 v1, 0x160

    .line 572
    const/16 v2, 0x53

    aput-char v2, v0, v1

    const/16 v1, 0x161

    const/16 v2, 0x73

    aput-char v2, v0, v1

    const/16 v1, 0x162

    const/16 v2, 0x54

    aput-char v2, v0, v1

    const/16 v1, 0x163

    const/16 v2, 0x74

    aput-char v2, v0, v1

    const/16 v1, 0x164

    const/16 v2, 0x54

    aput-char v2, v0, v1

    const/16 v1, 0x165

    const/16 v2, 0x74

    aput-char v2, v0, v1

    const/16 v1, 0x166

    const/16 v2, 0x166

    aput-char v2, v0, v1

    const/16 v1, 0x167

    const/16 v2, 0x167

    aput-char v2, v0, v1

    const/16 v1, 0x168

    .line 573
    aput-char v5, v0, v1

    const/16 v1, 0x169

    aput-char v7, v0, v1

    const/16 v1, 0x16a

    aput-char v5, v0, v1

    const/16 v1, 0x16b

    aput-char v7, v0, v1

    const/16 v1, 0x16c

    aput-char v5, v0, v1

    const/16 v1, 0x16d

    aput-char v7, v0, v1

    const/16 v1, 0x16e

    aput-char v5, v0, v1

    const/16 v1, 0x16f

    aput-char v7, v0, v1

    const/16 v1, 0x170

    .line 574
    aput-char v5, v0, v1

    const/16 v1, 0x171

    aput-char v7, v0, v1

    const/16 v1, 0x172

    aput-char v5, v0, v1

    const/16 v1, 0x173

    aput-char v7, v0, v1

    const/16 v1, 0x174

    const/16 v2, 0x57

    aput-char v2, v0, v1

    const/16 v1, 0x175

    const/16 v2, 0x77

    aput-char v2, v0, v1

    const/16 v1, 0x176

    const/16 v2, 0x59

    aput-char v2, v0, v1

    const/16 v1, 0x177

    const/16 v2, 0x79

    aput-char v2, v0, v1

    const/16 v1, 0x178

    .line 575
    const/16 v2, 0x59

    aput-char v2, v0, v1

    const/16 v1, 0x179

    const/16 v2, 0x5a

    aput-char v2, v0, v1

    const/16 v1, 0x17a

    const/16 v2, 0x7a

    aput-char v2, v0, v1

    const/16 v1, 0x17b

    const/16 v2, 0x5a

    aput-char v2, v0, v1

    const/16 v1, 0x17c

    const/16 v2, 0x7a

    aput-char v2, v0, v1

    const/16 v1, 0x17d

    const/16 v2, 0x5a

    aput-char v2, v0, v1

    const/16 v1, 0x17e

    const/16 v2, 0x7a

    aput-char v2, v0, v1

    const/16 v1, 0x17f

    const/16 v2, 0x73

    aput-char v2, v0, v1

    const/16 v1, 0x180

    .line 576
    const/16 v2, 0x180

    aput-char v2, v0, v1

    const/16 v1, 0x181

    const/16 v2, 0x181

    aput-char v2, v0, v1

    const/16 v1, 0x182

    const/16 v2, 0x182

    aput-char v2, v0, v1

    const/16 v1, 0x183

    const/16 v2, 0x183

    aput-char v2, v0, v1

    const/16 v1, 0x184

    const/16 v2, 0x184

    aput-char v2, v0, v1

    const/16 v1, 0x185

    const/16 v2, 0x185

    aput-char v2, v0, v1

    const/16 v1, 0x186

    const/16 v2, 0x186

    aput-char v2, v0, v1

    const/16 v1, 0x187

    const/16 v2, 0x187

    aput-char v2, v0, v1

    const/16 v1, 0x188

    .line 577
    const/16 v2, 0x188

    aput-char v2, v0, v1

    const/16 v1, 0x189

    const/16 v2, 0x189

    aput-char v2, v0, v1

    const/16 v1, 0x18a

    const/16 v2, 0x18a

    aput-char v2, v0, v1

    const/16 v1, 0x18b

    const/16 v2, 0x18b

    aput-char v2, v0, v1

    const/16 v1, 0x18c

    const/16 v2, 0x18c

    aput-char v2, v0, v1

    const/16 v1, 0x18d

    const/16 v2, 0x18d

    aput-char v2, v0, v1

    const/16 v1, 0x18e

    const/16 v2, 0x18e

    aput-char v2, v0, v1

    const/16 v1, 0x18f

    const/16 v2, 0x18f

    aput-char v2, v0, v1

    const/16 v1, 0x190

    .line 578
    const/16 v2, 0x190

    aput-char v2, v0, v1

    const/16 v1, 0x191

    const/16 v2, 0x191

    aput-char v2, v0, v1

    const/16 v1, 0x192

    const/16 v2, 0x192

    aput-char v2, v0, v1

    const/16 v1, 0x193

    const/16 v2, 0x193

    aput-char v2, v0, v1

    const/16 v1, 0x194

    const/16 v2, 0x194

    aput-char v2, v0, v1

    const/16 v1, 0x195

    const/16 v2, 0x195

    aput-char v2, v0, v1

    const/16 v1, 0x196

    const/16 v2, 0x196

    aput-char v2, v0, v1

    const/16 v1, 0x197

    const/16 v2, 0x197

    aput-char v2, v0, v1

    const/16 v1, 0x198

    .line 579
    const/16 v2, 0x198

    aput-char v2, v0, v1

    const/16 v1, 0x199

    const/16 v2, 0x199

    aput-char v2, v0, v1

    const/16 v1, 0x19a

    const/16 v2, 0x19a

    aput-char v2, v0, v1

    const/16 v1, 0x19b

    const/16 v2, 0x19b

    aput-char v2, v0, v1

    const/16 v1, 0x19c

    const/16 v2, 0x19c

    aput-char v2, v0, v1

    const/16 v1, 0x19d

    const/16 v2, 0x19d

    aput-char v2, v0, v1

    const/16 v1, 0x19e

    const/16 v2, 0x19e

    aput-char v2, v0, v1

    const/16 v1, 0x19f

    const/16 v2, 0x19f

    aput-char v2, v0, v1

    const/16 v1, 0x1a0

    .line 580
    aput-char v4, v0, v1

    const/16 v1, 0x1a1

    aput-char v3, v0, v1

    const/16 v1, 0x1a2

    const/16 v2, 0x1a2

    aput-char v2, v0, v1

    const/16 v1, 0x1a3

    const/16 v2, 0x1a3

    aput-char v2, v0, v1

    const/16 v1, 0x1a4

    const/16 v2, 0x1a4

    aput-char v2, v0, v1

    const/16 v1, 0x1a5

    const/16 v2, 0x1a5

    aput-char v2, v0, v1

    const/16 v1, 0x1a6

    const/16 v2, 0x1a6

    aput-char v2, v0, v1

    const/16 v1, 0x1a7

    const/16 v2, 0x1a7

    aput-char v2, v0, v1

    const/16 v1, 0x1a8

    .line 581
    const/16 v2, 0x1a8

    aput-char v2, v0, v1

    const/16 v1, 0x1a9

    const/16 v2, 0x1a9

    aput-char v2, v0, v1

    const/16 v1, 0x1aa

    const/16 v2, 0x1aa

    aput-char v2, v0, v1

    const/16 v1, 0x1ab

    const/16 v2, 0x1ab

    aput-char v2, v0, v1

    const/16 v1, 0x1ac

    const/16 v2, 0x1ac

    aput-char v2, v0, v1

    const/16 v1, 0x1ad

    const/16 v2, 0x1ad

    aput-char v2, v0, v1

    const/16 v1, 0x1ae

    const/16 v2, 0x1ae

    aput-char v2, v0, v1

    const/16 v1, 0x1af

    aput-char v5, v0, v1

    const/16 v1, 0x1b0

    .line 582
    aput-char v7, v0, v1

    const/16 v1, 0x1b1

    const/16 v2, 0x1b1

    aput-char v2, v0, v1

    const/16 v1, 0x1b2

    const/16 v2, 0x1b2

    aput-char v2, v0, v1

    const/16 v1, 0x1b3

    const/16 v2, 0x1b3

    aput-char v2, v0, v1

    const/16 v1, 0x1b4

    const/16 v2, 0x1b4

    aput-char v2, v0, v1

    const/16 v1, 0x1b5

    const/16 v2, 0x1b5

    aput-char v2, v0, v1

    const/16 v1, 0x1b6

    const/16 v2, 0x1b6

    aput-char v2, v0, v1

    const/16 v1, 0x1b7

    const/16 v2, 0x1b7

    aput-char v2, v0, v1

    const/16 v1, 0x1b8

    .line 583
    const/16 v2, 0x1b8

    aput-char v2, v0, v1

    const/16 v1, 0x1b9

    const/16 v2, 0x1b9

    aput-char v2, v0, v1

    const/16 v1, 0x1ba

    const/16 v2, 0x1ba

    aput-char v2, v0, v1

    const/16 v1, 0x1bb

    const/16 v2, 0x1bb

    aput-char v2, v0, v1

    const/16 v1, 0x1bc

    const/16 v2, 0x1bc

    aput-char v2, v0, v1

    const/16 v1, 0x1bd

    const/16 v2, 0x1bd

    aput-char v2, v0, v1

    const/16 v1, 0x1be

    const/16 v2, 0x1be

    aput-char v2, v0, v1

    const/16 v1, 0x1bf

    const/16 v2, 0x1bf

    aput-char v2, v0, v1

    const/16 v1, 0x1c0

    .line 584
    const/16 v2, 0x1c0

    aput-char v2, v0, v1

    const/16 v1, 0x1c1

    const/16 v2, 0x1c1

    aput-char v2, v0, v1

    const/16 v1, 0x1c2

    const/16 v2, 0x1c2

    aput-char v2, v0, v1

    const/16 v1, 0x1c3

    const/16 v2, 0x1c3

    aput-char v2, v0, v1

    const/16 v1, 0x1c4

    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0x1c5

    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0x1c6

    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0x1c7

    const/16 v2, 0x4c

    aput-char v2, v0, v1

    const/16 v1, 0x1c8

    .line 585
    const/16 v2, 0x4c

    aput-char v2, v0, v1

    const/16 v1, 0x1c9

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    const/16 v1, 0x1ca

    const/16 v2, 0x4e

    aput-char v2, v0, v1

    const/16 v1, 0x1cb

    const/16 v2, 0x4e

    aput-char v2, v0, v1

    const/16 v1, 0x1cc

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    const/16 v1, 0x1cd

    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0x1ce

    aput-char v6, v0, v1

    const/16 v1, 0x1cf

    const/16 v2, 0x49

    aput-char v2, v0, v1

    const/16 v1, 0x1d0

    .line 586
    const/16 v2, 0x69

    aput-char v2, v0, v1

    const/16 v1, 0x1d1

    aput-char v4, v0, v1

    const/16 v1, 0x1d2

    aput-char v3, v0, v1

    const/16 v1, 0x1d3

    aput-char v5, v0, v1

    const/16 v1, 0x1d4

    aput-char v7, v0, v1

    const/16 v1, 0x1d5

    const/16 v2, 0xdc

    aput-char v2, v0, v1

    const/16 v1, 0x1d6

    const/16 v2, 0xfc

    aput-char v2, v0, v1

    const/16 v1, 0x1d7

    const/16 v2, 0xdc

    aput-char v2, v0, v1

    const/16 v1, 0x1d8

    .line 587
    const/16 v2, 0xfc

    aput-char v2, v0, v1

    const/16 v1, 0x1d9

    const/16 v2, 0xdc

    aput-char v2, v0, v1

    const/16 v1, 0x1da

    const/16 v2, 0xfc

    aput-char v2, v0, v1

    const/16 v1, 0x1db

    const/16 v2, 0xdc

    aput-char v2, v0, v1

    const/16 v1, 0x1dc

    const/16 v2, 0xfc

    aput-char v2, v0, v1

    const/16 v1, 0x1dd

    const/16 v2, 0x1dd

    aput-char v2, v0, v1

    const/16 v1, 0x1de

    const/16 v2, 0xc4

    aput-char v2, v0, v1

    const/16 v1, 0x1df

    const/16 v2, 0xe4

    aput-char v2, v0, v1

    const/16 v1, 0x1e0

    .line 588
    const/16 v2, 0x226

    aput-char v2, v0, v1

    const/16 v1, 0x1e1

    const/16 v2, 0x227

    aput-char v2, v0, v1

    const/16 v1, 0x1e2

    const/16 v2, 0xc6

    aput-char v2, v0, v1

    const/16 v1, 0x1e3

    const/16 v2, 0xe6

    aput-char v2, v0, v1

    const/16 v1, 0x1e4

    const/16 v2, 0x1e4

    aput-char v2, v0, v1

    const/16 v1, 0x1e5

    const/16 v2, 0x1e5

    aput-char v2, v0, v1

    const/16 v1, 0x1e6

    const/16 v2, 0x47

    aput-char v2, v0, v1

    const/16 v1, 0x1e7

    const/16 v2, 0x67

    aput-char v2, v0, v1

    const/16 v1, 0x1e8

    .line 589
    const/16 v2, 0x4b

    aput-char v2, v0, v1

    const/16 v1, 0x1e9

    const/16 v2, 0x6b

    aput-char v2, v0, v1

    const/16 v1, 0x1ea

    aput-char v4, v0, v1

    const/16 v1, 0x1eb

    aput-char v3, v0, v1

    const/16 v1, 0x1ec

    const/16 v2, 0x1ea

    aput-char v2, v0, v1

    const/16 v1, 0x1ed

    const/16 v2, 0x1eb

    aput-char v2, v0, v1

    const/16 v1, 0x1ee

    const/16 v2, 0x1b7

    aput-char v2, v0, v1

    const/16 v1, 0x1ef

    const/16 v2, 0x292

    aput-char v2, v0, v1

    const/16 v1, 0x1f0

    .line 590
    const/16 v2, 0x6a

    aput-char v2, v0, v1

    const/16 v1, 0x1f1

    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0x1f2

    const/16 v2, 0x44

    aput-char v2, v0, v1

    const/16 v1, 0x1f3

    const/16 v2, 0x64

    aput-char v2, v0, v1

    const/16 v1, 0x1f4

    const/16 v2, 0x47

    aput-char v2, v0, v1

    const/16 v1, 0x1f5

    const/16 v2, 0x67

    aput-char v2, v0, v1

    const/16 v1, 0x1f6

    const/16 v2, 0x1f6

    aput-char v2, v0, v1

    const/16 v1, 0x1f7

    const/16 v2, 0x1f7

    aput-char v2, v0, v1

    const/16 v1, 0x1f8

    .line 591
    const/16 v2, 0x4e

    aput-char v2, v0, v1

    const/16 v1, 0x1f9

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    const/16 v1, 0x1fa

    const/16 v2, 0xc5

    aput-char v2, v0, v1

    const/16 v1, 0x1fb

    const/16 v2, 0xe5

    aput-char v2, v0, v1

    const/16 v1, 0x1fc

    const/16 v2, 0xc6

    aput-char v2, v0, v1

    const/16 v1, 0x1fd

    const/16 v2, 0xe6

    aput-char v2, v0, v1

    const/16 v1, 0x1fe

    const/16 v2, 0xd8

    aput-char v2, v0, v1

    const/16 v1, 0x1ff

    const/16 v2, 0xf8

    aput-char v2, v0, v1

    const/16 v1, 0x200

    .line 592
    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0x201

    aput-char v6, v0, v1

    const/16 v1, 0x202

    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0x203

    aput-char v6, v0, v1

    const/16 v1, 0x204

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0x205

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x206

    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0x207

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x208

    .line 593
    const/16 v2, 0x49

    aput-char v2, v0, v1

    const/16 v1, 0x209

    const/16 v2, 0x69

    aput-char v2, v0, v1

    const/16 v1, 0x20a

    const/16 v2, 0x49

    aput-char v2, v0, v1

    const/16 v1, 0x20b

    const/16 v2, 0x69

    aput-char v2, v0, v1

    const/16 v1, 0x20c

    aput-char v4, v0, v1

    const/16 v1, 0x20d

    aput-char v3, v0, v1

    const/16 v1, 0x20e

    aput-char v4, v0, v1

    const/16 v1, 0x20f

    aput-char v3, v0, v1

    const/16 v1, 0x210

    .line 594
    const/16 v2, 0x52

    aput-char v2, v0, v1

    const/16 v1, 0x211

    const/16 v2, 0x72

    aput-char v2, v0, v1

    const/16 v1, 0x212

    const/16 v2, 0x52

    aput-char v2, v0, v1

    const/16 v1, 0x213

    const/16 v2, 0x72

    aput-char v2, v0, v1

    const/16 v1, 0x214

    aput-char v5, v0, v1

    const/16 v1, 0x215

    aput-char v7, v0, v1

    const/16 v1, 0x216

    aput-char v5, v0, v1

    const/16 v1, 0x217

    aput-char v7, v0, v1

    const/16 v1, 0x218

    .line 595
    const/16 v2, 0x53

    aput-char v2, v0, v1

    const/16 v1, 0x219

    const/16 v2, 0x73

    aput-char v2, v0, v1

    const/16 v1, 0x21a

    const/16 v2, 0x54

    aput-char v2, v0, v1

    const/16 v1, 0x21b

    const/16 v2, 0x74

    aput-char v2, v0, v1

    const/16 v1, 0x21c

    const/16 v2, 0x21c

    aput-char v2, v0, v1

    const/16 v1, 0x21d

    const/16 v2, 0x21d

    aput-char v2, v0, v1

    const/16 v1, 0x21e

    const/16 v2, 0x48

    aput-char v2, v0, v1

    const/16 v1, 0x21f

    const/16 v2, 0x68

    aput-char v2, v0, v1

    const/16 v1, 0x220

    .line 596
    const/16 v2, 0x220

    aput-char v2, v0, v1

    const/16 v1, 0x221

    const/16 v2, 0x221

    aput-char v2, v0, v1

    const/16 v1, 0x222

    const/16 v2, 0x222

    aput-char v2, v0, v1

    const/16 v1, 0x223

    const/16 v2, 0x223

    aput-char v2, v0, v1

    const/16 v1, 0x224

    const/16 v2, 0x224

    aput-char v2, v0, v1

    const/16 v1, 0x225

    const/16 v2, 0x225

    aput-char v2, v0, v1

    const/16 v1, 0x226

    const/16 v2, 0x41

    aput-char v2, v0, v1

    const/16 v1, 0x227

    aput-char v6, v0, v1

    const/16 v1, 0x228

    .line 597
    const/16 v2, 0x45

    aput-char v2, v0, v1

    const/16 v1, 0x229

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x22a

    const/16 v2, 0xd6

    aput-char v2, v0, v1

    const/16 v1, 0x22b

    const/16 v2, 0xf6

    aput-char v2, v0, v1

    const/16 v1, 0x22c

    const/16 v2, 0xd5

    aput-char v2, v0, v1

    const/16 v1, 0x22d

    const/16 v2, 0xf5

    aput-char v2, v0, v1

    const/16 v1, 0x22e

    aput-char v4, v0, v1

    const/16 v1, 0x22f

    aput-char v3, v0, v1

    const/16 v1, 0x230

    .line 598
    const/16 v2, 0x22e

    aput-char v2, v0, v1

    const/16 v1, 0x231

    const/16 v2, 0x22f

    aput-char v2, v0, v1

    const/16 v1, 0x232

    const/16 v2, 0x59

    aput-char v2, v0, v1

    const/16 v1, 0x233

    const/16 v2, 0x79

    aput-char v2, v0, v1

    const/16 v1, 0x234

    const/16 v2, 0x234

    aput-char v2, v0, v1

    const/16 v1, 0x235

    const/16 v2, 0x235

    aput-char v2, v0, v1

    const/16 v1, 0x236

    const/16 v2, 0x236

    aput-char v2, v0, v1

    const/16 v1, 0x237

    const/16 v2, 0x237

    aput-char v2, v0, v1

    const/16 v1, 0x238

    .line 599
    const/16 v2, 0x238

    aput-char v2, v0, v1

    const/16 v1, 0x239

    const/16 v2, 0x239

    aput-char v2, v0, v1

    const/16 v1, 0x23a

    const/16 v2, 0x23a

    aput-char v2, v0, v1

    const/16 v1, 0x23b

    const/16 v2, 0x23b

    aput-char v2, v0, v1

    const/16 v1, 0x23c

    const/16 v2, 0x23c

    aput-char v2, v0, v1

    const/16 v1, 0x23d

    const/16 v2, 0x23d

    aput-char v2, v0, v1

    const/16 v1, 0x23e

    const/16 v2, 0x23e

    aput-char v2, v0, v1

    const/16 v1, 0x23f

    const/16 v2, 0x23f

    aput-char v2, v0, v1

    const/16 v1, 0x240

    .line 600
    const/16 v2, 0x240

    aput-char v2, v0, v1

    const/16 v1, 0x241

    const/16 v2, 0x241

    aput-char v2, v0, v1

    const/16 v1, 0x242

    const/16 v2, 0x242

    aput-char v2, v0, v1

    const/16 v1, 0x243

    const/16 v2, 0x243

    aput-char v2, v0, v1

    const/16 v1, 0x244

    const/16 v2, 0x244

    aput-char v2, v0, v1

    const/16 v1, 0x245

    const/16 v2, 0x245

    aput-char v2, v0, v1

    const/16 v1, 0x246

    const/16 v2, 0x246

    aput-char v2, v0, v1

    const/16 v1, 0x247

    const/16 v2, 0x247

    aput-char v2, v0, v1

    const/16 v1, 0x248

    .line 601
    const/16 v2, 0x248

    aput-char v2, v0, v1

    const/16 v1, 0x249

    const/16 v2, 0x249

    aput-char v2, v0, v1

    const/16 v1, 0x24a

    const/16 v2, 0x24a

    aput-char v2, v0, v1

    const/16 v1, 0x24b

    const/16 v2, 0x24b

    aput-char v2, v0, v1

    const/16 v1, 0x24c

    const/16 v2, 0x24c

    aput-char v2, v0, v1

    const/16 v1, 0x24d

    const/16 v2, 0x24d

    aput-char v2, v0, v1

    const/16 v1, 0x24e

    const/16 v2, 0x24e

    aput-char v2, v0, v1

    const/16 v1, 0x24f

    const/16 v2, 0x24f

    aput-char v2, v0, v1

    const/16 v1, 0x250

    .line 602
    const/16 v2, 0x250

    aput-char v2, v0, v1

    const/16 v1, 0x251

    const/16 v2, 0x251

    aput-char v2, v0, v1

    const/16 v1, 0x252

    const/16 v2, 0x252

    aput-char v2, v0, v1

    const/16 v1, 0x253

    const/16 v2, 0x253

    aput-char v2, v0, v1

    const/16 v1, 0x254

    const/16 v2, 0x254

    aput-char v2, v0, v1

    const/16 v1, 0x255

    const/16 v2, 0x255

    aput-char v2, v0, v1

    const/16 v1, 0x256

    const/16 v2, 0x256

    aput-char v2, v0, v1

    const/16 v1, 0x257

    const/16 v2, 0x257

    aput-char v2, v0, v1

    const/16 v1, 0x258

    .line 603
    const/16 v2, 0x258

    aput-char v2, v0, v1

    const/16 v1, 0x259

    const/16 v2, 0x259

    aput-char v2, v0, v1

    const/16 v1, 0x25a

    const/16 v2, 0x25a

    aput-char v2, v0, v1

    const/16 v1, 0x25b

    const/16 v2, 0x25b

    aput-char v2, v0, v1

    const/16 v1, 0x25c

    const/16 v2, 0x25c

    aput-char v2, v0, v1

    const/16 v1, 0x25d

    const/16 v2, 0x25d

    aput-char v2, v0, v1

    const/16 v1, 0x25e

    const/16 v2, 0x25e

    aput-char v2, v0, v1

    const/16 v1, 0x25f

    const/16 v2, 0x25f

    aput-char v2, v0, v1

    const/16 v1, 0x260

    .line 604
    const/16 v2, 0x260

    aput-char v2, v0, v1

    const/16 v1, 0x261

    const/16 v2, 0x261

    aput-char v2, v0, v1

    const/16 v1, 0x262

    const/16 v2, 0x262

    aput-char v2, v0, v1

    const/16 v1, 0x263

    const/16 v2, 0x263

    aput-char v2, v0, v1

    const/16 v1, 0x264

    const/16 v2, 0x264

    aput-char v2, v0, v1

    const/16 v1, 0x265

    const/16 v2, 0x265

    aput-char v2, v0, v1

    const/16 v1, 0x266

    const/16 v2, 0x266

    aput-char v2, v0, v1

    const/16 v1, 0x267

    const/16 v2, 0x267

    aput-char v2, v0, v1

    const/16 v1, 0x268

    .line 605
    const/16 v2, 0x268

    aput-char v2, v0, v1

    const/16 v1, 0x269

    const/16 v2, 0x269

    aput-char v2, v0, v1

    const/16 v1, 0x26a

    const/16 v2, 0x26a

    aput-char v2, v0, v1

    const/16 v1, 0x26b

    const/16 v2, 0x26b

    aput-char v2, v0, v1

    const/16 v1, 0x26c

    const/16 v2, 0x26c

    aput-char v2, v0, v1

    const/16 v1, 0x26d

    const/16 v2, 0x26d

    aput-char v2, v0, v1

    const/16 v1, 0x26e

    const/16 v2, 0x26e

    aput-char v2, v0, v1

    const/16 v1, 0x26f

    const/16 v2, 0x26f

    aput-char v2, v0, v1

    const/16 v1, 0x270

    .line 606
    const/16 v2, 0x270

    aput-char v2, v0, v1

    const/16 v1, 0x271

    const/16 v2, 0x271

    aput-char v2, v0, v1

    const/16 v1, 0x272

    const/16 v2, 0x272

    aput-char v2, v0, v1

    const/16 v1, 0x273

    const/16 v2, 0x273

    aput-char v2, v0, v1

    const/16 v1, 0x274

    const/16 v2, 0x274

    aput-char v2, v0, v1

    const/16 v1, 0x275

    const/16 v2, 0x275

    aput-char v2, v0, v1

    const/16 v1, 0x276

    const/16 v2, 0x276

    aput-char v2, v0, v1

    const/16 v1, 0x277

    const/16 v2, 0x277

    aput-char v2, v0, v1

    const/16 v1, 0x278

    .line 607
    const/16 v2, 0x278

    aput-char v2, v0, v1

    const/16 v1, 0x279

    const/16 v2, 0x279

    aput-char v2, v0, v1

    const/16 v1, 0x27a

    const/16 v2, 0x27a

    aput-char v2, v0, v1

    const/16 v1, 0x27b

    const/16 v2, 0x27b

    aput-char v2, v0, v1

    const/16 v1, 0x27c

    const/16 v2, 0x27c

    aput-char v2, v0, v1

    const/16 v1, 0x27d

    const/16 v2, 0x27d

    aput-char v2, v0, v1

    const/16 v1, 0x27e

    const/16 v2, 0x27e

    aput-char v2, v0, v1

    const/16 v1, 0x27f

    const/16 v2, 0x27f

    aput-char v2, v0, v1

    const/16 v1, 0x280

    .line 608
    const/16 v2, 0x280

    aput-char v2, v0, v1

    const/16 v1, 0x281

    const/16 v2, 0x281

    aput-char v2, v0, v1

    const/16 v1, 0x282

    const/16 v2, 0x282

    aput-char v2, v0, v1

    const/16 v1, 0x283

    const/16 v2, 0x283

    aput-char v2, v0, v1

    const/16 v1, 0x284

    const/16 v2, 0x284

    aput-char v2, v0, v1

    const/16 v1, 0x285

    const/16 v2, 0x285

    aput-char v2, v0, v1

    const/16 v1, 0x286

    const/16 v2, 0x286

    aput-char v2, v0, v1

    const/16 v1, 0x287

    const/16 v2, 0x287

    aput-char v2, v0, v1

    const/16 v1, 0x288

    .line 609
    const/16 v2, 0x288

    aput-char v2, v0, v1

    const/16 v1, 0x289

    const/16 v2, 0x289

    aput-char v2, v0, v1

    const/16 v1, 0x28a

    const/16 v2, 0x28a

    aput-char v2, v0, v1

    const/16 v1, 0x28b

    const/16 v2, 0x28b

    aput-char v2, v0, v1

    const/16 v1, 0x28c

    const/16 v2, 0x28c

    aput-char v2, v0, v1

    const/16 v1, 0x28d

    const/16 v2, 0x28d

    aput-char v2, v0, v1

    const/16 v1, 0x28e

    const/16 v2, 0x28e

    aput-char v2, v0, v1

    const/16 v1, 0x28f

    const/16 v2, 0x28f

    aput-char v2, v0, v1

    const/16 v1, 0x290

    .line 610
    const/16 v2, 0x290

    aput-char v2, v0, v1

    const/16 v1, 0x291

    const/16 v2, 0x291

    aput-char v2, v0, v1

    const/16 v1, 0x292

    const/16 v2, 0x292

    aput-char v2, v0, v1

    const/16 v1, 0x293

    const/16 v2, 0x293

    aput-char v2, v0, v1

    const/16 v1, 0x294

    const/16 v2, 0x294

    aput-char v2, v0, v1

    const/16 v1, 0x295

    const/16 v2, 0x295

    aput-char v2, v0, v1

    const/16 v1, 0x296

    const/16 v2, 0x296

    aput-char v2, v0, v1

    const/16 v1, 0x297

    const/16 v2, 0x297

    aput-char v2, v0, v1

    const/16 v1, 0x298

    .line 611
    const/16 v2, 0x298

    aput-char v2, v0, v1

    const/16 v1, 0x299

    const/16 v2, 0x299

    aput-char v2, v0, v1

    const/16 v1, 0x29a

    const/16 v2, 0x29a

    aput-char v2, v0, v1

    const/16 v1, 0x29b

    const/16 v2, 0x29b

    aput-char v2, v0, v1

    const/16 v1, 0x29c

    const/16 v2, 0x29c

    aput-char v2, v0, v1

    const/16 v1, 0x29d

    const/16 v2, 0x29d

    aput-char v2, v0, v1

    const/16 v1, 0x29e

    const/16 v2, 0x29e

    aput-char v2, v0, v1

    const/16 v1, 0x29f

    const/16 v2, 0x29f

    aput-char v2, v0, v1

    const/16 v1, 0x2a0

    .line 612
    const/16 v2, 0x2a0

    aput-char v2, v0, v1

    const/16 v1, 0x2a1

    const/16 v2, 0x2a1

    aput-char v2, v0, v1

    const/16 v1, 0x2a2

    const/16 v2, 0x2a2

    aput-char v2, v0, v1

    const/16 v1, 0x2a3

    const/16 v2, 0x2a3

    aput-char v2, v0, v1

    const/16 v1, 0x2a4

    const/16 v2, 0x2a4

    aput-char v2, v0, v1

    const/16 v1, 0x2a5

    const/16 v2, 0x2a5

    aput-char v2, v0, v1

    const/16 v1, 0x2a6

    const/16 v2, 0x2a6

    aput-char v2, v0, v1

    const/16 v1, 0x2a7

    const/16 v2, 0x2a7

    aput-char v2, v0, v1

    const/16 v1, 0x2a8

    .line 613
    const/16 v2, 0x2a8

    aput-char v2, v0, v1

    const/16 v1, 0x2a9

    const/16 v2, 0x2a9

    aput-char v2, v0, v1

    const/16 v1, 0x2aa

    const/16 v2, 0x2aa

    aput-char v2, v0, v1

    const/16 v1, 0x2ab

    const/16 v2, 0x2ab

    aput-char v2, v0, v1

    const/16 v1, 0x2ac

    const/16 v2, 0x2ac

    aput-char v2, v0, v1

    const/16 v1, 0x2ad

    const/16 v2, 0x2ad

    aput-char v2, v0, v1

    const/16 v1, 0x2ae

    const/16 v2, 0x2ae

    aput-char v2, v0, v1

    const/16 v1, 0x2af

    const/16 v2, 0x2af

    aput-char v2, v0, v1

    const/16 v1, 0x2b0

    .line 614
    const/16 v2, 0x68

    aput-char v2, v0, v1

    const/16 v1, 0x2b1

    const/16 v2, 0x266

    aput-char v2, v0, v1

    const/16 v1, 0x2b2

    const/16 v2, 0x6a

    aput-char v2, v0, v1

    const/16 v1, 0x2b3

    const/16 v2, 0x72

    aput-char v2, v0, v1

    const/16 v1, 0x2b4

    const/16 v2, 0x279

    aput-char v2, v0, v1

    const/16 v1, 0x2b5

    const/16 v2, 0x27b

    aput-char v2, v0, v1

    const/16 v1, 0x2b6

    const/16 v2, 0x281

    aput-char v2, v0, v1

    const/16 v1, 0x2b7

    const/16 v2, 0x77

    aput-char v2, v0, v1

    const/16 v1, 0x2b8

    .line 615
    const/16 v2, 0x79

    aput-char v2, v0, v1

    const/16 v1, 0x2b9

    const/16 v2, 0x2b9

    aput-char v2, v0, v1

    const/16 v1, 0x2ba

    const/16 v2, 0x2ba

    aput-char v2, v0, v1

    const/16 v1, 0x2bb

    const/16 v2, 0x2bb

    aput-char v2, v0, v1

    const/16 v1, 0x2bc

    const/16 v2, 0x2bc

    aput-char v2, v0, v1

    const/16 v1, 0x2bd

    const/16 v2, 0x2bd

    aput-char v2, v0, v1

    const/16 v1, 0x2be

    const/16 v2, 0x2be

    aput-char v2, v0, v1

    const/16 v1, 0x2bf

    const/16 v2, 0x2bf

    aput-char v2, v0, v1

    const/16 v1, 0x2c0

    .line 616
    const/16 v2, 0x2c0

    aput-char v2, v0, v1

    const/16 v1, 0x2c1

    const/16 v2, 0x2c1

    aput-char v2, v0, v1

    const/16 v1, 0x2c2

    const/16 v2, 0x2c2

    aput-char v2, v0, v1

    const/16 v1, 0x2c3

    const/16 v2, 0x2c3

    aput-char v2, v0, v1

    const/16 v1, 0x2c4

    const/16 v2, 0x2c4

    aput-char v2, v0, v1

    const/16 v1, 0x2c5

    const/16 v2, 0x2c5

    aput-char v2, v0, v1

    const/16 v1, 0x2c6

    const/16 v2, 0x2c6

    aput-char v2, v0, v1

    const/16 v1, 0x2c7

    const/16 v2, 0x2c7

    aput-char v2, v0, v1

    const/16 v1, 0x2c8

    .line 617
    const/16 v2, 0x2c8

    aput-char v2, v0, v1

    const/16 v1, 0x2c9

    const/16 v2, 0x2c9

    aput-char v2, v0, v1

    const/16 v1, 0x2ca

    const/16 v2, 0x2ca

    aput-char v2, v0, v1

    const/16 v1, 0x2cb

    const/16 v2, 0x2cb

    aput-char v2, v0, v1

    const/16 v1, 0x2cc

    const/16 v2, 0x2cc

    aput-char v2, v0, v1

    const/16 v1, 0x2cd

    const/16 v2, 0x2cd

    aput-char v2, v0, v1

    const/16 v1, 0x2ce

    const/16 v2, 0x2ce

    aput-char v2, v0, v1

    const/16 v1, 0x2cf

    const/16 v2, 0x2cf

    aput-char v2, v0, v1

    const/16 v1, 0x2d0

    .line 618
    const/16 v2, 0x2d0

    aput-char v2, v0, v1

    const/16 v1, 0x2d1

    const/16 v2, 0x2d1

    aput-char v2, v0, v1

    const/16 v1, 0x2d2

    const/16 v2, 0x2d2

    aput-char v2, v0, v1

    const/16 v1, 0x2d3

    const/16 v2, 0x2d3

    aput-char v2, v0, v1

    const/16 v1, 0x2d4

    const/16 v2, 0x2d4

    aput-char v2, v0, v1

    const/16 v1, 0x2d5

    const/16 v2, 0x2d5

    aput-char v2, v0, v1

    const/16 v1, 0x2d6

    const/16 v2, 0x2d6

    aput-char v2, v0, v1

    const/16 v1, 0x2d7

    const/16 v2, 0x2d7

    aput-char v2, v0, v1

    const/16 v1, 0x2d8

    .line 619
    const/16 v2, 0x20

    aput-char v2, v0, v1

    const/16 v1, 0x2d9

    const/16 v2, 0x20

    aput-char v2, v0, v1

    const/16 v1, 0x2da

    const/16 v2, 0x20

    aput-char v2, v0, v1

    const/16 v1, 0x2db

    const/16 v2, 0x20

    aput-char v2, v0, v1

    const/16 v1, 0x2dc

    const/16 v2, 0x20

    aput-char v2, v0, v1

    const/16 v1, 0x2dd

    const/16 v2, 0x20

    aput-char v2, v0, v1

    const/16 v1, 0x2de

    const/16 v2, 0x2de

    aput-char v2, v0, v1

    const/16 v1, 0x2df

    const/16 v2, 0x2df

    aput-char v2, v0, v1

    const/16 v1, 0x2e0

    .line 620
    const/16 v2, 0x263

    aput-char v2, v0, v1

    const/16 v1, 0x2e1

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    const/16 v1, 0x2e2

    const/16 v2, 0x73

    aput-char v2, v0, v1

    const/16 v1, 0x2e3

    const/16 v2, 0x78

    aput-char v2, v0, v1

    const/16 v1, 0x2e4

    const/16 v2, 0x295

    aput-char v2, v0, v1

    const/16 v1, 0x2e5

    const/16 v2, 0x2e5

    aput-char v2, v0, v1

    const/16 v1, 0x2e6

    const/16 v2, 0x2e6

    aput-char v2, v0, v1

    const/16 v1, 0x2e7

    const/16 v2, 0x2e7

    aput-char v2, v0, v1

    const/16 v1, 0x2e8

    .line 621
    const/16 v2, 0x2e8

    aput-char v2, v0, v1

    const/16 v1, 0x2e9

    const/16 v2, 0x2e9

    aput-char v2, v0, v1

    const/16 v1, 0x2ea

    const/16 v2, 0x2ea

    aput-char v2, v0, v1

    const/16 v1, 0x2eb

    const/16 v2, 0x2eb

    aput-char v2, v0, v1

    const/16 v1, 0x2ec

    const/16 v2, 0x2ec

    aput-char v2, v0, v1

    const/16 v1, 0x2ed

    const/16 v2, 0x2ed

    aput-char v2, v0, v1

    const/16 v1, 0x2ee

    const/16 v2, 0x2ee

    aput-char v2, v0, v1

    const/16 v1, 0x2ef

    const/16 v2, 0x2ef

    aput-char v2, v0, v1

    const/16 v1, 0x2f0

    .line 622
    const/16 v2, 0x2f0

    aput-char v2, v0, v1

    const/16 v1, 0x2f1

    const/16 v2, 0x2f1

    aput-char v2, v0, v1

    const/16 v1, 0x2f2

    const/16 v2, 0x2f2

    aput-char v2, v0, v1

    const/16 v1, 0x2f3

    const/16 v2, 0x2f3

    aput-char v2, v0, v1

    const/16 v1, 0x2f4

    const/16 v2, 0x2f4

    aput-char v2, v0, v1

    const/16 v1, 0x2f5

    const/16 v2, 0x2f5

    aput-char v2, v0, v1

    const/16 v1, 0x2f6

    const/16 v2, 0x2f6

    aput-char v2, v0, v1

    const/16 v1, 0x2f7

    const/16 v2, 0x2f7

    aput-char v2, v0, v1

    const/16 v1, 0x2f8

    .line 623
    const/16 v2, 0x2f8

    aput-char v2, v0, v1

    const/16 v1, 0x2f9

    const/16 v2, 0x2f9

    aput-char v2, v0, v1

    const/16 v1, 0x2fa

    const/16 v2, 0x2fa

    aput-char v2, v0, v1

    const/16 v1, 0x2fb

    const/16 v2, 0x2fb

    aput-char v2, v0, v1

    const/16 v1, 0x2fc

    const/16 v2, 0x2fc

    aput-char v2, v0, v1

    const/16 v1, 0x2fd

    const/16 v2, 0x2fd

    aput-char v2, v0, v1

    const/16 v1, 0x2fe

    const/16 v2, 0x2fe

    aput-char v2, v0, v1

    const/16 v1, 0x2ff

    const/16 v2, 0x2ff

    aput-char v2, v0, v1

    const/16 v1, 0x300

    .line 624
    const/16 v2, 0x300

    aput-char v2, v0, v1

    const/16 v1, 0x301

    const/16 v2, 0x301

    aput-char v2, v0, v1

    const/16 v1, 0x302

    const/16 v2, 0x302

    aput-char v2, v0, v1

    const/16 v1, 0x303

    const/16 v2, 0x303

    aput-char v2, v0, v1

    const/16 v1, 0x304

    const/16 v2, 0x304

    aput-char v2, v0, v1

    const/16 v1, 0x305

    const/16 v2, 0x305

    aput-char v2, v0, v1

    const/16 v1, 0x306

    const/16 v2, 0x306

    aput-char v2, v0, v1

    const/16 v1, 0x307

    const/16 v2, 0x307

    aput-char v2, v0, v1

    const/16 v1, 0x308

    .line 625
    const/16 v2, 0x308

    aput-char v2, v0, v1

    const/16 v1, 0x309

    const/16 v2, 0x309

    aput-char v2, v0, v1

    const/16 v1, 0x30a

    const/16 v2, 0x30a

    aput-char v2, v0, v1

    const/16 v1, 0x30b

    const/16 v2, 0x30b

    aput-char v2, v0, v1

    const/16 v1, 0x30c

    const/16 v2, 0x30c

    aput-char v2, v0, v1

    const/16 v1, 0x30d

    const/16 v2, 0x30d

    aput-char v2, v0, v1

    const/16 v1, 0x30e

    const/16 v2, 0x30e

    aput-char v2, v0, v1

    const/16 v1, 0x30f

    const/16 v2, 0x30f

    aput-char v2, v0, v1

    const/16 v1, 0x310

    .line 626
    const/16 v2, 0x310

    aput-char v2, v0, v1

    const/16 v1, 0x311

    const/16 v2, 0x311

    aput-char v2, v0, v1

    const/16 v1, 0x312

    const/16 v2, 0x312

    aput-char v2, v0, v1

    const/16 v1, 0x313

    const/16 v2, 0x313

    aput-char v2, v0, v1

    const/16 v1, 0x314

    const/16 v2, 0x314

    aput-char v2, v0, v1

    const/16 v1, 0x315

    const/16 v2, 0x315

    aput-char v2, v0, v1

    const/16 v1, 0x316

    const/16 v2, 0x316

    aput-char v2, v0, v1

    const/16 v1, 0x317

    const/16 v2, 0x317

    aput-char v2, v0, v1

    const/16 v1, 0x318

    .line 627
    const/16 v2, 0x318

    aput-char v2, v0, v1

    const/16 v1, 0x319

    const/16 v2, 0x319

    aput-char v2, v0, v1

    const/16 v1, 0x31a

    const/16 v2, 0x31a

    aput-char v2, v0, v1

    const/16 v1, 0x31b

    const/16 v2, 0x31b

    aput-char v2, v0, v1

    const/16 v1, 0x31c

    const/16 v2, 0x31c

    aput-char v2, v0, v1

    const/16 v1, 0x31d

    const/16 v2, 0x31d

    aput-char v2, v0, v1

    const/16 v1, 0x31e

    const/16 v2, 0x31e

    aput-char v2, v0, v1

    const/16 v1, 0x31f

    const/16 v2, 0x31f

    aput-char v2, v0, v1

    const/16 v1, 0x320

    .line 628
    const/16 v2, 0x320

    aput-char v2, v0, v1

    const/16 v1, 0x321

    const/16 v2, 0x321

    aput-char v2, v0, v1

    const/16 v1, 0x322

    const/16 v2, 0x322

    aput-char v2, v0, v1

    const/16 v1, 0x323

    const/16 v2, 0x323

    aput-char v2, v0, v1

    const/16 v1, 0x324

    const/16 v2, 0x324

    aput-char v2, v0, v1

    const/16 v1, 0x325

    const/16 v2, 0x325

    aput-char v2, v0, v1

    const/16 v1, 0x326

    const/16 v2, 0x326

    aput-char v2, v0, v1

    const/16 v1, 0x327

    const/16 v2, 0x327

    aput-char v2, v0, v1

    const/16 v1, 0x328

    .line 629
    const/16 v2, 0x328

    aput-char v2, v0, v1

    const/16 v1, 0x329

    const/16 v2, 0x329

    aput-char v2, v0, v1

    const/16 v1, 0x32a

    const/16 v2, 0x32a

    aput-char v2, v0, v1

    const/16 v1, 0x32b

    const/16 v2, 0x32b

    aput-char v2, v0, v1

    const/16 v1, 0x32c

    const/16 v2, 0x32c

    aput-char v2, v0, v1

    const/16 v1, 0x32d

    const/16 v2, 0x32d

    aput-char v2, v0, v1

    const/16 v1, 0x32e

    const/16 v2, 0x32e

    aput-char v2, v0, v1

    const/16 v1, 0x32f

    const/16 v2, 0x32f

    aput-char v2, v0, v1

    const/16 v1, 0x330

    .line 630
    const/16 v2, 0x330

    aput-char v2, v0, v1

    const/16 v1, 0x331

    const/16 v2, 0x331

    aput-char v2, v0, v1

    const/16 v1, 0x332

    const/16 v2, 0x332

    aput-char v2, v0, v1

    const/16 v1, 0x333

    const/16 v2, 0x333

    aput-char v2, v0, v1

    const/16 v1, 0x334

    const/16 v2, 0x334

    aput-char v2, v0, v1

    const/16 v1, 0x335

    const/16 v2, 0x335

    aput-char v2, v0, v1

    const/16 v1, 0x336

    const/16 v2, 0x336

    aput-char v2, v0, v1

    const/16 v1, 0x337

    const/16 v2, 0x337

    aput-char v2, v0, v1

    const/16 v1, 0x338

    .line 631
    const/16 v2, 0x338

    aput-char v2, v0, v1

    const/16 v1, 0x339

    const/16 v2, 0x339

    aput-char v2, v0, v1

    const/16 v1, 0x33a

    const/16 v2, 0x33a

    aput-char v2, v0, v1

    const/16 v1, 0x33b

    const/16 v2, 0x33b

    aput-char v2, v0, v1

    const/16 v1, 0x33c

    const/16 v2, 0x33c

    aput-char v2, v0, v1

    const/16 v1, 0x33d

    const/16 v2, 0x33d

    aput-char v2, v0, v1

    const/16 v1, 0x33e

    const/16 v2, 0x33e

    aput-char v2, v0, v1

    const/16 v1, 0x33f

    const/16 v2, 0x33f

    aput-char v2, v0, v1

    const/16 v1, 0x340

    .line 632
    const/16 v2, 0x300

    aput-char v2, v0, v1

    const/16 v1, 0x341

    const/16 v2, 0x301

    aput-char v2, v0, v1

    const/16 v1, 0x342

    const/16 v2, 0x342

    aput-char v2, v0, v1

    const/16 v1, 0x343

    const/16 v2, 0x313

    aput-char v2, v0, v1

    const/16 v1, 0x344

    const/16 v2, 0x308

    aput-char v2, v0, v1

    const/16 v1, 0x345

    const/16 v2, 0x345

    aput-char v2, v0, v1

    const/16 v1, 0x346

    const/16 v2, 0x346

    aput-char v2, v0, v1

    const/16 v1, 0x347

    const/16 v2, 0x347

    aput-char v2, v0, v1

    const/16 v1, 0x348

    .line 633
    const/16 v2, 0x348

    aput-char v2, v0, v1

    const/16 v1, 0x349

    const/16 v2, 0x349

    aput-char v2, v0, v1

    const/16 v1, 0x34a

    const/16 v2, 0x34a

    aput-char v2, v0, v1

    const/16 v1, 0x34b

    const/16 v2, 0x34b

    aput-char v2, v0, v1

    const/16 v1, 0x34c

    const/16 v2, 0x34c

    aput-char v2, v0, v1

    const/16 v1, 0x34d

    const/16 v2, 0x34d

    aput-char v2, v0, v1

    const/16 v1, 0x34e

    const/16 v2, 0x34e

    aput-char v2, v0, v1

    const/16 v1, 0x34f

    const/16 v2, 0x34f

    aput-char v2, v0, v1

    const/16 v1, 0x350

    .line 634
    const/16 v2, 0x350

    aput-char v2, v0, v1

    const/16 v1, 0x351

    const/16 v2, 0x351

    aput-char v2, v0, v1

    const/16 v1, 0x352

    const/16 v2, 0x352

    aput-char v2, v0, v1

    const/16 v1, 0x353

    const/16 v2, 0x353

    aput-char v2, v0, v1

    const/16 v1, 0x354

    const/16 v2, 0x354

    aput-char v2, v0, v1

    const/16 v1, 0x355

    const/16 v2, 0x355

    aput-char v2, v0, v1

    const/16 v1, 0x356

    const/16 v2, 0x356

    aput-char v2, v0, v1

    const/16 v1, 0x357

    const/16 v2, 0x357

    aput-char v2, v0, v1

    const/16 v1, 0x358

    .line 635
    const/16 v2, 0x358

    aput-char v2, v0, v1

    const/16 v1, 0x359

    const/16 v2, 0x359

    aput-char v2, v0, v1

    const/16 v1, 0x35a

    const/16 v2, 0x35a

    aput-char v2, v0, v1

    const/16 v1, 0x35b

    const/16 v2, 0x35b

    aput-char v2, v0, v1

    const/16 v1, 0x35c

    const/16 v2, 0x35c

    aput-char v2, v0, v1

    const/16 v1, 0x35d

    const/16 v2, 0x35d

    aput-char v2, v0, v1

    const/16 v1, 0x35e

    const/16 v2, 0x35e

    aput-char v2, v0, v1

    const/16 v1, 0x35f

    const/16 v2, 0x35f

    aput-char v2, v0, v1

    const/16 v1, 0x360

    .line 636
    const/16 v2, 0x360

    aput-char v2, v0, v1

    const/16 v1, 0x361

    const/16 v2, 0x361

    aput-char v2, v0, v1

    const/16 v1, 0x362

    const/16 v2, 0x362

    aput-char v2, v0, v1

    const/16 v1, 0x363

    const/16 v2, 0x363

    aput-char v2, v0, v1

    const/16 v1, 0x364

    const/16 v2, 0x364

    aput-char v2, v0, v1

    const/16 v1, 0x365

    const/16 v2, 0x365

    aput-char v2, v0, v1

    const/16 v1, 0x366

    const/16 v2, 0x366

    aput-char v2, v0, v1

    const/16 v1, 0x367

    const/16 v2, 0x367

    aput-char v2, v0, v1

    const/16 v1, 0x368

    .line 637
    const/16 v2, 0x368

    aput-char v2, v0, v1

    const/16 v1, 0x369

    const/16 v2, 0x369

    aput-char v2, v0, v1

    const/16 v1, 0x36a

    const/16 v2, 0x36a

    aput-char v2, v0, v1

    const/16 v1, 0x36b

    const/16 v2, 0x36b

    aput-char v2, v0, v1

    const/16 v1, 0x36c

    const/16 v2, 0x36c

    aput-char v2, v0, v1

    const/16 v1, 0x36d

    const/16 v2, 0x36d

    aput-char v2, v0, v1

    const/16 v1, 0x36e

    const/16 v2, 0x36e

    aput-char v2, v0, v1

    const/16 v1, 0x36f

    const/16 v2, 0x36f

    aput-char v2, v0, v1

    const/16 v1, 0x370

    .line 638
    const/16 v2, 0x370

    aput-char v2, v0, v1

    const/16 v1, 0x371

    const/16 v2, 0x371

    aput-char v2, v0, v1

    const/16 v1, 0x372

    const/16 v2, 0x372

    aput-char v2, v0, v1

    const/16 v1, 0x373

    const/16 v2, 0x373

    aput-char v2, v0, v1

    const/16 v1, 0x374

    const/16 v2, 0x2b9

    aput-char v2, v0, v1

    const/16 v1, 0x375

    const/16 v2, 0x375

    aput-char v2, v0, v1

    const/16 v1, 0x376

    const/16 v2, 0x376

    aput-char v2, v0, v1

    const/16 v1, 0x377

    const/16 v2, 0x377

    aput-char v2, v0, v1

    const/16 v1, 0x378

    .line 639
    const/16 v2, 0x378

    aput-char v2, v0, v1

    const/16 v1, 0x379

    const/16 v2, 0x379

    aput-char v2, v0, v1

    const/16 v1, 0x37a

    const/16 v2, 0x20

    aput-char v2, v0, v1

    const/16 v1, 0x37b

    const/16 v2, 0x37b

    aput-char v2, v0, v1

    const/16 v1, 0x37c

    const/16 v2, 0x37c

    aput-char v2, v0, v1

    const/16 v1, 0x37d

    const/16 v2, 0x37d

    aput-char v2, v0, v1

    const/16 v1, 0x37e

    const/16 v2, 0x3b

    aput-char v2, v0, v1

    const/16 v1, 0x37f

    const/16 v2, 0x37f

    aput-char v2, v0, v1

    const/16 v1, 0x380

    .line 640
    const/16 v2, 0x380

    aput-char v2, v0, v1

    const/16 v1, 0x381

    const/16 v2, 0x381

    aput-char v2, v0, v1

    const/16 v1, 0x382

    const/16 v2, 0x382

    aput-char v2, v0, v1

    const/16 v1, 0x383

    const/16 v2, 0x383

    aput-char v2, v0, v1

    const/16 v1, 0x384

    const/16 v2, 0x20

    aput-char v2, v0, v1

    const/16 v1, 0x385

    const/16 v2, 0xa8

    aput-char v2, v0, v1

    const/16 v1, 0x386

    const/16 v2, 0x391

    aput-char v2, v0, v1

    const/16 v1, 0x387

    const/16 v2, 0xb7

    aput-char v2, v0, v1

    const/16 v1, 0x388

    .line 641
    const/16 v2, 0x395

    aput-char v2, v0, v1

    const/16 v1, 0x389

    const/16 v2, 0x397

    aput-char v2, v0, v1

    const/16 v1, 0x38a

    const/16 v2, 0x399

    aput-char v2, v0, v1

    const/16 v1, 0x38b

    const/16 v2, 0x38b

    aput-char v2, v0, v1

    const/16 v1, 0x38c

    const/16 v2, 0x39f

    aput-char v2, v0, v1

    const/16 v1, 0x38d

    const/16 v2, 0x38d

    aput-char v2, v0, v1

    const/16 v1, 0x38e

    const/16 v2, 0x3a5

    aput-char v2, v0, v1

    const/16 v1, 0x38f

    const/16 v2, 0x3a9

    aput-char v2, v0, v1

    const/16 v1, 0x390

    .line 642
    const/16 v2, 0x3ca

    aput-char v2, v0, v1

    const/16 v1, 0x391

    const/16 v2, 0x391

    aput-char v2, v0, v1

    const/16 v1, 0x392

    const/16 v2, 0x392

    aput-char v2, v0, v1

    const/16 v1, 0x393

    const/16 v2, 0x393

    aput-char v2, v0, v1

    const/16 v1, 0x394

    const/16 v2, 0x394

    aput-char v2, v0, v1

    const/16 v1, 0x395

    const/16 v2, 0x395

    aput-char v2, v0, v1

    const/16 v1, 0x396

    const/16 v2, 0x396

    aput-char v2, v0, v1

    const/16 v1, 0x397

    const/16 v2, 0x397

    aput-char v2, v0, v1

    const/16 v1, 0x398

    .line 643
    const/16 v2, 0x398

    aput-char v2, v0, v1

    const/16 v1, 0x399

    const/16 v2, 0x399

    aput-char v2, v0, v1

    const/16 v1, 0x39a

    const/16 v2, 0x39a

    aput-char v2, v0, v1

    const/16 v1, 0x39b

    const/16 v2, 0x39b

    aput-char v2, v0, v1

    const/16 v1, 0x39c

    const/16 v2, 0x39c

    aput-char v2, v0, v1

    const/16 v1, 0x39d

    const/16 v2, 0x39d

    aput-char v2, v0, v1

    const/16 v1, 0x39e

    const/16 v2, 0x39e

    aput-char v2, v0, v1

    const/16 v1, 0x39f

    const/16 v2, 0x39f

    aput-char v2, v0, v1

    const/16 v1, 0x3a0

    .line 644
    const/16 v2, 0x3a0

    aput-char v2, v0, v1

    const/16 v1, 0x3a1

    const/16 v2, 0x3a1

    aput-char v2, v0, v1

    const/16 v1, 0x3a2

    const/16 v2, 0x3a2

    aput-char v2, v0, v1

    const/16 v1, 0x3a3

    const/16 v2, 0x3a3

    aput-char v2, v0, v1

    const/16 v1, 0x3a4

    const/16 v2, 0x3a4

    aput-char v2, v0, v1

    const/16 v1, 0x3a5

    const/16 v2, 0x3a5

    aput-char v2, v0, v1

    const/16 v1, 0x3a6

    const/16 v2, 0x3a6

    aput-char v2, v0, v1

    const/16 v1, 0x3a7

    const/16 v2, 0x3a7

    aput-char v2, v0, v1

    const/16 v1, 0x3a8

    .line 645
    const/16 v2, 0x3a8

    aput-char v2, v0, v1

    const/16 v1, 0x3a9

    const/16 v2, 0x3a9

    aput-char v2, v0, v1

    const/16 v1, 0x3aa

    const/16 v2, 0x399

    aput-char v2, v0, v1

    const/16 v1, 0x3ab

    const/16 v2, 0x3a5

    aput-char v2, v0, v1

    const/16 v1, 0x3ac

    const/16 v2, 0x3b1

    aput-char v2, v0, v1

    const/16 v1, 0x3ad

    const/16 v2, 0x3b5

    aput-char v2, v0, v1

    const/16 v1, 0x3ae

    const/16 v2, 0x3b7

    aput-char v2, v0, v1

    const/16 v1, 0x3af

    const/16 v2, 0x3b9

    aput-char v2, v0, v1

    const/16 v1, 0x3b0

    .line 646
    const/16 v2, 0x3cb

    aput-char v2, v0, v1

    const/16 v1, 0x3b1

    const/16 v2, 0x3b1

    aput-char v2, v0, v1

    const/16 v1, 0x3b2

    const/16 v2, 0x3b2

    aput-char v2, v0, v1

    const/16 v1, 0x3b3

    const/16 v2, 0x3b3

    aput-char v2, v0, v1

    const/16 v1, 0x3b4

    const/16 v2, 0x3b4

    aput-char v2, v0, v1

    const/16 v1, 0x3b5

    const/16 v2, 0x3b5

    aput-char v2, v0, v1

    const/16 v1, 0x3b6

    const/16 v2, 0x3b6

    aput-char v2, v0, v1

    const/16 v1, 0x3b7

    const/16 v2, 0x3b7

    aput-char v2, v0, v1

    const/16 v1, 0x3b8

    .line 647
    const/16 v2, 0x3b8

    aput-char v2, v0, v1

    const/16 v1, 0x3b9

    const/16 v2, 0x3b9

    aput-char v2, v0, v1

    const/16 v1, 0x3ba

    const/16 v2, 0x3ba

    aput-char v2, v0, v1

    const/16 v1, 0x3bb

    const/16 v2, 0x3bb

    aput-char v2, v0, v1

    const/16 v1, 0x3bc

    const/16 v2, 0x3bc

    aput-char v2, v0, v1

    const/16 v1, 0x3bd

    const/16 v2, 0x3bd

    aput-char v2, v0, v1

    const/16 v1, 0x3be

    const/16 v2, 0x3be

    aput-char v2, v0, v1

    const/16 v1, 0x3bf

    const/16 v2, 0x3bf

    aput-char v2, v0, v1

    const/16 v1, 0x3c0

    .line 648
    const/16 v2, 0x3c0

    aput-char v2, v0, v1

    const/16 v1, 0x3c1

    const/16 v2, 0x3c1

    aput-char v2, v0, v1

    const/16 v1, 0x3c2

    const/16 v2, 0x3c2

    aput-char v2, v0, v1

    const/16 v1, 0x3c3

    const/16 v2, 0x3c3

    aput-char v2, v0, v1

    const/16 v1, 0x3c4

    const/16 v2, 0x3c4

    aput-char v2, v0, v1

    const/16 v1, 0x3c5

    const/16 v2, 0x3c5

    aput-char v2, v0, v1

    const/16 v1, 0x3c6

    const/16 v2, 0x3c6

    aput-char v2, v0, v1

    const/16 v1, 0x3c7

    const/16 v2, 0x3c7

    aput-char v2, v0, v1

    const/16 v1, 0x3c8

    .line 649
    const/16 v2, 0x3c8

    aput-char v2, v0, v1

    const/16 v1, 0x3c9

    const/16 v2, 0x3c9

    aput-char v2, v0, v1

    const/16 v1, 0x3ca

    const/16 v2, 0x3b9

    aput-char v2, v0, v1

    const/16 v1, 0x3cb

    const/16 v2, 0x3c5

    aput-char v2, v0, v1

    const/16 v1, 0x3cc

    const/16 v2, 0x3bf

    aput-char v2, v0, v1

    const/16 v1, 0x3cd

    const/16 v2, 0x3c5

    aput-char v2, v0, v1

    const/16 v1, 0x3ce

    const/16 v2, 0x3c9

    aput-char v2, v0, v1

    const/16 v1, 0x3cf

    const/16 v2, 0x3cf

    aput-char v2, v0, v1

    const/16 v1, 0x3d0

    .line 650
    const/16 v2, 0x3b2

    aput-char v2, v0, v1

    const/16 v1, 0x3d1

    const/16 v2, 0x3b8

    aput-char v2, v0, v1

    const/16 v1, 0x3d2

    const/16 v2, 0x3a5

    aput-char v2, v0, v1

    const/16 v1, 0x3d3

    const/16 v2, 0x3d2

    aput-char v2, v0, v1

    const/16 v1, 0x3d4

    const/16 v2, 0x3d2

    aput-char v2, v0, v1

    const/16 v1, 0x3d5

    const/16 v2, 0x3c6

    aput-char v2, v0, v1

    const/16 v1, 0x3d6

    const/16 v2, 0x3c0

    aput-char v2, v0, v1

    const/16 v1, 0x3d7

    const/16 v2, 0x3d7

    aput-char v2, v0, v1

    const/16 v1, 0x3d8

    .line 651
    const/16 v2, 0x3d8

    aput-char v2, v0, v1

    const/16 v1, 0x3d9

    const/16 v2, 0x3d9

    aput-char v2, v0, v1

    const/16 v1, 0x3da

    const/16 v2, 0x3da

    aput-char v2, v0, v1

    const/16 v1, 0x3db

    const/16 v2, 0x3db

    aput-char v2, v0, v1

    const/16 v1, 0x3dc

    const/16 v2, 0x3dc

    aput-char v2, v0, v1

    const/16 v1, 0x3dd

    const/16 v2, 0x3dd

    aput-char v2, v0, v1

    const/16 v1, 0x3de

    const/16 v2, 0x3de

    aput-char v2, v0, v1

    const/16 v1, 0x3df

    const/16 v2, 0x3df

    aput-char v2, v0, v1

    const/16 v1, 0x3e0

    .line 652
    const/16 v2, 0x3e0

    aput-char v2, v0, v1

    const/16 v1, 0x3e1

    const/16 v2, 0x3e1

    aput-char v2, v0, v1

    const/16 v1, 0x3e2

    const/16 v2, 0x3e2

    aput-char v2, v0, v1

    const/16 v1, 0x3e3

    const/16 v2, 0x3e3

    aput-char v2, v0, v1

    const/16 v1, 0x3e4

    const/16 v2, 0x3e4

    aput-char v2, v0, v1

    const/16 v1, 0x3e5

    const/16 v2, 0x3e5

    aput-char v2, v0, v1

    const/16 v1, 0x3e6

    const/16 v2, 0x3e6

    aput-char v2, v0, v1

    const/16 v1, 0x3e7

    const/16 v2, 0x3e7

    aput-char v2, v0, v1

    const/16 v1, 0x3e8

    .line 653
    const/16 v2, 0x3e8

    aput-char v2, v0, v1

    const/16 v1, 0x3e9

    const/16 v2, 0x3e9

    aput-char v2, v0, v1

    const/16 v1, 0x3ea

    const/16 v2, 0x3ea

    aput-char v2, v0, v1

    const/16 v1, 0x3eb

    const/16 v2, 0x3eb

    aput-char v2, v0, v1

    const/16 v1, 0x3ec

    const/16 v2, 0x3ec

    aput-char v2, v0, v1

    const/16 v1, 0x3ed

    const/16 v2, 0x3ed

    aput-char v2, v0, v1

    const/16 v1, 0x3ee

    const/16 v2, 0x3ee

    aput-char v2, v0, v1

    const/16 v1, 0x3ef

    const/16 v2, 0x3ef

    aput-char v2, v0, v1

    const/16 v1, 0x3f0

    .line 654
    const/16 v2, 0x3ba

    aput-char v2, v0, v1

    const/16 v1, 0x3f1

    const/16 v2, 0x3c1

    aput-char v2, v0, v1

    const/16 v1, 0x3f2

    const/16 v2, 0x3c2

    aput-char v2, v0, v1

    const/16 v1, 0x3f3

    const/16 v2, 0x3f3

    aput-char v2, v0, v1

    const/16 v1, 0x3f4

    const/16 v2, 0x398

    aput-char v2, v0, v1

    const/16 v1, 0x3f5

    const/16 v2, 0x3b5

    aput-char v2, v0, v1

    const/16 v1, 0x3f6

    const/16 v2, 0x3f6

    aput-char v2, v0, v1

    const/16 v1, 0x3f7

    const/16 v2, 0x3f7

    aput-char v2, v0, v1

    const/16 v1, 0x3f8

    .line 655
    const/16 v2, 0x3f8

    aput-char v2, v0, v1

    const/16 v1, 0x3f9

    const/16 v2, 0x3a3

    aput-char v2, v0, v1

    const/16 v1, 0x3fa

    const/16 v2, 0x3fa

    aput-char v2, v0, v1

    const/16 v1, 0x3fb

    const/16 v2, 0x3fb

    aput-char v2, v0, v1

    const/16 v1, 0x3fc

    const/16 v2, 0x3fc

    aput-char v2, v0, v1

    const/16 v1, 0x3fd

    const/16 v2, 0x3fd

    aput-char v2, v0, v1

    const/16 v1, 0x3fe

    const/16 v2, 0x3fe

    aput-char v2, v0, v1

    const/16 v1, 0x3ff

    const/16 v2, 0x3ff

    aput-char v2, v0, v1

    const/16 v1, 0x400

    .line 656
    const/16 v2, 0x415

    aput-char v2, v0, v1

    const/16 v1, 0x401

    const/16 v2, 0x415

    aput-char v2, v0, v1

    const/16 v1, 0x402

    const/16 v2, 0x402

    aput-char v2, v0, v1

    const/16 v1, 0x403

    const/16 v2, 0x413

    aput-char v2, v0, v1

    const/16 v1, 0x404

    const/16 v2, 0x404

    aput-char v2, v0, v1

    const/16 v1, 0x405

    const/16 v2, 0x405

    aput-char v2, v0, v1

    const/16 v1, 0x406

    const/16 v2, 0x406

    aput-char v2, v0, v1

    const/16 v1, 0x407

    const/16 v2, 0x406

    aput-char v2, v0, v1

    const/16 v1, 0x408

    .line 657
    const/16 v2, 0x408

    aput-char v2, v0, v1

    const/16 v1, 0x409

    const/16 v2, 0x409

    aput-char v2, v0, v1

    const/16 v1, 0x40a

    const/16 v2, 0x40a

    aput-char v2, v0, v1

    const/16 v1, 0x40b

    const/16 v2, 0x40b

    aput-char v2, v0, v1

    const/16 v1, 0x40c

    const/16 v2, 0x41a

    aput-char v2, v0, v1

    const/16 v1, 0x40d

    const/16 v2, 0x418

    aput-char v2, v0, v1

    const/16 v1, 0x40e

    const/16 v2, 0x423

    aput-char v2, v0, v1

    const/16 v1, 0x40f

    const/16 v2, 0x40f

    aput-char v2, v0, v1

    const/16 v1, 0x410

    .line 658
    const/16 v2, 0x410

    aput-char v2, v0, v1

    const/16 v1, 0x411

    const/16 v2, 0x411

    aput-char v2, v0, v1

    const/16 v1, 0x412

    const/16 v2, 0x412

    aput-char v2, v0, v1

    const/16 v1, 0x413

    const/16 v2, 0x413

    aput-char v2, v0, v1

    const/16 v1, 0x414

    const/16 v2, 0x414

    aput-char v2, v0, v1

    const/16 v1, 0x415

    const/16 v2, 0x415

    aput-char v2, v0, v1

    const/16 v1, 0x416

    const/16 v2, 0x416

    aput-char v2, v0, v1

    const/16 v1, 0x417

    const/16 v2, 0x417

    aput-char v2, v0, v1

    const/16 v1, 0x418

    .line 659
    const/16 v2, 0x418

    aput-char v2, v0, v1

    const/16 v1, 0x419

    const/16 v2, 0x418

    aput-char v2, v0, v1

    const/16 v1, 0x41a

    const/16 v2, 0x41a

    aput-char v2, v0, v1

    const/16 v1, 0x41b

    const/16 v2, 0x41b

    aput-char v2, v0, v1

    const/16 v1, 0x41c

    const/16 v2, 0x41c

    aput-char v2, v0, v1

    const/16 v1, 0x41d

    const/16 v2, 0x41d

    aput-char v2, v0, v1

    const/16 v1, 0x41e

    const/16 v2, 0x41e

    aput-char v2, v0, v1

    const/16 v1, 0x41f

    const/16 v2, 0x41f

    aput-char v2, v0, v1

    const/16 v1, 0x420

    .line 660
    const/16 v2, 0x420

    aput-char v2, v0, v1

    const/16 v1, 0x421

    const/16 v2, 0x421

    aput-char v2, v0, v1

    const/16 v1, 0x422

    const/16 v2, 0x422

    aput-char v2, v0, v1

    const/16 v1, 0x423

    const/16 v2, 0x423

    aput-char v2, v0, v1

    const/16 v1, 0x424

    const/16 v2, 0x424

    aput-char v2, v0, v1

    const/16 v1, 0x425

    const/16 v2, 0x425

    aput-char v2, v0, v1

    const/16 v1, 0x426

    const/16 v2, 0x426

    aput-char v2, v0, v1

    const/16 v1, 0x427

    const/16 v2, 0x427

    aput-char v2, v0, v1

    const/16 v1, 0x428

    .line 661
    const/16 v2, 0x428

    aput-char v2, v0, v1

    const/16 v1, 0x429

    const/16 v2, 0x429

    aput-char v2, v0, v1

    const/16 v1, 0x42a

    const/16 v2, 0x42a

    aput-char v2, v0, v1

    const/16 v1, 0x42b

    const/16 v2, 0x42b

    aput-char v2, v0, v1

    const/16 v1, 0x42c

    const/16 v2, 0x42c

    aput-char v2, v0, v1

    const/16 v1, 0x42d

    const/16 v2, 0x42d

    aput-char v2, v0, v1

    const/16 v1, 0x42e

    const/16 v2, 0x42e

    aput-char v2, v0, v1

    const/16 v1, 0x42f

    const/16 v2, 0x42f

    aput-char v2, v0, v1

    const/16 v1, 0x430

    .line 662
    const/16 v2, 0x430

    aput-char v2, v0, v1

    const/16 v1, 0x431

    const/16 v2, 0x431

    aput-char v2, v0, v1

    const/16 v1, 0x432

    const/16 v2, 0x432

    aput-char v2, v0, v1

    const/16 v1, 0x433

    const/16 v2, 0x433

    aput-char v2, v0, v1

    const/16 v1, 0x434

    const/16 v2, 0x434

    aput-char v2, v0, v1

    const/16 v1, 0x435

    const/16 v2, 0x435

    aput-char v2, v0, v1

    const/16 v1, 0x436

    const/16 v2, 0x436

    aput-char v2, v0, v1

    const/16 v1, 0x437

    const/16 v2, 0x437

    aput-char v2, v0, v1

    const/16 v1, 0x438

    .line 663
    const/16 v2, 0x438

    aput-char v2, v0, v1

    const/16 v1, 0x439

    const/16 v2, 0x438

    aput-char v2, v0, v1

    const/16 v1, 0x43a

    const/16 v2, 0x43a

    aput-char v2, v0, v1

    const/16 v1, 0x43b

    const/16 v2, 0x43b

    aput-char v2, v0, v1

    const/16 v1, 0x43c

    const/16 v2, 0x43c

    aput-char v2, v0, v1

    const/16 v1, 0x43d

    const/16 v2, 0x43d

    aput-char v2, v0, v1

    const/16 v1, 0x43e

    const/16 v2, 0x43e

    aput-char v2, v0, v1

    const/16 v1, 0x43f

    const/16 v2, 0x43f

    aput-char v2, v0, v1

    const/16 v1, 0x440

    .line 664
    const/16 v2, 0x440

    aput-char v2, v0, v1

    const/16 v1, 0x441

    const/16 v2, 0x441

    aput-char v2, v0, v1

    const/16 v1, 0x442

    const/16 v2, 0x442

    aput-char v2, v0, v1

    const/16 v1, 0x443

    const/16 v2, 0x443

    aput-char v2, v0, v1

    const/16 v1, 0x444

    const/16 v2, 0x444

    aput-char v2, v0, v1

    const/16 v1, 0x445

    const/16 v2, 0x445

    aput-char v2, v0, v1

    const/16 v1, 0x446

    const/16 v2, 0x446

    aput-char v2, v0, v1

    const/16 v1, 0x447

    const/16 v2, 0x447

    aput-char v2, v0, v1

    const/16 v1, 0x448

    .line 665
    const/16 v2, 0x448

    aput-char v2, v0, v1

    const/16 v1, 0x449

    const/16 v2, 0x449

    aput-char v2, v0, v1

    const/16 v1, 0x44a

    const/16 v2, 0x44a

    aput-char v2, v0, v1

    const/16 v1, 0x44b

    const/16 v2, 0x44b

    aput-char v2, v0, v1

    const/16 v1, 0x44c

    const/16 v2, 0x44c

    aput-char v2, v0, v1

    const/16 v1, 0x44d

    const/16 v2, 0x44d

    aput-char v2, v0, v1

    const/16 v1, 0x44e

    const/16 v2, 0x44e

    aput-char v2, v0, v1

    const/16 v1, 0x44f

    const/16 v2, 0x44f

    aput-char v2, v0, v1

    const/16 v1, 0x450

    .line 666
    const/16 v2, 0x435

    aput-char v2, v0, v1

    const/16 v1, 0x451

    const/16 v2, 0x435

    aput-char v2, v0, v1

    const/16 v1, 0x452

    const/16 v2, 0x452

    aput-char v2, v0, v1

    const/16 v1, 0x453

    const/16 v2, 0x433

    aput-char v2, v0, v1

    const/16 v1, 0x454

    const/16 v2, 0x454

    aput-char v2, v0, v1

    const/16 v1, 0x455

    const/16 v2, 0x455

    aput-char v2, v0, v1

    const/16 v1, 0x456

    const/16 v2, 0x456

    aput-char v2, v0, v1

    const/16 v1, 0x457

    const/16 v2, 0x456

    aput-char v2, v0, v1

    const/16 v1, 0x458

    .line 667
    const/16 v2, 0x458

    aput-char v2, v0, v1

    const/16 v1, 0x459

    const/16 v2, 0x459

    aput-char v2, v0, v1

    const/16 v1, 0x45a

    const/16 v2, 0x45a

    aput-char v2, v0, v1

    const/16 v1, 0x45b

    const/16 v2, 0x45b

    aput-char v2, v0, v1

    const/16 v1, 0x45c

    const/16 v2, 0x43a

    aput-char v2, v0, v1

    const/16 v1, 0x45d

    const/16 v2, 0x438

    aput-char v2, v0, v1

    const/16 v1, 0x45e

    const/16 v2, 0x443

    aput-char v2, v0, v1

    const/16 v1, 0x45f

    const/16 v2, 0x45f

    aput-char v2, v0, v1

    const/16 v1, 0x460

    .line 668
    const/16 v2, 0x460

    aput-char v2, v0, v1

    const/16 v1, 0x461

    const/16 v2, 0x461

    aput-char v2, v0, v1

    const/16 v1, 0x462

    const/16 v2, 0x462

    aput-char v2, v0, v1

    const/16 v1, 0x463

    const/16 v2, 0x463

    aput-char v2, v0, v1

    const/16 v1, 0x464

    const/16 v2, 0x464

    aput-char v2, v0, v1

    const/16 v1, 0x465

    const/16 v2, 0x465

    aput-char v2, v0, v1

    const/16 v1, 0x466

    const/16 v2, 0x466

    aput-char v2, v0, v1

    const/16 v1, 0x467

    const/16 v2, 0x467

    aput-char v2, v0, v1

    const/16 v1, 0x468

    .line 669
    const/16 v2, 0x468

    aput-char v2, v0, v1

    const/16 v1, 0x469

    const/16 v2, 0x469

    aput-char v2, v0, v1

    const/16 v1, 0x46a

    const/16 v2, 0x46a

    aput-char v2, v0, v1

    const/16 v1, 0x46b

    const/16 v2, 0x46b

    aput-char v2, v0, v1

    const/16 v1, 0x46c

    const/16 v2, 0x46c

    aput-char v2, v0, v1

    const/16 v1, 0x46d

    const/16 v2, 0x46d

    aput-char v2, v0, v1

    const/16 v1, 0x46e

    const/16 v2, 0x46e

    aput-char v2, v0, v1

    const/16 v1, 0x46f

    const/16 v2, 0x46f

    aput-char v2, v0, v1

    const/16 v1, 0x470

    .line 670
    const/16 v2, 0x470

    aput-char v2, v0, v1

    const/16 v1, 0x471

    const/16 v2, 0x471

    aput-char v2, v0, v1

    const/16 v1, 0x472

    const/16 v2, 0x472

    aput-char v2, v0, v1

    const/16 v1, 0x473

    const/16 v2, 0x473

    aput-char v2, v0, v1

    const/16 v1, 0x474

    const/16 v2, 0x474

    aput-char v2, v0, v1

    const/16 v1, 0x475

    const/16 v2, 0x475

    aput-char v2, v0, v1

    const/16 v1, 0x476

    const/16 v2, 0x474

    aput-char v2, v0, v1

    const/16 v1, 0x477

    const/16 v2, 0x475

    aput-char v2, v0, v1

    const/16 v1, 0x478

    .line 671
    const/16 v2, 0x478

    aput-char v2, v0, v1

    const/16 v1, 0x479

    const/16 v2, 0x479

    aput-char v2, v0, v1

    const/16 v1, 0x47a

    const/16 v2, 0x47a

    aput-char v2, v0, v1

    const/16 v1, 0x47b

    const/16 v2, 0x47b

    aput-char v2, v0, v1

    const/16 v1, 0x47c

    const/16 v2, 0x47c

    aput-char v2, v0, v1

    const/16 v1, 0x47d

    const/16 v2, 0x47d

    aput-char v2, v0, v1

    const/16 v1, 0x47e

    const/16 v2, 0x47e

    aput-char v2, v0, v1

    const/16 v1, 0x47f

    const/16 v2, 0x47f

    aput-char v2, v0, v1

    const/16 v1, 0x480

    .line 672
    const/16 v2, 0x480

    aput-char v2, v0, v1

    const/16 v1, 0x481

    const/16 v2, 0x481

    aput-char v2, v0, v1

    const/16 v1, 0x482

    const/16 v2, 0x482

    aput-char v2, v0, v1

    const/16 v1, 0x483

    const/16 v2, 0x483

    aput-char v2, v0, v1

    const/16 v1, 0x484

    const/16 v2, 0x484

    aput-char v2, v0, v1

    const/16 v1, 0x485

    const/16 v2, 0x485

    aput-char v2, v0, v1

    const/16 v1, 0x486

    const/16 v2, 0x486

    aput-char v2, v0, v1

    const/16 v1, 0x487

    const/16 v2, 0x487

    aput-char v2, v0, v1

    const/16 v1, 0x488

    .line 673
    const/16 v2, 0x488

    aput-char v2, v0, v1

    const/16 v1, 0x489

    const/16 v2, 0x489

    aput-char v2, v0, v1

    const/16 v1, 0x48a

    const/16 v2, 0x48a

    aput-char v2, v0, v1

    const/16 v1, 0x48b

    const/16 v2, 0x48b

    aput-char v2, v0, v1

    const/16 v1, 0x48c

    const/16 v2, 0x48c

    aput-char v2, v0, v1

    const/16 v1, 0x48d

    const/16 v2, 0x48d

    aput-char v2, v0, v1

    const/16 v1, 0x48e

    const/16 v2, 0x48e

    aput-char v2, v0, v1

    const/16 v1, 0x48f

    const/16 v2, 0x48f

    aput-char v2, v0, v1

    const/16 v1, 0x490

    .line 674
    const/16 v2, 0x490

    aput-char v2, v0, v1

    const/16 v1, 0x491

    const/16 v2, 0x491

    aput-char v2, v0, v1

    const/16 v1, 0x492

    const/16 v2, 0x492

    aput-char v2, v0, v1

    const/16 v1, 0x493

    const/16 v2, 0x493

    aput-char v2, v0, v1

    const/16 v1, 0x494

    const/16 v2, 0x494

    aput-char v2, v0, v1

    const/16 v1, 0x495

    const/16 v2, 0x495

    aput-char v2, v0, v1

    const/16 v1, 0x496

    const/16 v2, 0x496

    aput-char v2, v0, v1

    const/16 v1, 0x497

    const/16 v2, 0x497

    aput-char v2, v0, v1

    const/16 v1, 0x498

    .line 675
    const/16 v2, 0x498

    aput-char v2, v0, v1

    const/16 v1, 0x499

    const/16 v2, 0x499

    aput-char v2, v0, v1

    const/16 v1, 0x49a

    const/16 v2, 0x49a

    aput-char v2, v0, v1

    const/16 v1, 0x49b

    const/16 v2, 0x49b

    aput-char v2, v0, v1

    const/16 v1, 0x49c

    const/16 v2, 0x49c

    aput-char v2, v0, v1

    const/16 v1, 0x49d

    const/16 v2, 0x49d

    aput-char v2, v0, v1

    const/16 v1, 0x49e

    const/16 v2, 0x49e

    aput-char v2, v0, v1

    const/16 v1, 0x49f

    const/16 v2, 0x49f

    aput-char v2, v0, v1

    const/16 v1, 0x4a0

    .line 676
    const/16 v2, 0x4a0

    aput-char v2, v0, v1

    const/16 v1, 0x4a1

    const/16 v2, 0x4a1

    aput-char v2, v0, v1

    const/16 v1, 0x4a2

    const/16 v2, 0x4a2

    aput-char v2, v0, v1

    const/16 v1, 0x4a3

    const/16 v2, 0x4a3

    aput-char v2, v0, v1

    const/16 v1, 0x4a4

    const/16 v2, 0x4a4

    aput-char v2, v0, v1

    const/16 v1, 0x4a5

    const/16 v2, 0x4a5

    aput-char v2, v0, v1

    const/16 v1, 0x4a6

    const/16 v2, 0x4a6

    aput-char v2, v0, v1

    const/16 v1, 0x4a7

    const/16 v2, 0x4a7

    aput-char v2, v0, v1

    const/16 v1, 0x4a8

    .line 677
    const/16 v2, 0x4a8

    aput-char v2, v0, v1

    const/16 v1, 0x4a9

    const/16 v2, 0x4a9

    aput-char v2, v0, v1

    const/16 v1, 0x4aa

    const/16 v2, 0x4aa

    aput-char v2, v0, v1

    const/16 v1, 0x4ab

    const/16 v2, 0x4ab

    aput-char v2, v0, v1

    const/16 v1, 0x4ac

    const/16 v2, 0x4ac

    aput-char v2, v0, v1

    const/16 v1, 0x4ad

    const/16 v2, 0x4ad

    aput-char v2, v0, v1

    const/16 v1, 0x4ae

    const/16 v2, 0x4ae

    aput-char v2, v0, v1

    const/16 v1, 0x4af

    const/16 v2, 0x4af

    aput-char v2, v0, v1

    const/16 v1, 0x4b0

    .line 678
    const/16 v2, 0x4b0

    aput-char v2, v0, v1

    const/16 v1, 0x4b1

    const/16 v2, 0x4b1

    aput-char v2, v0, v1

    const/16 v1, 0x4b2

    const/16 v2, 0x4b2

    aput-char v2, v0, v1

    const/16 v1, 0x4b3

    const/16 v2, 0x4b3

    aput-char v2, v0, v1

    const/16 v1, 0x4b4

    const/16 v2, 0x4b4

    aput-char v2, v0, v1

    const/16 v1, 0x4b5

    const/16 v2, 0x4b5

    aput-char v2, v0, v1

    const/16 v1, 0x4b6

    const/16 v2, 0x4b6

    aput-char v2, v0, v1

    const/16 v1, 0x4b7

    const/16 v2, 0x4b7

    aput-char v2, v0, v1

    const/16 v1, 0x4b8

    .line 679
    const/16 v2, 0x4b8

    aput-char v2, v0, v1

    const/16 v1, 0x4b9

    const/16 v2, 0x4b9

    aput-char v2, v0, v1

    const/16 v1, 0x4ba

    const/16 v2, 0x4ba

    aput-char v2, v0, v1

    const/16 v1, 0x4bb

    const/16 v2, 0x4bb

    aput-char v2, v0, v1

    const/16 v1, 0x4bc

    const/16 v2, 0x4bc

    aput-char v2, v0, v1

    const/16 v1, 0x4bd

    const/16 v2, 0x4bd

    aput-char v2, v0, v1

    const/16 v1, 0x4be

    const/16 v2, 0x4be

    aput-char v2, v0, v1

    const/16 v1, 0x4bf

    const/16 v2, 0x4bf

    aput-char v2, v0, v1

    const/16 v1, 0x4c0

    .line 680
    const/16 v2, 0x4c0

    aput-char v2, v0, v1

    const/16 v1, 0x4c1

    const/16 v2, 0x416

    aput-char v2, v0, v1

    const/16 v1, 0x4c2

    const/16 v2, 0x436

    aput-char v2, v0, v1

    const/16 v1, 0x4c3

    const/16 v2, 0x4c3

    aput-char v2, v0, v1

    const/16 v1, 0x4c4

    const/16 v2, 0x4c4

    aput-char v2, v0, v1

    const/16 v1, 0x4c5

    const/16 v2, 0x4c5

    aput-char v2, v0, v1

    const/16 v1, 0x4c6

    const/16 v2, 0x4c6

    aput-char v2, v0, v1

    const/16 v1, 0x4c7

    const/16 v2, 0x4c7

    aput-char v2, v0, v1

    const/16 v1, 0x4c8

    .line 681
    const/16 v2, 0x4c8

    aput-char v2, v0, v1

    const/16 v1, 0x4c9

    const/16 v2, 0x4c9

    aput-char v2, v0, v1

    const/16 v1, 0x4ca

    const/16 v2, 0x4ca

    aput-char v2, v0, v1

    const/16 v1, 0x4cb

    const/16 v2, 0x4cb

    aput-char v2, v0, v1

    const/16 v1, 0x4cc

    const/16 v2, 0x4cc

    aput-char v2, v0, v1

    const/16 v1, 0x4cd

    const/16 v2, 0x4cd

    aput-char v2, v0, v1

    const/16 v1, 0x4ce

    const/16 v2, 0x4ce

    aput-char v2, v0, v1

    const/16 v1, 0x4cf

    const/16 v2, 0x4cf

    aput-char v2, v0, v1

    const/16 v1, 0x4d0

    .line 682
    const/16 v2, 0x410

    aput-char v2, v0, v1

    const/16 v1, 0x4d1

    const/16 v2, 0x430

    aput-char v2, v0, v1

    const/16 v1, 0x4d2

    const/16 v2, 0x410

    aput-char v2, v0, v1

    const/16 v1, 0x4d3

    const/16 v2, 0x430

    aput-char v2, v0, v1

    const/16 v1, 0x4d4

    const/16 v2, 0x4d4

    aput-char v2, v0, v1

    const/16 v1, 0x4d5

    const/16 v2, 0x4d5

    aput-char v2, v0, v1

    const/16 v1, 0x4d6

    const/16 v2, 0x415

    aput-char v2, v0, v1

    const/16 v1, 0x4d7

    const/16 v2, 0x435

    aput-char v2, v0, v1

    const/16 v1, 0x4d8

    .line 683
    const/16 v2, 0x4d8

    aput-char v2, v0, v1

    const/16 v1, 0x4d9

    const/16 v2, 0x4d9

    aput-char v2, v0, v1

    const/16 v1, 0x4da

    const/16 v2, 0x4d8

    aput-char v2, v0, v1

    const/16 v1, 0x4db

    const/16 v2, 0x4d9

    aput-char v2, v0, v1

    const/16 v1, 0x4dc

    const/16 v2, 0x416

    aput-char v2, v0, v1

    const/16 v1, 0x4dd

    const/16 v2, 0x436

    aput-char v2, v0, v1

    const/16 v1, 0x4de

    const/16 v2, 0x417

    aput-char v2, v0, v1

    const/16 v1, 0x4df

    const/16 v2, 0x437

    aput-char v2, v0, v1

    const/16 v1, 0x4e0

    .line 684
    const/16 v2, 0x4e0

    aput-char v2, v0, v1

    const/16 v1, 0x4e1

    const/16 v2, 0x4e1

    aput-char v2, v0, v1

    const/16 v1, 0x4e2

    const/16 v2, 0x418

    aput-char v2, v0, v1

    const/16 v1, 0x4e3

    const/16 v2, 0x438

    aput-char v2, v0, v1

    const/16 v1, 0x4e4

    const/16 v2, 0x418

    aput-char v2, v0, v1

    const/16 v1, 0x4e5

    const/16 v2, 0x438

    aput-char v2, v0, v1

    const/16 v1, 0x4e6

    const/16 v2, 0x41e

    aput-char v2, v0, v1

    const/16 v1, 0x4e7

    const/16 v2, 0x43e

    aput-char v2, v0, v1

    const/16 v1, 0x4e8

    .line 685
    const/16 v2, 0x4e8

    aput-char v2, v0, v1

    const/16 v1, 0x4e9

    const/16 v2, 0x4e9

    aput-char v2, v0, v1

    const/16 v1, 0x4ea

    const/16 v2, 0x4e8

    aput-char v2, v0, v1

    const/16 v1, 0x4eb

    const/16 v2, 0x4e9

    aput-char v2, v0, v1

    const/16 v1, 0x4ec

    const/16 v2, 0x42d

    aput-char v2, v0, v1

    const/16 v1, 0x4ed

    const/16 v2, 0x44d

    aput-char v2, v0, v1

    const/16 v1, 0x4ee

    const/16 v2, 0x423

    aput-char v2, v0, v1

    const/16 v1, 0x4ef

    const/16 v2, 0x443

    aput-char v2, v0, v1

    const/16 v1, 0x4f0

    .line 686
    const/16 v2, 0x423

    aput-char v2, v0, v1

    const/16 v1, 0x4f1

    const/16 v2, 0x443

    aput-char v2, v0, v1

    const/16 v1, 0x4f2

    const/16 v2, 0x423

    aput-char v2, v0, v1

    const/16 v1, 0x4f3

    const/16 v2, 0x443

    aput-char v2, v0, v1

    const/16 v1, 0x4f4

    const/16 v2, 0x427

    aput-char v2, v0, v1

    const/16 v1, 0x4f5

    const/16 v2, 0x447

    aput-char v2, v0, v1

    const/16 v1, 0x4f6

    const/16 v2, 0x4f6

    aput-char v2, v0, v1

    const/16 v1, 0x4f7

    const/16 v2, 0x4f7

    aput-char v2, v0, v1

    const/16 v1, 0x4f8

    .line 687
    const/16 v2, 0x42b

    aput-char v2, v0, v1

    const/16 v1, 0x4f9

    const/16 v2, 0x44b

    aput-char v2, v0, v1

    const/16 v1, 0x4fa

    const/16 v2, 0x4fa

    aput-char v2, v0, v1

    const/16 v1, 0x4fb

    const/16 v2, 0x4fb

    aput-char v2, v0, v1

    const/16 v1, 0x4fc

    const/16 v2, 0x4fc

    aput-char v2, v0, v1

    const/16 v1, 0x4fd

    const/16 v2, 0x4fd

    aput-char v2, v0, v1

    const/16 v1, 0x4fe

    const/16 v2, 0x4fe

    aput-char v2, v0, v1

    const/16 v1, 0x4ff

    const/16 v2, 0x4ff

    aput-char v2, v0, v1

    .line 526
    sput-object v0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->BASE_CHARS:[C

    .line 688
    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dicTypeId"    # I

    .prologue
    const/16 v1, 0x20

    .line 99
    invoke-direct {p0}, Lnet/hasnath/android/keyboard/Dictionary;-><init>()V

    .line 37
    new-array v0, v1, [C

    iput-object v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mWordBuilder:[C

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->sb:Ljava/lang/StringBuilder;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    .line 100
    iput-object p1, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->clearDictionary()V

    .line 102
    new-array v0, v1, [[I

    iput-object v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mCodes:[[I

    .line 103
    iput p2, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mDicTypeId:I

    .line 104
    return-void
.end method

.method static synthetic access$0(Lnet/hasnath/android/keyboard/ExpandableDictionary;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1(Lnet/hasnath/android/keyboard/ExpandableDictionary;Z)V
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mUpdatingDictionary:Z

    return-void
.end method

.method private addOrSetBigram(Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 7
    .param p1, "word1"    # Ljava/lang/String;
    .param p2, "word2"    # Ljava/lang/String;
    .param p3, "frequency"    # I
    .param p4, "addFrequency"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 342
    iget-object v4, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mRoots:Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;

    invoke-direct {p0, v4, p1, v5, v6}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->searchWord(Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;Ljava/lang/String;ILnet/hasnath/android/keyboard/ExpandableDictionary$Node;)Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;

    move-result-object v1

    .line 343
    .local v1, "firstWord":Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;
    iget-object v4, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mRoots:Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;

    invoke-direct {p0, v4, p2, v5, v6}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->searchWord(Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;Ljava/lang/String;ILnet/hasnath/android/keyboard/ExpandableDictionary$Node;)Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;

    move-result-object v3

    .line 344
    .local v3, "secondWord":Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;
    iget-object v0, v1, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->ngrams:Ljava/util/LinkedList;

    .line 345
    .local v0, "bigram":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lnet/hasnath/android/keyboard/ExpandableDictionary$NextWord;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 346
    :cond_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v1, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->ngrams:Ljava/util/LinkedList;

    .line 347
    iget-object v0, v1, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->ngrams:Ljava/util/LinkedList;

    .line 360
    :cond_1
    new-instance v2, Lnet/hasnath/android/keyboard/ExpandableDictionary$NextWord;

    invoke-direct {v2, v3, p3}, Lnet/hasnath/android/keyboard/ExpandableDictionary$NextWord;-><init>(Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;I)V

    .line 361
    .local v2, "nw":Lnet/hasnath/android/keyboard/ExpandableDictionary$NextWord;
    iget-object v4, v1, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->ngrams:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 362
    .end local p3    # "frequency":I
    :goto_0
    return p3

    .line 349
    .end local v2    # "nw":Lnet/hasnath/android/keyboard/ExpandableDictionary$NextWord;
    .restart local p3    # "frequency":I
    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/hasnath/android/keyboard/ExpandableDictionary$NextWord;

    .line 350
    .restart local v2    # "nw":Lnet/hasnath/android/keyboard/ExpandableDictionary$NextWord;
    iget-object v5, v2, Lnet/hasnath/android/keyboard/ExpandableDictionary$NextWord;->word:Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;

    if-ne v5, v3, :cond_3

    .line 351
    if-eqz p4, :cond_4

    .line 352
    iget v4, v2, Lnet/hasnath/android/keyboard/ExpandableDictionary$NextWord;->frequency:I

    add-int/2addr v4, p3

    iput v4, v2, Lnet/hasnath/android/keyboard/ExpandableDictionary$NextWord;->frequency:I

    .line 356
    :goto_1
    iget p3, v2, Lnet/hasnath/android/keyboard/ExpandableDictionary$NextWord;->frequency:I

    goto :goto_0

    .line 354
    :cond_4
    iput p3, v2, Lnet/hasnath/android/keyboard/ExpandableDictionary$NextWord;->frequency:I

    goto :goto_1
.end method

.method private addWordRec(Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;Ljava/lang/String;IILnet/hasnath/android/keyboard/ExpandableDictionary$Node;)V
    .locals 12
    .param p1, "children"    # Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "depth"    # I
    .param p4, "frequency"    # I
    .param p5, "parentNode"    # Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;

    .prologue
    .line 148
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v11

    .line 149
    .local v11, "wordLength":I
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 151
    .local v7, "c":C
    iget v8, p1, Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;->length:I

    .line 152
    .local v8, "childrenLength":I
    const/4 v6, 0x0

    .line 153
    .local v6, "childNode":Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;
    const/4 v9, 0x0

    .line 154
    .local v9, "found":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-lt v10, v8, :cond_2

    .line 161
    :goto_1
    if-nez v9, :cond_0

    .line 162
    new-instance v6, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;

    .end local v6    # "childNode":Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;
    invoke-direct {v6}, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;-><init>()V

    .line 163
    .restart local v6    # "childNode":Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;
    iput-char v7, v6, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->code:C

    .line 164
    move-object/from16 v0, p5

    iput-object v0, v6, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->parent:Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;

    .line 165
    invoke-virtual {p1, v6}, Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;->add(Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;)V

    .line 167
    :cond_0
    add-int/lit8 v1, p3, 0x1

    if-ne v11, v1, :cond_4

    .line 169
    const/4 v1, 0x1

    iput-boolean v1, v6, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->terminal:Z

    .line 170
    iget v1, v6, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->frequency:I

    move/from16 v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v6, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->frequency:I

    .line 171
    iget v1, v6, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->frequency:I

    const/16 v2, 0xff

    if-le v1, v2, :cond_1

    const/16 v1, 0xff

    iput v1, v6, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->frequency:I

    .line 178
    :cond_1
    :goto_2
    return-void

    .line 155
    :cond_2
    iget-object v1, p1, Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;->data:[Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;

    aget-object v6, v1, v10

    .line 156
    iget-char v1, v6, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->code:C

    if-ne v1, v7, :cond_3

    .line 157
    const/4 v9, 0x1

    .line 158
    goto :goto_1

    .line 154
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 174
    :cond_4
    iget-object v1, v6, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->children:Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;

    if-nez v1, :cond_5

    .line 175
    new-instance v1, Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;

    invoke-direct {v1}, Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;-><init>()V

    iput-object v1, v6, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->children:Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;

    .line 177
    :cond_5
    iget-object v2, v6, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->children:Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;

    add-int/lit8 v4, p3, 0x1

    move-object v1, p0

    move-object v3, p2

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->addWordRec(Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;Ljava/lang/String;IILnet/hasnath/android/keyboard/ExpandableDictionary$Node;)V

    goto :goto_2
.end method

.method private reverseLookUp(Ljava/util/LinkedList;Lnet/hasnath/android/keyboard/Dictionary$WordCallback;)V
    .locals 10
    .param p2, "callback"    # Lnet/hasnath/android/keyboard/Dictionary$WordCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lnet/hasnath/android/keyboard/ExpandableDictionary$NextWord;",
            ">;",
            "Lnet/hasnath/android/keyboard/Dictionary$WordCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "terminalNodes":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lnet/hasnath/android/keyboard/ExpandableDictionary$NextWord;>;"
    const/4 v2, 0x0

    .line 447
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 464
    return-void

    .line 447
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/hasnath/android/keyboard/ExpandableDictionary$NextWord;

    .line 448
    .local v7, "nextWord":Lnet/hasnath/android/keyboard/ExpandableDictionary$NextWord;
    iget-object v8, v7, Lnet/hasnath/android/keyboard/ExpandableDictionary$NextWord;->word:Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;

    .line 449
    .local v8, "node":Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;
    iget v4, v7, Lnet/hasnath/android/keyboard/ExpandableDictionary$NextWord;->frequency:I

    .line 452
    .local v4, "freq":I
    const/16 v0, 0xc

    if-lt v4, v0, :cond_0

    .line 453
    iget-object v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 455
    :cond_2
    iget-object v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->sb:Ljava/lang/StringBuilder;

    iget-char v1, v8, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->code:C

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 456
    iget-object v8, v8, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->parent:Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;

    .line 457
    if-nez v8, :cond_2

    .line 460
    iget-object v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    iget v5, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mDicTypeId:I

    .line 461
    sget-object v6, Lnet/hasnath/android/keyboard/Dictionary$DataType;->BIGRAM:Lnet/hasnath/android/keyboard/Dictionary$DataType;

    move-object v0, p2

    .line 460
    invoke-interface/range {v0 .. v6}, Lnet/hasnath/android/keyboard/Dictionary$WordCallback;->addWord([CIIIILnet/hasnath/android/keyboard/Dictionary$DataType;)Z

    goto :goto_0
.end method

.method private runReverseLookUp(Ljava/lang/CharSequence;Lnet/hasnath/android/keyboard/Dictionary$WordCallback;)V
    .locals 4
    .param p1, "previousWord"    # Ljava/lang/CharSequence;
    .param p2, "callback"    # Lnet/hasnath/android/keyboard/Dictionary$WordCallback;

    .prologue
    .line 411
    iget-object v1, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mRoots:Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {p0, v1, p1, v2, v3}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->searchNode(Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;Ljava/lang/CharSequence;II)Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;

    move-result-object v0

    .line 412
    .local v0, "prevWord":Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->ngrams:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, v0, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->ngrams:Ljava/util/LinkedList;

    invoke-direct {p0, v1, p2}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->reverseLookUp(Ljava/util/LinkedList;Lnet/hasnath/android/keyboard/Dictionary$WordCallback;)V

    .line 415
    :cond_0
    return-void
.end method

.method private searchNode(Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;Ljava/lang/CharSequence;II)Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;
    .locals 7
    .param p1, "children"    # Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;
    .param p2, "word"    # Ljava/lang/CharSequence;
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .prologue
    .line 473
    iget v0, p1, Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;->length:I

    .line 474
    .local v0, "count":I
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 475
    .local v1, "currentChar":C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-lt v2, v0, :cond_1

    .line 490
    const/4 v3, 0x0

    :cond_0
    :goto_1
    return-object v3

    .line 476
    :cond_1
    iget-object v5, p1, Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;->data:[Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;

    aget-object v3, v5, v2

    .line 477
    .local v3, "node":Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;
    iget-char v5, v3, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->code:C

    if-ne v5, v1, :cond_2

    .line 478
    add-int/lit8 v5, p4, -0x1

    if-ne p3, v5, :cond_3

    .line 479
    iget-boolean v5, v3, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->terminal:Z

    if-nez v5, :cond_0

    .line 475
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 483
    :cond_3
    iget-object v5, v3, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->children:Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;

    if-eqz v5, :cond_2

    .line 484
    iget-object v5, v3, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->children:Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;

    add-int/lit8 v6, p3, 0x1

    invoke-direct {p0, v5, p2, v6, p4}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->searchNode(Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;Ljava/lang/CharSequence;II)Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;

    move-result-object v4

    .line 485
    .local v4, "returnNode":Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;
    if-eqz v4, :cond_2

    move-object v3, v4

    goto :goto_1
.end method

.method private searchWord(Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;Ljava/lang/String;ILnet/hasnath/android/keyboard/ExpandableDictionary$Node;)Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;
    .locals 8
    .param p1, "children"    # Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;
    .param p2, "word"    # Ljava/lang/String;
    .param p3, "depth"    # I
    .param p4, "parentNode"    # Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;

    .prologue
    .line 370
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 371
    .local v5, "wordLength":I
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 373
    .local v0, "c":C
    iget v2, p1, Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;->length:I

    .line 374
    .local v2, "childrenLength":I
    const/4 v1, 0x0

    .line 375
    .local v1, "childNode":Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;
    const/4 v3, 0x0

    .line 376
    .local v3, "found":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v2, :cond_1

    .line 383
    :goto_1
    if-nez v3, :cond_0

    .line 384
    new-instance v1, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;

    .end local v1    # "childNode":Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;
    invoke-direct {v1}, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;-><init>()V

    .line 385
    .restart local v1    # "childNode":Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;
    iput-char v0, v1, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->code:C

    .line 386
    iput-object p4, v1, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->parent:Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;

    .line 387
    invoke-virtual {p1, v1}, Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;->add(Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;)V

    .line 389
    :cond_0
    add-int/lit8 v6, p3, 0x1

    if-ne v5, v6, :cond_3

    .line 391
    const/4 v6, 0x1

    iput-boolean v6, v1, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->terminal:Z

    .line 397
    .end local v1    # "childNode":Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;
    :goto_2
    return-object v1

    .line 377
    .restart local v1    # "childNode":Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;
    :cond_1
    iget-object v6, p1, Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;->data:[Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;

    aget-object v1, v6, v4

    .line 378
    iget-char v6, v1, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->code:C

    if-ne v6, v0, :cond_2

    .line 379
    const/4 v3, 0x1

    .line 380
    goto :goto_1

    .line 376
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 394
    :cond_3
    iget-object v6, v1, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->children:Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;

    if-nez v6, :cond_4

    .line 395
    new-instance v6, Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;

    invoke-direct {v6}, Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;-><init>()V

    iput-object v6, v1, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->children:Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;

    .line 397
    :cond_4
    iget-object v6, v1, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->children:Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;

    add-int/lit8 v7, p3, 0x1

    invoke-direct {p0, v6, p2, v7, v1}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->searchWord(Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;Ljava/lang/String;ILnet/hasnath/android/keyboard/ExpandableDictionary$Node;)Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;

    move-result-object v1

    goto :goto_2
.end method

.method static toLowerCase(C)C
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 509
    sget-object v0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->BASE_CHARS:[C

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 510
    sget-object v0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->BASE_CHARS:[C

    aget-char p0, v0, p0

    .line 512
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    .line 513
    or-int/lit8 v0, p0, 0x20

    int-to-char p0, v0

    .line 517
    :cond_1
    :goto_0
    return p0

    .line 514
    :cond_2
    const/16 v0, 0x7f

    if-le p0, v0, :cond_1

    .line 515
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    goto :goto_0
.end method


# virtual methods
.method protected addBigram(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "word1"    # Ljava/lang/String;
    .param p2, "word2"    # Ljava/lang/String;
    .param p3, "frequency"    # I

    .prologue
    .line 332
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->addOrSetBigram(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public addWord(Ljava/lang/String;I)V
    .locals 6
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "frequency"    # I

    .prologue
    .line 143
    iget-object v1, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mRoots:Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->addWordRec(Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;Ljava/lang/String;IILnet/hasnath/android/keyboard/ExpandableDictionary$Node;)V

    .line 144
    return-void
.end method

.method protected clearDictionary()V
    .locals 1

    .prologue
    .line 494
    new-instance v0, Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;

    invoke-direct {v0}, Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mRoots:Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;

    .line 495
    return-void
.end method

.method public getBigrams(Lnet/hasnath/android/keyboard/WordComposer;Ljava/lang/CharSequence;Lnet/hasnath/android/keyboard/Dictionary$WordCallback;[I)V
    .locals 1
    .param p1, "codes"    # Lnet/hasnath/android/keyboard/WordComposer;
    .param p2, "previousWord"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Lnet/hasnath/android/keyboard/Dictionary$WordCallback;
    .param p4, "nextLettersFrequencies"    # [I

    .prologue
    .line 420
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->reloadDictionaryIfRequired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    invoke-direct {p0, p2, p3}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->runReverseLookUp(Ljava/lang/CharSequence;Lnet/hasnath/android/keyboard/Dictionary$WordCallback;)V

    .line 423
    :cond_0
    return-void
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getMaxWordLength()I
    .locals 1

    .prologue
    .line 139
    const/16 v0, 0x20

    return v0
.end method

.method public getRequiresReload()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mRequiresReload:Z

    return v0
.end method

.method public getWordFrequency(Ljava/lang/CharSequence;)I
    .locals 4
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 219
    iget-object v1, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mRoots:Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {p0, v1, p1, v2, v3}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->searchNode(Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;Ljava/lang/CharSequence;II)Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;

    move-result-object v0

    .line 220
    .local v0, "node":Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->frequency:I

    goto :goto_0
.end method

.method public getWords(Lnet/hasnath/android/keyboard/WordComposer;Lnet/hasnath/android/keyboard/Dictionary$WordCallback;[I)V
    .locals 10
    .param p1, "codes"    # Lnet/hasnath/android/keyboard/WordComposer;
    .param p2, "callback"    # Lnet/hasnath/android/keyboard/Dictionary$WordCallback;
    .param p3, "nextLettersFrequencies"    # [I

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 183
    iget-object v1, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mRequiresReload:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 187
    :cond_0
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mUpdatingDictionary:Z

    if-eqz v0, :cond_2

    monitor-exit v1

    .line 202
    :cond_1
    return-void

    .line 183
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-virtual {p1}, Lnet/hasnath/android/keyboard/WordComposer;->size()I

    move-result v0

    iput v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mInputLength:I

    .line 191
    iput-object p3, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mNextLettersFrequencies:[I

    .line 192
    iget-object v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mCodes:[[I

    array-length v0, v0

    iget v1, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mInputLength:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mInputLength:I

    new-array v0, v0, [[I

    iput-object v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mCodes:[[I

    .line 194
    :cond_3
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mInputLength:I

    if-lt v8, v0, :cond_4

    .line 197
    iget v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mInputLength:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mMaxDepth:I

    .line 198
    iget-object v1, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mRoots:Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mWordBuilder:[C

    const/4 v8, -0x1

    move-object v0, p0

    move-object v2, p1

    move v5, v4

    move v7, v4

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->getWordsRec(Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;Lnet/hasnath/android/keyboard/WordComposer;[CIZIIILnet/hasnath/android/keyboard/Dictionary$WordCallback;)V

    .line 199
    .end local v8    # "i":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    iget v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mInputLength:I

    if-ge v8, v0, :cond_1

    .line 200
    iget-object v1, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mRoots:Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;

    iget-object v3, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mWordBuilder:[C

    move-object v0, p0

    move-object v2, p1

    move v5, v4

    move v7, v4

    move-object v9, p2

    invoke-virtual/range {v0 .. v9}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->getWordsRec(Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;Lnet/hasnath/android/keyboard/WordComposer;[CIZIIILnet/hasnath/android/keyboard/Dictionary$WordCallback;)V

    .line 199
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 183
    .end local v8    # "i":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 195
    .restart local v8    # "i":I
    :cond_4
    iget-object v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mCodes:[[I

    invoke-virtual {p1, v8}, Lnet/hasnath/android/keyboard/WordComposer;->getCodesAt(I)[I

    move-result-object v1

    aput-object v1, v0, v8

    .line 194
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method protected getWordsRec(Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;Lnet/hasnath/android/keyboard/WordComposer;[CIZIIILnet/hasnath/android/keyboard/Dictionary$WordCallback;)V
    .locals 31
    .param p1, "roots"    # Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;
    .param p2, "codes"    # Lnet/hasnath/android/keyboard/WordComposer;
    .param p3, "word"    # [C
    .param p4, "depth"    # I
    .param p5, "completion"    # Z
    .param p6, "snr"    # I
    .param p7, "inputIndex"    # I
    .param p8, "skipPos"    # I
    .param p9, "callback"    # Lnet/hasnath/android/keyboard/Dictionary$WordCallback;

    .prologue
    .line 245
    move-object/from16 v0, p1

    iget v0, v0, Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;->length:I

    move/from16 v22, v0

    .line 246
    .local v22, "count":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mInputLength:I

    move/from16 v21, v0

    .line 248
    .local v21, "codeSize":I
    move-object/from16 v0, p0

    iget v2, v0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mMaxDepth:I

    move/from16 v0, p4

    if-le v0, v2, :cond_1

    .line 325
    :cond_0
    return-void

    .line 251
    :cond_1
    const/16 v24, 0x0

    .line 252
    .local v24, "currentChars":[I
    move/from16 v0, v21

    move/from16 v1, p7

    if-gt v0, v1, :cond_4

    .line 253
    const/16 p5, 0x1

    .line 258
    :goto_0
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_1
    move/from16 v0, v26

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 259
    move-object/from16 v0, p1

    iget-object v2, v0, Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;->data:[Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;

    aget-object v29, v2, v26

    .line 260
    .local v29, "node":Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;
    move-object/from16 v0, v29

    iget-char v0, v0, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->code:C

    move/from16 v19, v0

    .line 261
    .local v19, "c":C
    invoke-static/range {v19 .. v19}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->toLowerCase(C)C

    move-result v28

    .line 262
    .local v28, "lowerC":C
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->terminal:Z

    move/from16 v30, v0

    .line 263
    .local v30, "terminal":Z
    move-object/from16 v0, v29

    iget-object v0, v0, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->children:Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;

    move-object/from16 v20, v0

    .line 264
    .local v20, "children":Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;
    move-object/from16 v0, v29

    iget v0, v0, Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;->frequency:I

    move/from16 v25, v0

    .line 265
    .local v25, "freq":I
    if-eqz p5, :cond_5

    .line 266
    aput-char v19, p3, p4

    .line 267
    if-eqz v30, :cond_2

    .line 268
    const/4 v4, 0x0

    add-int/lit8 v5, p4, 0x1

    mul-int v6, v25, p6

    move-object/from16 v0, p0

    iget v7, v0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mDicTypeId:I

    .line 269
    sget-object v8, Lnet/hasnath/android/keyboard/Dictionary$DataType;->UNIGRAM:Lnet/hasnath/android/keyboard/Dictionary$DataType;

    move-object/from16 v2, p9

    move-object/from16 v3, p3

    .line 268
    invoke-interface/range {v2 .. v8}, Lnet/hasnath/android/keyboard/Dictionary$WordCallback;->addWord([CIIIILnet/hasnath/android/keyboard/Dictionary$DataType;)Z

    move-result v2

    .line 269
    if-eqz v2, :cond_0

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mNextLettersFrequencies:[I

    if-eqz v2, :cond_2

    move/from16 v0, p4

    move/from16 v1, p7

    if-lt v0, v1, :cond_2

    if-gez p8, :cond_2

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mNextLettersFrequencies:[I

    array-length v2, v2

    aget-char v3, p3, p7

    if-le v2, v3, :cond_2

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mNextLettersFrequencies:[I

    aget-char v3, p3, p7

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 278
    :cond_2
    if-eqz v20, :cond_3

    .line 279
    add-int/lit8 v6, p4, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->getWordsRec(Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;Lnet/hasnath/android/keyboard/WordComposer;[CIZIIILnet/hasnath/android/keyboard/Dictionary$WordCallback;)V

    .line 258
    :cond_3
    :goto_2
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1

    .line 255
    .end local v19    # "c":C
    .end local v20    # "children":Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;
    .end local v25    # "freq":I
    .end local v26    # "i":I
    .end local v28    # "lowerC":C
    .end local v29    # "node":Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;
    .end local v30    # "terminal":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mCodes:[[I

    aget-object v24, v2, p7

    goto/16 :goto_0

    .line 282
    .restart local v19    # "c":C
    .restart local v20    # "children":Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;
    .restart local v25    # "freq":I
    .restart local v26    # "i":I
    .restart local v28    # "lowerC":C
    .restart local v29    # "node":Lnet/hasnath/android/keyboard/ExpandableDictionary$Node;
    .restart local v30    # "terminal":Z
    :cond_5
    const/16 v2, 0x27

    move/from16 v0, v19

    if-ne v0, v2, :cond_6

    const/4 v2, 0x0

    aget v2, v24, v2

    const/16 v3, 0x27

    if-ne v2, v3, :cond_7

    :cond_6
    move/from16 v0, p4

    move/from16 v1, p8

    if-ne v0, v1, :cond_8

    .line 284
    :cond_7
    aput-char v19, p3, p4

    .line 285
    if-eqz v20, :cond_3

    .line 286
    add-int/lit8 v6, p4, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->getWordsRec(Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;Lnet/hasnath/android/keyboard/WordComposer;[CIZIIILnet/hasnath/android/keyboard/Dictionary$WordCallback;)V

    goto :goto_2

    .line 291
    :cond_8
    if-ltz p8, :cond_d

    const/16 v18, 0x1

    .line 292
    .local v18, "alternativesSize":I
    :goto_3
    const/16 v27, 0x0

    .local v27, "j":I
    :goto_4
    move/from16 v0, v27

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 293
    if-lez v27, :cond_e

    const/16 v17, 0x1

    .line 294
    .local v17, "addedAttenuation":I
    :goto_5
    aget v23, v24, v27

    .line 295
    .local v23, "currentChar":I
    const/4 v2, -0x1

    move/from16 v0, v23

    if-eq v0, v2, :cond_3

    .line 298
    move/from16 v0, v23

    move/from16 v1, v28

    if-eq v0, v1, :cond_9

    move/from16 v0, v23

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 299
    :cond_9
    aput-char v19, p3, p4

    .line 301
    add-int/lit8 v2, p7, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_f

    .line 302
    if-eqz v30, :cond_b

    .line 304
    add-int/lit8 v2, p4, 0x1

    invoke-virtual/range {p2 .. p2}, Lnet/hasnath/android/keyboard/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2, v3}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->same([CILjava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 305
    mul-int v2, v25, p6

    mul-int v6, v2, v17

    .line 306
    .local v6, "finalFreq":I
    if-gez p8, :cond_a

    mul-int/lit8 v6, v6, 0x2

    .line 307
    :cond_a
    const/4 v4, 0x0

    add-int/lit8 v5, p4, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mDicTypeId:I

    .line 308
    sget-object v8, Lnet/hasnath/android/keyboard/Dictionary$DataType;->UNIGRAM:Lnet/hasnath/android/keyboard/Dictionary$DataType;

    move-object/from16 v2, p9

    move-object/from16 v3, p3

    .line 307
    invoke-interface/range {v2 .. v8}, Lnet/hasnath/android/keyboard/Dictionary$WordCallback;->addWord([CIIIILnet/hasnath/android/keyboard/Dictionary$DataType;)Z

    .line 311
    .end local v6    # "finalFreq":I
    :cond_b
    if-eqz v20, :cond_c

    .line 312
    add-int/lit8 v11, p4, 0x1

    .line 313
    const/4 v12, 0x1

    mul-int v13, p6, v17

    add-int/lit8 v14, p7, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, v20

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v15, p8

    move-object/from16 v16, p9

    .line 312
    invoke-virtual/range {v7 .. v16}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->getWordsRec(Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;Lnet/hasnath/android/keyboard/WordComposer;[CIZIIILnet/hasnath/android/keyboard/Dictionary$WordCallback;)V

    .line 292
    :cond_c
    :goto_6
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 291
    .end local v17    # "addedAttenuation":I
    .end local v18    # "alternativesSize":I
    .end local v23    # "currentChar":I
    .end local v27    # "j":I
    :cond_d
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v18, v0

    goto :goto_3

    .line 293
    .restart local v18    # "alternativesSize":I
    .restart local v27    # "j":I
    :cond_e
    const/16 v17, 0x2

    goto :goto_5

    .line 316
    .restart local v17    # "addedAttenuation":I
    .restart local v23    # "currentChar":I
    :cond_f
    if-eqz v20, :cond_c

    .line 317
    add-int/lit8 v11, p4, 0x1

    .line 318
    const/4 v12, 0x0

    mul-int v13, p6, v17

    add-int/lit8 v14, p7, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, v20

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v15, p8

    move-object/from16 v16, p9

    .line 317
    invoke-virtual/range {v7 .. v16}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->getWordsRec(Lnet/hasnath/android/keyboard/ExpandableDictionary$NodeArray;Lnet/hasnath/android/keyboard/WordComposer;[CIZIIILnet/hasnath/android/keyboard/Dictionary$WordCallback;)V

    goto :goto_6
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 206
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 208
    :try_start_1
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mRequiresReload:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 209
    :cond_0
    iget-boolean v3, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mUpdatingDictionary:Z

    if-eqz v3, :cond_2

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 206
    :cond_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    :try_start_3
    invoke-virtual {p0, p1}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->getWordFrequency(Ljava/lang/CharSequence;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    .line 212
    .local v0, "freq":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 206
    .end local v0    # "freq":I
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public loadDictionary()V
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 107
    monitor-exit v1

    .line 110
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadDictionaryAsync()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method reloadDictionaryIfRequired()Z
    .locals 2

    .prologue
    .line 402
    iget-object v1, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 404
    :try_start_0
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mRequiresReload:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 406
    :cond_0
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mUpdatingDictionary:Z

    monitor-exit v1

    return v0

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setBigram(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "word1"    # Ljava/lang/String;
    .param p2, "word2"    # Ljava/lang/String;
    .param p3, "frequency"    # I

    .prologue
    .line 328
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->addOrSetBigram(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method public setRequiresReload(Z)V
    .locals 2
    .param p1, "reload"    # Z

    .prologue
    .line 121
    iget-object v1, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_0
    iput-boolean p1, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mRequiresReload:Z

    .line 121
    monitor-exit v1

    .line 124
    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startDictionaryLoadingTaskLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 113
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mUpdatingDictionary:Z

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mUpdatingDictionary:Z

    .line 115
    iput-boolean v2, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mRequiresReload:Z

    .line 116
    new-instance v0, Lnet/hasnath/android/keyboard/ExpandableDictionary$LoadDictionaryTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/hasnath/android/keyboard/ExpandableDictionary$LoadDictionaryTask;-><init>(Lnet/hasnath/android/keyboard/ExpandableDictionary;Lnet/hasnath/android/keyboard/ExpandableDictionary$LoadDictionaryTask;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/ExpandableDictionary$LoadDictionaryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 118
    :cond_0
    return-void
.end method

.method waitForDictionaryLoading()V
    .locals 2

    .prologue
    .line 430
    :goto_0
    iget-boolean v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary;->mUpdatingDictionary:Z

    if-nez v0, :cond_0

    .line 436
    return-void

    .line 432
    :cond_0
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    goto :goto_0
.end method
