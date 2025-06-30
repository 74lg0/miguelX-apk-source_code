.class public final Lcom/google/android/gms/internal/ads/zzfjy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzfjv;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzfjv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfjx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfjx;-><init>(Lcom/google/android/gms/internal/ads/zzfjw;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfjy;->zza:Lcom/google/android/gms/internal/ads/zzfjv;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfjy;->zzb:Lcom/google/android/gms/internal/ads/zzfjv;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfjv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfjy;->zzb:Lcom/google/android/gms/internal/ads/zzfjv;

    return-object v0
.end method
