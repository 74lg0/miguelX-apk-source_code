.class final Lcom/google/android/gms/internal/ads/zzbzv;
.super Lcom/google/android/gms/internal/ads/zzcey;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbzw;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbzv;->zza:Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcey;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzv;->zza:Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/query/QueryInfo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhm;

    .line 1
    invoke-direct {v1, p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzbhm;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/query/QueryInfo;-><init>(Lcom/google/android/gms/internal/ads/zzbhm;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzv;->zza:Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onSuccess(Lcom/google/android/gms/ads/query/QueryInfo;)V

    return-void
.end method
