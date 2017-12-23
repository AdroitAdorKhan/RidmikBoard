package net.hasnath.android.habijabi;

import android.app.Activity;
import android.os.Bundle;
import android.webkit.WebView;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import ridmik.keyboard.R;

public class WebViewActivity extends Activity {
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.webview);
        WebView webview = (WebView) findViewById(R.id.webviewid);
        String filename = getIntent().getStringExtra("filename");
        setTitle(getIntent().getStringExtra("title"));
        webview.loadUrl("file:///android_asset/www/" + filename);
    }

    private String readTextFromResource(int resourceID) {
        InputStream raw = getResources().openRawResource(resourceID);
        ByteArrayOutputStream stream = new ByteArrayOutputStream();
        try {
            for (int i = raw.read(); i != -1; i = raw.read()) {
                stream.write(i);
            }
            raw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return stream.toString();
    }
}
