package net.hasnath.android.keyboard;

import android.view.MotionEvent;

class SwipeTracker {
    private static final int LONGEST_PAST_TIME = 200;
    private static final int NUM_PAST = 4;
    final EventRingBuffer mBuffer = new EventRingBuffer(4);
    private float mXVelocity;
    private float mYVelocity;

    static class EventRingBuffer {
        private final int bufSize;
        private int count;
        private int end;
        private final long[] timeBuf;
        private int top;
        private final float[] xBuf;
        private final float[] yBuf;

        public EventRingBuffer(int max) {
            this.bufSize = max;
            this.xBuf = new float[max];
            this.yBuf = new float[max];
            this.timeBuf = new long[max];
            clear();
        }

        public void clear() {
            this.count = 0;
            this.end = 0;
            this.top = 0;
        }

        public int size() {
            return this.count;
        }

        private int index(int pos) {
            return (this.end + pos) % this.bufSize;
        }

        private int advance(int index) {
            return (index + 1) % this.bufSize;
        }

        public void add(float x, float y, long time) {
            this.xBuf[this.top] = x;
            this.yBuf[this.top] = y;
            this.timeBuf[this.top] = time;
            this.top = advance(this.top);
            if (this.count < this.bufSize) {
                this.count++;
            } else {
                this.end = advance(this.end);
            }
        }

        public float getX(int pos) {
            return this.xBuf[index(pos)];
        }

        public float getY(int pos) {
            return this.yBuf[index(pos)];
        }

        public long getTime(int pos) {
            return this.timeBuf[index(pos)];
        }

        public void dropOldest() {
            this.count--;
            this.end = advance(this.end);
        }
    }

    SwipeTracker() {
    }

    public void addMovement(MotionEvent ev) {
        if (ev.getAction() == 0) {
            this.mBuffer.clear();
            return;
        }
        long time = ev.getEventTime();
        int count = ev.getHistorySize();
        for (int i = 0; i < count; i++) {
            addPoint(ev.getHistoricalX(i), ev.getHistoricalY(i), ev.getHistoricalEventTime(i));
        }
        addPoint(ev.getX(), ev.getY(), time);
    }

    private void addPoint(float x, float y, long time) {
        EventRingBuffer buffer = this.mBuffer;
        while (buffer.size() > 0 && buffer.getTime(0) < time - 200) {
            buffer.dropOldest();
        }
        buffer.add(x, y, time);
    }

    public void computeCurrentVelocity(int units) {
        computeCurrentVelocity(units, Float.MAX_VALUE);
    }

    public void computeCurrentVelocity(int units, float maxVelocity) {
        float max;
        EventRingBuffer buffer = this.mBuffer;
        float oldestX = buffer.getX(0);
        float oldestY = buffer.getY(0);
        long oldestTime = buffer.getTime(0);
        float accumX = 0.0f;
        float accumY = 0.0f;
        int count = buffer.size();
        for (int pos = 1; pos < count; pos++) {
            int dur = (int) (buffer.getTime(pos) - oldestTime);
            if (dur != 0) {
                float vel = ((buffer.getX(pos) - oldestX) / ((float) dur)) * ((float) units);
                if (accumX == 0.0f) {
                    accumX = vel;
                } else {
                    accumX = (accumX + vel) * 0.5f;
                }
                vel = ((buffer.getY(pos) - oldestY) / ((float) dur)) * ((float) units);
                if (accumY == 0.0f) {
                    accumY = vel;
                } else {
                    accumY = (accumY + vel) * 0.5f;
                }
            }
        }
        if (accumX < 0.0f) {
            max = Math.max(accumX, -maxVelocity);
        } else {
            max = Math.min(accumX, maxVelocity);
        }
        this.mXVelocity = max;
        if (accumY < 0.0f) {
            max = Math.max(accumY, -maxVelocity);
        } else {
            max = Math.min(accumY, maxVelocity);
        }
        this.mYVelocity = max;
    }

    public float getXVelocity() {
        return this.mXVelocity;
    }

    public float getYVelocity() {
        return this.mYVelocity;
    }
}
