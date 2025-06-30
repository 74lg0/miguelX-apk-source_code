.class public Lcom/microsoft/xbox/idp/util/BitmapLoaderInfo;
.super Ljava/lang/Object;
.source "BitmapLoaderInfo.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;


# instance fields
.field private final callbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/LoaderManager$LoaderCallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/idp/util/BitmapLoaderInfo;->callbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method


# virtual methods
.method public clearCache(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getBitmapCache()Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;->remove(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getLoaderCallbacks()Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/BitmapLoaderInfo;->callbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method public hasCachedData(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lcom/microsoft/xbox/idp/util/CacheUtil;->getBitmapCache()Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;->get(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
