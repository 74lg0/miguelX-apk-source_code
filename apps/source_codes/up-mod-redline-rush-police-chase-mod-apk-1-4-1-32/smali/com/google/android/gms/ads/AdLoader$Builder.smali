.class public Lcom/google/android/gms/ads/AdLoader$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/AdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbfb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "context cannot be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbej;->zzb()Lcom/google/android/gms/internal/ads/zzbeh;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbus;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbus;-><init>()V

    .line 3
    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzbeh;->zzc(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbuv;)Lcom/google/android/gms/internal/ads/zzbfb;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zza:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzb:Lcom/google/android/gms/internal/ads/zzbfb;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/ads/AdLoader;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/AdLoader;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zza:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzb:Lcom/google/android/gms/internal/ads/zzbfb;

    .line 1
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbfb;->zze()Lcom/google/android/gms/internal/ads/zzbey;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbdc;->zza:Lcom/google/android/gms/internal/ads/zzbdc;

    .line 2
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/AdLoader;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbey;Lcom/google/android/gms/internal/ads/zzbdc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to build AdLoader."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhs;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbhs;-><init>()V

    new-instance v1, Lcom/google/android/gms/ads/AdLoader;

    iget-object v2, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zza:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhs;->zzb()Lcom/google/android/gms/internal/ads/zzbey;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbdc;->zza:Lcom/google/android/gms/internal/ads/zzbdc;

    .line 6
    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/ads/AdLoader;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbey;Lcom/google/android/gms/internal/ads/zzbdc;)V

    return-object v1
.end method

.method public varargs forAdManagerAdView(Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;[Lcom/google/android/gms/ads/AdSize;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .locals 2

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdd;

    iget-object v1, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zza:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzbdd;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    iget-object p2, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzb:Lcom/google/android/gms/internal/ads/zzbfb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzboc;

    .line 3
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzboc;-><init>(Lcom/google/android/gms/ads/formats/OnAdManagerAdViewLoadedListener;)V

    invoke-interface {p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfb;->zzk(Lcom/google/android/gms/internal/ads/zzbnh;Lcom/google/android/gms/internal/ads/zzbdd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Failed to add Google Ad Manager banner ad listener"

    .line 4
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0

    .line 0
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The supported ad sizes must contain at least one valid ad size."

    .line 1
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public forCustomFormatAd(Ljava/lang/String;Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbyn;

    .line 1
    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbyn;-><init>(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener;Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener;)V

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzb:Lcom/google/android/gms/internal/ads/zzbfb;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyn;->zza()Lcom/google/android/gms/internal/ads/zzbnd;

    move-result-object p3

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyn;->zzb()Lcom/google/android/gms/internal/ads/zzbna;

    move-result-object v0

    .line 4
    invoke-interface {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzbfb;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbnd;Lcom/google/android/gms/internal/ads/zzbna;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Failed to add custom format ad listener"

    .line 5
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public forCustomTemplateAd(Ljava/lang/String;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzboa;

    .line 1
    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzboa;-><init>(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;)V

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzb:Lcom/google/android/gms/internal/ads/zzbfb;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboa;->zza()Lcom/google/android/gms/internal/ads/zzbnd;

    move-result-object p3

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboa;->zzb()Lcom/google/android/gms/internal/ads/zzbna;

    move-result-object v0

    .line 4
    invoke-interface {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzbfb;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbnd;Lcom/google/android/gms/internal/ads/zzbna;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Failed to add custom template ad listener"

    .line 5
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzb:Lcom/google/android/gms/internal/ads/zzbfb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbyp;

    .line 1
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbyp;-><init>(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfb;->zzm(Lcom/google/android/gms/internal/ads/zzbnk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to add google native ad listener"

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public forUnifiedNativeAd(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzb:Lcom/google/android/gms/internal/ads/zzbfb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbod;

    .line 1
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbod;-><init>(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfb;->zzm(Lcom/google/android/gms/internal/ads/zzbnk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to add google native ad listener"

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzb:Lcom/google/android/gms/internal/ads/zzbfb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbct;

    .line 1
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbct;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfb;->zzf(Lcom/google/android/gms/internal/ads/zzbes;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to set AdListener."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public withAdManagerAdViewOptions(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzb:Lcom/google/android/gms/internal/ads/zzbfb;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbfb;->zzp(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to specify Ad Manager banner ad options"

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public withNativeAdOptions(Lcom/google/android/gms/ads/formats/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzb:Lcom/google/android/gms/internal/ads/zzbfb;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzblk;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzblk;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfb;->zzj(Lcom/google/android/gms/internal/ads/zzblk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to specify native ad options"

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public withNativeAdOptions(Lcom/google/android/gms/ads/nativead/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdLoader$Builder;->zzb:Lcom/google/android/gms/internal/ads/zzbfb;

    .line 3
    new-instance v10, Lcom/google/android/gms/internal/ads/zzblk;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->shouldReturnUrlsForImageAssets()Z

    move-result v3

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->shouldRequestMultipleImages()Z

    move-result v5

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->getAdChoicesPlacement()I

    move-result v6

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbij;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzbij;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v7, v1

    const/4 v2, 0x4

    const/4 v4, -0x1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->zza()Z

    move-result v8

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions;->getMediaAspectRatio()I

    move-result v9

    move-object v1, v10

    .line 11
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzblk;-><init>(IZIZILcom/google/android/gms/internal/ads/zzbij;ZI)V

    .line 3
    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/ads/zzbfb;->zzj(Lcom/google/android/gms/internal/ads/zzblk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Failed to specify native ad options"

    .line 12
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object p0
.end method
