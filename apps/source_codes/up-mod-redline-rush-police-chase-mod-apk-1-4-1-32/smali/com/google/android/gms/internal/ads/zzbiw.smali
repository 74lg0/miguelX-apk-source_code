.class final synthetic Lcom/google/android/gms/internal/ads/zzbiw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfld;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbiz;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbit;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbiz;Lcom/google/android/gms/internal/ads/zzbit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbiw;->zza:Lcom/google/android/gms/internal/ads/zzbiz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbiw;->zzb:Lcom/google/android/gms/internal/ads/zzbit;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbiw;->zza:Lcom/google/android/gms/internal/ads/zzbiz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbiw;->zzb:Lcom/google/android/gms/internal/ads/zzbit;

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbiz;->zzd(Lcom/google/android/gms/internal/ads/zzbit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
