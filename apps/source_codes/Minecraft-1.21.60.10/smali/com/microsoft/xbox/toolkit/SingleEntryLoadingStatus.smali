.class public Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;
.super Ljava/lang/Object;
.source "SingleEntryLoadingStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;
    }
.end annotation


# instance fields
.field private isLoading:Z

.field private lastError:Lcom/microsoft/xbox/toolkit/XLEException;

.field private syncObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->isLoading:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->lastError:Lcom/microsoft/xbox/toolkit/XLEException;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->syncObj:Ljava/lang/Object;

    return-void
.end method

.method private setDone(Lcom/microsoft/xbox/toolkit/XLEException;)V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->syncObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->isLoading:Z

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->lastError:Lcom/microsoft/xbox/toolkit/XLEException;

    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->syncObj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public getIsLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->isLoading:Z

    return v0
.end method

.method public getLastError()Lcom/microsoft/xbox/toolkit/XLEException;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->lastError:Lcom/microsoft/xbox/toolkit/XLEException;

    return-object v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->syncObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->isLoading:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->lastError:Lcom/microsoft/xbox/toolkit/XLEException;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->syncObj:Ljava/lang/Object;

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

.method public setFailed(Lcom/microsoft/xbox/toolkit/XLEException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->setDone(Lcom/microsoft/xbox/toolkit/XLEException;)V

    return-void
.end method

.method public setSuccess()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->setDone(Lcom/microsoft/xbox/toolkit/XLEException;)V

    return-void
.end method

.method public waitForNotLoading()Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;
    .locals 4

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->syncObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->isLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->syncObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    new-instance v1, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->lastError:Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-direct {v1, p0, v2, v3}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;-><init>(Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;ZLcom/microsoft/xbox/toolkit/XLEException;)V

    monitor-exit v0

    return-object v1

    :cond_0
    iput-boolean v2, p0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->isLoading:Z

    new-instance v1, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;-><init>(Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;ZLcom/microsoft/xbox/toolkit/XLEException;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
