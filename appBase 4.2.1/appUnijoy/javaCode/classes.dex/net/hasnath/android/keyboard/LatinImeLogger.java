package net.hasnath.android.keyboard;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import java.util.List;
import net.hasnath.android.keyboard.Dictionary.DataType;

public class LatinImeLogger implements OnSharedPreferenceChangeListener {
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {
    }

    public static void init(Context context) {
    }

    public static void commit() {
    }

    public static void onDestroy() {
    }

    public static void logOnManualSuggestion(String before, String after, int position, List<CharSequence> list) {
    }

    public static void logOnAutoSuggestion(String before, String after) {
    }

    public static void logOnAutoSuggestionCanceled() {
    }

    public static void logOnDelete() {
    }

    public static void logOnInputChar() {
    }

    public static void logOnException(String metaData, Throwable e) {
    }

    public static void logOnWarning(String warning) {
    }

    public static void onStartSuggestion(CharSequence previousWords) {
    }

    public static void onAddSuggestedWord(String word, int typeId, DataType dataType) {
    }

    public static void onSetKeyboard(Keyboard kb) {
    }
}
