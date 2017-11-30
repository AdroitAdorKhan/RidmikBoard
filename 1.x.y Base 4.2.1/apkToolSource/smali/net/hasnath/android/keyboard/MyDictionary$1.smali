.class Lnet/hasnath/android/keyboard/MyDictionary$1;
.super Ljava/lang/Thread;
.source "MyDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hasnath/android/keyboard/MyDictionary;->addWord(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hasnath/android/keyboard/MyDictionary;

.field private final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lnet/hasnath/android/keyboard/MyDictionary;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lnet/hasnath/android/keyboard/MyDictionary$1;->this$0:Lnet/hasnath/android/keyboard/MyDictionary;

    iput-object p3, p0, Lnet/hasnath/android/keyboard/MyDictionary$1;->val$values:Landroid/content/ContentValues;

    .line 119
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 121
    # getter for: Lnet/hasnath/android/keyboard/MyDictionary;->sOpenHelper:Lnet/hasnath/android/keyboard/MyDictionary$DatabaseHelper;
    invoke-static {}, Lnet/hasnath/android/keyboard/MyDictionary;->access$0()Lnet/hasnath/android/keyboard/MyDictionary$DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/MyDictionary$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 123
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "mydictwordlist"

    const/4 v2, 0x0

    iget-object v3, p0, Lnet/hasnath/android/keyboard/MyDictionary$1;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 127
    return-void
.end method
