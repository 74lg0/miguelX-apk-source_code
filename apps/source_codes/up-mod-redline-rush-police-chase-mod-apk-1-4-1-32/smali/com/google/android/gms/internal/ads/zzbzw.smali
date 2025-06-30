.class public final Lcom/google/android/gms/internal/ads/zzbzw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# static fields
.field private static zzd:Lcom/google/android/gms/internal/ads/zzcfc;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/ads/AdFormat;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbhb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/internal/ads/zzbhb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzw;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbzw;->zzb:Lcom/google/android/gms/ads/AdFormat;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbzw;->zzc:Lcom/google/android/gms/internal/ads/zzbhb;

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcfc;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/ads/zzbzw;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbzw;->zzd:Lcom/google/android/gms/internal/ads/zzcfc;

    if-nez v1, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbej;->zzb()Lcom/google/android/gms/internal/ads/zzbeh;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbus;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbus;-><init>()V

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzbeh;->zzh(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbuv;)Lcom/google/android/gms/internal/ads/zzcfc;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/ads/zzbzw;->zzd:Lcom/google/android/gms/internal/ads/zzcfc;

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbzw;->zzd:Lcom/google/android/gms/internal/ads/zzcfc;

    .line 2
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzw;->zza:Landroid/content/Context;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbzw;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcfc;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Internal Error, query info generator is null."

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onFailure(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbzw;->zza:Landroid/content/Context;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbzw;->zzc:Lcom/google/android/gms/internal/ads/zzbhb;

    if-nez v2, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbcz;

    .line 5
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbcz;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbcz;->zza()Lcom/google/android/gms/internal/ads/zzbcy;

    move-result-object v2

    goto :goto_0

    .line 8
    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbdc;->zza:Lcom/google/android/gms/internal/ads/zzbdc;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbzw;->zza:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbzw;->zzc:Lcom/google/android/gms/internal/ads/zzbhb;

    .line 4
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbdc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbhb;)Lcom/google/android/gms/internal/ads/zzbcy;

    move-result-object v2

    .line 6
    :goto_0
    new-instance v3, Lcom/google/android/gms/internal/ads/zzcfg;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbzw;->zzb:Lcom/google/android/gms/ads/AdFormat;

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/ads/AdFormat;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzcfg;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdd;Lcom/google/android/gms/internal/ads/zzbcy;)V

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbzv;

    .line 8
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/zzbzv;-><init>(Lcom/google/android/gms/internal/ads/zzbzw;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzcfc;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzcfg;Lcom/google/android/gms/internal/ads/zzcez;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "Internal Error."

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method
