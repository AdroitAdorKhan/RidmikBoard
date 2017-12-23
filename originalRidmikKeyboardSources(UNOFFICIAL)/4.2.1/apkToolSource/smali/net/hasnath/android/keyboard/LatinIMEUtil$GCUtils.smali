.class public Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;
.super Ljava/lang/Object;
.source "LatinIMEUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/LatinIMEUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GCUtils"
.end annotation


# static fields
.field private static final GC_INTERVAL:J = 0x3e8L

.field public static final GC_TRY_COUNT:I = 0x2

.field public static final GC_TRY_LOOP_MAX:I = 0x5

.field private static final TAG:Ljava/lang/String; = "GCUtils"

.field private static sInstance:Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;


# instance fields
.field private mGCTryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;

    invoke-direct {v0}, Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;-><init>()V

    sput-object v0, Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;->sInstance:Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;->mGCTryCount:I

    .line 42
    return-void
.end method

.method public static getInstance()Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;->sInstance:Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;

    return-object v0
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;->mGCTryCount:I

    .line 58
    return-void
.end method

.method public tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 4
    .param p1, "metaData"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 61
    iget v2, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;->mGCTryCount:I

    if-nez v2, :cond_0

    .line 62
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 64
    :cond_0
    iget v2, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;->mGCTryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnet/hasnath/android/keyboard/LatinIMEUtil$GCUtils;->mGCTryCount:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 65
    invoke-static {p1, p2}, Lnet/hasnath/android/keyboard/LatinImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    :goto_0
    return v1

    .line 69
    :cond_1
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    const/4 v1, 0x1

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "GCUtils"

    const-string v3, "Sleep was interrupted."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {p1, p2}, Lnet/hasnath/android/keyboard/LatinImeLogger;->logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
