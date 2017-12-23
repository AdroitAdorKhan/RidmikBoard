package net.hasnath.android.keyboard;

import android.content.Context;
import android.content.res.TypedArray;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;

public class DialogSeekBarPreference extends DialogPreference implements OnSeekBarChangeListener {
    private static final String androidns = "http://schemas.android.com/apk/res/android";
    private int mMax;
    private int mMin;
    private SeekBar mSeekBar;
    private int mStep;
    private String mSuffix;
    private int mValue = 0;
    private TextView mValueText;

    public DialogSeekBarPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        setPersistent(true);
        this.mSuffix = attrs.getAttributeValue(androidns, AlternatesBundleKeys.TEXT);
        this.mMin = attrs.getAttributeIntValue(null, "min", 0);
        this.mMax = attrs.getAttributeIntValue(null, "max", 100);
        this.mStep = attrs.getAttributeIntValue(null, "step", 1);
        setDialogLayoutResource(R.layout.my_seekbar_preference);
    }

    protected void onBindDialogView(View v) {
        super.onBindDialogView(v);
        ((TextView) v.findViewById(R.id.dialogMessage)).setText(getDialogMessage());
        this.mValueText = (TextView) v.findViewById(R.id.actualValue);
        this.mSeekBar = (SeekBar) v.findViewById(R.id.myBar);
        this.mSeekBar.setOnSeekBarChangeListener(this);
        this.mSeekBar.setMax((this.mMax - this.mMin) / this.mStep);
        this.mSeekBar.setProgress((this.mValue - this.mMin) / this.mStep);
        String t = String.valueOf(this.mValue);
        TextView textView = this.mValueText;
        if (this.mSuffix != null) {
            t = t.concat(this.mSuffix);
        }
        textView.setText(t);
    }

    protected Object onGetDefaultValue(TypedArray a, int index) {
        return Integer.valueOf(a.getInt(index, 0));
    }

    protected void onSetInitialValue(boolean restore, Object defaultValue) {
        this.mValue = getPersistedInt(defaultValue == null ? 0 : ((Integer) defaultValue).intValue());
    }

    protected void onDialogClosed(boolean positiveResult) {
        super.onDialogClosed(positiveResult);
        if (positiveResult) {
            int value = (this.mSeekBar.getProgress() * this.mStep) + this.mMin;
            if (callChangeListener(Integer.valueOf(value))) {
                setValue(value);
            }
        }
    }

    public void setValue(int value) {
        if (value > this.mMax) {
            value = this.mMax;
        } else if (value < this.mMin) {
            value = this.mMin;
        }
        this.mValue = value;
        persistInt(value);
    }

    public void setMax(int max) {
        this.mMax = max;
        if (this.mValue > this.mMax) {
            setValue(this.mMax);
        }
    }

    public void setMin(int min) {
        if (min < this.mMax) {
            this.mMin = min;
        }
    }

    public void onProgressChanged(SeekBar seek, int value, boolean fromTouch) {
        String t = String.valueOf((this.mStep * value) + this.mMin);
        TextView textView = this.mValueText;
        if (this.mSuffix != null) {
            t = t.concat(this.mSuffix);
        }
        textView.setText(t);
    }

    public void onStartTrackingTouch(SeekBar seek) {
    }

    public void onStopTrackingTouch(SeekBar seek) {
    }
}
