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
import java.util.HashSet;
import java.util.Iterator;

public class UserBigramDictionarya extends ExpandableDictionary {
    private static final String DATABASE_NAME = "userbigram_dict.db";
    private static final int DATABASE_VERSION = 1;
    private static final int FREQUENCY_FOR_TYPED = 2;
    private static final int FREQUENCY_MAX = 127;
    private static final String FREQ_COLUMN_FREQUENCY = "freq";
    private static final String FREQ_COLUMN_ID = "_id";
    private static final String FREQ_COLUMN_PAIR_ID = "pair_id";
    private static final String FREQ_TABLE_NAME = "frequency";
    private static final String MAIN_COLUMN_ID = "_id";
    private static final String MAIN_COLUMN_LOCALE = "locale";
    private static final String MAIN_COLUMN_WORD1 = "word1";
    private static final String MAIN_COLUMN_WORD2 = "word2";
    private static final String MAIN_TABLE_NAME = "main";
    protected static final int SUGGEST_THRESHOLD = 12;
    private static final String TAG = "UserBigramDictionary";
    private static int sDeleteUserBigrams = 1000;
    private static final HashMap<String, String> sDictProjectionMap = new HashMap();
    private static int sMaxUserBigrams = 10000;
    private static DatabaseHelper sOpenHelper = null;
    private static volatile boolean sUpdatingDB = false;
    private final LatinIME mIme;
    private String mLocale;
    private HashSet<Bigram> mPendingWrites = new HashSet();
    private final Object mPendingWritesLock = new Object();

    private static class Bigram {
        int frequency;
        String word1;
        String word2;

        Bigram(String word1, String word2, int frequency) {
            this.word1 = word1;
            this.word2 = word2;
            this.frequency = frequency;
        }

        public boolean equals(Object bigram) {
            Bigram bigram2 = (Bigram) bigram;
            return this.word1.equals(bigram2.word1) && this.word2.equals(bigram2.word2);
        }

        public int hashCode() {
            return (this.word1 + " " + this.word2).hashCode();
        }
    }

    private static class DatabaseHelper extends SQLiteOpenHelper {
        DatabaseHelper(Context context) {
            super(context, UserBigramDictionarya.DATABASE_NAME, null, 1);
        }

        public void onCreate(SQLiteDatabase db) {
            db.execSQL("PRAGMA foreign_keys = ON;");
            db.execSQL("CREATE TABLE main (_id INTEGER PRIMARY KEY,word1 TEXT,word2 TEXT,locale TEXT);");
            db.execSQL("CREATE TABLE frequency (_id INTEGER PRIMARY KEY,pair_id INTEGER,freq INTEGER,FOREIGN KEY(pair_id) REFERENCES main(_id) ON DELETE CASCADE);");
        }

        public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
            Log.w(UserBigramDictionarya.TAG, "Upgrading database from version " + oldVersion + " to " + newVersion + ", which will destroy all old data");
            db.execSQL("DROP TABLE IF EXISTS main");
            db.execSQL("DROP TABLE IF EXISTS frequency");
            onCreate(db);
        }
    }

    private static class UpdateDbTask extends AsyncTask<Void, Void, Void> {
        private final DatabaseHelper mDbHelper;
        private final String mLocale;
        private final HashSet<Bigram> mMap;

        public UpdateDbTask(Context context, DatabaseHelper openHelper, HashSet<Bigram> pendingWrites, String locale) {
            this.mMap = pendingWrites;
            this.mLocale = locale;
            this.mDbHelper = openHelper;
        }

        private void checkPruneData(SQLiteDatabase db) {
            db.execSQL("PRAGMA foreign_keys = ON;");
            Cursor c = db.query(UserBigramDictionarya.FREQ_TABLE_NAME, new String[]{UserBigramDictionarya.FREQ_COLUMN_PAIR_ID}, null, null, null, null, null);
            try {
                int totalRowCount = c.getCount();
                if (totalRowCount > UserBigramDictionarya.sMaxUserBigrams) {
                    int numDeleteRows = (totalRowCount - UserBigramDictionarya.sMaxUserBigrams) + UserBigramDictionarya.sDeleteUserBigrams;
                    int pairIdColumnId = c.getColumnIndex(UserBigramDictionarya.FREQ_COLUMN_PAIR_ID);
                    c.moveToFirst();
                    for (int count = 0; count < numDeleteRows && !c.isAfterLast(); count++) {
                        String pairId = c.getString(pairIdColumnId);
                        db.delete(UserBigramDictionarya.MAIN_TABLE_NAME, "_id=?", new String[]{pairId});
                        c.moveToNext();
                    }
                }
                c.close();
            } catch (Throwable th) {
                c.close();
            }
        }

        protected void onPreExecute() {
            UserBigramDictionarya.sUpdatingDB = true;
        }

        protected Void doInBackground(Void... v) {
            SQLiteDatabase db = this.mDbHelper.getWritableDatabase();
            db.execSQL("PRAGMA foreign_keys = ON;");
            Iterator<Bigram> iterator = this.mMap.iterator();
            while (iterator.hasNext()) {
                int pairId;
                Bigram bi = (Bigram) iterator.next();
                Cursor c = db.query(UserBigramDictionarya.MAIN_TABLE_NAME, new String[]{"_id"}, "word1=? AND word2=? AND locale=?", new String[]{bi.word1, bi.word2, this.mLocale}, null, null, null);
                if (c.moveToFirst()) {
                    pairId = c.getInt(c.getColumnIndex("_id"));
                    db.delete(UserBigramDictionarya.FREQ_TABLE_NAME, "pair_id=?", new String[]{Integer.toString(pairId)});
                } else {
                    pairId = Long.valueOf(db.insert(UserBigramDictionarya.MAIN_TABLE_NAME, null, getContentValues(bi.word1, bi.word2, this.mLocale))).intValue();
                }
                c.close();
                db.insert(UserBigramDictionarya.FREQ_TABLE_NAME, null, getFrequencyContentValues(pairId, bi.frequency));
            }
            checkPruneData(db);
            UserBigramDictionarya.sUpdatingDB = false;
            return null;
        }

        private ContentValues getContentValues(String word1, String word2, String locale) {
            ContentValues values = new ContentValues(3);
            values.put(UserBigramDictionarya.MAIN_COLUMN_WORD1, word1);
            values.put(UserBigramDictionarya.MAIN_COLUMN_WORD2, word2);
            values.put("locale", locale);
            return values;
        }

        private ContentValues getFrequencyContentValues(int pairId, int frequency) {
            ContentValues values = new ContentValues(2);
            values.put(UserBigramDictionarya.FREQ_COLUMN_PAIR_ID, Integer.valueOf(pairId));
            values.put(UserBigramDictionarya.FREQ_COLUMN_FREQUENCY, Integer.valueOf(frequency));
            return values;
        }
    }

    static {
        sDictProjectionMap.put("_id", "_id");
        sDictProjectionMap.put(MAIN_COLUMN_WORD1, MAIN_COLUMN_WORD1);
        sDictProjectionMap.put(MAIN_COLUMN_WORD2, MAIN_COLUMN_WORD2);
        sDictProjectionMap.put("locale", "locale");
        sDictProjectionMap.put("_id", "_id");
        sDictProjectionMap.put(FREQ_COLUMN_PAIR_ID, FREQ_COLUMN_PAIR_ID);
        sDictProjectionMap.put(FREQ_COLUMN_FREQUENCY, FREQ_COLUMN_FREQUENCY);
    }

    public void setDatabaseMax(int maxUserBigram) {
        sMaxUserBigrams = maxUserBigram;
    }

    public void setDatabaseDelete(int deleteUserBigram) {
        sDeleteUserBigrams = deleteUserBigram;
    }

    public UserBigramDictionarya(Context context, LatinIME ime, String locale, int dicTypeId) {
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

    public void close() {
        flushPendingWrites();
        super.close();
    }

    public int addBigrams(String word1, String word2) {
        if (this.mIme != null && this.mIme.getCurrentWord().isAutoCapitalized()) {
            word2 = new StringBuilder(String.valueOf(Character.toLowerCase(word2.charAt(0)))).append(word2.substring(1)).toString();
        }
        int freq = super.addBigram(word1, word2, 2);
        if (freq > 127) {
            freq = 127;
        }
        synchronized (this.mPendingWritesLock) {
            if (freq != 2) {
                if (!this.mPendingWrites.isEmpty()) {
                    Bigram bi = new Bigram(word1, word2, freq);
                    this.mPendingWrites.remove(bi);
                    this.mPendingWrites.add(bi);
                }
            }
            this.mPendingWrites.add(new Bigram(word1, word2, freq));
        }
        return freq;
    }

    public void flushPendingWrites() {
        synchronized (this.mPendingWritesLock) {
            if (this.mPendingWrites.isEmpty()) {
                return;
            }
            new UpdateDbTask(getContext(), sOpenHelper, this.mPendingWrites, this.mLocale).execute(new Void[0]);
            this.mPendingWrites = new HashSet();
        }
    }

    void waitUntilUpdateDBDone() {
        synchronized (this.mPendingWritesLock) {
            while (sUpdatingDB) {
                try {
                    Thread.sleep(100);
                } catch (InterruptedException e) {
                }
            }
        }
    }

    public void loadDictionaryAsync() {
        Cursor cursor = query("locale=?", new String[]{this.mLocale});
        try {
            if (cursor.moveToFirst()) {
                int word1Index = cursor.getColumnIndex(MAIN_COLUMN_WORD1);
                int word2Index = cursor.getColumnIndex(MAIN_COLUMN_WORD2);
                int frequencyIndex = cursor.getColumnIndex(FREQ_COLUMN_FREQUENCY);
                while (!cursor.isAfterLast()) {
                    String word1 = cursor.getString(word1Index);
                    String word2 = cursor.getString(word2Index);
                    int frequency = cursor.getInt(frequencyIndex);
                    if (word1.length() < 32 && word2.length() < 32) {
                        super.setBigram(word1, word2, frequency);
                    }
                    cursor.moveToNext();
                }
            }
            cursor.close();
        } catch (Throwable th) {
            cursor.close();
        }
    }

    private Cursor query(String selection, String[] selectionArgs) {
        SQLiteQueryBuilder qb = new SQLiteQueryBuilder();
        qb.setTables("main INNER JOIN frequency ON (main._id=frequency.pair_id)");
        qb.setProjectionMap(sDictProjectionMap);
        return qb.query(sOpenHelper.getReadableDatabase(), new String[]{MAIN_COLUMN_WORD1, MAIN_COLUMN_WORD2, FREQ_COLUMN_FREQUENCY}, selection, selectionArgs, null, null, null);
    }
}
