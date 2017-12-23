.class public Lnet/hasnath/android/habijabi/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field private final ADDON_PACKAGE_NAME:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const-string v0, "net.hasnath.android.typebangla"

    iput-object v0, p0, Lnet/hasnath/android/habijabi/MainActivity;->ADDON_PACKAGE_NAME:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private enableDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 175
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 176
    const v2, 0x7f02005d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 177
    const-string v2, "\nYou need to Enable Ridmik Keyboard first. Please click OK to go to your phone\'s keyboard settings then tick the box right beside Ridmik Keyboard\n"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 179
    const-string v2, "Enable Ridmik Keyboard"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 180
    const-string v2, "OK"

    .line 181
    new-instance v3, Lnet/hasnath/android/habijabi/MainActivity$1;

    invoke-direct {v3, p0}, Lnet/hasnath/android/habijabi/MainActivity$1;-><init>(Lnet/hasnath/android/habijabi/MainActivity;)V

    .line 180
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 190
    const-string v2, "Cancel"

    .line 191
    new-instance v3, Lnet/hasnath/android/habijabi/MainActivity$2;

    invoke-direct {v3, p0}, Lnet/hasnath/android/habijabi/MainActivity$2;-><init>(Lnet/hasnath/android/habijabi/MainActivity;)V

    .line 190
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 200
    .local v0, "myDialog":Landroid/app/Dialog;
    return-object v0
.end method

.method private isAddonInstalled()Z
    .locals 7

    .prologue
    .line 233
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 234
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 236
    .local v0, "app_installed":Z
    :try_start_0
    const-string v4, "net.hasnath.android.typebangla"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    const/4 v0, 0x1

    .line 241
    :goto_0
    if-eqz v0, :cond_0

    .line 243
    :try_start_1
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "net.hasnath.android.typebangla"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 244
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v5, 0x2

    if-gt v4, v5, :cond_0

    .line 245
    const/4 v0, 0x0

    .line 251
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    return v0

    .line 238
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    goto :goto_0

    .line 246
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 247
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private isInputMethodDefault()Z
    .locals 5

    .prologue
    .line 102
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 103
    const-string v4, "default_input_method"

    .line 102
    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 106
    .local v0, "defaultInputMethod":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lnet/hasnath/android/keyboard/LatinIME;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v2, "myInputMethod":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private isInputMethodEnabled()Z
    .locals 6

    .prologue
    .line 90
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lnet/hasnath/android/habijabi/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 91
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v2

    .line 92
    .local v2, "mInputMethodProperties":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lnet/hasnath/android/keyboard/LatinIME;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v3, "myInputMethod":Landroid/content/ComponentName;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 98
    const/4 v4, 0x0

    :goto_0
    return v4

    .line 94
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 95
    .local v0, "ifo":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private makeDefaultDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 204
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 205
    const v2, 0x7f02005d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 206
    const-string v2, "\nYou need to set Ridmik Keyboard as the default keyboard of your device. Please click OK and then select Ridmik Keyboard from the list\n"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 208
    const-string v2, "Set as Default"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 209
    const-string v2, "OK"

    .line 210
    new-instance v3, Lnet/hasnath/android/habijabi/MainActivity$3;

    invoke-direct {v3, p0}, Lnet/hasnath/android/habijabi/MainActivity$3;-><init>(Lnet/hasnath/android/habijabi/MainActivity;)V

    .line 209
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 219
    const-string v2, "Cancel"

    .line 220
    new-instance v3, Lnet/hasnath/android/habijabi/MainActivity$4;

    invoke-direct {v3, p0}, Lnet/hasnath/android/habijabi/MainActivity$4;-><init>(Lnet/hasnath/android/habijabi/MainActivity;)V

    .line 219
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 227
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 229
    .local v0, "myDialog":Landroid/app/Dialog;
    return-object v0
.end method


# virtual methods
.method public addonDownloadClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "market://details?id=net.hasnath.android.typebangla"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 59
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lnet/hasnath/android/habijabi/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-direct {p0}, Lnet/hasnath/android/habijabi/MainActivity;->isInputMethodDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lnet/hasnath/android/habijabi/MainActivity;->isInputMethodEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lnet/hasnath/android/habijabi/MainActivity;->isAddonInstalled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "net.hasnath.android.typebangla"

    const-string v4, "air.net.hasnath.android.typebangla.AppEntry"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v0}, Lnet/hasnath/android/habijabi/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 47
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/MainActivity;->finish()V

    .line 55
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 50
    :cond_0
    const v2, 0x7f030012

    invoke-virtual {p0, v2}, Lnet/hasnath/android/habijabi/MainActivity;->setContentView(I)V

    .line 51
    const v2, 0x7f070015

    invoke-virtual {p0, v2}, Lnet/hasnath/android/habijabi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 52
    .local v1, "keymap":Landroid/webkit/WebView;
    const-string v2, "file:///android_asset/www/keymapviewformain.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 115
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 116
    .local v0, "menuIn":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 118
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/high16 v8, 0x10000000

    .line 123
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 170
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    return v6

    .line 125
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lnet/hasnath/android/keyboard/AboutActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v2, "in":Landroid/content/Intent;
    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v2}, Lnet/hasnath/android/habijabi/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 131
    .end local v2    # "in":Landroid/content/Intent;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lnet/hasnath/android/habijabi/WebViewActivity;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 133
    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 134
    const-string v6, "filename"

    const-string v7, "phonetictyping.html"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v6, "title"

    const-string v7, "Phonetic Tutorila"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v4}, Lnet/hasnath/android/habijabi/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 139
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 140
    .local v3, "ino":Landroid/content/Intent;
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lnet/hasnath/android/keyboard/LatinIMESettings;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 141
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v3}, Lnet/hasnath/android/habijabi/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 146
    .end local v3    # "ino":Landroid/content/Intent;
    :pswitch_3
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    .line 147
    const-string v7, "market://details?id=net.hasnath.android.keyboard"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 146
    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 148
    .local v5, "marketIntent":Landroid/content/Intent;
    const/high16 v6, 0x40080000    # 2.125f

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v5}, Lnet/hasnath/android/habijabi/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 152
    .end local v5    # "marketIntent":Landroid/content/Intent;
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "fa":Landroid/content/Intent;
    const-string v6, "http://facebook.com/RidmikLab"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0, v0}, Lnet/hasnath/android/habijabi/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 157
    .end local v0    # "fa":Landroid/content/Intent;
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 158
    .local v1, "gmailIntent":Landroid/content/Intent;
    const-string v6, "com.google.android.gm"

    const-string v7, "com.google.android.gm.ComposeActivityGmail"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v6, "android.intent.extra.SUBJECT"

    const-string v7, "Ridmik Keyboard"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v6, "android.intent.extra.TEXT"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v6, "android.intent.extra.EMAIL"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "ridmiklab@gmail.com"

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0, v1}, Lnet/hasnath/android/habijabi/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x7f07002c
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 66
    invoke-direct {p0}, Lnet/hasnath/android/habijabi/MainActivity;->isInputMethodEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    invoke-direct {p0}, Lnet/hasnath/android/habijabi/MainActivity;->enableDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-direct {p0}, Lnet/hasnath/android/habijabi/MainActivity;->isInputMethodDefault()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-direct {p0}, Lnet/hasnath/android/habijabi/MainActivity;->makeDefaultDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public openLanguageSettings()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/hasnath/android/habijabi/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method public showInputMethodPicker()V
    .locals 4

    .prologue
    .line 81
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lnet/hasnath/android/habijabi/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 82
    .local v0, "imeManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Error!"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
