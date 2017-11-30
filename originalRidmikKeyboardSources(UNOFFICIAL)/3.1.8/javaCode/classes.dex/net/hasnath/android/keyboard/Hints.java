package net.hasnath.android.keyboard;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.view.inputmethod.InputConnection;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import net.hasnath.android.ridmik.voice.SettingsUtil;

public class Hints {
    private static final int DEFAULT_PUNCTUATION_HINT_MAX_DISPLAYS = 7;
    private static final int DEFAULT_SWIPE_HINT_MAX_DAYS_TO_SHOW = 7;
    private static final String PREF_VOICE_HINT_LAST_TIME_SHOWN = "voice_hint_last_time_shown";
    private static final String PREF_VOICE_HINT_NUM_UNIQUE_DAYS_SHOWN = "voice_hint_num_unique_days_shown";
    private static final String PREF_VOICE_INPUT_LAST_TIME_USED = "voice_input_last_time_used";
    private static final String PREF_VOICE_PUNCTUATION_HINT_VIEW_COUNT = "voice_punctuation_hint_view_count";
    static final Map<CharSequence, String> SPEAKABLE_PUNCTUATION = new HashMap();
    private Context mContext;
    private Display mDisplay;
    private int mPunctuationHintMaxDisplays;
    private int mSwipeHintMaxDaysToShow;
    private boolean mVoiceResultContainedPunctuation;

    public interface Display {
        void showHint(int i);
    }

    static {
        SPEAKABLE_PUNCTUATION.put(",", "comma");
        SPEAKABLE_PUNCTUATION.put(".", "period");
        SPEAKABLE_PUNCTUATION.put("?", "question mark");
    }

    public Hints(Context context, Display display) {
        this.mContext = context;
        this.mDisplay = display;
        ContentResolver cr = this.mContext.getContentResolver();
        this.mSwipeHintMaxDaysToShow = SettingsUtil.getSettingsInt(cr, SettingsUtil.LATIN_IME_VOICE_INPUT_SWIPE_HINT_MAX_DAYS, 7);
        this.mPunctuationHintMaxDisplays = SettingsUtil.getSettingsInt(cr, SettingsUtil.LATIN_IME_VOICE_INPUT_PUNCTUATION_HINT_MAX_DISPLAYS, 7);
    }

    public boolean showSwipeHintIfNecessary(boolean fieldRecommended) {
        if (!fieldRecommended || !shouldShowSwipeHint()) {
            return false;
        }
        showHint(R.layout.voice_swipe_hint);
        return true;
    }

    public boolean showPunctuationHintIfNecessary(InputConnection ic) {
        if (!(this.mVoiceResultContainedPunctuation || ic == null || getAndIncrementPref(PREF_VOICE_PUNCTUATION_HINT_VIEW_COUNT) >= this.mPunctuationHintMaxDisplays)) {
            if (SPEAKABLE_PUNCTUATION.containsKey(ic.getTextBeforeCursor(1, 0))) {
                showHint(R.layout.voice_punctuation_hint);
                return true;
            }
        }
        return false;
    }

    public void registerVoiceResult(String text) {
        Editor editor = PreferenceManager.getDefaultSharedPreferences(this.mContext).edit();
        editor.putLong(PREF_VOICE_INPUT_LAST_TIME_USED, System.currentTimeMillis());
        SharedPreferencesCompat.apply(editor);
        this.mVoiceResultContainedPunctuation = false;
        for (CharSequence s : SPEAKABLE_PUNCTUATION.keySet()) {
            if (text.indexOf(s.toString()) >= 0) {
                this.mVoiceResultContainedPunctuation = true;
                return;
            }
        }
    }

    private boolean shouldShowSwipeHint() {
        SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(this.mContext);
        if (sp.getInt(PREF_VOICE_HINT_NUM_UNIQUE_DAYS_SHOWN, 0) >= this.mSwipeHintMaxDaysToShow || isFromToday(sp.getLong(PREF_VOICE_INPUT_LAST_TIME_USED, 0))) {
            return false;
        }
        return true;
    }

    private boolean isFromToday(long timeInMillis) {
        if (timeInMillis == 0) {
            return false;
        }
        Calendar today = Calendar.getInstance();
        today.setTimeInMillis(System.currentTimeMillis());
        Calendar timestamp = Calendar.getInstance();
        timestamp.setTimeInMillis(timeInMillis);
        if (today.get(1) == timestamp.get(1) && today.get(5) == timestamp.get(5) && today.get(2) == timestamp.get(2)) {
            return true;
        }
        return false;
    }

    private void showHint(int hintViewResource) {
        SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(this.mContext);
        int numUniqueDaysShown = sp.getInt(PREF_VOICE_HINT_NUM_UNIQUE_DAYS_SHOWN, 0);
        if (!isFromToday(sp.getLong(PREF_VOICE_HINT_LAST_TIME_SHOWN, 0))) {
            Editor editor = sp.edit();
            editor.putInt(PREF_VOICE_HINT_NUM_UNIQUE_DAYS_SHOWN, numUniqueDaysShown + 1);
            editor.putLong(PREF_VOICE_HINT_LAST_TIME_SHOWN, System.currentTimeMillis());
            SharedPreferencesCompat.apply(editor);
        }
        if (this.mDisplay != null) {
            this.mDisplay.showHint(hintViewResource);
        }
    }

    private int getAndIncrementPref(String pref) {
        SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(this.mContext);
        int value = sp.getInt(pref, 0);
        Editor editor = sp.edit();
        editor.putInt(pref, value + 1);
        SharedPreferencesCompat.apply(editor);
        return value;
    }
}
