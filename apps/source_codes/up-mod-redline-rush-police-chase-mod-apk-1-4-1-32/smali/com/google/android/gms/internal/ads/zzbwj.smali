.class final Lcom/google/android/gms/internal/ads/zzbwj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/ads/AdRequest$ErrorCode;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbwl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbwl;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwj;->zzb:Lcom/google/android/gms/internal/ads/zzbwl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbwj;->zza:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwj;->zzb:Lcom/google/android/gms/internal/ads/zzbwl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbwl;->zza(Lcom/google/android/gms/internal/ads/zzbwl;)Lcom/google/android/gms/internal/ads/zzbvb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbwj;->zza:Lcom/google/ads/AdRequest$ErrorCode;

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbwm;->zza(Lcom/google/ads/AdRequest$ErrorCode;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbvb;->zzg(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
