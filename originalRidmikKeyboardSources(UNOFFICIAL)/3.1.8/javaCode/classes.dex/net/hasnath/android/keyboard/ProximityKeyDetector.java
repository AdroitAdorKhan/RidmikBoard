package net.hasnath.android.keyboard;

class ProximityKeyDetector extends KeyDetector {
    private static final int MAX_NEARBY_KEYS = 12;
    private int[] mDistances = new int[12];

    ProximityKeyDetector() {
    }

    protected int getMaxNearbyKeys() {
        return 12;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int getKeyIndexAndNearbyCodes(int r22, int r23, int[] r24) {
        /*
        r21 = this;
        r13 = r21.getKeys();
        r17 = r21.getTouchX(r22);
        r0 = r21;
        r1 = r23;
        r18 = r0.getTouchY(r1);
        r16 = -1;
        r4 = -1;
        r0 = r21;
        r0 = r0.mProximityThresholdSquare;
        r19 = r0;
        r5 = r19 + 1;
        r0 = r21;
        r7 = r0.mDistances;
        r19 = 2147483647; // 0x7fffffff float:NaN double:1.060997895E-314;
        r0 = r19;
        java.util.Arrays.fill(r7, r0);
        r0 = r21;
        r0 = r0.mKeyboard;
        r19 = r0;
        r0 = r19;
        r1 = r17;
        r2 = r18;
        r15 = r0.getNearestKeys(r1, r2);
        r12 = r15.length;
        r8 = 0;
    L_0x0039:
        if (r8 < r12) goto L_0x0046;
    L_0x003b:
        r19 = -1;
        r0 = r16;
        r1 = r19;
        if (r0 != r1) goto L_0x0045;
    L_0x0043:
        r16 = r4;
    L_0x0045:
        return r16;
    L_0x0046:
        r19 = r15[r8];
        r11 = r13[r19];
        r6 = 0;
        r0 = r17;
        r1 = r18;
        r9 = r11.isInside(r0, r1);
        if (r9 == 0) goto L_0x0057;
    L_0x0055:
        r16 = r15[r8];
    L_0x0057:
        r0 = r21;
        r0 = r0.mProximityCorrectOn;
        r19 = r0;
        if (r19 == 0) goto L_0x0071;
    L_0x005f:
        r0 = r17;
        r1 = r18;
        r6 = r11.squaredDistanceFrom(r0, r1);
        r0 = r21;
        r0 = r0.mProximityThresholdSquare;
        r19 = r0;
        r0 = r19;
        if (r6 < r0) goto L_0x0073;
    L_0x0071:
        if (r9 == 0) goto L_0x0091;
    L_0x0073:
        r0 = r11.codes;
        r19 = r0;
        r20 = 0;
        r19 = r19[r20];
        r20 = 32;
        r0 = r19;
        r1 = r20;
        if (r0 <= r1) goto L_0x0091;
    L_0x0083:
        r0 = r11.codes;
        r19 = r0;
        r0 = r19;
        r14 = r0.length;
        if (r6 >= r5) goto L_0x008f;
    L_0x008c:
        r5 = r6;
        r4 = r15[r8];
    L_0x008f:
        if (r24 != 0) goto L_0x0094;
    L_0x0091:
        r8 = r8 + 1;
        goto L_0x0039;
    L_0x0094:
        r10 = 0;
    L_0x0095:
        r0 = r7.length;
        r19 = r0;
        r0 = r19;
        if (r10 >= r0) goto L_0x0091;
    L_0x009c:
        r19 = r7[r10];
        r0 = r19;
        if (r0 <= r6) goto L_0x00df;
    L_0x00a2:
        r19 = r10 + r14;
        r0 = r7.length;
        r20 = r0;
        r20 = r20 - r10;
        r20 = r20 - r14;
        r0 = r19;
        r1 = r20;
        java.lang.System.arraycopy(r7, r10, r7, r0, r1);
        r19 = r10 + r14;
        r0 = r24;
        r0 = r0.length;
        r20 = r0;
        r20 = r20 - r10;
        r20 = r20 - r14;
        r0 = r24;
        r1 = r24;
        r2 = r19;
        r3 = r20;
        java.lang.System.arraycopy(r0, r10, r1, r2, r3);
        r0 = r11.codes;
        r19 = r0;
        r20 = 0;
        r0 = r19;
        r1 = r20;
        r2 = r24;
        java.lang.System.arraycopy(r0, r1, r2, r10, r14);
        r19 = r10 + r14;
        r0 = r19;
        java.util.Arrays.fill(r7, r10, r0, r6);
        goto L_0x0091;
    L_0x00df:
        r10 = r10 + 1;
        goto L_0x0095;
        */
        throw new UnsupportedOperationException("Method not decompiled: net.hasnath.android.keyboard.ProximityKeyDetector.getKeyIndexAndNearbyCodes(int, int, int[]):int");
    }
}
