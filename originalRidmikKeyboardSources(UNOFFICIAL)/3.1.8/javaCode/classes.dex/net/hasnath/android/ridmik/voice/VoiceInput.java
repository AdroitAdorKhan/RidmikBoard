package net.hasnath.android.ridmik.voice;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.speech.RecognitionListener;
import android.speech.SpeechRecognizer;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputConnection;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import net.hasnath.android.keyboard.EditingUtil;
import net.hasnath.android.keyboard.EditingUtil.Range;
import net.hasnath.android.keyboard.R;

public class VoiceInput implements OnClickListener {
    private static final String ALTERNATES_BUNDLE = "alternates_bundle";
    public static final int DEFAULT = 0;
    private static final String DEFAULT_RECOMMENDED_PACKAGES = "com.android.mms com.google.android.gm com.google.android.talk com.google.android.apps.googlevoice com.android.email com.android.browser ";
    public static final String DELETE_SYMBOL = " × ";
    public static boolean ENABLE_WORD_CORRECTIONS = true;
    public static final int ERROR = 3;
    private static final String EXTRA_ALTERNATES = "android.speech.extra.ALTERNATES";
    private static final String EXTRA_CALLING_PACKAGE = "calling_package";
    private static final String EXTRA_RECOGNITION_CONTEXT = "android.speech.extras.RECOGNITION_CONTEXT";
    private static final String EXTRA_SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS = "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS";
    private static final String EXTRA_SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS = "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS";
    private static final String EXTRA_SPEECH_MINIMUM_LENGTH_MILLIS = "android.speech.extras.SPEECH_INPUT_MINIMUM_LENGTH_MILLIS";
    private static final String INPUT_COMPLETE_SILENCE_LENGTH_DEFAULT_VALUE_MILLIS = "1000";
    public static final int LISTENING = 1;
    private static final int MAX_ALT_LIST_LENGTH = 6;
    private static final int MSG_CLOSE_ERROR_DIALOG = 1;
    private static final String TAG = "VoiceInput";
    public static final int WORKING = 2;
    private int mAfterVoiceInputCursorPos = 0;
    private int mAfterVoiceInputDeleteCount = 0;
    private int mAfterVoiceInputInsertCount = 0;
    private int mAfterVoiceInputInsertPunctuationCount = 0;
    private int mAfterVoiceInputSelectionSpan = 0;
    private Whitelist mBlacklist;
    private Context mContext;
    private final Handler mHandler = new Handler() {
        public void handleMessage(Message msg) {
            if (msg.what == 1) {
                VoiceInput.this.mState = 0;
                VoiceInput.this.mRecognitionView.finish();
                VoiceInput.this.mUiListener.onCancelVoice();
            }
        }
    };
    private VoiceInputLogger mLogger;
    private RecognitionListener mRecognitionListener;
    private RecognitionView mRecognitionView;
    private Whitelist mRecommendedList;
    private SpeechRecognizer mSpeechRecognizer;
    private int mState = 0;
    private UiListener mUiListener;

    private static final class AlternatesBundleKeys {
        public static final String ALTERNATES = "alternates";
        public static final String CONFIDENCE = "confidence";
        public static final String LENGTH = "length";
        public static final String MAX_SPAN_LENGTH = "max_span_length";
        public static final String SPANS = "spans";
        public static final String SPAN_KEY_DELIMITER = ":";
        public static final String START = "start";
        public static final String TEXT = "text";

        private AlternatesBundleKeys() {
        }
    }

    private class ImeRecognitionListener implements RecognitionListener {
        private boolean mEndpointed;
        int mSpeechStart;
        final ByteArrayOutputStream mWaveBuffer;

        private ImeRecognitionListener() {
            this.mWaveBuffer = new ByteArrayOutputStream();
            this.mEndpointed = false;
        }

        public void onReadyForSpeech(Bundle noiseParams) {
            VoiceInput.this.mRecognitionView.showListening();
        }

        public void onBeginningOfSpeech() {
            this.mEndpointed = false;
            this.mSpeechStart = this.mWaveBuffer.size();
        }

        public void onRmsChanged(float rmsdB) {
            VoiceInput.this.mRecognitionView.updateVoiceMeter(rmsdB);
        }

        public void onBufferReceived(byte[] buf) {
            try {
                this.mWaveBuffer.write(buf);
            } catch (IOException e) {
            }
        }

        public void onEndOfSpeech() {
            this.mEndpointed = true;
            VoiceInput.this.mState = 2;
            VoiceInput.this.mRecognitionView.showWorking(this.mWaveBuffer, this.mSpeechStart, this.mWaveBuffer.size());
        }

        public void onError(int errorType) {
            VoiceInput.this.mState = 3;
            VoiceInput.this.onError(errorType, this.mEndpointed);
        }

        public void onResults(Bundle resultsBundle) {
            List<String> results = resultsBundle.getStringArrayList("results_recognition");
            Bundle alternatesBundle = resultsBundle.getBundle(VoiceInput.ALTERNATES_BUNDLE);
            VoiceInput.this.mState = 0;
            Map<String, List<CharSequence>> alternatives = new HashMap();
            if (VoiceInput.ENABLE_WORD_CORRECTIONS && alternatesBundle != null && results.size() > 0) {
                String[] words = ((String) results.get(0)).split(" ");
                Bundle spansBundle = alternatesBundle.getBundle(AlternatesBundleKeys.SPANS);
                for (String key : spansBundle.keySet()) {
                    Bundle spanBundle = spansBundle.getBundle(key);
                    int start = spanBundle.getInt(AlternatesBundleKeys.START);
                    if (spanBundle.getInt("length") == 1 && start < words.length) {
                        List<CharSequence> altList = (List) alternatives.get(words[start]);
                        if (altList == null) {
                            altList = new ArrayList();
                            alternatives.put(words[start], altList);
                        }
                        Parcelable[] alternatesArr = spanBundle.getParcelableArray(AlternatesBundleKeys.ALTERNATES);
                        for (int j = 0; j < alternatesArr.length && altList.size() < 6; j++) {
                            String alternate = alternatesArr[j].getString(AlternatesBundleKeys.TEXT);
                            if (!altList.contains(alternate)) {
                                altList.add(alternate);
                            }
                        }
                    }
                }
            }
            if (results.size() > 5) {
                results = results.subList(0, 5);
            }
            VoiceInput.this.mUiListener.onVoiceResults(results, alternatives);
            VoiceInput.this.mRecognitionView.finish();
        }

        public void onPartialResults(Bundle partialResults) {
        }

        public void onEvent(int eventType, Bundle params) {
        }
    }

    public interface UiListener {
        void onCancelVoice();

        void onVoiceResults(List<String> list, Map<String, List<CharSequence>> map);
    }

    public VoiceInput(Context context, UiListener uiHandler) {
        int i = 0;
        this.mLogger = VoiceInputLogger.getLogger(context);
        this.mRecognitionListener = new ImeRecognitionListener();
        this.mSpeechRecognizer = SpeechRecognizer.createSpeechRecognizer(context);
        this.mSpeechRecognizer.setRecognitionListener(this.mRecognitionListener);
        this.mUiListener = uiHandler;
        this.mContext = context;
        newView();
        String recommendedPackages = SettingsUtil.getSettingsString(context.getContentResolver(), SettingsUtil.LATIN_IME_VOICE_INPUT_RECOMMENDED_PACKAGES, DEFAULT_RECOMMENDED_PACKAGES);
        this.mRecommendedList = new Whitelist();
        String[] split = recommendedPackages.split("\\s+");
        int length = split.length;
        while (i < length) {
            this.mRecommendedList.addApp(split[i]);
            i++;
        }
        this.mBlacklist = new Whitelist();
        this.mBlacklist.addApp("com.android.setupwizard");
    }

    public void setCursorPos(int pos) {
        this.mAfterVoiceInputCursorPos = pos;
    }

    public int getCursorPos() {
        return this.mAfterVoiceInputCursorPos;
    }

    public void setSelectionSpan(int span) {
        this.mAfterVoiceInputSelectionSpan = span;
    }

    public int getSelectionSpan() {
        return this.mAfterVoiceInputSelectionSpan;
    }

    public void incrementTextModificationDeleteCount(int count) {
        this.mAfterVoiceInputDeleteCount += count;
        if (this.mAfterVoiceInputInsertCount > 0) {
            logTextModifiedByTypingInsertion(this.mAfterVoiceInputInsertCount);
            this.mAfterVoiceInputInsertCount = 0;
        }
        if (this.mAfterVoiceInputInsertPunctuationCount > 0) {
            logTextModifiedByTypingInsertionPunctuation(this.mAfterVoiceInputInsertPunctuationCount);
            this.mAfterVoiceInputInsertPunctuationCount = 0;
        }
    }

    public void incrementTextModificationInsertCount(int count) {
        this.mAfterVoiceInputInsertCount += count;
        if (this.mAfterVoiceInputSelectionSpan > 0) {
            this.mAfterVoiceInputDeleteCount += this.mAfterVoiceInputSelectionSpan;
        }
        if (this.mAfterVoiceInputDeleteCount > 0) {
            logTextModifiedByTypingDeletion(this.mAfterVoiceInputDeleteCount);
            this.mAfterVoiceInputDeleteCount = 0;
        }
        if (this.mAfterVoiceInputInsertPunctuationCount > 0) {
            logTextModifiedByTypingInsertionPunctuation(this.mAfterVoiceInputInsertPunctuationCount);
            this.mAfterVoiceInputInsertPunctuationCount = 0;
        }
    }

    public void incrementTextModificationInsertPunctuationCount(int count) {
        this.mAfterVoiceInputInsertPunctuationCount++;
        if (this.mAfterVoiceInputSelectionSpan > 0) {
            this.mAfterVoiceInputDeleteCount += this.mAfterVoiceInputSelectionSpan;
        }
        if (this.mAfterVoiceInputDeleteCount > 0) {
            logTextModifiedByTypingDeletion(this.mAfterVoiceInputDeleteCount);
            this.mAfterVoiceInputDeleteCount = 0;
        }
        if (this.mAfterVoiceInputInsertCount > 0) {
            logTextModifiedByTypingInsertion(this.mAfterVoiceInputInsertCount);
            this.mAfterVoiceInputInsertCount = 0;
        }
    }

    public void flushAllTextModificationCounters() {
        if (this.mAfterVoiceInputInsertCount > 0) {
            logTextModifiedByTypingInsertion(this.mAfterVoiceInputInsertCount);
            this.mAfterVoiceInputInsertCount = 0;
        }
        if (this.mAfterVoiceInputDeleteCount > 0) {
            logTextModifiedByTypingDeletion(this.mAfterVoiceInputDeleteCount);
            this.mAfterVoiceInputDeleteCount = 0;
        }
        if (this.mAfterVoiceInputInsertPunctuationCount > 0) {
            logTextModifiedByTypingInsertionPunctuation(this.mAfterVoiceInputInsertPunctuationCount);
            this.mAfterVoiceInputInsertPunctuationCount = 0;
        }
    }

    public void onConfigurationChanged() {
        this.mRecognitionView.restoreState();
    }

    public boolean isBlacklistedField(FieldContext context) {
        return this.mBlacklist.matches(context);
    }

    public boolean isRecommendedField(FieldContext context) {
        return this.mRecommendedList.matches(context);
    }

    public void startListening(FieldContext context, boolean swipe) {
        this.mState = 0;
        Locale locale = Locale.getDefault();
        this.mLogger.start(locale.getLanguage() + "-" + locale.getCountry(), swipe);
        this.mState = 1;
        this.mRecognitionView.showInitializing();
        startListeningAfterInitialization(context);
    }

    private void startListeningAfterInitialization(FieldContext context) {
        Intent intent = makeIntent();
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", LoggingEvents.EXTRA_CALLING_APP_NAME);
        intent.putExtra(EXTRA_RECOGNITION_CONTEXT, context.getBundle());
        intent.putExtra(EXTRA_CALLING_PACKAGE, "VoiceIME");
        intent.putExtra(EXTRA_ALTERNATES, true);
        intent.putExtra("android.speech.extra.MAX_RESULTS", SettingsUtil.getSettingsInt(this.mContext.getContentResolver(), SettingsUtil.LATIN_IME_MAX_VOICE_RESULTS, 1));
        ContentResolver cr = this.mContext.getContentResolver();
        putEndpointerExtra(cr, intent, SettingsUtil.LATIN_IME_SPEECH_MINIMUM_LENGTH_MILLIS, EXTRA_SPEECH_MINIMUM_LENGTH_MILLIS, null);
        putEndpointerExtra(cr, intent, SettingsUtil.LATIN_IME_SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS, EXTRA_SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS, INPUT_COMPLETE_SILENCE_LENGTH_DEFAULT_VALUE_MILLIS);
        putEndpointerExtra(cr, intent, SettingsUtil.LATIN_IME_SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS, EXTRA_SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS, null);
        this.mSpeechRecognizer.startListening(intent);
    }

    private void putEndpointerExtra(ContentResolver cr, Intent i, String gservicesKey, String intentExtraKey, String defaultValue) {
        long l = -1;
        String s = SettingsUtil.getSettingsString(cr, gservicesKey, defaultValue);
        if (s != null) {
            try {
                l = Long.valueOf(s).longValue();
            } catch (NumberFormatException e) {
                Log.e(TAG, "could not parse value for " + gservicesKey + ": " + s);
            }
        }
        if (l != -1) {
            i.putExtra(intentExtraKey, l);
        }
    }

    public void destroy() {
        this.mSpeechRecognizer.destroy();
    }

    public void newView() {
        this.mRecognitionView = new RecognitionView(this.mContext, this);
    }

    public View getView() {
        return this.mRecognitionView.getView();
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.button /*2131165204*/:
                cancel();
                return;
            default:
                return;
        }
    }

    public void logTextModifiedByTypingInsertion(int length) {
        this.mLogger.textModifiedByTypingInsertion(length);
    }

    public void logTextModifiedByTypingInsertionPunctuation(int length) {
        this.mLogger.textModifiedByTypingInsertionPunctuation(length);
    }

    public void logTextModifiedByTypingDeletion(int length) {
        this.mLogger.textModifiedByTypingDeletion(length);
    }

    public void logTextModifiedByChooseSuggestion(String suggestion, int index, String wordSeparators, InputConnection ic) {
        String wordToBeReplaced = EditingUtil.getWordAtCursor(ic, wordSeparators, new Range());
        this.mLogger.textModifiedByChooseSuggestion(suggestion.length(), wordToBeReplaced.length(), index, wordToBeReplaced, suggestion);
    }

    public void logKeyboardWarningDialogShown() {
        this.mLogger.keyboardWarningDialogShown();
    }

    public void logKeyboardWarningDialogDismissed() {
        this.mLogger.keyboardWarningDialogDismissed();
    }

    public void logKeyboardWarningDialogOk() {
        this.mLogger.keyboardWarningDialogOk();
    }

    public void logKeyboardWarningDialogCancel() {
        this.mLogger.keyboardWarningDialogCancel();
    }

    public void logSwipeHintDisplayed() {
        this.mLogger.swipeHintDisplayed();
    }

    public void logPunctuationHintDisplayed() {
        this.mLogger.punctuationHintDisplayed();
    }

    public void logVoiceInputDelivered(int length) {
        this.mLogger.voiceInputDelivered(length);
    }

    public void logInputEnded() {
        this.mLogger.inputEnded();
    }

    public void flushLogs() {
        this.mLogger.flush();
    }

    private static Intent makeIntent() {
        Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        if (VERSION.RELEASE.equals("1.5")) {
            return intent.setClassName("com.google.android.voiceservice", "com.google.android.voiceservice.IMERecognitionService");
        }
        return intent.setClassName("com.google.android.voicesearch", "com.google.android.voicesearch.RecognitionService");
    }

    public void cancel() {
        switch (this.mState) {
            case 1:
                this.mLogger.cancelDuringListening();
                break;
            case 2:
                this.mLogger.cancelDuringWorking();
                break;
            case 3:
                this.mLogger.cancelDuringError();
                break;
        }
        this.mState = 0;
        this.mHandler.removeMessages(1);
        this.mSpeechRecognizer.cancel();
        this.mUiListener.onCancelVoice();
        this.mRecognitionView.finish();
    }

    private int getErrorStringId(int errorType, boolean endpointed) {
        switch (errorType) {
            case 1:
                if (endpointed) {
                    return R.string.voice_network_error;
                }
                return R.string.voice_too_much_speech;
            case 2:
                return R.string.voice_network_error;
            case 3:
                return R.string.voice_audio_error;
            case 4:
                return R.string.voice_server_error;
            case 5:
                return R.string.voice_not_installed;
            case 6:
                return R.string.voice_speech_timeout;
            case 7:
                return R.string.voice_no_match;
            default:
                return R.string.voice_error;
        }
    }

    private void onError(int errorType, boolean endpointed) {
        Log.i(TAG, "error " + errorType);
        this.mLogger.error(errorType);
        onError(this.mContext.getString(getErrorStringId(errorType, endpointed)));
    }

    private void onError(String error) {
        this.mState = 3;
        this.mRecognitionView.showError(error);
        this.mHandler.sendMessageDelayed(Message.obtain(this.mHandler, 1), 2000);
    }
}
