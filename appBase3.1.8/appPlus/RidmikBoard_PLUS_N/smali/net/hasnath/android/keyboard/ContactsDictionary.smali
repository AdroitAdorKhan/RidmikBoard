.class public Lnet/hasnath/android/keyboard/ContactsDictionary;
.super Lnet/hasnath/android/keyboard/ExpandableDictionary;
.source "ContactsDictionary.java"


# static fields
.field private static final FREQUENCY_FOR_CONTACTS:I = 0x80

.field private static final FREQUENCY_FOR_CONTACTS_BIGRAM:I = 0x5a

.field private static final INDEX_NAME:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ContactsDictionary"


# instance fields
.field private mLastLoadedContacts:J

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 32
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 33
    const-string v2, "display_name"

    aput-object v2, v0, v1

    .line 31
    sput-object v0, Lnet/hasnath/android/keyboard/ContactsDictionary;->PROJECTION:[Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dicTypeId"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lnet/hasnath/android/keyboard/ExpandableDictionary;-><init>(Landroid/content/Context;I)V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 57
    .local v0, "cres":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lnet/hasnath/android/keyboard/ContactsDictionary$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lnet/hasnath/android/keyboard/ContactsDictionary$1;-><init>(Lnet/hasnath/android/keyboard/ContactsDictionary;Landroid/os/Handler;)V

    iput-object v3, p0, Lnet/hasnath/android/keyboard/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

    .line 56
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 63
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/ContactsDictionary;->loadDictionary()V

    .line 64
    return-void
.end method

.method private addWords(Landroid/database/Cursor;)V
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v11, 0x1

    .line 99
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/ContactsDictionary;->clearDictionary()V

    .line 101
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/ContactsDictionary;->getMaxWordLength()I

    move-result v5

    .line 103
    .local v5, "maxWordLength":I
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 104
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 148
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 152
    :goto_1
    return-void

    .line 105
    :cond_1
    const/4 v10, 0x1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "name":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 108
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 109
    .local v4, "len":I
    const/4 v7, 0x0

    .line 112
    .local v7, "prevWord":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-lt v2, v4, :cond_3

    .line 145
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v7    # "prevWord":Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    .end local v6    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v10, "ContactsDictionary"

    const-string v11, "Contacts DB is having problems"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 113
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v2    # "i":I
    .restart local v4    # "len":I
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "prevWord":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 115
    add-int/lit8 v3, v2, 0x1

    .local v3, "j":I
    :goto_3
    if-lt v3, v4, :cond_7

    .line 124
    :cond_4
    invoke-virtual {v6, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, "word":Ljava/lang/String;
    add-int/lit8 v2, v3, -0x1

    .line 131
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 132
    .local v9, "wordLen":I
    if-ge v9, v5, :cond_6

    if-le v9, v11, :cond_6

    .line 133
    const/16 v10, 0x80

    invoke-super {p0, v8, v10}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->addWord(Ljava/lang/String;I)V

    .line 134
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 138
    const/16 v10, 0x5a

    .line 137
    invoke-super {p0, v7, v8, v10}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->setBigram(Ljava/lang/String;Ljava/lang/String;I)I

    .line 140
    :cond_5
    move-object v7, v8

    .line 112
    .end local v3    # "j":I
    .end local v8    # "word":Ljava/lang/String;
    .end local v9    # "wordLen":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 116
    .restart local v3    # "j":I
    :cond_7
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 118
    .local v0, "c":C
    const/16 v10, 0x2d

    if-eq v0, v10, :cond_8

    const/16 v10, 0x27

    if-eq v0, v10, :cond_8

    .line 119
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    if-eqz v10, :cond_4

    .line 115
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/hasnath/android/keyboard/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/ContactsDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lnet/hasnath/android/keyboard/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hasnath/android/keyboard/ContactsDictionary;->mObserver:Landroid/database/ContentObserver;

    .line 72
    :cond_0
    invoke-super {p0}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadDictionaryAsync()V
    .locals 8

    .prologue
    .line 87
    :try_start_0
    invoke-virtual {p0}, Lnet/hasnath/android/keyboard/ContactsDictionary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 88
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lnet/hasnath/android/keyboard/ContactsDictionary;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 89
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 90
    invoke-direct {p0, v6}, Lnet/hasnath/android/keyboard/ContactsDictionary;->addWords(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/hasnath/android/keyboard/ContactsDictionary;->mLastLoadedContacts:J

    .line 96
    return-void

    .line 92
    :catch_0
    move-exception v7

    .line 93
    .local v7, "e":Ljava/lang/IllegalStateException;
    const-string v0, "ContactsDictionary"

    const-string v1, "Contacts DB is having problems"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startDictionaryLoadingTaskLocked()V
    .locals 6

    .prologue
    .line 77
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 78
    .local v0, "now":J
    iget-wide v2, p0, Lnet/hasnath/android/keyboard/ContactsDictionary;->mLastLoadedContacts:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 79
    iget-wide v2, p0, Lnet/hasnath/android/keyboard/ContactsDictionary;->mLastLoadedContacts:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1b7740

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 80
    :cond_0
    invoke-super {p0}, Lnet/hasnath/android/keyboard/ExpandableDictionary;->startDictionaryLoadingTaskLocked()V

    .line 82
    :cond_1
    return-void
.end method
