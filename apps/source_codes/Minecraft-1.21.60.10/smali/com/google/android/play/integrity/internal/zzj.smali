.class public abstract Lcom/google/android/play/integrity/internal/zzj;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/integrity/internal/zzj;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/integrity/internal/zzj;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/play/integrity/internal/zzj;->zzb()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/google/android/play/integrity/internal/zzj;->zza(Ljava/lang/Exception;)V

    return-void
.end method

.method public zza(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/integrity/internal/zzj;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    :cond_0
    return-void
.end method

.method protected abstract zzb()V
.end method

.method final zzc()Lcom/google/android/gms/tasks/TaskCompletionSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/integrity/internal/zzj;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-object v0
.end method
