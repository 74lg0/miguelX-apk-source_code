.class public final Lcom/google/android/gms/internal/ads/zzbic;
.super Lcom/google/android/gms/internal/ads/zzbgn;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/OnPaidEventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbgn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbic;->zza:Lcom/google/android/gms/ads/OnPaidEventListener;

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/ads/zzbdf;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbic;->zza:Lcom/google/android/gms/ads/OnPaidEventListener;

    if-eqz v0, :cond_0

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzbdf;->zzb:I

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbdf;->zzc:Ljava/lang/String;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzbdf;->zzd:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/ads/AdValue;->zza(ILjava/lang/String;J)Lcom/google/android/gms/ads/AdValue;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbic;->zza:Lcom/google/android/gms/ads/OnPaidEventListener;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/OnPaidEventListener;->onPaidEvent(Lcom/google/android/gms/ads/AdValue;)V

    :cond_0
    return-void
.end method
