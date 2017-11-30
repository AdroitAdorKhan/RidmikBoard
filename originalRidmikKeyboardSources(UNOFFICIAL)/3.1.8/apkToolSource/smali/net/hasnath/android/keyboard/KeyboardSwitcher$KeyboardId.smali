.class Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/KeyboardSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyboardId"
.end annotation


# instance fields
.field public final mEnableShiftLock:Z

.field public final mHasVoice:Z

.field private final mHashCode:I

.field public final mKeyboardMode:I

.field public final mXml:I


# direct methods
.method public constructor <init>(IIZZ)V
    .locals 3
    .param p1, "xml"    # I
    .param p2, "mode"    # I
    .param p3, "enableShiftLock"    # Z
    .param p4, "hasVoice"    # Z

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput p1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->mXml:I

    .line 282
    iput p2, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->mKeyboardMode:I

    .line 283
    iput-boolean p3, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->mEnableShiftLock:Z

    .line 284
    iput-boolean p4, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->mHasVoice:Z

    .line 286
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 287
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 286
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->mHashCode:I

    .line 289
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "xml"    # I
    .param p2, "hasVoice"    # Z

    .prologue
    const/4 v0, 0x0

    .line 292
    invoke-direct {p0, p1, v0, v0, p2}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;-><init>(IIZZ)V

    .line 293
    return-void
.end method

.method static synthetic access$0(Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;)Z
    .locals 1

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->equals(Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;)Z

    move-result v0

    return v0
.end method

.method private equals(Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;)Z
    .locals 2
    .param p1, "other"    # Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    .prologue
    .line 301
    iget v0, p1, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->mXml:I

    iget v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->mXml:I

    if-ne v0, v1, :cond_0

    .line 302
    iget v0, p1, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->mKeyboardMode:I

    iget v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->mKeyboardMode:I

    if-ne v0, v1, :cond_0

    .line 303
    iget-boolean v0, p1, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->mEnableShiftLock:Z

    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->mEnableShiftLock:Z

    if-ne v0, v1, :cond_0

    .line 304
    iget-boolean v0, p1, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->mHasVoice:Z

    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->mHasVoice:Z

    if-ne v0, v1, :cond_0

    .line 301
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 297
    instance-of v0, p1, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->equals(Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lnet/hasnath/android/keyboard/KeyboardSwitcher$KeyboardId;->mHashCode:I

    return v0
.end method
