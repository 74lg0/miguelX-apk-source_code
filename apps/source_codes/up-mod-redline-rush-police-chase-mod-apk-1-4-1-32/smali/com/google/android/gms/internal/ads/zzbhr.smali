.class final Lcom/google/android/gms/internal/ads/zzbhr;
.super Lcom/google/android/gms/internal/ads/zzbex;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbhs;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbhs;Lcom/google/android/gms/internal/ads/zzbhp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhr;->zza:Lcom/google/android/gms/internal/ads/zzbhs;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbex;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbcy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbhr;->zzi(Lcom/google/android/gms/internal/ads/zzbcy;I)V

    return-void
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzg()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzbcy;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzf(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcfz;->zza:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbhq;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzbhq;-><init>(Lcom/google/android/gms/internal/ads/zzbhr;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
