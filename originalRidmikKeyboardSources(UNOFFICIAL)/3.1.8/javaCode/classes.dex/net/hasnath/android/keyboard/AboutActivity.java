package net.hasnath.android.keyboard;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import net.hasnath.android.habijabi.ScrollingTextView;
import net.hasnath.android.ridmik.voice.LoggingEvents;

public class AboutActivity extends Activity {
    ScrollingTextView scrolling;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        setContentView(R.layout.about);
        this.scrolling = (ScrollingTextView) findViewById(R.id.scrolling);
        this.scrolling.setText(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf("Ridmik Keyboard is a free application\nto help spread Bangla in the 'machines'.\n" + "Your support and suggestions\nare very important to make it better!\n")).append("\nThanks to:\n\n").toString())).append("Nayeem Islam,\n for the icons of Ridmik Blue theme!\n").toString())).append("&\n the awesome logo!\n\n").toString())).append("Nahian Islam Rahat,\n for the Keyboard name!\n").toString())).append("&\n").toString())).append("Shahidul Islam, Sabid Bin Habib,\nTamzeed Islam, Bashima Islam,\n").toString())).append("Jisan Mahmud, Arannya Monzur,\nMazhar Sonet, Tamjid Al Rahat,\n").toString())).append("Rafi Kamal, Kamrul Islam Shohan,\nFaysal Hossain, Nawfil Nibir Neel\n").toString())).append("and\nDr. Mohammed Eunus Ali Sir\n").toString())).append("for the friendly support!\n\n").toString())).append("Special thanks to:\n").toString())).append("Omi Azad\nFor lots of suggestions to improve the keyboard").toString());
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
        Intent gmailIntent = new Intent();
        gmailIntent.setClassName("com.google.android.gm", "com.google.android.gm.ComposeActivityGmail");
        gmailIntent.putExtra("android.intent.extra.SUBJECT", "Ridmik Keyboard");
        gmailIntent.putExtra("android.intent.extra.TEXT", LoggingEvents.EXTRA_CALLING_APP_NAME);
        gmailIntent.putExtra("android.intent.extra.EMAIL", new String[]{"ridmiklab@gmail.com"});
        startActivity(gmailIntent);
    }
}
