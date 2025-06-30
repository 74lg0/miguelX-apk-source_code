.class final Lcom/google/android/gms/internal/ads/zzbdt;
.super Lcom/google/android/gms/internal/ads/zzbei;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbei<",
        "Lcom/google/android/gms/internal/ads/zzbqe;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Landroid/content/Context;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbuv;

.field final synthetic zzc:Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbeh;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbuv;Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdt;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbdt;->zzb:Lcom/google/android/gms/internal/ads/zzbuv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbdt;->zzc:Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbei;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbql;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbql;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdt;->zza:Landroid/content/Context;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdt;->zza:Landroid/content/Context;

    const-string v2, "com.google.android.gms.ads.DynamiteH5AdsManagerCreatorImpl"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbds;->zza:Lcom/google/android/gms/internal/ads/zzcgi;

    .line 2
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcgk;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcgi;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbqh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdt;->zzb:Lcom/google/android/gms/internal/ads/zzbuv;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbpy;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbdt;->zzc:Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;

    .line 3
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzbpy;-><init>(Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;)V

    const v4, 0xcb0bfb0

    invoke-interface {v1, v0, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzbqh;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbuv;ILcom/google/android/gms/internal/ads/zzbqb;)Lcom/google/android/gms/internal/ads/zzbqe;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcgj; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzbfp;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdt;->zza:Landroid/content/Context;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdt;->zzb:Lcom/google/android/gms/internal/ads/zzbuv;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbpy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbdt;->zzc:Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzbpy;-><init>(Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;)V

    const v3, 0xcb0bfb0

    .line 2
    invoke-interface {p1, v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzbfp;->zzo(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbuv;ILcom/google/android/gms/internal/ads/zzbqb;)Lcom/google/android/gms/internal/ads/zzbqe;

    move-result-object p1

    return-object p1
.end method
