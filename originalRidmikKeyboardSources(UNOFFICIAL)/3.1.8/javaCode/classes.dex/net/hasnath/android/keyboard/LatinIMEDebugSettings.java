package net.hasnath.android.keyboard;

import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.PreferenceActivity;
import android.util.Log;
import net.hasnath.android.ridmik.voice.LoggingEvents;

public class LatinIMEDebugSettings extends PreferenceActivity implements OnSharedPreferenceChangeListener {
    private static final String DEBUG_MODE_KEY = "debug_mode";
    private static final String TAG = "LatinIMEDebugSettings";
    private CheckBoxPreference mDebugMode;

    protected void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        addPreferencesFromResource(R.xml.prefs_for_debug);
        getPreferenceManager().getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
        this.mDebugMode = (CheckBoxPreference) findPreference(DEBUG_MODE_KEY);
        updateDebugMode();
    }

    public void onSharedPreferenceChanged(SharedPreferences prefs, String key) {
        if (key.equals(DEBUG_MODE_KEY) && this.mDebugMode != null) {
            this.mDebugMode.setChecked(prefs.getBoolean(DEBUG_MODE_KEY, false));
            updateDebugMode();
        }
    }

    private void updateDebugMode() {
        if (this.mDebugMode != null) {
            boolean isDebugMode = this.mDebugMode.isChecked();
            String version = LoggingEvents.EXTRA_CALLING_APP_NAME;
            try {
                version = "Version " + getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
            } catch (NameNotFoundException e) {
                Log.e(TAG, "Could not find version info.");
            }
            if (isDebugMode) {
                this.mDebugMode.setTitle(getResources().getString(R.string.prefs_debug_mode));
                this.mDebugMode.setSummary(version);
                return;
            }
            this.mDebugMode.setTitle(version);
            this.mDebugMode.setSummary(LoggingEvents.EXTRA_CALLING_APP_NAME);
        }
    }
}
