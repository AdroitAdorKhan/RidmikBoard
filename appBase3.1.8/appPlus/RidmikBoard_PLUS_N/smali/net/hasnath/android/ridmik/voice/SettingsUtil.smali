.class public Lnet/hasnath/android/ridmik/voice/SettingsUtil;
.super Ljava/lang/Object;
.source "SettingsUtil.java"


# static fields
.field public static final LATIN_IME_MAX_MICROPHONE_LEVEL:Ljava/lang/String; = "latin_ime_max_microphone_level"

.field public static final LATIN_IME_MAX_VOICE_RESULTS:Ljava/lang/String; = "latin_ime_max_voice_results"

.field public static final LATIN_IME_MIN_MICROPHONE_LEVEL:Ljava/lang/String; = "latin_ime_min_microphone_level"

.field public static final LATIN_IME_SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS:Ljava/lang/String; = "latin_ime_speech_input_complete_silence_length_millis"

.field public static final LATIN_IME_SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS:Ljava/lang/String; = "latin_ime_speech_input_possibly_complete_silence_length_millis"

.field public static final LATIN_IME_SPEECH_MINIMUM_LENGTH_MILLIS:Ljava/lang/String; = "latin_ime_speech_minimum_length_millis"

.field public static final LATIN_IME_VOICE_INPUT_PUNCTUATION_HINT_MAX_DISPLAYS:Ljava/lang/String; = "latin_ime_voice_input_punctuation_hint_max_displays"

.field public static final LATIN_IME_VOICE_INPUT_RECOMMENDED_PACKAGES:Ljava/lang/String; = "latin_ime_voice_input_recommended_packages"

.field public static final LATIN_IME_VOICE_INPUT_SUPPORTED_LOCALES:Ljava/lang/String; = "latin_ime_voice_input_supported_locales"

.field public static final LATIN_IME_VOICE_INPUT_SWIPE_HINT_MAX_DAYS:Ljava/lang/String; = "latin_ime_voice_input_swipe_hint_max_days"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSettingsFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 111
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static getSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 99
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method
