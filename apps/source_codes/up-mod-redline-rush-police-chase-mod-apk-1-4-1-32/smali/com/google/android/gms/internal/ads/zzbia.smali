.class public final Lcom/google/android/gms/internal/ads/zzbia;
.super Lcom/google/android/gms/internal/ads/zzccg;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzccg;-><init>()V

    return-void
.end method

.method private static zzr(Lcom/google/android/gms/internal/ads/zzcco;)V
    .locals 2

    const-string v0, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzf(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcfz;->zza:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbhz;-><init>(Lcom/google/android/gms/internal/ads/zzcco;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbcy;Lcom/google/android/gms/internal/ads/zzcco;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbia;->zzr(Lcom/google/android/gms/internal/ads/zzcco;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbcy;Lcom/google/android/gms/internal/ads/zzcco;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbia;->zzr(Lcom/google/android/gms/internal/ads/zzcco;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzcck;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzbgl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zzg()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    .line 1
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzccv;)V
    .locals 0

    return-void
.end method

.method public final zzi()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final zzj()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public final zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V
    .locals 0

    return-void
.end method

.method public final zzl()Lcom/google/android/gms/internal/ads/zzcce;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/internal/ads/zzbgr;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzbgo;)V
    .locals 0

    return-void
.end method

.method public final zzo(Z)V
    .locals 0

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzccp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
