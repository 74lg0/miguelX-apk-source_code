.class final Lcom/google/android/play/core/integrity/zzt;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.0.1"


# instance fields
.field final zza:Lcom/google/android/play/integrity/internal/zzt;

.field private final zzb:Lcom/google/android/play/integrity/internal/zzi;

.field private final zzc:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/play/integrity/internal/zzi;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/integrity/zzt;->zzc:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/play/core/integrity/zzt;->zzb:Lcom/google/android/play/integrity/internal/zzi;

    invoke-static {p1}, Lcom/google/android/play/integrity/internal/zzw;->zza(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Phonesky is not installed."

    invoke-virtual {p2, v0, p1}, Lcom/google/android/play/integrity/internal/zzi;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/play/core/integrity/zzt;->zza:Lcom/google/android/play/integrity/internal/zzt;

    return-void

    :cond_0
    new-instance v8, Lcom/google/android/play/integrity/internal/zzt;

    const-string v3, "IntegrityService"

    sget-object v4, Lcom/google/android/play/core/integrity/zzu;->zza:Landroid/content/Intent;

    sget-object v5, Lcom/google/android/play/core/integrity/zzq;->zza:Lcom/google/android/play/core/integrity/zzq;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/play/integrity/internal/zzt;-><init>(Landroid/content/Context;Lcom/google/android/play/integrity/internal/zzi;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/core/integrity/zzq;Lcom/google/android/play/integrity/internal/zzo;[B)V

    iput-object v8, p0, Lcom/google/android/play/core/integrity/zzt;->zza:Lcom/google/android/play/integrity/internal/zzt;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/play/core/integrity/zzt;[BLjava/lang/Long;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package.name"

    iget-object p0, p0, Lcom/google/android/play/core/integrity/zzt;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "nonce"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    if-eqz p2, :cond_0

    const-string p0, "cloud.prj"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-object v0
.end method

.method static bridge synthetic zzc(Lcom/google/android/play/core/integrity/zzt;)Lcom/google/android/play/integrity/internal/zzi;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/integrity/zzt;->zzb:Lcom/google/android/play/integrity/internal/zzi;

    return-object p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/play/core/integrity/IntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 10

    iget-object v0, p0, Lcom/google/android/play/core/integrity/zzt;->zza:Lcom/google/android/play/integrity/internal/zzt;

    if-nez v0, :cond_0

    new-instance p1, Lcom/google/android/play/core/integrity/IntegrityServiceException;

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/play/core/integrity/IntegrityServiceException;-><init>(ILjava/lang/Throwable;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest;->nonce()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest;->cloudProjectNumber()Ljava/lang/Long;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/play/core/integrity/zzt;->zzb:Lcom/google/android/play/integrity/internal/zzi;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "requestIntegrityToken(%s)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/integrity/internal/zzi;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/integrity/zzt;->zza:Lcom/google/android/play/integrity/internal/zzt;

    new-instance v9, Lcom/google/android/play/core/integrity/zzr;

    move-object v2, v9

    move-object v3, p0

    move-object v4, v0

    move-object v7, v0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/play/core/integrity/zzr;-><init>(Lcom/google/android/play/core/integrity/zzt;Lcom/google/android/gms/tasks/TaskCompletionSource;[BLjava/lang/Long;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/play/core/integrity/IntegrityTokenRequest;)V

    invoke-virtual {v1, v9, v0}, Lcom/google/android/play/integrity/internal/zzt;->zzp(Lcom/google/android/play/integrity/internal/zzj;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/play/core/integrity/IntegrityServiceException;

    const/16 v1, -0xd

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/integrity/IntegrityServiceException;-><init>(ILjava/lang/Throwable;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
