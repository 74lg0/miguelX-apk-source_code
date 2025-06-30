.class final Lcom/google/android/gms/internal/ads/zzbnz;
.super Lcom/google/android/gms/internal/ads/zzbnc;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzboa;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzboa;Lcom/google/android/gms/internal/ads/zzbnx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnz;->zza:Lcom/google/android/gms/internal/ads/zzboa;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbnc;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbmq;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnz;->zza:Lcom/google/android/gms/internal/ads/zzboa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzboa;->zzd(Lcom/google/android/gms/internal/ads/zzboa;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbnz;->zza:Lcom/google/android/gms/internal/ads/zzboa;

    .line 1
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzboa;->zzc(Lcom/google/android/gms/internal/ads/zzboa;Lcom/google/android/gms/internal/ads/zzbmq;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;->onCustomTemplateAdLoaded(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;)V

    return-void
.end method
