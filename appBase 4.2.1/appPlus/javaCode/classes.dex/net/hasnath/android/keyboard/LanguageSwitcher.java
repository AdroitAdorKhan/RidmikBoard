package net.hasnath.android.keyboard;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import java.util.Locale;
import net.hasnath.android.ridmik.voice.LoggingEvents;

public class LanguageSwitcher {
    private int mCurrentIndex = 0;
    private String mDefaultInputLanguage;
    private Locale mDefaultInputLocale;
    private LatinIME mIme;
    private Locale[] mLocales;
    private String[] mSelectedLanguageArray;
    private String mSelectedLanguages;
    private Locale mSystemLocale;

    public LanguageSwitcher(LatinIME ime) {
        this.mIme = ime;
        this.mLocales = new Locale[0];
    }

    public Locale[] getLocales() {
        return this.mLocales;
    }

    public int getLocaleCount() {
        return this.mLocales.length;
    }

    public boolean loadLocales(SharedPreferences sp) {
        String selectedLanguages = sp.getString(LatinIME.PREF_SELECTED_LANGUAGES, null);
        String currentLanguage = sp.getString(LatinIME.PREF_INPUT_LANGUAGE, null);
        if (selectedLanguages == null || selectedLanguages.length() < 1) {
            loadDefaults();
            if (this.mLocales.length == 0) {
                return false;
            }
            this.mLocales = new Locale[0];
            return true;
        } else if (selectedLanguages.equals(this.mSelectedLanguages)) {
            return false;
        } else {
            this.mSelectedLanguageArray = selectedLanguages.split(",");
            this.mSelectedLanguages = selectedLanguages;
            constructLocales();
            this.mCurrentIndex = 0;
            if (currentLanguage != null) {
                this.mCurrentIndex = 0;
                for (int i = 0; i < this.mLocales.length; i++) {
                    if (this.mSelectedLanguageArray[i].equals(currentLanguage)) {
                        this.mCurrentIndex = i;
                        break;
                    }
                }
            }
            return true;
        }
    }

    private void loadDefaults() {
        this.mDefaultInputLocale = this.mIme.getResources().getConfiguration().locale;
        String country = this.mDefaultInputLocale.getCountry();
        this.mDefaultInputLanguage = new StringBuilder(String.valueOf(this.mDefaultInputLocale.getLanguage())).append(TextUtils.isEmpty(country) ? LoggingEvents.EXTRA_CALLING_APP_NAME : "_" + country).toString();
    }

    private void constructLocales() {
        this.mLocales = new Locale[this.mSelectedLanguageArray.length];
        for (int i = 0; i < this.mLocales.length; i++) {
            String lang = this.mSelectedLanguageArray[i];
            this.mLocales[i] = new Locale(lang.substring(0, 2), lang.length() > 4 ? lang.substring(3, 5) : LoggingEvents.EXTRA_CALLING_APP_NAME);
        }
    }

    public String getInputLanguage() {
        if (getLocaleCount() == 0) {
            return this.mDefaultInputLanguage;
        }
        return this.mSelectedLanguageArray[this.mCurrentIndex];
    }

    public String[] getEnabledLanguages() {
        return this.mSelectedLanguageArray;
    }

    public Locale getInputLocale() {
        if (getLocaleCount() == 0) {
            return this.mDefaultInputLocale;
        }
        return this.mLocales[this.mCurrentIndex];
    }

    public Locale getNextInputLocale() {
        if (getLocaleCount() == 0) {
            return this.mDefaultInputLocale;
        }
        return this.mLocales[(this.mCurrentIndex + 1) % this.mLocales.length];
    }

    public void setSystemLocale(Locale locale) {
        this.mSystemLocale = locale;
    }

    public Locale getSystemLocale() {
        return this.mSystemLocale;
    }

    public Locale getPrevInputLocale() {
        if (getLocaleCount() == 0) {
            return this.mDefaultInputLocale;
        }
        return this.mLocales[((this.mCurrentIndex - 1) + this.mLocales.length) % this.mLocales.length];
    }

    public void reset() {
        this.mCurrentIndex = 0;
    }

    public void next() {
        this.mCurrentIndex++;
        if (this.mCurrentIndex >= this.mLocales.length) {
            this.mCurrentIndex = 0;
        }
    }

    public void prev() {
        this.mCurrentIndex--;
        if (this.mCurrentIndex < 0) {
            this.mCurrentIndex = this.mLocales.length - 1;
        }
    }

    public void persist() {
        Editor editor = PreferenceManager.getDefaultSharedPreferences(this.mIme).edit();
        editor.putString(LatinIME.PREF_INPUT_LANGUAGE, getInputLanguage());
        SharedPreferencesCompat.apply(editor);
    }

    static String toTitleCase(String s, Locale locale) {
        return s.length() == 0 ? s : new StringBuilder(String.valueOf(s.toUpperCase(locale).charAt(0))).append(s.substring(1)).toString();
    }
}
