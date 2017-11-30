package net.hasnath.android.keyboard;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import android.os.AsyncTask;
import android.util.Log;
import java.util.HashMap;
import java.util.Map.Entry;

public class AutoDictionarya extends ExpandableDictionary {
    private static final String AUTODICT_TABLE_NAME = "words";
    private static final String COLUMN_FREQUENCY = "freq";
    private static final String COLUMN_ID = "_id";
    private static final String COLUMN_LOCALE = "locale";
    private static final String COLUMN_WORD = "word";
    private static final String DATABASE_NAME = "auto_dict.db";
    private static final int DATABASE_VERSION = 1;
    public static final String DEFAULT_SORT_ORDER = "freq DESC";
    static final int FREQUENCY_FOR_AUTO_ADD = 250;
    static final int FREQUENCY_FOR_PICKED = 3;
    static final int FREQUENCY_FOR_TYPED = 1;
    private static final int PROMOTION_THRESHOLD = 12;
    private static final int VALIDITY_THRESHOLD = 6;
    private static HashMap<String, String> sDictProjectionMap = new HashMap();
    private static DatabaseHelper sOpenHelper = null;
    private LatinIME mIme;
    private String mLocale;
    private HashMap<String, Integer> mPendingWrites = new HashMap();
    private final Object mPendingWritesLock = new Object();

    private static class DatabaseHelper extends SQLiteOpenHelper {
        DatabaseHelper(Context context) {
            super(context, AutoDictionarya.DATABASE_NAME, null, 1);
        }

        public void onCreate(SQLiteDatabase db) {
            db.execSQL("CREATE TABLE words (_id INTEGER PRIMARY KEY,word TEXT,freq INTEGER,locale TEXT);");
        }

        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            Log.w("AutoDictionary", "Upgrading database from version " + oldVersion + " to " + newVersion + ", which will destroy all old data");
            db.execSQL("DROP TABLE IF EXISTS words");
            onCreate(db);
        }
    }

    private static class UpdateDbTask extends AsyncTask<Void, Void, Void> {
        private final DatabaseHelper mDbHelper;
        private final String mLocale;
        private final HashMap<String, Integer> mMap;

        public UpdateDbTask(Context context, DatabaseHelper openHelper, HashMap<String, Integer> pendingWrites, String locale) {
            this.mMap = pendingWrites;
            this.mLocale = locale;
            this.mDbHelper = openHelper;
        }

        protected Void doInBackground(Void... v) {
            SQLiteDatabase db = this.mDbHelper.getWritableDatabase();
            for (Entry<String, Integer> entry : this.mMap.entrySet()) {
                Integer freq = (Integer) entry.getValue();
                db.delete(AutoDictionarya.AUTODICT_TABLE_NAME, "word=? AND locale=?", new String[]{(String) entry.getKey(), this.mLocale});
                if (freq != null) {
                    db.insert(AutoDictionarya.AUTODICT_TABLE_NAME, null, getContentValues((String) entry.getKey(), freq.intValue(), this.mLocale));
                }
            }
            return null;
        }

        private ContentValues getContentValues(String word, int frequency, String locale) {
            ContentValues values = new ContentValues(4);
            values.put(AutoDictionarya.COLUMN_WORD, word);
            values.put(AutoDictionarya.COLUMN_FREQUENCY, Integer.valueOf(frequency));
            values.put("locale", locale);
            return values;
        }
    }

    static {
        sDictProjectionMap.put(COLUMN_ID, COLUMN_ID);
        sDictProjectionMap.put(COLUMN_WORD, COLUMN_WORD);
        sDictProjectionMap.put(COLUMN_FREQUENCY, COLUMN_FREQUENCY);
        sDictProjectionMap.put("locale", "locale");
    }

    public AutoDictionarya(Context context, LatinIME ime, String locale, int dicTypeId) {
        super(context, dicTypeId);
        this.mIme = ime;
        this.mLocale = locale;
        if (sOpenHelper == null) {
            sOpenHelper = new DatabaseHelper(getContext());
        }
        if (this.mLocale != null && this.mLocale.length() > 1) {
            loadDictionary();
        }
    }

    public boolean isValidWord(CharSequence word) {
        return getWordFrequency(word) >= 6;
    }

    public void close() {
        flushPendingWrites();
        super.close();
    }

    public void loadDictionaryAsync() {
        Cursor cursor = query("locale=?", new String[]{this.mLocale});
        try {
            if (cursor.moveToFirst()) {
                int wordIndex = cursor.getColumnIndex(COLUMN_WORD);
                int frequencyIndex = cursor.getColumnIndex(COLUMN_FREQUENCY);
                while (!cursor.isAfterLast()) {
                    String word = cursor.getString(wordIndex);
                    int frequency = cursor.getInt(frequencyIndex);
                    if (word.length() < getMaxWordLength()) {
                        super.addWord(word, frequency);
                    }
                    cursor.moveToNext();
                }
            }
            cursor.close();
        } catch (Throwable th) {
            cursor.close();
        }
    }

    public void addWord(String word, int addFrequency) {
        int length = word.length();
        if (length >= 2 && length <= getMaxWordLength()) {
            if (this.mIme.getCurrentWord().isAutoCapitalized()) {
                word = new StringBuilder(String.valueOf(Character.toLowerCase(word.charAt(0)))).append(word.substring(1)).toString();
            }
            int freq = getWordFrequency(word);
            freq = freq < 0 ? addFrequency : freq + addFrequency;
            super.addWord(word, freq);
            if (freq >= 12) {
                this.mIme.promoteToUserDictionary(word, FREQUENCY_FOR_AUTO_ADD);
                freq = 0;
            }
            synchronized (this.mPendingWritesLock) {
                this.mPendingWrites.put(word, freq == 0 ? null : new Integer(freq));
            }
        }
    }

    public void flushPendingWrites() {
        synchronized (this.mPendingWritesLock) {
            if (this.mPendingWrites.isEmpty()) {
                return;
            }
            new UpdateDbTask(getContext(), sOpenHelper, this.mPendingWrites, this.mLocale).execute(new Void[0]);
            this.mPendingWrites = new HashMap();
        }
    }

    private Cursor query(String selection, String[] selectionArgs) {
        SQLiteQueryBuilder qb = new SQLiteQueryBuilder();
        qb.setTables(AUTODICT_TABLE_NAME);
        qb.setProjectionMap(sDictProjectionMap);
        return qb.query(sOpenHelper.getReadableDatabase(), null, selection, selectionArgs, null, null, "freq DESC");
    }
}
