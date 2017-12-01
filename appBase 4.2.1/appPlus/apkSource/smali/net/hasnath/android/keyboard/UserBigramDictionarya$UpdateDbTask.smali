.class Lnet/hasnath/android/keyboard/UserBigramDictionarya$UpdateDbTask;
.super Landroid/os/AsyncTask;
.source "UserBigramDictionarya.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/UserBigramDictionarya;
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
.field private final mDbHelper:Lnet/hasnath/android/keyboard/UserBigramDictionarya$DatabaseHelper;

.field private final mLocale:Ljava/lang/String;

.field private final mMap:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lnet/hasnath/android/keyboard/UserBigramDictionarya$Bigram;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/hasnath/android/keyboard/UserBigramDictionarya$DatabaseHelper;Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "openHelper"    # Lnet/hasnath/android/keyboard/UserBigramDictionarya$DatabaseHelper;
    .param p4, "locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lnet/hasnath/android/keyboard/UserBigramDictionarya$DatabaseHelper;",
            "Ljava/util/HashSet",
            "<",
            "Lnet/hasnath/android/keyboard/UserBigramDictionarya$Bigram;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 308
    .local p3, "pendingWrites":Ljava/util/HashSet;, "Ljava/util/HashSet<Lnet/hasnath/android/keyboard/UserBigramDictionarya$Bigram;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 310
    iput-object p3, p0, Lnet/hasnath/android/keyboard/UserBigramDictionarya$UpdateDbTask;->mMap:Ljava/util/HashSet;

    .line 311
    iput-object p4, p0, Lnet/hasnath/android/keyboard/UserBigramDictionarya$UpdateDbTask;->mLocale:Ljava/lang/String;

    .line 312
    iput-object p2, p0, Lnet/hasnath/android/keyboard/UserBigramDictionarya$UpdateDbTask;->mDbHelper:Lnet/hasnath/android/keyboard/UserBigramDictionarya$DatabaseHelper;

    .line 313
    return-void
.end method

.method private checkPruneData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 317
    const-string v0, "PRAGMA foreign_keys = ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 318
    const-string v1, "frequency"

    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "pair_id"

    aput-object v0, v2, v4

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 321
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 323
    .local v13, "totalRowCount":I
    invoke-static {}, Lnet/hasnath/android/keyboard/UserBigramDictionarya;->access$0()I

    move-result v0

    if-le v13, v0, :cond_0

    .line 324
    invoke-static {}, Lnet/hasnath/android/keyboard/UserBigramDictionarya;->access$0()I

    move-result v0

    sub-int v0, v13, v0

    invoke-static {}, Lnet/hasnath/android/keyboard/UserBigramDictionarya;->access$1()I

    move-result v1

    add-int v10, v0, v1

    .line 325
    .local v10, "numDeleteRows":I
    const-string v0, "pair_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 326
    .local v12, "pairIdColumnId":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 327
    const/4 v9, 0x0

    .line 328
    .local v9, "count":I
    :goto_0
    if-ge v9, v10, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    .end local v9    # "count":I
    .end local v10    # "numDeleteRows":I
    .end local v12    # "pairIdColumnId":I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 341
    return-void

    .line 329
    .restart local v9    # "count":I
    .restart local v10    # "numDeleteRows":I
    .restart local v12    # "pairIdColumnId":I
    :cond_1
    :try_start_1
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 332
    .local v11, "pairId":Ljava/lang/String;
    const-string v0, "main"

    const-string v1, "_id=?"

    .line 333
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    .line 332
    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 334
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 338
    .end local v9    # "count":I
    .end local v10    # "numDeleteRows":I
    .end local v11    # "pairId":Ljava/lang/String;
    .end local v12    # "pairIdColumnId":I
    .end local v13    # "totalRowCount":I
    :catchall_0
    move-exception v0

    .line 339
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 340
    throw v0
.end method

.method private getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2
    .param p1, "word1"    # Ljava/lang/String;
    .param p2, "word2"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/lang/String;

    .prologue
    .line 387
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 388
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "word1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v1, "word2"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v1, "locale"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    return-object v0
.end method

.method private getFrequencyContentValues(II)Landroid/content/ContentValues;
    .locals 3
    .param p1, "pairId"    # I
    .param p2, "frequency"    # I

    .prologue
    .line 395
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 396
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "pair_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 397
    const-string v1, "freq"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 398
    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hasnath/android/keyboard/UserBigramDictionarya$UpdateDbTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 350
    iget-object v1, p0, Lnet/hasnath/android/keyboard/UserBigramDictionarya$UpdateDbTask;->mDbHelper:Lnet/hasnath/android/keyboard/UserBigramDictionarya$DatabaseHelper;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/UserBigramDictionarya$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 351
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "PRAGMA foreign_keys = ON;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lnet/hasnath/android/keyboard/UserBigramDictionarya$UpdateDbTask;->mMap:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 354
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/hasnath/android/keyboard/UserBigramDictionarya$Bigram;>;"
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    invoke-direct {p0, v0}, Lnet/hasnath/android/keyboard/UserBigramDictionarya$UpdateDbTask;->checkPruneData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 381
    const/4 v1, 0x0

    invoke-static {v1}, Lnet/hasnath/android/keyboard/UserBigramDictionarya;->access$2(Z)V

    .line 383
    const/4 v1, 0x0

    return-object v1

    .line 355
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/hasnath/android/keyboard/UserBigramDictionarya$Bigram;

    .line 358
    .local v8, "bi":Lnet/hasnath/android/keyboard/UserBigramDictionarya$Bigram;
    const-string v1, "main"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    .line 359
    const-string v3, "word1=? AND word2=? AND locale=?"

    .line 361
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, v8, Lnet/hasnath/android/keyboard/UserBigramDictionarya$Bigram;->word1:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v8, Lnet/hasnath/android/keyboard/UserBigramDictionarya$Bigram;->word2:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lnet/hasnath/android/keyboard/UserBigramDictionarya$UpdateDbTask;->mLocale:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 358
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 364
    .local v9, "c":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 367
    .local v11, "pairId":I
    const-string v1, "frequency"

    const-string v2, "pair_id=?"

    .line 368
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 367
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 375
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 378
    const-string v1, "frequency"

    const/4 v2, 0x0

    iget v3, v8, Lnet/hasnath/android/keyboard/UserBigramDictionarya$Bigram;->frequency:I

    invoke-direct {p0, v11, v3}, Lnet/hasnath/android/keyboard/UserBigramDictionarya$UpdateDbTask;->getFrequencyContentValues(II)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 371
    .end local v11    # "pairId":I
    :cond_1
    const-string v1, "main"

    const/4 v2, 0x0

    .line 372
    iget-object v3, v8, Lnet/hasnath/android/keyboard/UserBigramDictionarya$Bigram;->word1:Ljava/lang/String;

    iget-object v4, v8, Lnet/hasnath/android/keyboard/UserBigramDictionarya$Bigram;->word2:Ljava/lang/String;

    iget-object v5, p0, Lnet/hasnath/android/keyboard/UserBigramDictionarya$UpdateDbTask;->mLocale:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lnet/hasnath/android/keyboard/UserBigramDictionarya$UpdateDbTask;->getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    .line 371
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 373
    .local v12, "pairIdLong":Ljava/lang/Long;
    invoke-virtual {v12}, Ljava/lang/Long;->intValue()I

    move-result v11

    .restart local v11    # "pairId":I
    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    invoke-static {v0}, Lnet/hasnath/android/keyboard/UserBigramDictionarya;->access$2(Z)V

    .line 346
    return-void
.end method
