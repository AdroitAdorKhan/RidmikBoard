package net.hasnath.android.habijabi;

import android.inputmethodservice.InputMethodService;
import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;

public class HardwareKeyboard extends InputMethodService {
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        return true;
    }

    public boolean onKeyUp(int keyCode, KeyEvent event) {
        int code = event.getKeyCharacterMap().get(keyCode, event.getMetaState());
        InputConnection ic = getCurrentInputConnection();
        if (ic == null) {
            return false;
        }
        ic.commitText(String.valueOf((char) code), 1);
        return true;
    }
}
