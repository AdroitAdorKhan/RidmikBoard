package net.hasnath.android.keyboard;

import java.util.Arrays;
import java.util.List;
import net.hasnath.android.keyboard.Keyboard.Key;

abstract class KeyDetector {
    protected int mCorrectionX;
    protected int mCorrectionY;
    protected Keyboard mKeyboard;
    private Key[] mKeys;
    protected boolean mProximityCorrectOn;
    protected int mProximityThresholdSquare;

    public abstract int getKeyIndexAndNearbyCodes(int i, int i2, int[] iArr);

    protected abstract int getMaxNearbyKeys();

    KeyDetector() {
    }

    public Key[] setKeyboard(Keyboard keyboard, float correctionX, float correctionY) {
        if (keyboard == null) {
            throw new NullPointerException();
        }
        this.mCorrectionX = (int) correctionX;
        this.mCorrectionY = (int) correctionY;
        this.mKeyboard = keyboard;
        List<Key> keys = this.mKeyboard.getKeys();
        Key[] array = (Key[]) keys.toArray(new Key[keys.size()]);
        this.mKeys = array;
        return array;
    }

    protected int getTouchX(int x) {
        return this.mCorrectionX + x;
    }

    protected int getTouchY(int y) {
        return this.mCorrectionY + y;
    }

    protected Key[] getKeys() {
        if (this.mKeys != null) {
            return this.mKeys;
        }
        throw new IllegalStateException("keyboard isn't set");
    }

    public void setProximityCorrectionEnabled(boolean enabled) {
        this.mProximityCorrectOn = enabled;
    }

    public boolean isProximityCorrectionEnabled() {
        return this.mProximityCorrectOn;
    }

    public void setProximityThreshold(int threshold) {
        this.mProximityThresholdSquare = threshold * threshold;
    }

    public int[] newCodeArray() {
        int[] codes = new int[getMaxNearbyKeys()];
        Arrays.fill(codes, -1);
        return codes;
    }
}
