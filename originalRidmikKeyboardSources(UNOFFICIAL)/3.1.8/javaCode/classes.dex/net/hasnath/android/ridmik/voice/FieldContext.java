package net.hasnath.android.ridmik.voice;

import android.os.Bundle;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputConnection;

public class FieldContext {
    private static final boolean DBG = false;
    static final String ENABLED_LANGUAGES = "enabledLanguages";
    static final String FIELD_ID = "fieldId";
    static final String FIELD_NAME = "fieldName";
    static final String HINT = "hint";
    static final String IME_OPTIONS = "imeOptions";
    static final String INPUT_TYPE = "inputType";
    static final String LABEL = "label";
    static final String PACKAGE_NAME = "packageName";
    static final String SELECTED_LANGUAGE = "selectedLanguage";
    static final String SINGLE_LINE = "singleLine";
    Bundle mFieldInfo = new Bundle();

    public FieldContext(InputConnection conn, EditorInfo info, String selectedLanguage, String[] enabledLanguages) {
        addEditorInfoToBundle(info, this.mFieldInfo);
        addInputConnectionToBundle(conn, this.mFieldInfo);
        addLanguageInfoToBundle(selectedLanguage, enabledLanguages, this.mFieldInfo);
    }

    private static String safeToString(Object o) {
        if (o == null) {
            return LoggingEvents.EXTRA_CALLING_APP_NAME;
        }
        return o.toString();
    }

    private static void addEditorInfoToBundle(EditorInfo info, Bundle bundle) {
        if (info != null) {
            bundle.putString(LABEL, safeToString(info.label));
            bundle.putString(HINT, safeToString(info.hintText));
            bundle.putString(PACKAGE_NAME, safeToString(info.packageName));
            bundle.putInt(FIELD_ID, info.fieldId);
            bundle.putString(FIELD_NAME, safeToString(info.fieldName));
            bundle.putInt(INPUT_TYPE, info.inputType);
            bundle.putInt(IME_OPTIONS, info.imeOptions);
        }
    }

    private static void addInputConnectionToBundle(InputConnection conn, Bundle bundle) {
        boolean z = DBG;
        if (conn != null) {
            ExtractedText et = conn.getExtractedText(new ExtractedTextRequest(), 0);
            if (et != null) {
                String str = SINGLE_LINE;
                if ((et.flags & 1) > 0) {
                    z = true;
                }
                bundle.putBoolean(str, z);
            }
        }
    }

    private static void addLanguageInfoToBundle(String selectedLanguage, String[] enabledLanguages, Bundle bundle) {
        bundle.putString(SELECTED_LANGUAGE, selectedLanguage);
        bundle.putStringArray(ENABLED_LANGUAGES, enabledLanguages);
    }

    public Bundle getBundle() {
        return this.mFieldInfo;
    }

    public String toString() {
        return this.mFieldInfo.toString();
    }
}
