.class final Lcom/google/android/play/core/integrity/zzr;
.super Lcom/google/android/play/integrity/internal/zzj;
.source "com.google.android.play:integrity@@1.0.1"


# instance fields
.field final synthetic zza:[B

.field final synthetic zzb:Ljava/lang/Long;

.field final synthetic zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zzd:Lcom/google/android/play/core/integrity/IntegrityTokenRequest;

.field final synthetic zze:Lcom/google/android/play/core/integrity/zzt;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/integrity/zzt;Lcom/google/android/gms/tasks/TaskCompletionSource;[BLjava/lang/Long;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/play/core/integrity/IntegrityTokenRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/integrity/zzr;->zze:Lcom/google/android/play/core/integrity/zzt;

    iput-object p3, p0, Lcom/google/android/play/core/integrity/zzr;->zza:[B

    iput-object p4, p0, Lcom/google/android/play/core/integrity/zzr;->zzb:Ljava/lang/Long;

    iput-object p5, p0, Lcom/google/android/play/core/integrity/zzr;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p6, p0, Lcom/google/android/play/core/integrity/zzr;->zzd:Lcom/google/android/play/core/integrity/IntegrityTokenRequest;

    invoke-direct {p0, p2}, Lcom/google/android/play/integrity/internal/zzj;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Exception;)V
    .locals 2

    instance-of v0, p1, Lcom/google/android/play/integrity/internal/zzu;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/play/core/integrity/IntegrityServiceException;

    const/16 v1, -0x9

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/integrity/IntegrityServiceException;-><init>(ILjava/lang/Throwable;)V

    invoke-super {p0, v0}, Lcom/google/android/play/integrity/internal/zzj;->zza(Ljava/lang/Exception;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/play/integrity/internal/zzj;->zza(Ljava/lang/Exception;)V

    return-void
.end method

.method protected final zzb()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/integrity/zzr;->zze:Lcom/google/android/play/core/integrity/zzt;

    iget-object v0, v0, Lcom/google/android/play/core/integrity/zzt;->zza:Lcom/google/android/play/integrity/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/play/integrity/internal/zzt;->zze()Landroid/os/IInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/integrity/zzr;->zze:Lcom/google/android/play/core/integrity/zzt;

    iget-object v2, p0, Lcom/google/android/play/core/integrity/zzr;->zza:[B

    iget-object v3, p0, Lcom/google/android/play/core/integrity/zzr;->zzb:Ljava/lang/Long;

    invoke-static {v1, v2, v3}, Lcom/google/android/play/core/integrity/zzt;->zza(Lcom/google/android/play/core/integrity/zzt;[BLjava/lang/Long;)Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/play/core/integrity/zzs;

    iget-object v3, p0, Lcom/google/android/play/core/integrity/zzr;->zze:Lcom/google/android/play/core/integrity/zzt;

    iget-object v4, p0, Lcom/google/android/play/core/integrity/zzr;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v2, v3, v4}, Lcom/google/android/play/core/integrity/zzs;-><init>(Lcom/google/android/play/core/integrity/zzt;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/play/integrity/internal/zzf;->zzc(Landroid/os/Bundle;Lcom/google/android/play/integrity/internal/zzh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/play/core/integrity/zzr;->zze:Lcom/google/android/play/core/integrity/zzt;

    invoke-static {v1}, Lcom/google/android/play/core/integrity/zzt;->zzc(Lcom/google/android/play/core/integrity/zzt;)Lcom/google/android/play/integrity/internal/zzi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/integrity/zzr;->zzd:Lcom/google/android/play/core/integrity/IntegrityTokenRequest;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "requestIntegrityToken(%s)"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/integrity/internal/zzi;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/play/core/integrity/zzr;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v2, Lcom/google/android/play/core/integrity/IntegrityServiceException;

    const/16 v3, -0x64

    invoke-direct {v2, v3, v0}, Lcom/google/android/play/core/integrity/IntegrityServiceException;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method
