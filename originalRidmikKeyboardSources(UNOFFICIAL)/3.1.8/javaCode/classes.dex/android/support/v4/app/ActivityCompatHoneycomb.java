package android.support.v4.app;

import android.app.Activity;
import android.content.Intent;
import java.io.FileDescriptor;
import java.io.PrintWriter;

class ActivityCompatHoneycomb {
    ActivityCompatHoneycomb() {
    }

    static void invalidateOptionsMenu(Activity activity) {
        activity.invalidateOptionsMenu();
    }

    static void startActivities(Activity activity, Intent[] intents) {
        activity.startActivities(intents);
    }

    static void dump(Activity activity, String prefix, FileDescriptor fd, PrintWriter writer, String[] args) {
        activity.dump(prefix, fd, writer, args);
    }
}
