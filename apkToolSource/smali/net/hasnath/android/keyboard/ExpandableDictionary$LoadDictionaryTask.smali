.class Lnet/hasnath/android/keyboard/ExpandableDictionary$LoadDictionaryTask;
.super Landroid/os/AsyncTask;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/ExpandableDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadDictionaryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hasnath/android/keyboard/ExpandableDictionary;


# direct methods
.method private constructor <init>(Lnet/hasnath/android/keyboard/ExpandableDictionary;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary$LoadDictionaryTask;->this$0:Lnet/hasnath/android/keyboard/ExpandableDictionary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/hasnath/android/keyboard/ExpandableDictionary;Lnet/hasnath/android/keyboard/ExpandableDictionary$LoadDictionaryTask;)V
    .locals 0

    .prologue
    .line 497
    invoke-direct {p0, p1}, Lnet/hasnath/android/keyboard/ExpandableDictionary$LoadDictionaryTask;-><init>(Lnet/hasnath/android/keyboard/ExpandableDictionary;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hasnath/android/keyboard/ExpandableDictionary$LoadDictionaryTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 500
    iget-object v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary$LoadDictionaryTask;->this$0:Lnet/hasnath/android/keyboard/ExpandableDictionary;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->loadDictionaryAsync()V

    .line 501
    iget-object v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary$LoadDictionaryTask;->this$0:Lnet/hasnath/android/keyboard/ExpandableDictionary;

    # getter for: Lnet/hasnath/android/keyboard/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;
    invoke-static {v0}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->access$0(Lnet/hasnath/android/keyboard/ExpandableDictionary;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 502
    :try_start_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/ExpandableDictionary$LoadDictionaryTask;->this$0:Lnet/hasnath/android/keyboard/ExpandableDictionary;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->access$1(Lnet/hasnath/android/keyboard/ExpandableDictionary;Z)V

    .line 501
    monitor-exit v1

    .line 504
    const/4 v0, 0x0

    return-object v0

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
