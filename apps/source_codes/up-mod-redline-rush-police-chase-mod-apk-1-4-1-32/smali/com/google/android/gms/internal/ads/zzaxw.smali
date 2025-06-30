.class public final Lcom/google/android/gms/internal/ads/zzaxw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzbff;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbhb;

.field private final zze:I

.field private final zzf:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzbus;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzbdc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhb;ILcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbus;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbus;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzg:Lcom/google/android/gms/internal/ads/zzbus;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzd:Lcom/google/android/gms/internal/ads/zzbhb;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zze:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzf:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbdc;->zza:Lcom/google/android/gms/internal/ads/zzbdc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzh:Lcom/google/android/gms/internal/ads/zzbdc;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdd;->zzd()Lcom/google/android/gms/internal/ads/zzbdd;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbej;->zzb()Lcom/google/android/gms/internal/ads/zzbeh;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzb:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzg:Lcom/google/android/gms/internal/ads/zzbus;

    .line 3
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzbeh;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbuv;)Lcom/google/android/gms/internal/ads/zzbff;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zza:Lcom/google/android/gms/internal/ads/zzbff;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdj;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zze:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbdj;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zza:Lcom/google/android/gms/internal/ads/zzbff;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbff;->zzH(Lcom/google/android/gms/internal/ads/zzbdj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zza:Lcom/google/android/gms/internal/ads/zzbff;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaxj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzf:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzc:Ljava/lang/String;

    .line 6
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaxj;-><init>(Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbff;->zzI(Lcom/google/android/gms/internal/ads/zzaxr;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zza:Lcom/google/android/gms/internal/ads/zzbff;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzh:Lcom/google/android/gms/internal/ads/zzbdc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzb:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaxw;->zzd:Lcom/google/android/gms/internal/ads/zzbhb;

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbdc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbhb;)Lcom/google/android/gms/internal/ads/zzbcy;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbff;->zze(Lcom/google/android/gms/internal/ads/zzbcy;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 8
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
