.class final Lcom/google/android/gms/internal/ads/zzbdn;
.super Lcom/google/android/gms/internal/ads/zzbei;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbei<",
        "Lcom/google/android/gms/internal/ads/zzbzf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Landroid/app/Activity;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbeh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbeh;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdn;->zzb:Lcom/google/android/gms/internal/ads/zzbeh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdn;->zza:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbei;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdn;->zza:Landroid/app/Activity;

    const-string v1, "ad_overlay"

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbeh;->zzl(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdn;->zza:Landroid/app/Activity;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbjb;->zza(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjb;->zzgM:Lcom/google/android/gms/internal/ads/zzbit;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbel;->zzc()Lcom/google/android/gms/internal/ads/zzbiz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbiz;->zzb(Lcom/google/android/gms/internal/ads/zzbit;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdn;->zza:Landroid/app/Activity;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdn;->zza:Landroid/app/Activity;

    const-string v2, "com.google.android.gms.ads.ChimeraAdOverlayCreatorImpl"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbdm;->zza:Lcom/google/android/gms/internal/ads/zzcgi;

    .line 5
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcgk;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcgi;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbzi;

    .line 6
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbzi;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbze;->zzF(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbzf;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcgj; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdn;->zzb:Lcom/google/android/gms/internal/ads/zzbeh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdn;->zza:Landroid/app/Activity;

    .line 7
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcag;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcai;

    move-result-object v2

    .line 8
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbeh;->zzm(Lcom/google/android/gms/internal/ads/zzbeh;Lcom/google/android/gms/internal/ads/zzcai;)Lcom/google/android/gms/internal/ads/zzcai;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdn;->zzb:Lcom/google/android/gms/internal/ads/zzbeh;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbeh;->zzn(Lcom/google/android/gms/internal/ads/zzbeh;)Lcom/google/android/gms/internal/ads/zzcai;

    move-result-object v1

    const-string v2, "ClientApiBroker.createAdOverlay"

    .line 9
    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzcai;->zzd(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdn;->zzb:Lcom/google/android/gms/internal/ads/zzbeh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbeh;->zzs(Lcom/google/android/gms/internal/ads/zzbeh;)Lcom/google/android/gms/internal/ads/zzbzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdn;->zza:Landroid/app/Activity;

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzc;->zza(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzbzf;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzbfp;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdn;->zza:Landroid/app/Activity;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbfp;->zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzbzf;

    move-result-object p1

    return-object p1
.end method
