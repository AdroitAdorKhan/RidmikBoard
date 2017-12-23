package android.support.v4.app;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

public class TaskStackBuilder implements Iterable<Intent> {
    private static final TaskStackBuilderImpl IMPL;
    private static final String TAG = "TaskStackBuilder";
    private final ArrayList<Intent> mIntents = new ArrayList();
    private final Context mSourceContext;

    interface TaskStackBuilderImpl {
        PendingIntent getPendingIntent(Context context, Intent[] intentArr, int i, int i2);
    }

    static class TaskStackBuilderImplBase implements TaskStackBuilderImpl {
        TaskStackBuilderImplBase() {
        }

        public PendingIntent getPendingIntent(Context context, Intent[] intents, int requestCode, int flags) {
            Intent topIntent = intents[intents.length - 1];
            topIntent.addFlags(268435456);
            return PendingIntent.getActivity(context, requestCode, topIntent, flags);
        }
    }

    static class TaskStackBuilderImplHoneycomb implements TaskStackBuilderImpl {
        TaskStackBuilderImplHoneycomb() {
        }

        public PendingIntent getPendingIntent(Context context, Intent[] intents, int requestCode, int flags) {
            intents[0].addFlags(268468224);
            return TaskStackBuilderHoneycomb.getActivitiesPendingIntent(context, requestCode, intents, flags);
        }
    }

    static {
        if (VERSION.SDK_INT >= 11) {
            IMPL = new TaskStackBuilderImplHoneycomb();
        } else {
            IMPL = new TaskStackBuilderImplBase();
        }
    }

    private TaskStackBuilder(Context a) {
        this.mSourceContext = a;
    }

    public static TaskStackBuilder from(Context context) {
        return new TaskStackBuilder(context);
    }

    public TaskStackBuilder addNextIntent(Intent nextIntent) {
        this.mIntents.add(nextIntent);
        return this;
    }

    public TaskStackBuilder addParentStack(Activity sourceActivity) {
        int insertAt = this.mIntents.size();
        Intent parent = NavUtils.getParentActivityIntent(sourceActivity);
        while (parent != null) {
            this.mIntents.add(insertAt, parent);
            try {
                parent = NavUtils.getParentActivityIntent((Context) sourceActivity, parent.getComponent());
            } catch (NameNotFoundException e) {
                Log.e(TAG, "Bad ComponentName while traversing activity parent metadata");
                throw new IllegalArgumentException(e);
            }
        }
        return this;
    }

    public TaskStackBuilder addParentStack(Class<?> sourceActivityClass) {
        int insertAt = this.mIntents.size();
        try {
            Intent parent = NavUtils.getParentActivityIntent(this.mSourceContext, (Class) sourceActivityClass);
            while (parent != null) {
                this.mIntents.add(insertAt, parent);
                parent = NavUtils.getParentActivityIntent(this.mSourceContext, parent.getComponent());
            }
            return this;
        } catch (NameNotFoundException e) {
            Log.e(TAG, "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e);
        }
    }

    public int getIntentCount() {
        return this.mIntents.size();
    }

    public Intent getIntent(int index) {
        return (Intent) this.mIntents.get(index);
    }

    public Iterator<Intent> iterator() {
        return this.mIntents.iterator();
    }

    public void startActivities() {
        if (this.mIntents.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        Intent[] intents = (Intent[]) this.mIntents.toArray(new Intent[this.mIntents.size()]);
        intents[0].addFlags(268484608);
        if (!ActivityCompat.startActivities((Activity) this.mSourceContext, intents)) {
            Intent topIntent = intents[intents.length - 1];
            topIntent.addFlags(268435456);
            this.mSourceContext.startActivity(topIntent);
        }
    }

    public PendingIntent getPendingIntent(int requestCode, int flags) {
        return IMPL.getPendingIntent(this.mSourceContext, (Intent[]) this.mIntents.toArray(new Intent[this.mIntents.size()]), requestCode, flags);
    }
}
