package net.hasnath.android.keyboard;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.SystemClock;
import android.provider.ContactsContract.Contacts;
import android.text.TextUtils;
import android.util.Log;

public class ContactsDictionary extends ExpandableDictionary {
    private static final int FREQUENCY_FOR_CONTACTS = 128;
    private static final int FREQUENCY_FOR_CONTACTS_BIGRAM = 90;
    private static final int INDEX_NAME = 1;
    private static final String[] PROJECTION = new String[]{"_id", "display_name"};
    private static final String TAG = "ContactsDictionary";
    private long mLastLoadedContacts;
    private ContentObserver mObserver;

    public ContactsDictionary(Context context, int dicTypeId) {
        super(context, dicTypeId);
        ContentResolver cres = context.getContentResolver();
        Uri uri = Contacts.CONTENT_URI;
        ContentObserver anonymousClass1 = new ContentObserver(null) {
            public void onChange(boolean self) {
                ContactsDictionary.this.setRequiresReload(true);
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

    public void startDictionaryLoadingTaskLocked() {
        long now = SystemClock.uptimeMillis();
        if (this.mLastLoadedContacts == 0 || now - this.mLastLoadedContacts > 1800000) {
            super.startDictionaryLoadingTaskLocked();
        }
    }

    public void loadDictionaryAsync() {
        try {
            Cursor cursor = getContext().getContentResolver().query(Contacts.CONTENT_URI, PROJECTION, null, null, null);
            if (cursor != null) {
                addWords(cursor);
            }
        } catch (IllegalStateException e) {
            Log.e(TAG, "Contacts DB is having problems");
        }
        this.mLastLoadedContacts = SystemClock.uptimeMillis();
    }

    private void addWords(Cursor cursor) {
        clearDictionary();
        int maxWordLength = getMaxWordLength();
        try {
            if (cursor.moveToFirst()) {
                while (!cursor.isAfterLast()) {
                    String name = cursor.getString(1);
                    if (name != null) {
                        int len = name.length();
                        String prevWord = null;
                        int i = 0;
                        while (i < len) {
                            if (Character.isLetter(name.charAt(i))) {
                                int j = i + 1;
                                while (j < len) {
                                    char c = name.charAt(j);
                                    if (c != '-' && c != '\'' && !Character.isLetter(c)) {
                                        break;
                                    }
                                    j++;
                                }
                                String word = name.substring(i, j);
                                i = j - 1;
                                int wordLen = word.length();
                                if (wordLen < maxWordLength && wordLen > 1) {
                                    super.addWord(word, 128);
                                    if (!TextUtils.isEmpty(prevWord)) {
                                        super.setBigram(prevWord, word, FREQUENCY_FOR_CONTACTS_BIGRAM);
                                    }
                                    prevWord = word;
                                }
                            }
                            i++;
                        }
                    }
                    cursor.moveToNext();
                }
            }
            cursor.close();
        } catch (IllegalStateException e) {
            Log.e(TAG, "Contacts DB is having problems");
        }
    }
}
