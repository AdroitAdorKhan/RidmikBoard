.class public Lnet/hasnath/android/habijabi/WebViewActivity;
.super Landroid/app/Activity;
.source "WebViewActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private readTextFromResource(I)Ljava/lang/String;
    .locals 5
    .param p1, "resourceID"    # I

    .prologue
    .line 29
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 30
    .local v2, "raw":Ljava/io/InputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 34
    .local v3, "stream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 35
    .local v1, "i":I
    :goto_0
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 40
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v1    # "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 37
    .restart local v1    # "i":I
    :cond_0
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 38
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0

    .line 42
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v2, 0x7f030017

    invoke-virtual {p0, v2}, Lnet/hasnath/android/habijabi/WebViewActivity;->setContentView(I)V

    .line 19
    const v2, 0x7f0f0021

    invoke-virtual {p0, v2}, Lnet/hasnath/android/habijabi/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 21
    .local v1, "webview":Landroid/webkit/WebView;
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "filename"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "filename":Ljava/lang/String;
    invoke-virtual {p0}, Lnet/hasnath/android/habijabi/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/hasnath/android/habijabi/WebViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file:///android_asset/www/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 25
    return-void
.end method
