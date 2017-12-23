.class public Lnet/hasnath/android/keyboard/UserDictionarya;
.super Lnet/hasnath/android/keyboard/ExpandableDictionary;
.source "UserDictionarya.java"


# static fields
.field private static final INDEX_FREQUENCY:I = 0x2

.field private static final INDEX_WORD:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mLocale:Ljava/lang/String;

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 30
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 31
    const-string v2, "word"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 32
    const-string v2, "frequency"

    aput-object v2, v0, v1

    .line 29
    sput-object v0, Lnet/hasnath/android/keyboard/UserDictionarya;->PROJECTION:[Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lnet/hasnath/android/keyboard/ExpandableDictionary;-><init>(Landroid/content/Context;I)V

    .line 43
    iput-object p2, p0, Lnet/hasnath/android/keyboard/UserDictionarya;->mLocale:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 48
    .local v0, "cres":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lnet/hasnath/android/keyboard/UserDictionarya$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lnet/hasnath/android/keyboard/UserDictionarya$1;-><init>(Lnet/hasnath/android/keyboard/UserDictionarya;Landroid/os/Handler;)V

    iput-object v3, p0, Lnet/hasnath/android/keyboard/UserDictionarya;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 55
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/UserDictionarya;->loadDictionary()V

    .line 56
    return-void
.end method

.method private addWords(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 122
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/UserDictionarya;->clearDictionary()V

    .line 124
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/UserDictionarya;->getMaxWordLength()I

    move-result v1

    .line 125
    .local v1, "maxWordLength":I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 138
    return-void

    .line 127
    :cond_1
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "word":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 131
    .local v0, "frequency":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_2

    .line 132
    invoke-super {p0, v2, v0}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 134
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addWord(Ljava/lang/String;I)V
    .locals 4
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "frequency"    # I

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/UserDictionarya;->getRequiresReload()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/UserDictionarya;->loadDictionaryAsync()V

    .line 88
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/UserDictionarya;->getMaxWordLength()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lt v2, v3, :cond_1

    .line 108
    :goto_0
    monitor-exit p0

    return-void

    .line 90
    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 93
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 94
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "word"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v2, "frequency"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    const-string v2, "locale"

    iget-object v3, p0, Lnet/hasnath/android/keyboard/UserDictionarya;->mLocale:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v2, "appid"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/UserDictionarya;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 100
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v2, Lnet/hasnath/android/keyboard/UserDictionarya$2;

    const-string v3, "addWord"

    invoke-direct {v2, p0, v3, v0, v1}, Lnet/hasnath/android/keyboard/UserDictionarya$2;-><init>(Lnet/hasnath/android/keyboard/UserDictionarya;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    .line 104
    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/UserDictionarya$2;->start()V

    .line 107
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lnet/hasnath/android/keyboard/UserDictionarya;->setRequiresReload(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/UserDictionarya;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/UserDictionarya;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lnet/hasnath/android/keyboard/UserDictionarya;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/UserDictionarya;->mObserver:Landroid/database/ContentObserver;

    .line 64
    :cond_0
    invoke-super {p0}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWords(Lnet/hasnath/android/keyboard/WordComposer;Lnet/hasnath/android/keyboard/Dictionary$WordCallback;[I)V
    .locals 1
    .param p1, "codes"    # Lnet/hasnath/android/keyboard/WordComposer;
    .param p2, "callback"    # Lnet/hasnath/android/keyboard/Dictionary$WordCallback;
    .param p3, "nextLettersFrequencies"    # [I

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->getWords(Lnet/hasnath/android/keyboard/WordComposer;Lnet/hasnath/android/keyboard/Dictionary$WordCallback;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isValidWord(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "word"    # Ljava/lang/CharSequence;

    .prologue
    .line 118
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
    .locals 8

    .prologue
    .line 69
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/UserDictionarya;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 70
    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lnet/hasnath/android/keyboard/UserDictionarya;->PROJECTION:[Ljava/lang/String;

    const-string v3, "(locale IS NULL) or (locale=?)"

    .line 71
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v7, p0, Lnet/hasnath/android/keyboard/UserDictionarya;->mLocale:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x0

    .line 70
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 72
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v6}, Lnet/hasnath/android/keyboard/UserDictionarya;->addWords(Landroid/database/Cursor;)V

    .line 73
    return-void
.end method
