package net.hasnath.android.habijabi;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.LinearInterpolator;
import android.widget.Scroller;
import android.widget.TextView;

public class ScrollingTextView extends TextView implements Runnable {
    private static final float DEFAULT_SPEED = 20.0f;
    private boolean continuousScrolling = true;
    private Scroller scroller;
    private float speed = DEFAULT_SPEED;

    public ScrollingTextView(Context context) {
        super(context);
        setup(context);
    }

    public ScrollingTextView(Context context, AttributeSet attributes) {
        super(context, attributes);
        setup(context);
    }

    private void setup(Context context) {
        this.scroller = new Scroller(context, new LinearInterpolator());
        setScroller(this.scroller);
    }

    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        if (this.scroller.isFinished()) {
            scroll();
        }
    }

    private void scroll() {
        int visibleHeight = (getHeight() - getPaddingBottom()) - getPaddingTop();
        int distance = visibleHeight + (getLineCount() * getLineHeight());
        this.scroller.startScroll(0, visibleHeight * -1, 0, distance, (int) (((float) distance) * this.speed));
        if (this.continuousScrolling) {
            post(this);
        }
    }

    public void run() {
        if (this.scroller.isFinished()) {
            scroll();
        } else {
            post(this);
        }
    }

    public void setSpeed(float speed) {
        this.speed = speed;
    }

    public float getSpeed() {
        return this.speed;
    }

    public void setContinuousScrolling(boolean continuousScrolling) {
        this.continuousScrolling = continuousScrolling;
    }

    public boolean isContinuousScrolling() {
        return this.continuousScrolling;
    }
}
