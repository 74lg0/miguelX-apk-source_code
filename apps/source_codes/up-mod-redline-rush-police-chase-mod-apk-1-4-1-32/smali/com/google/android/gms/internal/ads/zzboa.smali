.class public final Lcom/google/android/gms/internal/ads/zzboa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;

.field private final zzb:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

.field private zzc:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzboa;->zza:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzboa;->zzb:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzboa;Lcom/google/android/gms/internal/ads/zzbmq;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzboa;->zzf(Lcom/google/android/gms/internal/ads/zzbmq;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzboa;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzboa;->zza:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzboa;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzboa;->zzb:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    return-object p0
.end method

.method private final declared-synchronized zzf(Lcom/google/android/gms/internal/ads/zzbmq;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboa;->zzc:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmr;

    .line 1
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbmr;-><init>(Lcom/google/android/gms/internal/ads/zzbmq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzboa;->zzc:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbnd;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbnz;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbnz;-><init>(Lcom/google/android/gms/internal/ads/zzboa;Lcom/google/android/gms/internal/ads/zzbnx;)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzbna;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzboa;->zzb:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbny;

    .line 1
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbny;-><init>(Lcom/google/android/gms/internal/ads/zzboa;Lcom/google/android/gms/internal/ads/zzbnx;)V

    return-object v0
.end method
