.class public interface abstract Lnet/hasnath/android/ridmik/voice/VoiceInput$UiListener;
.super Ljava/lang/Object;
.source "VoiceInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/ridmik/voice/VoiceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UiListener"
.end annotation


# virtual methods
.method public abstract onCancelVoice()V
.end method

.method public abstract onVoiceResults(Ljava/util/List;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;)V"
        }
    .end annotation
.end method
