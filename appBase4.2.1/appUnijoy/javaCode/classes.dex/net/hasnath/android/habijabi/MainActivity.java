package net.hasnath.android.habijabi;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings.Secure;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebView;
import android.widget.Toast;
import java.util.List;
import net.hasnath.android.keyboard.AboutActivity;
import net.hasnath.android.keyboard.LatinIME;
import net.hasnath.android.keyboard.LatinIMESettings;
import ridmik.keyboard.R;

public class MainActivity extends Activity {
    private final String ADDON_PACKAGE_NAME = "net.hasnath.android.typebangla";

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (isInputMethodDefault() && isInputMethodEnabled() && isAddonInstalled()) {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("net.hasnath.android.typebangla", "air.net.hasnath.android.typebangla.AppEntry"));
            startActivity(intent);
            finish();
            return;
        }
        setContentView(R.layout.main);
        ((WebView) findViewById(R.id.mainpagewebview)).loadUrl("file:///android_asset/www/keymapviewformain.html");
    }

    public void addonDownloadClick(View v) {
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=net.hasnath.android.typebangla")));
    }

    public void onResume() {
        super.onResume();
        if (!isInputMethodEnabled()) {
            enableDialog().show();
        } else if (!isInputMethodDefault()) {
            makeDefaultDialog().show();
        }
    }

    public void openLanguageSettings() {
        startActivity(new Intent("android.settings.INPUT_METHOD_SETTINGS"));
    }

    public void showInputMethodPicker() {
        InputMethodManager imeManager = (InputMethodManager) getSystemService("input_method");
        if (imeManager != null) {
            imeManager.showInputMethodPicker();
        } else {
            Toast.makeText(getApplicationContext(), "Error!", 1).show();
        }
    }

    private boolean isInputMethodEnabled() {
        List<InputMethodInfo> mInputMethodProperties = ((InputMethodManager) getSystemService("input_method")).getEnabledInputMethodList();
        ComponentName myInputMethod = new ComponentName(getBaseContext(), LatinIME.class);
        for (InputMethodInfo ifo : mInputMethodProperties) {
            if (ifo.getComponent().equals(myInputMethod)) {
                return true;
            }
        }
        return false;
    }

    private boolean isInputMethodDefault() {
        return new ComponentName(getBaseContext(), LatinIME.class).equals(ComponentName.unflattenFromString(Secure.getString(getBaseContext().getContentResolver(), "default_input_method")));
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case R.id.tutorialmain /*2131689518*/:
                Intent intent = new Intent();
                intent.setClass(getApplicationContext(), WebViewActivity.class);
                intent.setFlags(268435456);
                intent.putExtra("filename", "phonetictyping.html");
                intent.putExtra("title", "Phonetic Tutorila");
                startActivity(intent);
                break;
            case R.id.findonfacebook /*2131689519*/:
                Intent fa = new Intent("android.intent.action.VIEW");
                fa.setData(Uri.parse("https://github.com/AdroitAdorKhan/RidmikBoard/releases/"));
                startActivity(fa);
                break;
            case R.id.ratemain /*2131689520*/:
                Intent marketIntent = new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=ridmik.keyboard"));
                marketIntent.addFlags(1074266112);
                startActivity(marketIntent);
                break;
            case R.id.settingsmain /*2131689521*/:
                Intent ino = new Intent();
                ino.setClass(getApplicationContext(), LatinIMESettings.class);
                ino.setFlags(268435456);
                startActivity(ino);
                break;
            case R.id.aboutmain /*2131689522*/:
                Intent in = new Intent(getApplicationContext(), AboutActivity.class);
                in.setFlags(268435456);
                startActivity(in);
                break;
        }
        return super.onOptionsItemSelected(item);
    }

    private Dialog enableDialog() {
        return new Builder(this).setIcon(R.drawable.ridmikand).setMessage("\nYou need to Enable Ridmik Board first. Please click OK to go to your phone's keyboard settings then tick the box right beside Ridmik Board.\n").setTitle("Enable Ridmik Board - The Bangla Keyboard!").setPositiveButton("OK", new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                MainActivity.this.openLanguageSettings();
            }
        }).setNegativeButton("Cancel", new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                MainActivity.this.finish();
            }
        }).create();
    }

    private Dialog makeDefaultDialog() {
        return new Builder(this).setIcon(R.drawable.ridmik_logo).setMessage("\nYou need to set Ridmik Board as the default keyboard of your device. Please click OK and then select Ridmik Board from the list.\n").setTitle("Ridmik Board Defualt").setPositiveButton("OK", new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                MainActivity.this.showInputMethodPicker();
                MainActivity.this.finish();
            }
        }).setNegativeButton("Cancel", new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                MainActivity.this.finish();
            }
        }).create();
    }

    private boolean isAddonInstalled() {
        boolean app_installed;
        try {
            getPackageManager().getPackageInfo("net.hasnath.android.typebangla", 1);
            app_installed = true;
        } catch (NameNotFoundException e) {
            app_installed = false;
        }
        if (!app_installed) {
            return app_installed;
        }
        try {
            if (getPackageManager().getPackageInfo("net.hasnath.android.typebangla", 0).versionCode <= 2) {
                return false;
            }
            return app_installed;
        } catch (NameNotFoundException e2) {
            return false;
        }
    }
}
