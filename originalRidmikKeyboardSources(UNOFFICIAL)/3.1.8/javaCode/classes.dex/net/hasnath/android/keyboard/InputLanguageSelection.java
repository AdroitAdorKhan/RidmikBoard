package net.hasnath.android.keyboard;

import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceGroup;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import net.hasnath.android.ridmik.voice.LoggingEvents;

public class InputLanguageSelection extends PreferenceActivity {
    private static final String[] WHITELIST_LANGUAGES = new String[]{"en_US", "bn_BD"};
    private ArrayList<Loc> mAvailableLanguages = new ArrayList();
    private String mSelectedLanguages;

    private static class Loc implements Comparable<Object> {
        static Collator sCollator = Collator.getInstance();
        String label;
        Locale locale;

        public Loc(String label, Locale locale) {
            this.label = label;
            this.locale = locale;
        }

        public String toString() {
            return this.label;
        }

        public int compareTo(Object o) {
            return sCollator.compare(this.label, ((Loc) o).label);
        }
    }

    private static boolean isWhitelisted(String lang) {
        for (String s : WHITELIST_LANGUAGES) {
            if (s.equalsIgnoreCase(lang)) {
                return true;
            }
        }
        return false;
    }

    protected void onCreate(Bundle icicle) {
        super.onCreate(icicle);
        addPreferencesFromResource(R.xml.language_prefs);
        this.mSelectedLanguages = PreferenceManager.getDefaultSharedPreferences(this).getString(LatinIME.PREF_SELECTED_LANGUAGES, LoggingEvents.EXTRA_CALLING_APP_NAME);
        String[] languageList = this.mSelectedLanguages.split(",");
        this.mAvailableLanguages = getUniqueLocales();
        PreferenceGroup parent = getPreferenceScreen();
        for (int i = 0; i < this.mAvailableLanguages.size(); i++) {
            CheckBoxPreference pref = new CheckBoxPreference(this);
            Locale locale = ((Loc) this.mAvailableLanguages.get(i)).locale;
            pref.setTitle(LanguageSwitcher.toTitleCase(locale.getDisplayName(locale), locale));
            pref.setChecked(isLocaleIn(locale, languageList));
            if (hasDictionary(locale)) {
                pref.setSummary(R.string.has_dictionary);
            }
            parent.addPreference(pref);
        }
    }

    private boolean isLocaleIn(Locale locale, String[] list) {
        String lang = get5Code(locale);
        for (String equalsIgnoreCase : list) {
            if (lang.equalsIgnoreCase(equalsIgnoreCase)) {
                return true;
            }
        }
        return false;
    }

    private boolean hasDictionary(Locale locale) {
        return true;
    }

    private String get5Code(Locale locale) {
        String country = locale.getCountry();
        return locale.getLanguage() + (TextUtils.isEmpty(country) ? LoggingEvents.EXTRA_CALLING_APP_NAME : "_" + country);
    }

    protected void onResume() {
        super.onResume();
    }

    protected void onPause() {
        super.onPause();
        String checkedLanguages = LoggingEvents.EXTRA_CALLING_APP_NAME;
        PreferenceGroup parent = getPreferenceScreen();
        int count = parent.getPreferenceCount();
        for (int i = 0; i < count; i++) {
            if (((CheckBoxPreference) parent.getPreference(i)).isChecked()) {
                checkedLanguages = new StringBuilder(String.valueOf(checkedLanguages)).append(get5Code(((Loc) this.mAvailableLanguages.get(i)).locale)).append(",").toString();
            }
        }
        if (checkedLanguages.length() < 1) {
            checkedLanguages = null;
        }
        Editor editor = PreferenceManager.getDefaultSharedPreferences(this).edit();
        editor.putString(LatinIME.PREF_SELECTED_LANGUAGES, checkedLanguages);
        SharedPreferencesCompat.apply(editor);
    }

    ArrayList<Loc> getUniqueLocales() {
        String[] locales = getAssets().getLocales();
        Arrays.sort(locales);
        ArrayList<Loc> uniqueLocales = new ArrayList();
        int origSize = locales.length;
        Loc[] preprocess = new Loc[origSize];
        int i = 0;
        int finalSize = 0;
        while (i < origSize) {
            String language;
            Locale l;
            int finalSize2;
            String s = locales[i];
            int len = s.length();
            if (len == 5) {
                language = s.substring(0, 2);
                l = new Locale(language, s.substring(3, 5));
            } else {
                if (len == 2) {
                    language = s;
                    l = new Locale(language);
                }
                finalSize2 = finalSize;
                i++;
                finalSize = finalSize2;
            }
            if (!isWhitelisted(s)) {
                finalSize2 = finalSize;
            } else if (finalSize == 0) {
                finalSize2 = finalSize + 1;
                preprocess[finalSize] = new Loc(LanguageSwitcher.toTitleCase(l.getDisplayName(l), l), l);
            } else if (preprocess[finalSize - 1].locale.getLanguage().equals(language)) {
                preprocess[finalSize - 1].label = LanguageSwitcher.toTitleCase(preprocess[finalSize - 1].locale.getDisplayName(), preprocess[finalSize - 1].locale);
                finalSize2 = finalSize + 1;
                preprocess[finalSize] = new Loc(LanguageSwitcher.toTitleCase(l.getDisplayName(), l), l);
            } else {
                if (!s.equals("zz_ZZ")) {
                    finalSize2 = finalSize + 1;
                    preprocess[finalSize] = new Loc(LanguageSwitcher.toTitleCase(l.getDisplayName(l), l), l);
                }
                finalSize2 = finalSize;
            }
            i++;
            finalSize = finalSize2;
        }
        for (i = 0; i < finalSize; i++) {
            uniqueLocales.add(preprocess[i]);
        }
        return uniqueLocales;
    }
}
