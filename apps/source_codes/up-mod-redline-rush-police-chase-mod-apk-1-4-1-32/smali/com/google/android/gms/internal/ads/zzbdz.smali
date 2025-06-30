.class final Lcom/google/android/gms/internal/ads/zzbdz;
.super Lcom/google/android/gms/internal/ads/zzbei;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbei<",
        "Lcom/google/android/gms/internal/ads/zzbfb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Landroid/content/Context;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbuv;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbeh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbeh;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbuv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zzd:Lcom/google/android/gms/internal/ads/zzbeh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zzc:Lcom/google/android/gms/internal/ads/zzbuv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbei;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zza:Landroid/content/Context;

    const-string v1, "native_ad"

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbeh;->zzl(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhs;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbhs;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zza:Landroid/content/Context;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbjb;->zza(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjb;->zzgM:Lcom/google/android/gms/internal/ads/zzbit;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbel;->zzc()Lcom/google/android/gms/internal/ads/zzbiz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbiz;->zzb(Lcom/google/android/gms/internal/ads/zzbit;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zza:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zza:Landroid/content/Context;

    const-string v3, "com.google.android.gms.ads.ChimeraAdLoaderBuilderCreatorImpl"

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbdy;->zza:Lcom/google/android/gms/internal/ads/zzcgi;

    .line 5
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcgk;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcgi;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbfc;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zzb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zzc:Lcom/google/android/gms/internal/ads/zzbuv;

    const v5, 0xcb0bfb0

    .line 6
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzbfc;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbuv;I)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v2, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    .line 7
    invoke-interface {v0, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 8
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzbfb;

    if-eqz v3, :cond_1

    .line 9
    check-cast v2, Lcom/google/android/gms/internal/ads/zzbfb;

    :goto_0
    move-object v1, v2

    goto :goto_2

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbez;

    .line 10
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzbez;-><init>(Landroid/os/IBinder;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcgj; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 13
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zzd:Lcom/google/android/gms/internal/ads/zzbeh;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zza:Landroid/content/Context;

    .line 11
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcag;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcai;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzbeh;->zzm(Lcom/google/android/gms/internal/ads/zzbeh;Lcom/google/android/gms/internal/ads/zzcai;)Lcom/google/android/gms/internal/ads/zzcai;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zzd:Lcom/google/android/gms/internal/ads/zzbeh;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbeh;->zzn(Lcom/google/android/gms/internal/ads/zzbeh;)Lcom/google/android/gms/internal/ads/zzcai;

    move-result-object v2

    const-string v3, "ClientApiBroker.createAdLoaderBuilder"

    .line 12
    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzcai;->zzd(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zzd:Lcom/google/android/gms/internal/ads/zzbeh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbeh;->zzo(Lcom/google/android/gms/internal/ads/zzbeh;)Lcom/google/android/gms/internal/ads/zzbcv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zza:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zzc:Lcom/google/android/gms/internal/ads/zzbuv;

    .line 13
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbcv;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbuv;)Lcom/google/android/gms/internal/ads/zzbfb;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzbfp;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zza:Landroid/content/Context;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdz;->zzc:Lcom/google/android/gms/internal/ads/zzbuv;

    const v3, 0xcb0bfb0

    .line 2
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbfp;->zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbuv;I)Lcom/google/android/gms/internal/ads/zzbfb;

    move-result-object p1

    return-object p1
.end method
