package net.hasnath.android.keyboard;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.backup.BackupManager;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.net.Uri;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceActivity;
import android.preference.PreferenceGroup;
import android.speech.SpeechRecognizer;
import android.text.AutoText;
import android.util.Log;
import java.util.Locale;
import net.hasnath.android.ridmik.voice.LoggingEvents;
import net.hasnath.android.ridmik.voice.SettingsUtil;
import net.hasnath.android.ridmik.voice.VoiceInputLogger;
import ridmik.keyboard.R;

public class LatinIMESettings extends PreferenceActivity implements OnSharedPreferenceChangeListener, OnDismissListener {
    private static final String PREDICTION_SETTINGS_KEY = "prediction_settings";
    static final String PREF_LONG_PRESS_DELAY = "long_press_delay";
    static final String PREF_SETTINGS_KEY = "settings_key";
    private static final String QUICK_FIXES_KEY = "quick_fixes";
    private static final String TAG = "LatinIMESettings";
    private static final int VOICE_INPUT_CONFIRM_DIALOG = 0;
    private static final String VOICE_SETTINGS_KEY = "voice_mode";
    private ListPreference mBanglaFixedKeyPreference;
    private ListPreference mFontOptionPrefs;
    private ListPreference mKeyboardLayoutPrefs;
    private ListPreference mKeyboardTheme;
    private VoiceInputLogger mLogger;
    private int mLongPressDelay;
    private DialogSeekBarPreference mLongPressDelayPreference;
    private boolean mOkClicked = false;
    private CheckBoxPreference mQuickFixes;
    private ListPreference mSettingsKeyPreference;
    private String mVoiceModeOff;
    private boolean mVoiceOn;
    private ListPreference mVoicePreference;

    protected void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        addPreferencesFromResource(R.xml.prefs);
        this.mQuickFixes = (CheckBoxPreference) findPreference(QUICK_FIXES_KEY);
        this.mVoicePreference = (ListPreference) findPreference(VOICE_SETTINGS_KEY);
        this.mSettingsKeyPreference = (ListPreference) findPreference(PREF_SETTINGS_KEY);
        this.mLongPressDelayPreference = (DialogSeekBarPreference) findPreference(PREF_LONG_PRESS_DELAY);
        SharedPreferences prefs = getPreferenceManager().getSharedPreferences();
        prefs.registerOnSharedPreferenceChangeListener(this);
        this.mBanglaFixedKeyPreference = (ListPreference) findPreference("pref_bangla_fixed");
        this.mKeyboardTheme = (ListPreference) findPreference(KeyboardSwitcher.PREF_KEYBOARD_LAYOUT);
        this.mKeyboardLayoutPrefs = (ListPreference) findPreference("pref_keyboard_layouts");
        getPreferenceScreen().removePreference(findPreference("contact_suggestion"));
        getPreferenceScreen().removePreference(findPreference("learn_word_as_typing"));
        this.mVoiceModeOff = getString(R.string.voice_mode_off);
        this.mVoiceOn = !prefs.getString(VOICE_SETTINGS_KEY, this.mVoiceModeOff).equals(this.mVoiceModeOff);
        this.mLongPressDelay = prefs.getInt(PREF_LONG_PRESS_DELAY, getResources().getInteger(R.integer.config_long_press_key_timeout));
        this.mLogger = VoiceInputLogger.getLogger(this);
        findPreference("ridmik_help").setOnPreferenceClickListener(new OnPreferenceClickListener() {
            public boolean onPreferenceClick(Preference preference) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse("https://www.facebook.com/AdroitAdorKhan"));
                LatinIMESettings.this.startActivity(intent);
                return true;
            }
        });
        findPreference("colorEmoji").setOnPreferenceClickListener(new OnPreferenceClickListener() {
            public boolean onPreferenceClick(Preference preference) {
                LatinIMESettings.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=ridmik.keyboard")));
                return true;
            }
        });
    }

    protected void onResume() {
        super.onResume();
        if (AutoText.getSize(getListView()) < 1) {
            ((PreferenceGroup) findPreference(PREDICTION_SETTINGS_KEY)).removePreference(this.mQuickFixes);
        }
        if (SpeechRecognizer.isRecognitionAvailable(this)) {
            updateVoiceModeSummary();
        }
        getPreferenceScreen().removePreference(this.mSettingsKeyPreference);
        getPreferenceScreen().removePreference(this.mVoicePreference);
        updateSettingsKeySummary();
        updateLongPressDelaySummary();
        updateBanglaFixedKeySummary();
        updateKeyboardLayoutKeySummary();
        updateKeyboardLayoutSummary();
    }

    protected void onDestroy() {
        getPreferenceManager().getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this);
        super.onDestroy();
    }

    public void onSharedPreferenceChanged(SharedPreferences prefs, String key) {
        new BackupManager(this).dataChanged();
        if (!(!key.equals(VOICE_SETTINGS_KEY) || this.mVoiceOn || prefs.getString(VOICE_SETTINGS_KEY, this.mVoiceModeOff).equals(this.mVoiceModeOff))) {
            showVoiceConfirmation();
        }
        this.mVoiceOn = !prefs.getString(VOICE_SETTINGS_KEY, this.mVoiceModeOff).equals(this.mVoiceModeOff);
        this.mLongPressDelay = prefs.getInt(PREF_LONG_PRESS_DELAY, getResources().getInteger(R.integer.config_long_press_key_timeout));
        updateVoiceModeSummary();
        updateSettingsKeySummary();
        updateLongPressDelaySummary();
        updateBanglaFixedKeySummary();
        updateKeyboardLayoutKeySummary();
        updateKeyboardLayoutSummary();
    }

    private void updateSettingsKeySummary() {
        this.mSettingsKeyPreference.setSummary(getResources().getStringArray(R.array.settings_key_modes)[this.mSettingsKeyPreference.findIndexOfValue(this.mSettingsKeyPreference.getValue())]);
    }

    private void updateBanglaFixedKeySummary() {
        this.mBanglaFixedKeyPreference.setSummary(getResources().getStringArray(R.array.bangla_fixed_modes)[this.mBanglaFixedKeyPreference.findIndexOfValue(this.mBanglaFixedKeyPreference.getValue())]);
    }

    private void updateKeyboardLayoutKeySummary() {
        this.mKeyboardTheme.setSummary(getResources().getStringArray(R.array.keyboard_layout_modes)[this.mKeyboardTheme.findIndexOfValue(this.mKeyboardTheme.getValue())]);
    }

    private void updateFontOptionSummary() {
        int value = Integer.valueOf(this.mFontOptionPrefs.getValue()).intValue();
        String summary = LoggingEvents.EXTRA_CALLING_APP_NAME;
        if (value == 1) {
            summary = "Using system font";
        } else if (value == 2) {
            summary = "Using custom font in keyboard area";
        } else if (value == 3) {
            summary = "Using custom font in keyboard and suggestions";
        }
        this.mFontOptionPrefs.setSummary(summary);
    }

    private void updateKeyboardLayoutSummary() {
        int value = Integer.valueOf(this.mKeyboardLayoutPrefs.getValue()).intValue();
        String summary = LoggingEvents.EXTRA_CALLING_APP_NAME;
        if (value == 1) {
            summary = "Bangla Fixed, Bangla Phonetic & English";
        } else if (value == 2) {
            summary = "Bangla Fixed & English";
        } else if (value == 3) {
            summary = "Bangla Phonetic & English";
        }
        this.mKeyboardLayoutPrefs.setSummary(summary);
    }

    private void updateLongPressDelaySummary() {
        this.mLongPressDelayPreference.setSummary(String.format(getResources().getString(R.string.long_press_delay_summary), new Object[]{Integer.valueOf(this.mLongPressDelay)}));
    }

    private void showVoiceConfirmation() {
        this.mOkClicked = false;
        showDialog(0);
    }

    private void updateVoiceModeSummary() {
        this.mVoicePreference.setSummary(getResources().getStringArray(R.array.voice_input_modes_summary)[this.mVoicePreference.findIndexOfValue(this.mVoicePreference.getValue())]);
    }

    protected Dialog onCreateDialog(int id) {
        switch (id) {
            case 0:
                OnClickListener listener = new OnClickListener() {
                    public void onClick(DialogInterface dialog, int whichButton) {
                        if (whichButton == -2) {
                            LatinIMESettings.this.mVoicePreference.setValue(LatinIMESettings.this.mVoiceModeOff);
                            LatinIMESettings.this.mLogger.settingsWarningDialogCancel();
                        } else if (whichButton == -1) {
                            LatinIMESettings.this.mOkClicked = true;
                            LatinIMESettings.this.mLogger.settingsWarningDialogOk();
                        }
                        LatinIMESettings.this.updateVoicePreference();
                    }
                };
                Builder builder = new Builder(this).setTitle(R.string.voice_warning_title).setPositiveButton(17039370, listener).setNegativeButton(17039360, listener);
                if (LatinIME.newArrayList(SettingsUtil.getSettingsString(getContentResolver(), SettingsUtil.LATIN_IME_VOICE_INPUT_SUPPORTED_LOCALES, LatinIME.DEFAULT_VOICE_INPUT_SUPPORTED_LOCALES).split("\\s+")).contains(Locale.getDefault().toString())) {
                    builder.setMessage(getString(R.string.voice_warning_may_not_understand) + "\n\n" + getString(R.string.voice_hint_dialog_message));
                } else {
                    builder.setMessage(getString(R.string.voice_warning_locale_not_supported) + "\n\n" + getString(R.string.voice_warning_may_not_understand) + "\n\n" + getString(R.string.voice_hint_dialog_message));
                }
                Dialog dialog = builder.create();
                dialog.setOnDismissListener(this);
                this.mLogger.settingsWarningDialogShown();
                return dialog;
            default:
                Log.e(TAG, "unknown dialog " + id);
                return null;
        }
    }

    public void onDismiss(DialogInterface dialog) {
        this.mLogger.settingsWarningDialogDismissed();
        if (!this.mOkClicked) {
            this.mVoicePreference.setValue(this.mVoiceModeOff);
        }
    }

    private void updateVoicePreference() {
        if (!this.mVoicePreference.getValue().equals(this.mVoiceModeOff)) {
            this.mLogger.voiceInputSettingEnabled();
        } else {
            this.mLogger.voiceInputSettingDisabled();
        }
    }
}
