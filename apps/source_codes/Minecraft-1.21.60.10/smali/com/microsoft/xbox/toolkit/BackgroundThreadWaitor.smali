.class public Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;
.super Ljava/lang/Object;
.source "BackgroundThreadWaitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;,
        Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$BackgroundThreadWaitorChangedCallback;,
        Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;
    }
.end annotation


# static fields
.field private static instance:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;


# instance fields
.field private blockingChangedCallback:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$BackgroundThreadWaitorChangedCallback;

.field private blockingTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;",
            "Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;",
            ">;"
        }
    .end annotation
.end field

.field private waitReady:Lcom/microsoft/xbox/toolkit/Ready;

.field private waitingRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->instance:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/microsoft/xbox/toolkit/Ready;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/Ready;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitReady:Lcom/microsoft/xbox/toolkit/Ready;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->blockingTable:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->blockingChangedCallback:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$BackgroundThreadWaitorChangedCallback;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitingRunnables:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->updateWaitReady()V

    return-void
.end method

.method private drainWaitingRunnables()V
    .locals 2

    sget-object v0, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitingRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitingRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->instance:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->instance:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    :cond_0
    sget-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->instance:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    return-object v0
.end method

.method private updateWaitReady()V
    .locals 7

    sget-object v0, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-class v1, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->blockingTable:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;

    invoke-virtual {v5}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;->isExpired()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v5}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;->access$100(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;)Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v5}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;->access$100(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;)Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->blockingTable:Ljava/util/Hashtable;

    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->blockingTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitReady:Lcom/microsoft/xbox/toolkit/Ready;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/Ready;->setReady()V

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->drainWaitingRunnables()V

    move v2, v3

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitReady:Lcom/microsoft/xbox/toolkit/Ready;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/Ready;->reset()V

    :goto_3
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->blockingChangedCallback:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$BackgroundThreadWaitorChangedCallback;

    if-eqz v0, :cond_5

    invoke-interface {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$BackgroundThreadWaitorChangedCallback;->run(Ljava/util/EnumSet;Z)V

    :cond_5
    return-void
.end method


# virtual methods
.method public clearBlocking(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;)V
    .locals 2

    sget-object v0, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->blockingTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->updateWaitReady()V

    return-void
.end method

.method public isBlocking()Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitReady:Lcom/microsoft/xbox/toolkit/Ready;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/Ready;->getIsReady()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public postRunnableAfterReady(Ljava/lang/Runnable;)V
    .locals 2

    sget-object v0, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitingRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public setBlocking(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;I)V
    .locals 4

    sget-object v0, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->blockingTable:Ljava/util/Hashtable;

    new-instance v1, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;

    int-to-long v2, p2

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitObject;-><init>(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;J)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->updateWaitReady()V

    return-void
.end method

.method public setChangedCallback(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$BackgroundThreadWaitorChangedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->blockingChangedCallback:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$BackgroundThreadWaitorChangedCallback;

    return-void
.end method

.method public waitForReady(I)V
    .locals 2

    sget-object v0, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    new-instance v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$1;-><init>(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;)V

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadPost(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitReady:Lcom/microsoft/xbox/toolkit/Ready;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/Ready;->waitForReady(I)V

    return-void
.end method
