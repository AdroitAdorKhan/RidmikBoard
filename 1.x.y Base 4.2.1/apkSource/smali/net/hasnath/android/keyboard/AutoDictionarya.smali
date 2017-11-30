.class public Lnet/hasnath/android/keyboard/AutoDictionarya;
.super Lnet/hasnath/android/keyboard/ExpandableDictionary;
.source "AutoDictionarya.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hasnath/android/keyboard/AutoDictionarya$DatabaseHelper;,
        Lnet/hasnath/android/keyboard/AutoDictionarya$UpdateDbTask;
    }
.end annotation


# static fields
.field private static final AUTODICT_TABLE_NAME:Ljava/lang/String; = "words"

.field private static final COLUMN_FREQUENCY:Ljava/lang/String; = "freq"

.field private static final COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final COLUMN_LOCALE:Ljava/lang/String; = "locale"

.field private static final COLUMN_WORD:Ljava/lang/String; = "word"

.field private static final DATABASE_NAME:Ljava/lang/String; = "auto_dict.db"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "freq DESC"

.field static final FREQUENCY_FOR_AUTO_ADD:I = 0xfa

.field static final FREQUENCY_FOR_PICKED:I = 0x3

.field static final FREQUENCY_FOR_TYPED:I = 0x1

.field private static final PROMOTION_THRESHOLD:I = 0xc

.field private static final VALIDITY_THRESHOLD:I = 0x6

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

.field private static sOpenHelper:Lnet/hasnath/android/keyboard/AutoDictionarya$DatabaseHelper;


# instance fields
.field private mIme:Lnet/hasnath/android/keyboard/LatinIME;

.field private mLocale:Ljava/lang/String;

.field private mPendingWrites:Ljava/util/HashMap;
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

.field private final mPendingWritesLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/hasnath/android/keyboard/AutoDictionarya;->sDictProjectionMap:Ljava/util/HashMap;

    .line 82
    sget-object v0, Lnet/hasnath/android/keyboard/AutoDictionarya;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lnet/hasnath/android/keyboard/AutoDictionarya;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "word"

    const-string v2, "word"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lnet/hasnath/android/keyboard/AutoDictionarya;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "freq"

    const-string v2, "freq"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lnet/hasnath/android/keyboard/AutoDictionarya;->sDictProjectionMap:Ljava/util/HashMap;

    const-string v1, "locale"

    const-string v2, "locale"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lnet/hasnath/android/keyboard/AutoDictionarya;->sOpenHelper:Lnet/hasnath/android/keyboard/AutoDictionarya$DatabaseHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/hasnath/android/keyboard/LatinIME;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ime"    # Lnet/hasnath/android/keyboard/LatinIME;
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "dicTypeId"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p4}, Lnet/hasnath/android/keyboard/ExpandableDictionary;-><init>(Landroid/content/Context;I)V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/AutoDictionarya;->mPendingWrites:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/AutoDictionarya;->mPendingWritesLock:Ljava/lang/Object;

    .line 92
    iput-object p2, p0, Lnet/hasnath/android/keyboard/AutoDictionarya;->mIme:Lnet/hasnath/android/keyboard/LatinIME;

    .line 93
    iput-object p3, p0, Lnet/hasnath/android/keyboard/AutoDictionarya;->mLocale:Ljava/lang/String;

    .line 94
    sget-object v0, Lnet/hasnath/android/keyboard/AutoDictionarya;->sOpenHelper:Lnet/hasnath/android/keyboard/AutoDictionarya$DatabaseHelper;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lnet/hasnath/android/keyboard/AutoDictionarya$DatabaseHelper;

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/AutoDictionarya;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/hasnath/android/keyboard/AutoDictionarya$DatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/hasnath/android/keyboard/AutoDictionarya;->sOpenHelper:Lnet/hasnath/android/keyboard/AutoDictionarya$DatabaseHelper;

    .line 97
    :cond_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/AutoDictionarya;->mLocale:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/hasnath/android/keyboard/AutoDictionarya;->mLocale:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 98
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/AutoDictionarya;->loadDictionary()V

    .line 100
    :cond_1
    return-void
.end method

.method private query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 209
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 210
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v3, "words"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 211
    sget-object v3, Lnet/hasnath/android/keyboard/AutoDictionarya;->sDictProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 214
    sget-object v3, Lnet/hasnath/android/keyboard/AutoDictionarya;->sOpenHelper:Lnet/hasnath/android/keyboard/AutoDictionarya$DatabaseHelper;

    invoke-virtual {v3}, Lnet/hasnath/android/keyboard/AutoDictionarya$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 216
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "freq DESC"

    move-object v3, p1

    move-object v4, p2

    move-object v5, v2

    move-object v6, v2

    .line 215
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 217
    .local v8, "c":Landroid/database/Cursor;
    return-object v8
.end method


# virtual methods
.method public addWord(Ljava/lang/String;I)V
    .locals 5
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "addFrequency"    # I

    .prologue
    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 146
    .local v1, "length":I
    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/AutoDictionarya;->getMaxWordLength()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v2, p0, Lnet/hasnath/android/keyboard/AutoDictionarya;->mIme:Lnet/hasnath/android/keyboard/LatinIME;

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/LatinIME;->getCurrentWord()Lnet/hasnath/android/keyboard/WordComposer;

    move-result-object v2

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/WordComposer;->isAutoCapitalized()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 151
    :cond_2
    invoke-virtual {p0, p1}, Lnet/hasnath/android/keyboard/AutoDictionarya;->getWordFrequency(Ljava/lang/CharSequence;)I

    move-result v0

    .line 152
    .local v0, "freq":I
    if-gez v0, :cond_4

    move v0, p2

    .line 153
    :goto_1
    invoke-super {p0, p1, v0}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 155
    const/16 v2, 0xc

    if-lt v0, v2, :cond_3

    .line 156
    iget-object v2, p0, Lnet/hasnath/android/keyboard/AutoDictionarya;->mIme:Lnet/hasnath/android/keyboard/LatinIME;

    const/16 v3, 0xfa

    invoke-virtual {v2, p1, v3}, Lnet/hasnath/android/keyboard/LatinIME;->promoteToUserDictionary(Ljava/lang/String;I)V

    .line 157
    const/4 v0, 0x0

    .line 160
    :cond_3
    iget-object v3, p0, Lnet/hasnath/android/keyboard/AutoDictionarya;->mPendingWritesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 162
    :try_start_0
    iget-object v4, p0, Lnet/hasnath/android/keyboard/AutoDictionarya;->mPendingWrites:Ljava/util/HashMap;

    if-nez v0, :cond_5

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 152
    :cond_4
    add-int/2addr v0, p2

    goto :goto_1

    .line 162
    :cond_5
    :try_start_1
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public close()V
    .locals 0

    .prologue
    .line 110
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/AutoDictionarya;->flushPendingWrites()V

    .line 115
    invoke-super {p0}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->close()V

    .line 116
    return-void
.end method

.method public flushPendingWrites()V
    .locals 6

    .prologue
    .line 170
    iget-object v1, p0, Lnet/hasnath/android/keyboard/AutoDictionarya;->mPendingWritesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/AutoDictionarya;->mPendingWrites:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 178
    :goto_0
    return-void

    .line 174
    :cond_0
    new-instance v0, Lnet/hasnath/android/keyboard/AutoDictionarya$UpdateDbTask;

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/AutoDictionarya;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lnet/hasnath/android/keyboard/AutoDictionarya;->sOpenHelper:Lnet/hasnath/android/keyboard/AutoDictionarya$DatabaseHelper;

    iget-object v4, p0, Lnet/hasnath/android/keyboard/AutoDictionarya;->mPendingWrites:Ljava/util/HashMap;

    iget-object v5, p0, Lnet/hasnath/android/keyboard/AutoDictionarya;->mLocale:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, v5}, Lnet/hasnath/android/keyboard/AutoDictionarya$UpdateDbTask;-><init>(Landroid/content/Context;Lnet/hasnath/android/keyboard/AutoDictionarya$DatabaseHelper;Ljava/util/HashMap;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lnet/hasnath/android/keyboard/AutoDictionarya$UpdateDbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/AutoDictionarya;->mPendingWrites:Ljava/util/HashMap;

    .line 170
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lnet/hasnath/android/keyboard/AutoDictionarya;->getWordFrequency(Ljava/lang/CharSequence;)I

    move-result v0

    .line 105
    .local v0, "frequency":I
    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadDictionaryAsync()V
    .locals 9

    .prologue
    .line 121
    const-string v5, "locale=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lnet/hasnath/android/keyboard/AutoDictionarya;->mLocale:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-direct {p0, v5, v6}, Lnet/hasnath/android/keyboard/AutoDictionarya;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 123
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 124
    const-string v5, "word"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 125
    .local v4, "wordIndex":I
    const-string v5, "freq"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 126
    .local v2, "frequencyIndex":I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 138
    .end local v2    # "frequencyIndex":I
    .end local v4    # "wordIndex":I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 140
    return-void

    .line 127
    .restart local v2    # "frequencyIndex":I
    .restart local v4    # "wordIndex":I
    :cond_1
    :try_start_1
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "word":Ljava/lang/String;
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 131
    .local v1, "frequency":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/AutoDictionarya;->getMaxWordLength()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 132
    invoke-super {p0, v3, v1}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 134
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 137
    .end local v1    # "frequency":I
    .end local v2    # "frequencyIndex":I
    .end local v3    # "word":Ljava/lang/String;
    .end local v4    # "wordIndex":I
    :catchall_0
    move-exception v5

    .line 138
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 139
    throw v5
.end method
