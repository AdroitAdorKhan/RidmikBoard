package net.hasnath.android.keyboard;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import android.util.Log;
import java.util.HashMap;
import net.hasnath.android.keyboard.Dictionary.WordCallback;

public class MyDictionary extends ExpandableDictionary {
    private static final String COLUMN_FREQUENCY = "freq";
    private static final String COLUMN_ID = "_id";
    private static final String COLUMN_LOCALE = "locale";
    private static final String COLUMN_WORD = "word";
    private static final String DATABASE_NAME = "mydictword.db";
    private static final int DATABASE_VERSION = 1;
    public static final String DEFAULT_SORT_ORDER = "freq DESC";
    private static final String MYDICT_TABLE_NAME = "mydictwordlist";
    private static HashMap<String, String> sDictProjectionMap = new HashMap();
    private static DatabaseHelper sOpenHelper = null;
    private boolean banglaNowp = false;

    private static class DatabaseHelper extends SQLiteOpenHelper {
        DatabaseHelper(Context context) {
            super(context, MyDictionary.DATABASE_NAME, null, 1);
        }

        public void onCreate(SQLiteDatabase db) {
            db.execSQL("CREATE TABLE mydictwordlist (_id INTEGER PRIMARY KEY,word TEXT,freq INTEGER,locale TEXT);");
        }

        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            Log.w("AutoDictionary", "Upgrading database from version " + oldVersion + " to " + newVersion + ", which will destroy all old data");
            db.execSQL("DROP TABLE IF EXISTS mydictwordlist");
            onCreate(db);
        }
    }

    static {
        sDictProjectionMap.put(COLUMN_ID, COLUMN_ID);
        sDictProjectionMap.put(COLUMN_WORD, COLUMN_WORD);
        sDictProjectionMap.put(COLUMN_FREQUENCY, COLUMN_FREQUENCY);
        sDictProjectionMap.put("locale", "locale");
    }

    public MyDictionary(Context c, int dicTypeId, boolean banglaNow) {
        super(c, dicTypeId);
        this.banglaNowp = banglaNow;
        if (sOpenHelper == null) {
            sOpenHelper = new DatabaseHelper(getContext());
        }
        loadDictionary();
    }

    private Cursor query(String selection, String[] selectionArgs) {
        SQLiteQueryBuilder qb = new SQLiteQueryBuilder();
        qb.setTables(MYDICT_TABLE_NAME);
        qb.setProjectionMap(sDictProjectionMap);
        return qb.query(sOpenHelper.getReadableDatabase(), null, selection, selectionArgs, null, null, "freq DESC");
    }

    public void loadDictionaryAsync() {
        String mLocale = "en_US";
        if (this.banglaNowp) {
            mLocale = "bn_BD";
        }
        Cursor cursor = sOpenHelper.getReadableDatabase().query(MYDICT_TABLE_NAME, null, "locale=?", new String[]{mLocale}, null, null, null);
        try {
            if (cursor.moveToFirst()) {
                while (!cursor.isAfterLast()) {
                    String word = cursor.getString(cursor.getColumnIndex(COLUMN_WORD));
                    int frequency = cursor.getInt(cursor.getColumnIndex(COLUMN_FREQUENCY));
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

    public void close() {
        if (sOpenHelper != null) {
            sOpenHelper.close();
        }
    }

    public synchronized void addWord(String word, int frequency) {
        if (getRequiresReload()) {
            loadDictionaryAsync();
        }
        if (word.length() < getMaxWordLength()) {
            super.addWord(word, frequency);
            String mLocale = "en_US";
            if (this.banglaNowp) {
                mLocale = "bn_BD";
            }
            final ContentValues values = new ContentValues(5);
            values.put(COLUMN_WORD, word);
            values.put(COLUMN_FREQUENCY, Integer.valueOf(frequency));
            values.put("locale", mLocale);
            new Thread("addWord") {
                public void run() {
                    MyDictionary.sOpenHelper.getReadableDatabase().insert(MyDictionary.MYDICT_TABLE_NAME, null, values);
                }
            }.start();
            setRequiresReload(true);
        }
    }

    public synchronized void getWords(WordComposer codes, WordCallback callback, int[] nextLettersFrequencies) {
        super.getWords(codes, callback, nextLettersFrequencies);
    }

    public synchronized boolean isValidWord(CharSequence word) {
        return super.isValidWord(word);
    }
}
