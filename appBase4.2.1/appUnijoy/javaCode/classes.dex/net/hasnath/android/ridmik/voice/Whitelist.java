package net.hasnath.android.ridmik.voice;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

public class Whitelist {
    private List<Bundle> mConditions;

    public Whitelist() {
        this.mConditions = new ArrayList();
    }

    public Whitelist(List<Bundle> conditions) {
        this.mConditions = conditions;
    }

    public void addApp(String app) {
        Bundle bundle = new Bundle();
        bundle.putString("packageName", app);
        this.mConditions.add(bundle);
    }

    public boolean matches(FieldContext context) {
        for (Bundle condition : this.mConditions) {
            if (matches(condition, context.getBundle())) {
                return true;
            }
        }
        return false;
    }

    private boolean matches(Bundle condition, Bundle target) {
        for (String key : condition.keySet()) {
            if (!condition.getString(key).equals(target.getString(key))) {
                return false;
            }
        }
        return true;
    }
}
