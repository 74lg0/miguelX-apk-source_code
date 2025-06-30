.class public abstract Lcom/microsoft/xbox/toolkit/XLEAsyncTask;
.super Ljava/lang/Object;
.source "XLEAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected cancelled:Z

.field private chainedTask:Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

.field private doBackgroundAndPostExecuteRunnable:Ljava/lang/Runnable;

.field protected isBusy:Z

.field private threadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->doBackgroundAndPostExecuteRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancelled:Z

    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->isBusy:Z

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->chainedTask:Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->threadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    new-instance p1, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;-><init>(Lcom/microsoft/xbox/toolkit/XLEAsyncTask;)V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->doBackgroundAndPostExecuteRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/toolkit/XLEAsyncTask;)Lcom/microsoft/xbox/toolkit/XLEAsyncTask;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->chainedTask:Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

    return-object p0
.end method

.method public static varargs executeAll([Lcom/microsoft/xbox/toolkit/XLEAsyncTask;)V
    .locals 4

    array-length v0, p0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v3, p0, v1

    iput-object v3, v2, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->chainedTask:Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

    goto :goto_0

    :cond_0
    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->execute()V

    :cond_1
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    iput-boolean v2, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancelled:Z

    return-void
.end method

.method protected abstract doInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method public execute()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    iput-boolean v3, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancelled:Z

    iput-boolean v2, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->isBusy:Z

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->onPreExecute()V

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->executeBackground()V

    return-void
.end method

.method protected executeBackground()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancelled:Z

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->threadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->doBackgroundAndPostExecuteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getIsBusy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->isBusy:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract onPostExecute(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method

.method protected abstract onPreExecute()V
.end method
