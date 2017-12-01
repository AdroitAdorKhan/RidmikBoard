package net.hasnath.android.keyboard;

import android.content.SharedPreferences.Editor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class SharedPreferencesCompat {
    private static final Method sApplyMethod = findApplyMethod();

    private static Method findApplyMethod() {
        try {
            return Editor.class.getMethod("apply", new Class[0]);
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    public static void apply(Editor editor) {
        if (sApplyMethod != null) {
            try {
                sApplyMethod.invoke(editor, new Object[0]);
                return;
            } catch (InvocationTargetException e) {
            } catch (IllegalAccessException e2) {
            }
        }
        editor.commit();
    }
}
