.class public final Lcom/google/android/gms/internal/ads/zzbhj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# static fields
.field private static zzc:Lcom/google/android/gms/internal/ads/zzbhj;


# instance fields
.field private final zza:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Ljava/lang/Object;

.field private zzd:Lcom/google/android/gms/internal/ads/zzbfw;

.field private zze:Z

.field private zzf:Z

.field private zzg:Lcom/google/android/gms/ads/OnAdInspectorClosedListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzh:Lcom/google/android/gms/ads/RequestConfiguration;

.field private zzi:Lcom/google/android/gms/ads/initialization/InitializationStatus;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzb:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zze:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzf:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzg:Lcom/google/android/gms/ads/OnAdInspectorClosedListener;

    new-instance v0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzh:Lcom/google/android/gms/ads/RequestConfiguration;

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zza:Ljava/util/ArrayList;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzbhj;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/ads/zzbhj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhj;->zzc:Lcom/google/android/gms/internal/ads/zzbhj;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhj;

    .line 1
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbhj;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzbhj;->zzc:Lcom/google/android/gms/internal/ads/zzbhj;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhj;->zzc:Lcom/google/android/gms/internal/ads/zzbhj;

    .line 2
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic zzq(Lcom/google/android/gms/internal/ads/zzbhj;Z)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zze:Z

    return p1
.end method

.method static synthetic zzr(Lcom/google/android/gms/internal/ads/zzbhj;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzf:Z

    return p1
.end method

.method static synthetic zzs(Lcom/google/android/gms/internal/ads/zzbhj;Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhj;->zzx(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzt(Lcom/google/android/gms/internal/ads/zzbhj;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zza:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic zzu(Lcom/google/android/gms/internal/ads/zzbhj;)Lcom/google/android/gms/ads/OnAdInspectorClosedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzg:Lcom/google/android/gms/ads/OnAdInspectorClosedListener;

    return-object p0
.end method

.method private final zzv(Lcom/google/android/gms/ads/RequestConfiguration;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzd:Lcom/google/android/gms/internal/ads/zzbfw;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbid;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbid;-><init>(Lcom/google/android/gms/ads/RequestConfiguration;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfw;->zzr(Lcom/google/android/gms/internal/ads/zzbid;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Unable to set request configuration parcel."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzw(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzd:Lcom/google/android/gms/internal/ads/zzbfw;

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbej;->zzb()Lcom/google/android/gms/internal/ads/zzbeh;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzbeb;-><init>(Lcom/google/android/gms/internal/ads/zzbeh;Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzbei;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbfw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzd:Lcom/google/android/gms/internal/ads/zzbfw;

    :cond_0
    return-void
.end method

.method private static final zzx(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbra;",
            ">;)",
            "Lcom/google/android/gms/ads/initialization/InitializationStatus;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbra;

    .line 3
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbra;->zza:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbri;

    .line 4
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzbra;->zzb:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/android/gms/ads/initialization/AdapterStatus$State;->READY:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/google/android/gms/ads/initialization/AdapterStatus$State;->NOT_READY:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    :goto_1
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbra;->zzd:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbra;->zzc:I

    invoke-direct {v3, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzbri;-><init>(Lcom/google/android/gms/ads/initialization/AdapterStatus$State;Ljava/lang/String;I)V

    .line 3
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzbrj;

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbrj;-><init>(Ljava/util/Map;)V

    return-object p0
.end method


# virtual methods
.method public final zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzb:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zze:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbhj;->zza()Lcom/google/android/gms/internal/ads/zzbhj;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbhj;->zza:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    :cond_0
    monitor-exit p2

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzf:Z

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhj;->zzj()Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;->onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V

    .line 4
    :cond_2
    monitor-exit p2

    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zze:Z

    if-eqz p3, :cond_4

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbhj;->zza()Lcom/google/android/gms/internal/ads/zzbhj;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbhj;->zza:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz p1, :cond_9

    .line 7
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbuo;->zza()Lcom/google/android/gms/internal/ads/zzbuo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbuo;->zzb(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Thread;

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhj;->zzw(Landroid/content/Context;)V

    if-eqz p3, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzd:Lcom/google/android/gms/internal/ads/zzbfw;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbhi;

    .line 9
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzbhi;-><init>(Lcom/google/android/gms/internal/ads/zzbhj;Lcom/google/android/gms/internal/ads/zzbhg;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzbfw;->zzp(Lcom/google/android/gms/internal/ads/zzbrh;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzd:Lcom/google/android/gms/internal/ads/zzbfw;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbus;

    .line 10
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbus;-><init>()V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzbfw;->zzo(Lcom/google/android/gms/internal/ads/zzbuv;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzd:Lcom/google/android/gms/internal/ads/zzbfw;

    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfw;->zze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzd:Lcom/google/android/gms/internal/ads/zzbfw;

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 13
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbfw;->zzj(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzh:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzh:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    move-result v0

    if-eq v0, v1, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzh:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 16
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbhj;->zzv(Lcom/google/android/gms/ads/RequestConfiguration;)V

    .line 17
    :cond_7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbjb;->zza(Landroid/content/Context;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjb;->zzdJ:Lcom/google/android/gms/internal/ads/zzbit;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbel;->zzc()Lcom/google/android/gms/internal/ads/zzbiz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbiz;->zzb(Lcom/google/android/gms/internal/ads/zzbit;)Ljava/lang/Object;

    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhj;->zzh()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time."

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzf(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbhf;

    .line 22
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzbhf;-><init>(Lcom/google/android/gms/internal/ads/zzbhj;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzi:Lcom/google/android/gms/ads/initialization/InitializationStatus;

    if-eqz p3, :cond_8

    .line 23
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcfz;->zza:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhe;

    invoke-direct {v0, p0, p3}, Lcom/google/android/gms/internal/ads/zzbhe;-><init>(Lcom/google/android/gms/internal/ads/zzbhj;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p3, "MobileAdsSettingManager initialization failed"

    .line 24
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    :cond_8
    :goto_0
    monitor-exit p2

    return-void

    .line 5
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Context cannot be null."

    .line 6
    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 25
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzc(F)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "The app volume must be a value between 0 and 1 inclusive."

    .line 1
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzb:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzd:Lcom/google/android/gms/internal/ads/zzbfw;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "MobileAds.initialize() must be called prior to setting the app volume."

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzd:Lcom/google/android/gms/internal/ads/zzbfw;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbfw;->zzf(F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "Unable to set app volume."

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :goto_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzd()F
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzd:Lcom/google/android/gms/internal/ads/zzbfw;

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 1
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbfw;->zzk()F

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "Unable to get app volume."

    .line 2
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final zze(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzd:Lcom/google/android/gms/internal/ads/zzbfw;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MobileAds.initialize() must be called prior to setting app muted state."

    .line 1
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzd:Lcom/google/android/gms/internal/ads/zzbfw;

    .line 2
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzbfw;->zzh(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "Unable to set app mute state."

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzf()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzd:Lcom/google/android/gms/internal/ads/zzbfw;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 1
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbfw;->zzl()Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "Unable to get app mute state."

    .line 2
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final zzg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzd:Lcom/google/android/gms/internal/ads/zzbfw;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MobileAds.initialize() must be called prior to opening debug menu."

    .line 1
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzd:Lcom/google/android/gms/internal/ads/zzbfw;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbfw;->zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "Unable to open debug menu."

    .line 3
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzh()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzd:Lcom/google/android/gms/internal/ads/zzbfw;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MobileAds.initialize() must be called prior to getting version string."

    .line 1
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzd:Lcom/google/android/gms/internal/ads/zzbfw;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbfw;->zzm()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzflc;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "Unable to get version string."

    .line 4
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, ""

    .line 5
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final zzi(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzd:Lcom/google/android/gms/internal/ads/zzbfw;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzbfw;->zzn(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "Unable to register RtbAdapter"

    .line 2
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzj()Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzd:Lcom/google/android/gms/internal/ads/zzbfw;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MobileAds.initialize() must be called prior to getting initialization status."

    .line 1
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzi:Lcom/google/android/gms/ads/initialization/InitializationStatus;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzd:Lcom/google/android/gms/internal/ads/zzbfw;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbfw;->zzq()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbhj;->zzx(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return-object v1

    :catch_0
    const-string v1, "Unable to get Initialization status."

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzf(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhf;

    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbhf;-><init>(Lcom/google/android/gms/internal/ads/zzbhj;)V

    .line 6
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public final zzk(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzb:Ljava/lang/Object;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhj;->zzw(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzd:Lcom/google/android/gms/internal/ads/zzbfw;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbfw;->zzs()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "Unable to disable mediation adapter initialization."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzf(Ljava/lang/String;)V

    .line 4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzl(Landroid/content/Context;Lcom/google/android/gms/ads/OnAdInspectorClosedListener;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzb:Ljava/lang/Object;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhj;->zzw(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbhj;->zza()Lcom/google/android/gms/internal/ads/zzbhj;

    move-result-object p1

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzbhj;->zzg:Lcom/google/android/gms/ads/OnAdInspectorClosedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzd:Lcom/google/android/gms/internal/ads/zzbfw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhh;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzbhh;-><init>(Lcom/google/android/gms/internal/ads/zzbhg;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzbfw;->zzt(Lcom/google/android/gms/internal/ads/zzbgi;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "Unable to open the ad inspector."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzf(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance p1, Lcom/google/android/gms/ads/AdInspectorError;

    const/4 v1, 0x0

    const-string v2, "Ad inspector had an internal error."

    const-string v3, "com.google.android.gms.ads"

    .line 5
    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/ads/AdInspectorError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/OnAdInspectorClosedListener;->onAdInspectorClosed(Lcom/google/android/gms/ads/AdInspectorError;)V

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final zzm()Lcom/google/android/gms/ads/RequestConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzh:Lcom/google/android/gms/ads/RequestConfiguration;

    return-object v0
.end method

.method public final zzn(Lcom/google/android/gms/ads/RequestConfiguration;)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Null passed to setRequestConfiguration."

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzh:Lcom/google/android/gms/ads/RequestConfiguration;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzh:Lcom/google/android/gms/ads/RequestConfiguration;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzd:Lcom/google/android/gms/internal/ads/zzbfw;

    if-nez v2, :cond_1

    .line 2
    monitor-exit v0

    return-void

    .line 3
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 5
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhj;->zzv(Lcom/google/android/gms/ads/RequestConfiguration;)V

    .line 6
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzo(Landroid/webkit/WebView;)V
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzb:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "The webview to be registered cannot be null."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzf(Ljava/lang/String;)V

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbzw;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcfc;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "Internal error, query info generator is null."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzi(Ljava/lang/String;)V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 7
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzcfc;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, ""

    .line 8
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method final synthetic zzp(Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhj;->zzi:Lcom/google/android/gms/ads/initialization/InitializationStatus;

    .line 1
    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;->onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V

    return-void
.end method
