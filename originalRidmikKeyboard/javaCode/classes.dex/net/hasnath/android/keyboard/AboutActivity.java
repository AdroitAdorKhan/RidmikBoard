package net.hasnath.android.keyboard;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import net.hasnath.android.habijabi.ScrollingTextView;
import ridmik.keyboard.R;

public class AboutActivity extends Activity {
    ScrollingTextView scrolling;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        setContentView(R.layout.about);
        this.scrolling = (ScrollingTextView) findViewById(R.id.scrolling);
        this.scrolling.setText(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf("Ridmik Keyboard is a free application\nto help spread Bangla in the 'machines'.\n" + "Your support and suggestions\nare very important to make it better!\n")).append("\nThanks to:\n\n").toString())).append("Nayeem Islam,\n for the icons of Ridmik Blue theme!\n").toString())).append("&\n the awesome logo!\n\n").toString())).append("Special thanks to:\n").toString())).append("Omi Azad\nFor lots of suggestions to improve the keyboard").toString());
    }

    public void helpClicked(View v) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("http://hasnath.net/ridmik-keyboard"));
        startActivity(intent);
    }

    public void keymapClicked(View v) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("http://hasnath.net/ridmik-keymap"));
        startActivity(intent);
    }

    public void commentClicked(View v) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("http://hasnath.net/ridmik-suggestions.php"));
        startActivity(intent);
    }

    public void suggClicked(View v) {
    }
}
