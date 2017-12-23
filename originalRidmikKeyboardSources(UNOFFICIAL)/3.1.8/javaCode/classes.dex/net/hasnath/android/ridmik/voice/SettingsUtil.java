package net.hasnath.android.ridmik.voice;

import android.content.ContentResolver;
import android.provider.Settings.Secure;

public class SettingsUtil {
    public static final String LATIN_IME_MAX_MICROPHONE_LEVEL = "latin_ime_max_microphone_level";
    public static final String LATIN_IME_MAX_VOICE_RESULTS = "latin_ime_max_voice_results";
    public static final String LATIN_IME_MIN_MICROPHONE_LEVEL = "latin_ime_min_microphone_level";
    public static final String LATIN_IME_SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS = "latin_ime_speech_input_complete_silence_length_millis";
    public static final String LATIN_IME_SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS = "latin_ime_speech_input_possibly_complete_silence_length_millis";
    public static final String LATIN_IME_SPEECH_MINIMUM_LENGTH_MILLIS = "latin_ime_speech_minimum_length_millis";
    public static final String LATIN_IME_VOICE_INPUT_PUNCTUATION_HINT_MAX_DISPLAYS = "latin_ime_voice_input_punctuation_hint_max_displays";
    public static final String LATIN_IME_VOICE_INPUT_RECOMMENDED_PACKAGES = "latin_ime_voice_input_recommended_packages";
    public static final String LATIN_IME_VOICE_INPUT_SUPPORTED_LOCALES = "latin_ime_voice_input_supported_locales";
    public static final String LATIN_IME_VOICE_INPUT_SWIPE_HINT_MAX_DAYS = "latin_ime_voice_input_swipe_hint_max_days";

    public static String getSettingsString(ContentResolver cr, String key, String defaultValue) {
        String result = Secure.getString(cr, key);
        return result == null ? defaultValue : result;
    }

    public static int getSettingsInt(ContentResolver cr, String key, int defaultValue) {
        return Secure.getInt(cr, key, defaultValue);
    }

    public static float getSettingsFloat(ContentResolver cr, String key, float defaultValue) {
        return Secure.getFloat(cr, key, defaultValue);
    }
}
