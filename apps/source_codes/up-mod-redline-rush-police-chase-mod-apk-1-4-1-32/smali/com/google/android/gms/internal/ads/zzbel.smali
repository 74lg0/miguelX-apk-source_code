.class public final Lcom/google/android/gms/internal/ads/zzbel;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzbel;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzbiu;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbiv;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbiz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbel;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbel;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbel;->zza:Lcom/google/android/gms/internal/ads/zzbel;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbiu;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbiu;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbiv;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbiv;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbiz;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbiz;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzb:Lcom/google/android/gms/internal/ads/zzbiu;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzc:Lcom/google/android/gms/internal/ads/zzbiv;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbel;->zzd:Lcom/google/android/gms/internal/ads/zzbiz;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzbiv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbel;->zza:Lcom/google/android/gms/internal/ads/zzbel;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbel;->zzc:Lcom/google/android/gms/internal/ads/zzbiv;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzbiu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbel;->zza:Lcom/google/android/gms/internal/ads/zzbel;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbel;->zzb:Lcom/google/android/gms/internal/ads/zzbiu;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzbiz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbel;->zza:Lcom/google/android/gms/internal/ads/zzbel;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbel;->zzd:Lcom/google/android/gms/internal/ads/zzbiz;

    return-object v0
.end method
