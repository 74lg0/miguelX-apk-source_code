.class public final Lcom/google/android/gms/internal/ads/zzbyj;
.super Lcom/google/android/gms/ads/nativead/NativeAd;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbnt;

.field private final zzb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/nativead/NativeAd$Image;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbyi;

.field private final zzd:Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;

.field private final zze:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/MuteThisAdReason;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbnt;)V
    .locals 5

    const-string v0, ""

    invoke-direct {p0}, Lcom/google/android/gms/ads/nativead/NativeAd;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzb:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zze:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzf()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_1

    .line 6
    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzblv;->zzg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzblw;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzb:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbyi;

    .line 7
    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzbyi;-><init>(Lcom/google/android/gms/internal/ads/zzblw;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzz()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 11
    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_4

    .line 12
    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbgd;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zze:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbgf;

    .line 13
    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/ads/zzbgf;-><init>(Lcom/google/android/gms/internal/ads/zzbge;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :cond_5
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzh()Lcom/google/android/gms/internal/ads/zzblw;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbyi;

    .line 16
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzbyi;-><init>(Lcom/google/android/gms/internal/ads/zzblw;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 17
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    move-object v2, v1

    .line 16
    :goto_4
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzc:Lcom/google/android/gms/internal/ads/zzbyi;

    :try_start_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzq()Lcom/google/android/gms/internal/ads/zzblo;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbyg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 19
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbnt;->zzq()Lcom/google/android/gms/internal/ads/zzblo;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/zzbyg;-><init>(Lcom/google/android/gms/internal/ads/zzblo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, p1

    goto :goto_5

    :catch_3
    move-exception p1

    .line 20
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :cond_7
    :goto_5
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzd:Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;

    return-void
.end method


# virtual methods
.method public final cancelUnconfirmedClick()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to cancelUnconfirmedClick"

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final destroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final enableCustomClickGesture()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzD()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getAdChoicesInfo()Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzd:Lcom/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo;

    return-object v0
.end method

.method public final getAdvertiser()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzj()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzg()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzi()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzw()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zze()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzc:Lcom/google/android/gms/internal/ads/zzbyi;

    return-object v0
.end method

.method public final getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/nativead/NativeAd$Image;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zzb:Ljava/util/List;

    return-object v0
.end method

.method public final getMediaContent()Lcom/google/android/gms/ads/MediaContent;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzF()Lcom/google/android/gms/internal/ads/zzblt;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzF()Lcom/google/android/gms/internal/ads/zzblt;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbhn;-><init>(Lcom/google/android/gms/internal/ads/zzblt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMuteThisAdReasons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/MuteThisAdReason;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zze:Ljava/util/List;

    return-object v0
.end method

.method public final getPrice()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzm()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzH()Lcom/google/android/gms/internal/ads/zzbgr;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->zzb(Lcom/google/android/gms/internal/ads/zzbgr;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getStarRating()Ljava/lang/Double;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzk()D

    move-result-wide v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, ""

    .line 3
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final getStore()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzl()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isCustomClickGestureEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzG()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final isCustomMuteThisAdEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzA()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final muteThisAd(Lcom/google/android/gms/ads/MuteThisAdReason;)V
    .locals 2

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzA()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 3
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzB(Lcom/google/android/gms/internal/ads/zzbge;)V

    return-void

    .line 5
    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzbgf;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbgf;->zza()Lcom/google/android/gms/internal/ads/zzbge;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzB(Lcom/google/android/gms/internal/ads/zzbge;)V

    return-void

    :cond_2
    const-string p1, "Use mute reason from UnifiedNativeAd.getMuteThisAdReasons() or null"

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzf(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string p1, "Ad is not custom mute enabled"

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzf(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 8
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final performClick(Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzr(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordCustomClickGesture()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzE()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordImpression(Landroid/os/Bundle;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzs(Landroid/os/Bundle;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final reportTouchEvent(Landroid/os/Bundle;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzt(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setMuteThisAdListener(Lcom/google/android/gms/ads/MuteThisAdListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbgb;

    .line 1
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbgb;-><init>(Lcom/google/android/gms/ads/MuteThisAdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzC(Lcom/google/android/gms/internal/ads/zzbga;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbic;

    .line 1
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbic;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzI(Lcom/google/android/gms/internal/ads/zzbgo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to setOnPaidEventListener"

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setUnconfirmedClickListener(Lcom/google/android/gms/ads/nativead/NativeAd$UnconfirmedClickListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbyq;

    .line 1
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbyq;-><init>(Lcom/google/android/gms/ads/nativead/NativeAd$UnconfirmedClickListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzx(Lcom/google/android/gms/internal/ads/zzbnq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to setUnconfirmedClickListener"

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbyj;->zza:Lcom/google/android/gms/internal/ads/zzbnt;

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->zzu()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
