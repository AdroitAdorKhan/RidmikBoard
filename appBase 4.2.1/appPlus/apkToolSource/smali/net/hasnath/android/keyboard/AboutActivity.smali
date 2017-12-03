.class public Lnet/hasnath/android/keyboard/AboutActivity;
.super Landroid/app/Activity;
.source "AboutActivity.java"


# instance fields
.field scrolling:Lnet/hasnath/android/habijabi/ScrollingTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public commentClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "https://adroitadorkhan.github.io/RidmikBoard/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method public helpClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "https://github.com/AdroitAdorKhan/RidmikBoard/blob/master/Changes.md"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 47
    return-void
.end method

.method public keymapClicked(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "https://www.facebook.com/AdroitAdorKhan"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v0}, Lnet/hasnath/android/keyboard/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 53
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/AboutActivity;->requestWindowFeature(I)Z

    .line 21
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/AboutActivity;->setContentView(I)V

    .line 24
    const v1, 0x7f0f000b

    invoke-virtual {p0, v1}, Lnet/hasnath/android/keyboard/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/hasnath/android/habijabi/ScrollingTextView;

    iput-object v1, p0, Lnet/hasnath/android/keyboard/AboutActivity;->scrolling:Lnet/hasnath/android/habijabi/ScrollingTextView;

    .line 25
    const-string v0, "Ridmik Board - The Bangla Keyboard\nA modded version of \'Ridmik Keyboard\'.\nAll credit goes to the creator and everyone\nbehind the Ridmik Keyboard team \nfor creating such an awesome app!\n\n\'THE MOST USED BENGALI ANDROID BOARD!\'\n"

    .line 26
    .local v0, "scrollingText":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "I just tried to bring few changes\nfor better compatibilty\nas the app wasn\'t updated for long!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\nRidmik Board Features:\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "- New Android Emojis\n- New Custom Themes\n- In-App Update Service\n- Android Oreo Support\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&\n- Web and Dev Support all the way!\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Maintainer:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Nayem Ador\nXDA | FB | Twitter | G+ | Telegram\n@adroitadorkhan\n\nSpecial Thanks to\nSuperb \u09ac\u09be\'\u09b2 Boys & Beta Testers!\nEnjoy Ridmik Board!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lnet/hasnath/android/keyboard/AboutActivity;->scrolling:Lnet/hasnath/android/habijabi/ScrollingTextView;

    invoke-virtual {v1, v0}, Lnet/hasnath/android/habijabi/ScrollingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-void
.end method

.method public suggClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    return-void
.end method
