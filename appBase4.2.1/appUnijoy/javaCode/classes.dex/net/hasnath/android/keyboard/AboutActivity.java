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
        this.scrolling.setText(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf("Ridmik Board - The Bangla Keyboard\nA modded version of 'Ridmik Keyboard'.\nAll credit goes to the creator and everyone\nbehind the Ridmik Keyboard team \nfor creating such an awesome app!\n'THE MOST USED BENGALI ANDROID BOARD!'\n" + "I just tried to bring few changes\nfor better compatibilty\nas the app wasn't updated for long!\n")).append("\nRidmik Board Features:\n\n").toString())).append("- New Android Emojis\n- New Custom Themes\n- In-App Update Service\n- Android Oreo Support\n").toString())).append("&\n- Web and Dev Support all the way!\n\n").toString())).append("Maintainer:\n").toString())).append("Nayem Ador\nXDA | FB | Twitter | G+ | Telegram\n@adroitadorkhan\n\nSpecial Thanks to\nSuperb বা'ল Boys & Beta Testers!\nEnjoy Ridmik Board!").toString());
    }

    public void helpClicked(View v) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("https://github.com/AdroitAdorKhan/RidmikBoard/blob/master/Changes.md"));
        startActivity(intent);
    }

    public void keymapClicked(View v) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("https://www.facebook.com/AdroitAdorKhan"));
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
