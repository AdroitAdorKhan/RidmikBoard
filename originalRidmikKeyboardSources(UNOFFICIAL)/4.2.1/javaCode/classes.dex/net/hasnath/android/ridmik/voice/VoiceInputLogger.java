package net.hasnath.android.ridmik.voice;

import android.content.Context;
import android.content.Intent;
import net.hasnath.android.ridmik.voice.LoggingEvents.VoiceIme;

public class VoiceInputLogger {
    private static final String TAG = VoiceInputLogger.class.getSimpleName();
    private static VoiceInputLogger sVoiceInputLogger;
    private final Intent mBaseIntent;
    private final Context mContext;
    private boolean mHasLoggingInfo = false;

    public static synchronized VoiceInputLogger getLogger(Context contextHint) {
        VoiceInputLogger voiceInputLogger;
        synchronized (VoiceInputLogger.class) {
            if (sVoiceInputLogger == null) {
                sVoiceInputLogger = new VoiceInputLogger(contextHint);
            }
            voiceInputLogger = sVoiceInputLogger;
        }
        return voiceInputLogger;
    }

    public VoiceInputLogger(Context context) {
        this.mContext = context;
        this.mBaseIntent = new Intent(LoggingEvents.ACTION_LOG_EVENT);
        this.mBaseIntent.putExtra(LoggingEvents.EXTRA_APP_NAME, VoiceIme.APP_NAME);
    }

    private Intent newLoggingBroadcast(int event) {
        Intent i = new Intent(this.mBaseIntent);
        i.putExtra(LoggingEvents.EXTRA_EVENT, event);
        return i;
    }

    public void flush() {
        if (hasLoggingInfo()) {
            Intent i = new Intent(this.mBaseIntent);
            i.putExtra(LoggingEvents.EXTRA_FLUSH, true);
            this.mContext.sendBroadcast(i);
            setHasLoggingInfo(false);
        }
    }

    public void keyboardWarningDialogShown() {
        setHasLoggingInfo(true);
        this.mContext.sendBroadcast(newLoggingBroadcast(0));
    }

    public void keyboardWarningDialogDismissed() {
        setHasLoggingInfo(true);
        this.mContext.sendBroadcast(newLoggingBroadcast(1));
    }

    public void keyboardWarningDialogOk() {
        setHasLoggingInfo(true);
        this.mContext.sendBroadcast(newLoggingBroadcast(2));
    }

    public void keyboardWarningDialogCancel() {
        setHasLoggingInfo(true);
        this.mContext.sendBroadcast(newLoggingBroadcast(3));
    }

    public void settingsWarningDialogShown() {
        setHasLoggingInfo(true);
        this.mContext.sendBroadcast(newLoggingBroadcast(4));
    }

    public void settingsWarningDialogDismissed() {
        setHasLoggingInfo(true);
        this.mContext.sendBroadcast(newLoggingBroadcast(5));
    }

    public void settingsWarningDialogOk() {
        setHasLoggingInfo(true);
        this.mContext.sendBroadcast(newLoggingBroadcast(6));
    }

    public void settingsWarningDialogCancel() {
        setHasLoggingInfo(true);
        this.mContext.sendBroadcast(newLoggingBroadcast(7));
    }

    public void swipeHintDisplayed() {
        setHasLoggingInfo(true);
        this.mContext.sendBroadcast(newLoggingBroadcast(8));
    }

    public void cancelDuringListening() {
        setHasLoggingInfo(true);
        this.mContext.sendBroadcast(newLoggingBroadcast(10));
    }

    public void cancelDuringWorking() {
        setHasLoggingInfo(true);
        this.mContext.sendBroadcast(newLoggingBroadcast(11));
    }

    public void cancelDuringError() {
        setHasLoggingInfo(true);
        this.mContext.sendBroadcast(newLoggingBroadcast(12));
    }

    public void punctuationHintDisplayed() {
        setHasLoggingInfo(true);
        this.mContext.sendBroadcast(newLoggingBroadcast(9));
    }

    public void error(int code) {
        setHasLoggingInfo(true);
        Intent i = newLoggingBroadcast(13);
        i.putExtra(VoiceIme.EXTRA_ERROR_CODE, code);
        this.mContext.sendBroadcast(i);
    }

    public void start(String locale, boolean swipe) {
        setHasLoggingInfo(true);
        Intent i = newLoggingBroadcast(14);
        i.putExtra(VoiceIme.EXTRA_START_LOCALE, locale);
        i.putExtra(VoiceIme.EXTRA_START_SWIPE, swipe);
        i.putExtra(LoggingEvents.EXTRA_TIMESTAMP, System.currentTimeMillis());
        this.mContext.sendBroadcast(i);
    }

    public void voiceInputDelivered(int length) {
        setHasLoggingInfo(true);
        Intent i = newLoggingBroadcast(15);
        i.putExtra("length", length);
        this.mContext.sendBroadcast(i);
    }

    public void textModifiedByTypingInsertion(int length) {
        setHasLoggingInfo(true);
        Intent i = newLoggingBroadcast(17);
        i.putExtra("length", length);
        i.putExtra(VoiceIme.EXTRA_TEXT_MODIFIED_TYPE, 3);
        this.mContext.sendBroadcast(i);
    }

    public void textModifiedByTypingInsertionPunctuation(int length) {
        setHasLoggingInfo(true);
        Intent i = newLoggingBroadcast(17);
        i.putExtra("length", length);
        i.putExtra(VoiceIme.EXTRA_TEXT_MODIFIED_TYPE, 4);
        this.mContext.sendBroadcast(i);
    }

    public void textModifiedByTypingDeletion(int length) {
        setHasLoggingInfo(true);
        Intent i = newLoggingBroadcast(17);
        i.putExtra("length", length);
        i.putExtra(VoiceIme.EXTRA_TEXT_MODIFIED_TYPE, 2);
        this.mContext.sendBroadcast(i);
    }

    public void textModifiedByChooseSuggestion(int suggestionLength, int replacedPhraseLength, int index, String before, String after) {
        setHasLoggingInfo(true);
        Intent i = newLoggingBroadcast(17);
        i.putExtra(VoiceIme.EXTRA_TEXT_MODIFIED_TYPE, 1);
        i.putExtra("length", suggestionLength);
        i.putExtra("index", index);
        this.mContext.sendBroadcast(i);
    }

    public void inputEnded() {
        setHasLoggingInfo(true);
        this.mContext.sendBroadcast(newLoggingBroadcast(18));
    }

    public void voiceInputSettingEnabled() {
        setHasLoggingInfo(true);
        this.mContext.sendBroadcast(newLoggingBroadcast(19));
    }

    public void voiceInputSettingDisabled() {
        setHasLoggingInfo(true);
        this.mContext.sendBroadcast(newLoggingBroadcast(20));
    }

    private void setHasLoggingInfo(boolean hasLoggingInfo) {
        this.mHasLoggingInfo = hasLoggingInfo;
    }

    private boolean hasLoggingInfo() {
        return this.mHasLoggingInfo;
    }
}
