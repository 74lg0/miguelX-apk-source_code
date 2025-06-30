.class final Lcom/google/android/gms/internal/ads/zzbhc;
.super Lcom/google/android/gms/internal/ads/zzbek;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbhd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbhd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhc;->zza:Lcom/google/android/gms/internal/ads/zzbhd;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbek;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhc;->zza:Lcom/google/android/gms/internal/ads/zzbhd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbhd;->zzA(Lcom/google/android/gms/internal/ads/zzbhd;)Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhc;->zza:Lcom/google/android/gms/internal/ads/zzbhd;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbhd;->zzw()Lcom/google/android/gms/internal/ads/zzbgu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/zzbgu;)V

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbek;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhc;->zza:Lcom/google/android/gms/internal/ads/zzbhd;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbhd;->zzA(Lcom/google/android/gms/internal/ads/zzbhd;)Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhc;->zza:Lcom/google/android/gms/internal/ads/zzbhd;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbhd;->zzw()Lcom/google/android/gms/internal/ads/zzbgu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/VideoController;->zza(Lcom/google/android/gms/internal/ads/zzbgu;)V

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbek;->onAdLoaded()V

    return-void
.end method
