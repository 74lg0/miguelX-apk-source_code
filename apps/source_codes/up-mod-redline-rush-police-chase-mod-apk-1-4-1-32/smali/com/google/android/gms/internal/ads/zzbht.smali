.class final Lcom/google/android/gms/internal/ads/zzbht;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbhu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbhu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbht;->zza:Lcom/google/android/gms/internal/ads/zzbhu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbht;->zza:Lcom/google/android/gms/internal/ads/zzbhu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbhu;->zzK(Lcom/google/android/gms/internal/ads/zzbhu;)Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbht;->zza:Lcom/google/android/gms/internal/ads/zzbhu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbhu;->zzK(Lcom/google/android/gms/internal/ads/zzbhu;)Lcom/google/android/gms/internal/ads/zzbes;

    move-result-object v0

    const/4 v1, 0x1

    .line 1
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbes;->zzc(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not notify onAdFailedToLoad event."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
