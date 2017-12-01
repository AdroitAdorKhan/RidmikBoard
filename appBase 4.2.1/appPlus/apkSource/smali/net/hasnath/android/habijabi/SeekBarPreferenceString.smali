.class public Lnet/hasnath/android/habijabi/SeekBarPreferenceString;
.super Lnet/hasnath/android/habijabi/SeekBarPreference;
.source "SeekBarPreferenceString.java"


# static fields
.field private static FLOAT_RE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "(\\d+\\.?\\d*).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/hasnath/android/habijabi/SeekBarPreferenceString;->FLOAT_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lnet/hasnath/android/habijabi/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-virtual {p0, p1, p2}, Lnet/hasnath/android/habijabi/SeekBarPreferenceString;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method private floatFromString(Ljava/lang/String;)F
    .locals 2
    .param p1, "pref"    # Ljava/lang/String;

    .prologue
    .line 27
    sget-object v1, Lnet/hasnath/android/habijabi/SeekBarPreferenceString;->FLOAT_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 28
    .local v0, "num":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 29
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/SeekBarPreferenceString;->restoreVal()V

    .line 58
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/SeekBarPreferenceString;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/SeekBarPreferenceString;->savePrevVal()V

    .line 55
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/SeekBarPreferenceString;->getValString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/hasnath/android/habijabi/SeekBarPreferenceString;->persistString(Ljava/lang/String;)Z

    .line 57
    :cond_1
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/SeekBarPreferenceString;->notifyChanged()V

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Float;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 34
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/hasnath/android/habijabi/SeekBarPreferenceString;->floatFromString(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    const-string v0, "0.0"

    invoke-virtual {p0, v0}, Lnet/hasnath/android/habijabi/SeekBarPreferenceString;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/hasnath/android/habijabi/SeekBarPreferenceString;->floatFromString(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/hasnath/android/habijabi/SeekBarPreferenceString;->setVal(Ljava/lang/Float;)V

    .line 44
    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/SeekBarPreferenceString;->savePrevVal()V

    .line 45
    return-void

    .line 42
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/hasnath/android/habijabi/SeekBarPreferenceString;->setVal(Ljava/lang/Float;)V

    goto :goto_0
.end method
