package net.hasnath.android.keyboard;

import java.util.HashMap;

public class Alternative {
    private HashMap<Integer, int[]> alts = new HashMap();

    public Alternative() {
        this.alts.put(Integer.valueOf(2453), new int[]{2453, 2454});
        this.alts.put(Integer.valueOf(2455), new int[]{2455, 2456});
        this.alts.put(Integer.valueOf(2434), new int[]{2434, 2457, 2462});
        this.alts.put(Integer.valueOf(2457), new int[]{2457, 2462});
        this.alts.put(Integer.valueOf(2488), new int[]{2488, 2486, 2487});
        this.alts.put(Integer.valueOf(2468), new int[]{2468, 2463});
        this.alts.put(Integer.valueOf(2469), new int[]{2469, 2464, 2510});
        this.alts.put(Integer.valueOf(2470), new int[]{2470, 2471});
        this.alts.put(Integer.valueOf(2471), new int[]{2471, 2466});
        this.alts.put(Integer.valueOf(2476), new int[]{2476, 2477});
        this.alts.put(Integer.valueOf(2472), new int[]{2472, 2467});
        this.alts.put(Integer.valueOf(2458), new int[]{2458, 2459});
        this.alts.put(Integer.valueOf(2460), new int[]{2460, 2461, 2479});
        this.alts.put(Integer.valueOf(2479), new int[]{2479, 2461, 2460});
        this.alts.put(Integer.valueOf(2461), new int[]{2461, 2479});
        this.alts.put(Integer.valueOf(2480), new int[]{2480, 2524, 2525});
        this.alts.put(Integer.valueOf(2524), new int[]{2524, 2525});
    }

    int[] getAlts(int x) {
        int[] iArr = (int[]) this.alts.get(Integer.valueOf(x));
        if (iArr != null) {
            return iArr;
        }
        return new int[]{x};
    }
}
