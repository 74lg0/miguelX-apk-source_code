.class final synthetic Lcom/google/android/gms/internal/ads/zzbhf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/initialization/InitializationStatus;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbhj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbhj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zza:Lcom/google/android/gms/internal/ads/zzbhj;

    return-void
.end method


# virtual methods
.method public final getAdapterStatusMap()Ljava/util/Map;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhf;->zza:Lcom/google/android/gms/internal/ads/zzbhj;

    new-instance v1, Ljava/util/HashMap;

    .line 1
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzbhg;-><init>(Lcom/google/android/gms/internal/ads/zzbhj;)V

    const-string v0, "com.google.android.gms.ads.MobileAds"

    .line 2
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
