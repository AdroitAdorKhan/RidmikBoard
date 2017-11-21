package net.hasnath.android.keyboard;

import android.app.backup.BackupAgentHelper;
import android.app.backup.SharedPreferencesBackupHelper;

public class LatinIMEBackupAgent extends BackupAgentHelper {
    public void onCreate() {
        addHelper("shared_pref", new SharedPreferencesBackupHelper(this, new String[]{getPackageName() + "_preferences"}));
    }
}
