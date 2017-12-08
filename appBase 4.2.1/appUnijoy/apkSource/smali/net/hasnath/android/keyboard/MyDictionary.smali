.class public Lnet/hasnath/android/keyboard/MyDictionary;
.super Lnet/hasnath/android/keyboard/ExpandableDictionary;
.source "MyDictionary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hasnath/android/keyboard/MyDictionary$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final COLUMN_FREQUENCY:Ljava/lang/String; = "freq"

.field private static final COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final COLUMN_LOCALE:Ljava/lang/String; = "locale"

.field private static final COLUMN_WORD:Ljava/lang/String; = "word"

.field private static final DATABASE_NAME:Ljava/lang/String; = "mydictword.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "freq DESC"

.field private static final MYDICT_TABLE_NAME:Ljava/lang/String; = "mydictwordlist"

.field private static sDictProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sOpenHelper:Lnet/hasnath/android/keyboard/MyDictionary$DatabaseHelper;


# instance fields
.field private banglaNowp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/hasnath/android/keyboard/MyDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    .line 31
    sget-object v0, Lnet/hasnath/android/keyboard/MyDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lnet/hasnath/android/keyboard/MyDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "word"

    const-string v2, "word"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lnet/hasnath/android/keyboard/MyDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "freq"

    const-string v2, "freq"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lnet/hasnath/android/keyboard/MyDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "locale"

    const-string v2, "locale"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lnet/hasnath/android/keyboard/MyDictionary;->sOpenHelper:Lnet/hasnath/android/keyboard/MyDictionary$DatabaseHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "dicTypeId"    # I
    .param p3, "banglaNow"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lnet/hasnath/android/keyboard/ExpandableDictionary;-><init>(Landroid/content/Context;I)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/hasnath/android/keyboard/MyDictionary;->banglaNowp:Z

    .line 41
    iput-boolean p3, p0, Lnet/hasnath/android/keyboard/MyDictionary;->banglaNowp:Z

    .line 43
    sget-object v0, Lnet/hasnath/android/keyboard/MyDictionary;->sOpenHelper:Lnet/hasnath/android/keyboard/MyDictionary$DatabaseHelper;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lnet/hasnath/android/keyboard/MyDictionary$DatabaseHelper;

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/MyDictionary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/hasnath/android/keyboard/MyDictionary$DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/hasnath/android/keyboard/MyDictionary;->sOpenHelper:Lnet/hasnath/android/keyboard/MyDictionary$DatabaseHelper;

    .line 47
    :cond_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/MyDictionary;->loadDictionary()V

    .line 50
    return-void
.end method

.method static synthetic access$0()Lnet/hasnath/android/keyboard/MyDictionary$DatabaseHelper;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lnet/hasnath/android/keyboard/MyDictionary;->sOpenHelper:Lnet/hasnath/android/keyboard/MyDictionary$DatabaseHelper;

    return-object v0
.end method

.method private query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 53
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 54
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v3, "mydictwordlist"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 55
    sget-object v3, Lnet/hasnath/android/keyboard/MyDictionary;->sDictProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 58
    sget-object v3, Lnet/hasnath/android/keyboard/MyDictionary;->sOpenHelper:Lnet/hasnath/android/keyboard/MyDictionary$DatabaseHelper;

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/MyDictionary$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 61
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "freq DESC"

    move-object v3, p1

    move-object v4, p2

    move-object v5, v2

    move-object v6, v2

    .line 60
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 63
    .local v8, "c":Landroid/database/Cursor;
    return-object v8
.end method


# virtual methods
.method public declared-synchronized addWord(Ljava/lang/String;I)V
    .locals 4
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "frequency"    # I

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/MyDictionary;->getRequiresReload()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/MyDictionary;->loadDictionaryAsync()V

    .line 106
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/MyDictionary;->getMaxWordLength()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lt v2, v3, :cond_1

    .line 132
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 110
    const-string v0, "en_US"

    .line 111
    .local v0, "mLocale":Ljava/lang/String;
    iget-boolean v2, p0, Lnet/hasnath/android/keyboard/MyDictionary;->banglaNowp:Z

    if-eqz v2, :cond_2

    const-string v0, "bn_BD"

    .line 114
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 115
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "word"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v2, "freq"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    const-string v2, "locale"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v2, Lnet/hasnath/android/keyboard/MyDictionary$1;

    const-string v3, "addWord"

    invoke-direct {v2, p0, v3, v1}, Lnet/hasnath/android/keyboard/MyDictionary$1;-><init>(Lnet/hasnath/android/keyboard/MyDictionary;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 128
    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/MyDictionary$1;->start()V

    .line 131
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/MyDictionary;->setRequiresReload(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    .end local v0    # "mLocale":Ljava/lang/String;
    .end local v1    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public close()V
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lnet/hasnath/android/keyboard/MyDictionary;->sOpenHelper:Lnet/hasnath/android/keyboard/MyDictionary$DatabaseHelper;

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lnet/hasnath/android/keyboard/MyDictionary;->sOpenHelper:Lnet/hasnath/android/keyboard/MyDictionary$DatabaseHelper;

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/MyDictionary$DatabaseHelper;->close()V

    .line 99
    :cond_0
    return-void
.end method

.method public declared-synchronized getWords(Lnet/hasnath/android/keyboard/WordComposer;Lnet/hasnath/android/keyboard/Dictionary$WordCallback;[I)V
    .locals 1
    .param p1, "codes"    # Lnet/hasnath/android/keyboard/WordComposer;
    .param p2, "callback"    # Lnet/hasnath/android/keyboard/Dictionary$WordCallback;
    .param p3, "nextLettersFrequencies"    # [I

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->getWords(Lnet/hasnath/android/keyboard/WordComposer;Lnet/hasnath/android/keyboard/Dictionary$WordCallback;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->isValidWord(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadDictionaryAsync()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 71
    const-string v10, "en_US"

    .line 72
    .local v10, "mLocale":Ljava/lang/String;
    iget-boolean v1, p0, Lnet/hasnath/android/keyboard/MyDictionary;->banglaNowp:Z

    if-eqz v1, :cond_0

    .line 73
    const-string v10, "bn_BD"

    .line 75
    :cond_0
    sget-object v1, Lnet/hasnath/android/keyboard/MyDictionary;->sOpenHelper:Lnet/hasnath/android/keyboard/MyDictionary$DatabaseHelper;

    invoke-virtual {v1}, Lnet/hasnath/android/keyboard/MyDictionary$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 76
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "mydictwordlist"

    const-string v3, "locale=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 79
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 93
    return-void

    .line 81
    :cond_2
    :try_start_1
    const-string v1, "word"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 82
    .local v11, "word":Ljava/lang/String;
    const-string v1, "freq"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 83
    .local v9, "frequency":I
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/MyDictionary;->getMaxWordLength()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 84
    invoke-super {p0, v11, v9}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 86
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    .end local v9    # "frequency":I
    .end local v11    # "word":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 90
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 92
    throw v1
.end method
