package net.hasnath.android.habijabi;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class SeekBarPreferenceString extends SeekBarPreference {
    private static Pattern FLOAT_RE = Pattern.compile("(\\d+\\.?\\d*).*");

    public SeekBarPreferenceString(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context, attrs);
    }

    private float floatFromString(String pref) {
        Matcher num = FLOAT_RE.matcher(pref);
        if (num.matches()) {
            return Float.valueOf(num.group(1)).floatValue();
        }
        return 0.0f;
    }

    protected Float onGetDefaultValue(TypedArray a, int index) {
        return Float.valueOf(floatFromString(a.getString(index)));
    }

    protected void onSetInitialValue(boolean restorePersistedValue, Object defaultValue) {
        if (restorePersistedValue) {
            setVal(Float.valueOf(floatFromString(getPersistedString("0.0"))));
        } else {
            setVal(Float.valueOf(((Float) defaultValue).floatValue()));
        }
        savePrevVal();
    }

    protected void onDialogClosed(boolean positiveResult) {
        if (positiveResult) {
            if (shouldPersist()) {
                savePrevVal();
                persistString(getValString());
            }
            notifyChanged();
            return;
        }
        restoreVal();
    }
}
