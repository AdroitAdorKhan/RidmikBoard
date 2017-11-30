.class Lnet/hasnath/android/keyboard/UserDictionarya$1;
.super Landroid/database/ContentObserver;
.source "UserDictionarya.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hasnath/android/keyboard/UserDictionarya;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hasnath/android/keyboard/UserDictionarya;


# direct methods
.method constructor <init>(Lnet/hasnath/android/keyboard/UserDictionarya;Landroid/os/Handler;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lnet/hasnath/android/keyboard/UserDictionarya$1;->this$0:Lnet/hasnath/android/keyboard/UserDictionarya;

    .line 48
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "self"    # Z

    .prologue
    .line 51
    iget-object v0, p0, Lnet/hasnath/android/keyboard/UserDictionarya$1;->this$0:Lnet/hasnath/android/keyboard/UserDictionarya;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/UserDictionarya;->setRequiresReload(Z)V

    .line 52
    return-void
.end method
