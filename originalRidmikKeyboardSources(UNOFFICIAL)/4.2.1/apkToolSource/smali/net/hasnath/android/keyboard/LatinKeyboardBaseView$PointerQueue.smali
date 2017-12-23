.class Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;
.super Ljava/lang/Object;
.source "LatinKeyboardBaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hasnath/android/keyboard/LatinKeyboardBaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PointerQueue"
.end annotation


# instance fields
.field private mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lnet/hasnath/android/keyboard/PointerTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    .line 371
    return-void
.end method


# virtual methods
.method public add(Lnet/hasnath/android/keyboard/PointerTracker;)V
    .locals 1
    .param p1, "tracker"    # Lnet/hasnath/android/keyboard/PointerTracker;

    .prologue
    .line 375
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 376
    return-void
.end method

.method public isInSlidingKeyInput()Z
    .locals 3

    .prologue
    .line 419
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 423
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 419
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hasnath/android/keyboard/PointerTracker;

    .line 420
    .local v0, "tracker":Lnet/hasnath/android/keyboard/PointerTracker;
    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/PointerTracker;->isInSlidingKeyInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public lastIndexOf(Lnet/hasnath/android/keyboard/PointerTracker;)I
    .locals 4
    .param p1, "tracker"    # Lnet/hasnath/android/keyboard/PointerTracker;

    .prologue
    .line 379
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    .line 380
    .local v1, "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lnet/hasnath/android/keyboard/PointerTracker;>;"
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "index":I
    :goto_0
    if-gez v0, :cond_1

    .line 385
    const/4 v0, -0x1

    .end local v0    # "index":I
    :cond_0
    return v0

    .line 381
    .restart local v0    # "index":I
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/hasnath/android/keyboard/PointerTracker;

    .line 382
    .local v2, "t":Lnet/hasnath/android/keyboard/PointerTracker;
    if-eq v2, p1, :cond_0

    .line 380
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public releaseAllPointersExcept(Lnet/hasnath/android/keyboard/PointerTracker;J)V
    .locals 4
    .param p1, "tracker"    # Lnet/hasnath/android/keyboard/PointerTracker;
    .param p2, "eventTime"    # J

    .prologue
    .line 403
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 409
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 410
    if-eqz p1, :cond_1

    .line 411
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_1
    return-void

    .line 403
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hasnath/android/keyboard/PointerTracker;

    .line 404
    .local v0, "t":Lnet/hasnath/android/keyboard/PointerTracker;
    if-eq v0, p1, :cond_0

    .line 406
    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/PointerTracker;->getLastX()I

    move-result v2

    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/PointerTracker;->getLastY()I

    move-result v3

    invoke-virtual {v0, v2, v3, p2, p3}, Lnet/hasnath/android/keyboard/PointerTracker;->onUpEvent(IIJ)V

    .line 407
    invoke-virtual {v0}, Lnet/hasnath/android/keyboard/PointerTracker;->setAlreadyProcessed()V

    goto :goto_0
.end method

.method public releaseAllPointersOlderThan(Lnet/hasnath/android/keyboard/PointerTracker;J)V
    .locals 6
    .param p1, "tracker"    # Lnet/hasnath/android/keyboard/PointerTracker;
    .param p2, "eventTime"    # J

    .prologue
    .line 389
    iget-object v1, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    .line 390
    .local v1, "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lnet/hasnath/android/keyboard/PointerTracker;>;"
    const/4 v0, 0x0

    .line 391
    .local v0, "oldestPos":I
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/hasnath/android/keyboard/PointerTracker;

    .local v2, "t":Lnet/hasnath/android/keyboard/PointerTracker;
    :goto_0
    if-ne v2, p1, :cond_0

    .line 400
    return-void

    .line 392
    :cond_0
    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/PointerTracker;->isModifier()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 393
    add-int/lit8 v0, v0, 0x1

    .line 391
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "t":Lnet/hasnath/android/keyboard/PointerTracker;
    check-cast v2, Lnet/hasnath/android/keyboard/PointerTracker;

    .restart local v2    # "t":Lnet/hasnath/android/keyboard/PointerTracker;
    goto :goto_0

    .line 395
    :cond_1
    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/PointerTracker;->getLastX()I

    move-result v3

    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/PointerTracker;->getLastY()I

    move-result v4

    invoke-virtual {v2, v3, v4, p2, p3}, Lnet/hasnath/android/keyboard/PointerTracker;->onUpEvent(IIJ)V

    .line 396
    invoke-virtual {v2}, Lnet/hasnath/android/keyboard/PointerTracker;->setAlreadyProcessed()V

    .line 397
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method public remove(Lnet/hasnath/android/keyboard/PointerTracker;)V
    .locals 1
    .param p1, "tracker"    # Lnet/hasnath/android/keyboard/PointerTracker;

    .prologue
    .line 415
    iget-object v0, p0, Lnet/hasnath/android/keyboard/LatinKeyboardBaseView$PointerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 416
    return-void
.end method
