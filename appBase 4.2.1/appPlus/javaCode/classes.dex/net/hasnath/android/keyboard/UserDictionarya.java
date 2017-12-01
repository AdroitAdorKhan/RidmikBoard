package net.hasnath.android.keyboard;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.UserDictionary.Words;
import net.hasnath.android.keyboard.Dictionary.WordCallback;
import net.hasnath.android.ridmik.voice.LoggingEvents.VoiceIme;

public class UserDictionarya extends ExpandableDictionary {
    private static final int INDEX_FREQUENCY = 2;
    private static final int INDEX_WORD = 1;
    private static final String[] PROJECTION = new String[]{"_id", "word", "frequency"};
    private String mLocale;
    private ContentObserver mObserver;

    public UserDictionarya(Context context, String locale) {
        super(context, 2);
        this.mLocale = locale;
        ContentResolver cres = context.getContentResolver();
        Uri uri = Words.CONTENT_URI;
        ContentObserver anonymousClass1 = new ContentObserver(null) {
            public void onChange(boolean self) {
                UserDictionarya.this.setRequiresReload(true);
            }
        };
        this.mObserver = anonymousClass1;
        cres.registerContentObserver(uri, true, anonymousClass1);
        loadDictionary();
    }

    public synchronized void close() {
        if (this.mObserver != null) {
            getContext().getContentResolver().unregisterContentObserver(this.mObserver);
            this.mObserver = null;
        }
        super.close();
    }

    public void loadDictionaryAsync() {
        addWords(getContext().getContentResolver().query(Words.CONTENT_URI, PROJECTION, "(locale IS NULL) or (locale=?)", new String[]{this.mLocale}, null));
    }

    public synchronized void addWord(String word, int frequency) {
        if (getRequiresReload()) {
            loadDictionaryAsync();
        }
        if (word.length() < getMaxWordLength()) {
            super.addWord(word, frequency);
            final ContentValues values = new ContentValues(5);
            values.put("word", word);
            values.put("frequency", Integer.valueOf(frequency));
            values.put(VoiceIme.EXTRA_START_LOCALE, this.mLocale);
            values.put("appid", Integer.valueOf(0));
            final ContentResolver contentResolver = getContext().getContentResolver();
            new Thread("addWord") {
                public void run() {
                    contentResolver.insert(Words.CONTENT_URI, values);
                }
            }.start();
            setRequiresReload(false);
        }
    }

    public synchronized void getWords(WordComposer codes, WordCallback callback, int[] nextLettersFrequencies) {
        super.getWords(codes, callback, nextLettersFrequencies);
    }

    public synchronized boolean isValidWord(CharSequence word) {
        return super.isValidWord(word);
    }

    private void addWords(Cursor cursor) {
        clearDictionary();
        int maxWordLength = getMaxWordLength();
        if (cursor.moveToFirst()) {
            while (!cursor.isAfterLast()) {
                String word = cursor.getString(1);
                int frequency = cursor.getInt(2);
                if (word.length() < maxWordLength) {
                    super.addWord(word, frequency);
                }
                cursor.moveToNext();
            }
        }
        cursor.close();
    }
}
