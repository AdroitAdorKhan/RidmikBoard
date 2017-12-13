package net.hasnath.android.ridmik.voice;

public class LoggingEvents {
    public static final String ACTION_LOG_EVENT = "com.android.common.speech.LOG_EVENT";
    public static final String EXTRA_APP_NAME = "app_name";
    public static final String EXTRA_CALLING_APP_NAME = "";
    public static final String EXTRA_EVENT = "extra_event";
    public static final String EXTRA_FLUSH = "flush";
    public static final String EXTRA_TIMESTAMP = "timestamp";

    public class VoiceIme {
        public static final String APP_NAME = "voiceime";
        public static final int CANCEL_DURING_ERROR = 12;
        public static final int CANCEL_DURING_LISTENING = 10;
        public static final int CANCEL_DURING_WORKING = 11;
        public static final int ERROR = 13;
        public static final String EXTRA_ERROR_CODE = "code";
        public static final String EXTRA_N_BEST_CHOOSE_INDEX = "index";
        public static final String EXTRA_START_LOCALE = "locale";
        public static final String EXTRA_START_METHOD = "method";
        public static final String EXTRA_START_SWIPE = "swipe";
        public static final String EXTRA_TEXT_MODIFIED_LENGTH = "length";
        public static final String EXTRA_TEXT_MODIFIED_TYPE = "type";
        public static final int IME_TEXT_ACCEPTED = 21;
        public static final int INPUT_ENDED = 18;
        public static final int KEYBOARD_WARNING_DIALOG_CANCEL = 3;
        public static final int KEYBOARD_WARNING_DIALOG_DISMISSED = 1;
        public static final int KEYBOARD_WARNING_DIALOG_OK = 2;
        public static final int KEYBOARD_WARNING_DIALOG_SHOWN = 0;
        public static final int N_BEST_CHOOSE = 16;
        public static final int PUNCTUATION_HINT_DISPLAYED = 9;
        public static final int SETTINGS_WARNING_DIALOG_CANCEL = 7;
        public static final int SETTINGS_WARNING_DIALOG_DISMISSED = 5;
        public static final int SETTINGS_WARNING_DIALOG_OK = 6;
        public static final int SETTINGS_WARNING_DIALOG_SHOWN = 4;
        public static final int START = 14;
        public static final int START_METHOD_BUTTON = 1;
        public static final int START_METHOD_MOTION = 3;
        public static final int START_METHOD_SWIPE = 2;
        public static final int SWIPE_HINT_DISPLAYED = 8;
        public static final int TEXT_MODIFIED = 17;
        public static final int TEXT_MODIFIED_TYPE_CHOOSE_SUGGESTION = 1;
        public static final int TEXT_MODIFIED_TYPE_TYPING_DELETION = 2;
        public static final int TEXT_MODIFIED_TYPE_TYPING_INSERTION = 3;
        public static final int TEXT_MODIFIED_TYPE_TYPING_INSERTION_PUNCTUATION = 4;
        public static final int VOICE_INPUT_DELIVERED = 15;
        public static final int VOICE_INPUT_SETTING_DISABLED = 20;
        public static final int VOICE_INPUT_SETTING_ENABLED = 19;
    }

    public class VoiceSearch {
        public static final String APP_NAME = "googlemobile";
        public static final String EXTRA_N_BEST_CHOOSE_INDEX = "index";
        public static final String EXTRA_QUERY_UPDATED_VALUE = "value";
        public static final int N_BEST_CHOOSE = 2;
        public static final int N_BEST_REVEAL = 1;
        public static final int QUERY_UPDATED = 3;
        public static final int RESULT_CLICKED = 4;
        public static final int RETRY = 0;
    }
}
