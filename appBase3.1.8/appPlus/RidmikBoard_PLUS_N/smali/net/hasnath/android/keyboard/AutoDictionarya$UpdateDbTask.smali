.class Lnet/hasnath/android/keyboard/AutoDictionarya$UpdateDbTask;
.super Landroid/os/AsyncTask;
.source "AutoDictionarya.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/AutoDictionarya;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateDbTask"
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
.field private final mDbHelper:Lnet/hasnath/android/keyboard/AutoDictionarya$DatabaseHelper;

.field private final mLocale:Ljava/lang/String;

.field private final mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/hasnath/android/keyboard/AutoDictionarya$DatabaseHelper;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "openHelper"    # Lnet/hasnath/android/keyboard/AutoDictionarya$DatabaseHelper;
    .param p4, "locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lnet/hasnath/android/keyboard/AutoDictionarya$DatabaseHelper;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 228
    .local p3, "pendingWrites":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 230
    iput-object p3, p0, Lnet/hasnath/android/keyboard/AutoDictionarya$UpdateDbTask;->mMap:Ljava/util/HashMap;

    .line 231
    iput-object p4, p0, Lnet/hasnath/android/keyboard/AutoDictionarya$UpdateDbTask;->mLocale:Ljava/lang/String;

    .line 232
    iput-object p2, p0, Lnet/hasnath/android/keyboard/AutoDictionarya$UpdateDbTask;->mDbHelper:Lnet/hasnath/android/keyboard/AutoDictionarya$DatabaseHelper;

    .line 233
    return-void
.end method

.method private getContentValues(Ljava/lang/String;ILjava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "frequency"    # I
    .param p3, "locale"    # Ljava/lang/String;

    .prologue
    .line 253
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 254
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "word"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v1, "freq"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    const-string v1, "locale"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hasnath/android/keyboard/AutoDictionarya$UpdateDbTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    const/4 v10, 0x0

    .line 237
    iget-object v4, p0, Lnet/hasnath/android/keyboard/AutoDictionarya$UpdateDbTask;->mDbHelper:Lnet/hasnath/android/keyboard/AutoDictionarya$DatabaseHelper;

    invoke-virtual {v4}, Lnet/hasnath/android/keyboard/AutoDictionarya$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 239
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v4, p0, Lnet/hasnath/android/keyboard/AutoDictionarya$UpdateDbTask;->mMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 240
    .local v3, "mEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 249
    return-object v10

    .line 240
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 241
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 242
    .local v2, "freq":Ljava/lang/Integer;
    const-string v6, "words"

    const-string v7, "word=? AND locale=?"

    .line 243
    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v8, v9

    const/4 v4, 0x1

    iget-object v9, p0, Lnet/hasnath/android/keyboard/AutoDictionarya$UpdateDbTask;->mLocale:Ljava/lang/String;

    aput-object v9, v8, v4

    .line 242
    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 244
    if-eqz v2, :cond_0

    .line 245
    const-string v6, "words"

    .line 246
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lnet/hasnath/android/keyboard/AutoDictionarya$UpdateDbTask;->mLocale:Ljava/lang/String;

    invoke-direct {p0, v4, v7, v8}, Lnet/hasnath/android/keyboard/AutoDictionarya$UpdateDbTask;->getContentValues(Ljava/lang/String;ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    .line 245
    invoke-virtual {v0, v6, v10, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method
