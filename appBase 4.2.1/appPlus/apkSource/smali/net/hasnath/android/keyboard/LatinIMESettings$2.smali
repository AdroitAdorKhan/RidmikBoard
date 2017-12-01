.class Lnet/hasnath/android/keyboard/LatinIMESettings$2;
.super Ljava/lang/Object;
.source "LatinIMESettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hasnath/android/keyboard/LatinIMESettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hasnath/android/keyboard/LatinIMESettings;


# direct methods
.method constructor <init>(Lnet/hasnath/android/keyboard/LatinIMESettings;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings$2;->this$0:Lnet/hasnath/android/keyboard/LatinIMESettings;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "https://play.google.com/store/apps/details?id=ridmik.keyboard"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 126
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinIMESettings$2;->this$0:Lnet/hasnath/android/keyboard/LatinIMESettings;

    invoke-virtual {v1, v0}, Lnet/hasnath/android/keyboard/LatinIMESettings;->startActivity(Landroid/content/Intent;)V

    .line 127
    const/4 v1, 0x1

    return v1
.end method
