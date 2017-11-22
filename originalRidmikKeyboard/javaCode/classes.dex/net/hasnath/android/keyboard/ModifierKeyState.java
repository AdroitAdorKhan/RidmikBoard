package net.hasnath.android.keyboard;

class ModifierKeyState {
    private static final int MOMENTARY = 2;
    private static final int PRESSING = 1;
    private static final int RELEASING = 0;
    private int mMomentaryOtherKeyCode;
    private int mState = 0;

    ModifierKeyState() {
    }

    public void onPress() {
        this.mState = 1;
    }

    public void onRelease() {
        this.mState = 0;
    }

    public void onOtherKeyPressed(int primaryCode) {
        if (this.mState == 1) {
            this.mState = 2;
            this.mMomentaryOtherKeyCode = primaryCode;
        }
    }

    public boolean isMomentary() {
        return this.mState == 2;
    }

    public int getOtherKeyCode() {
        return this.mMomentaryOtherKeyCode;
    }
}
