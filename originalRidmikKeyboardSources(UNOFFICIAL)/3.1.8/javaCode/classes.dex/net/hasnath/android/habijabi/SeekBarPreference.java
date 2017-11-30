package net.hasnath.android.habijabi;

import android.content.Context;
import android.content.res.TypedArray;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import net.hasnath.android.keyboard.R;

public class SeekBarPreference extends DialogPreference {
    private boolean mAsPercent;
    private float mDefaultValue;
    private String mDisplayFormat;
    private boolean mLogScale;
    private float mMax;
    private TextView mMaxText;
    private float mMin;
    private TextView mMinText;
    private float mPrevVal;
    private SeekBar mSeek;
    private float mStep;
    private float mVal;
    private TextView mValText;

    public SeekBarPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context, attrs);
    }

    protected void init(Context context, AttributeSet attrs) {
        setDialogLayoutResource(R.layout.seek_bar_dialog);
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.SeekBarPreference);
        this.mMin = a.getFloat(0, 0.0f);
        this.mMax = a.getFloat(1, 100.0f);
        this.mStep = a.getFloat(3, 0.0f);
        this.mAsPercent = a.getBoolean(2, false);
        this.mLogScale = a.getBoolean(4, false);
        this.mDisplayFormat = a.getString(5);
        this.mDefaultValue = a.getFloat(6, 100.0f);
    }

    protected Float onGetDefaultValue(TypedArray a, int index) {
        return Float.valueOf(a.getFloat(index, 0.0f));
    }

    protected void onSetInitialValue(boolean restorePersistedValue, Object defaultValue) {
        this.mDefaultValue = ((Float) defaultValue).floatValue();
        if (restorePersistedValue) {
            setVal(Float.valueOf(getPersistedFloat(0.0f)));
        } else {
            setVal((Float) defaultValue);
        }
        savePrevVal();
    }

    private String formatFloatDisplay(Float val) {
        if (this.mAsPercent) {
            return String.format("%d%%", new Object[]{Integer.valueOf((int) (val.floatValue() * 100.0f))});
        } else if (this.mDisplayFormat == null) {
            return Float.toString(val.floatValue());
        } else {
            if (this.mDefaultValue == val.floatValue()) {
                return String.format(this.mDisplayFormat + " (Default)", new Object[]{val});
            }
            return String.format(this.mDisplayFormat, new Object[]{val});
        }
    }

    private void showVal() {
        this.mValText.setText(formatFloatDisplay(Float.valueOf(this.mVal)));
    }

    protected void setVal(Float val) {
        this.mVal = val.floatValue();
    }

    protected void savePrevVal() {
        this.mPrevVal = this.mVal;
    }

    protected void restoreVal() {
        this.mVal = this.mPrevVal;
    }

    protected String getValString() {
        return Float.toString(this.mVal);
    }

    private float percentToSteppedVal(int percent, float min, float max, float step, boolean logScale) {
        if (logScale) {
            return (float) Math.exp((double) percentToSteppedVal(percent, (float) Math.log((double) min), (float) Math.log((double) max), step, false));
        }
        float delta = (((float) percent) * (max - min)) / 100.0f;
        if (step != 0.0f) {
            delta = ((float) Math.round(delta / step)) * step;
        }
        return min + delta;
    }

    private int getPercent(float val, float min, float max) {
        return (int) ((100.0f * (val - min)) / (max - min));
    }

    private int getProgressVal() {
        if (this.mLogScale) {
            return getPercent((float) Math.log((double) this.mVal), (float) Math.log((double) this.mMin), (float) Math.log((double) this.mMax));
        }
        return getPercent(this.mVal, this.mMin, this.mMax);
    }

    protected void onBindDialogView(View view) {
        this.mSeek = (SeekBar) view.findViewById(R.id.seekBarPref);
        this.mMinText = (TextView) view.findViewById(R.id.seekMin);
        this.mMaxText = (TextView) view.findViewById(R.id.seekMax);
        this.mValText = (TextView) view.findViewById(R.id.seekVal);
        showVal();
        this.mMinText.setText(formatFloatDisplay(Float.valueOf(this.mMin)));
        this.mMaxText.setText(formatFloatDisplay(Float.valueOf(this.mMax)));
        this.mSeek.setProgress(getProgressVal());
        this.mSeek.setOnSeekBarChangeListener(new OnSeekBarChangeListener() {
            public void onStopTrackingTouch(SeekBar seekBar) {
            }

            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                if (fromUser) {
                    SeekBarPreference.this.setVal(Float.valueOf(SeekBarPreference.this.percentToSteppedVal(progress, SeekBarPreference.this.mMin, SeekBarPreference.this.mMax, SeekBarPreference.this.mStep, SeekBarPreference.this.mLogScale)));
                    SeekBarPreference.this.mSeek.setProgress(SeekBarPreference.this.getProgressVal());
                }
                SeekBarPreference.this.showVal();
            }
        });
        super.onBindDialogView(view);
    }

    public CharSequence getSummary() {
        return formatFloatDisplay(Float.valueOf(this.mVal));
    }

    protected void onDialogClosed(boolean positiveResult) {
        if (positiveResult) {
            if (shouldPersist()) {
                persistFloat(this.mVal);
                savePrevVal();
            }
            notifyChanged();
            return;
        }
        restoreVal();
    }
}
