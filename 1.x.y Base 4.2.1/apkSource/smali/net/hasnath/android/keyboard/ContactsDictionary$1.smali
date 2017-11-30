.class Lnet/hasnath/android/keyboard/ContactsDictionary$1;
.super Landroid/database/ContentObserver;
.source "ContactsDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hasnath/android/keyboard/ContactsDictionary;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hasnath/android/keyboard/ContactsDictionary;


# direct methods
.method constructor <init>(Lnet/hasnath/android/keyboard/ContactsDictionary;Landroid/os/Handler;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lnet/hasnath/android/keyboard/ContactsDictionary$1;->this$0:Lnet/hasnath/android/keyboard/ContactsDictionary;

    .line 57
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "self"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lnet/hasnath/android/keyboard/ContactsDictionary$1;->this$0:Lnet/hasnath/android/keyboard/ContactsDictionary;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/hasnath/android/keyboard/ContactsDictionary;->setRequiresReload(Z)V

    .line 61
    return-void
.end method
