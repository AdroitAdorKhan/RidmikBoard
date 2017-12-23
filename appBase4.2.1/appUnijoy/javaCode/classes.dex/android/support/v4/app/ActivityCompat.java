package android.support.v4.app;

import android.app.Activity;
import android.content.Intent;
import android.os.Build.VERSION;

public class ActivityCompat {
    public static boolean invalidateOptionsMenu(Activity activity) {
        if (VERSION.SDK_INT < 11) {
            return false;
        }
        ActivityCompatHoneycomb.invalidateOptionsMenu(activity);
        return true;
    }

    public static boolean startActivities(Activity activity, Intent[] intents) {
        if (VERSION.SDK_INT < 11) {
            return false;
        }
        ActivityCompatHoneycomb.startActivities(activity, intents);
        return true;
    }
}
