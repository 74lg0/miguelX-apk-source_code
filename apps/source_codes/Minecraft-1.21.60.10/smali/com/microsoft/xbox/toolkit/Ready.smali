.class public Lcom/microsoft/xbox/toolkit/Ready;
.super Ljava/lang/Object;
.source "Ready.java"


# instance fields
.field private ready:Z

.field private syncObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/Ready;->ready:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/Ready;->syncObj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getIsReady()Z
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/Ready;->syncObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/microsoft/xbox/toolkit/Ready;->ready:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/Ready;->syncObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/Ready;->ready:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setReady()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/Ready;->syncObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/Ready;->ready:Z

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/Ready;->syncObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public waitForReady()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/Ready;->waitForReady(I)V

    return-void
.end method

.method public waitForReady(I)V
    .locals 4

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/Ready;->syncObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/microsoft/xbox/toolkit/Ready;->ready:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    if-lez p1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/Ready;->syncObj:Ljava/lang/Object;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/Ready;->syncObj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
