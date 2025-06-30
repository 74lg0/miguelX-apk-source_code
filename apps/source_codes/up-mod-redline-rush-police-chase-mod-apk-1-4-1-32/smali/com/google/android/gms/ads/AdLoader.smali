.class public Lcom/google/android/gms/ads/AdLoader;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/AdLoader$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbdc;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbey;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbey;Lcom/google/android/gms/internal/ads/zzbdc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/AdLoader;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/AdLoader;->zzc:Lcom/google/android/gms/internal/ads/zzbey;

    iput-object p3, p0, Lcom/google/android/gms/ads/AdLoader;->zza:Lcom/google/android/gms/internal/ads/zzbdc;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzbhb;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader;->zzc:Lcom/google/android/gms/internal/ads/zzbey;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdLoader;->zza:Lcom/google/android/gms/internal/ads/zzbdc;

    iget-object v2, p0, Lcom/google/android/gms/ads/AdLoader;->zzb:Landroid/content/Context;

    .line 1
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbhb;)Lcom/google/android/gms/internal/ads/zzbcy;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbey;->zze(Lcom/google/android/gms/internal/ads/zzbcy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to load ad."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public isLoading()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader;->zzc:Lcom/google/android/gms/internal/ads/zzbey;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbey;->zzg()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to check if ad is loading."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zza()Lcom/google/android/gms/internal/ads/zzbhb;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/AdLoader;->zza(Lcom/google/android/gms/internal/ads/zzbhb;)V

    return-void
.end method

.method public loadAd(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V
    .locals 0

    iget-object p1, p1, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;->zza:Lcom/google/android/gms/internal/ads/zzbhb;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/AdLoader;->zza(Lcom/google/android/gms/internal/ads/zzbhb;)V

    return-void
.end method

.method public loadAds(Lcom/google/android/gms/ads/AdRequest;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zza()Lcom/google/android/gms/internal/ads/zzbhb;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader;->zzc:Lcom/google/android/gms/internal/ads/zzbey;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdLoader;->zza:Lcom/google/android/gms/internal/ads/zzbdc;

    iget-object v2, p0, Lcom/google/android/gms/ads/AdLoader;->zzb:Landroid/content/Context;

    .line 2
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbhb;)Lcom/google/android/gms/internal/ads/zzbcy;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbey;->zzi(Lcom/google/android/gms/internal/ads/zzbcy;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Failed to load ads."

    .line 3
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
