.class public Lnet/hasnath/android/keyboard/LatinImeLogger;
.super Ljava/lang/Object;
.source "LatinImeLogger.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commit()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    return-void
.end method

.method public static logOnAutoSuggestion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "before"    # Ljava/lang/String;
    .param p1, "after"    # Ljava/lang/String;

    .prologue
    .line 45
    return-void
.end method

.method public static logOnAutoSuggestionCanceled()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public static logOnDelete()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public static logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "metaData"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 57
    return-void
.end method

.method public static logOnInputChar()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public static logOnManualSuggestion(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .param p0, "before"    # Ljava/lang/String;
    .param p1, "after"    # Ljava/lang/String;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p3, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    return-void
.end method

.method public static logOnWarning(Ljava/lang/String;)V
    .locals 0
    .param p0, "warning"    # Ljava/lang/String;

    .prologue
    .line 60
    return-void
.end method

.method public static onAddSuggestedWord(Ljava/lang/String;ILnet/hasnath/android/keyboard/Dictionary$DataType;)V
    .locals 0
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "typeId"    # I
    .param p2, "dataType"    # Lnet/hasnath/android/keyboard/Dictionary$DataType;

    .prologue
    .line 66
    return-void
.end method

.method public static onDestroy()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public static onSetKeyboard(Lnet/hasnath/android/keyboard/Keyboard;)V
    .locals 0
    .param p0, "kb"    # Lnet/hasnath/android/keyboard/Keyboard;

    .prologue
    .line 69
    return-void
.end method

.method public static onStartSuggestion(Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "previousWords"    # Ljava/lang/CharSequence;

    .prologue
    .line 63
    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 29
    return-void
.end method
