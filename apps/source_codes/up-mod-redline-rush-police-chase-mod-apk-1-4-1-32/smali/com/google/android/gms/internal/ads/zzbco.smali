.class public final Lcom/google/android/gms/internal/ads/zzbco;
.super Lcom/google/android/gms/internal/ads/zzbeo;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbcn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbcn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbeo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbco;->zza:Lcom/google/android/gms/internal/ads/zzbcn;

    return-void
.end method


# virtual methods
.method public final zzb()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbco;->zza:Lcom/google/android/gms/internal/ads/zzbcn;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbcn;->onAdClicked()V

    return-void
.end method
