package net.hasnath.android.keyboard;

import android.content.Context;
import android.graphics.Typeface;
import android.util.Log;
import java.util.Hashtable;

public class Typefaces {
    private static final Hashtable<String, Typeface> cache = new Hashtable();

    public static Typeface get(Context c, String name) {
        Typeface typeface;
        synchronized (cache) {
            if (!cache.containsKey(name)) {
                try {
                    cache.put(name, Typeface.createFromAsset(c.getAssets(), "fonts/" + name));
                } catch (Exception e) {
                    Log.e("BanglaFont", "Bangla font loading error");
                    return null;
                }
            }
            typeface = (Typeface) cache.get(name);
        }
        return typeface;
    }
}
