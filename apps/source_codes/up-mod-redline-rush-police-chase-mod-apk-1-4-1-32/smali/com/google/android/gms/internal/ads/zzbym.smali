.class final Lcom/google/android/gms/internal/ads/zzbym;
.super Lcom/google/android/gms/internal/ads/zzbnc;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbyn;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbyn;Lcom/google/android/gms/internal/ads/zzbyk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbym;->zza:Lcom/google/android/gms/internal/ads/zzbyn;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbnc;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbmq;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbym;->zza:Lcom/google/android/gms/internal/ads/zzbyn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbyn;->zzd(Lcom/google/android/gms/internal/ads/zzbyn;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbym;->zza:Lcom/google/android/gms/internal/ads/zzbyn;

    .line 1
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbyn;->zzc(Lcom/google/android/gms/internal/ads/zzbyn;Lcom/google/android/gms/internal/ads/zzbmq;)Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;->onCustomFormatAdLoaded(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;)V

    return-void
.end method
