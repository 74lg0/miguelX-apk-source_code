.class final Lcom/google/android/gms/internal/play_billing/zzdl;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.0.1"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/play_billing/zzdk;

.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzdk;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.NewInstanceSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzdk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzdl;->zza:Lcom/google/android/gms/internal/play_billing/zzdk;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzdk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzdk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzdl;->zzb:Lcom/google/android/gms/internal/play_billing/zzdk;

    return-void
.end method

.method static zza()Lcom/google/android/gms/internal/play_billing/zzdk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzdl;->zza:Lcom/google/android/gms/internal/play_billing/zzdk;

    return-object v0
.end method

.method static zzb()Lcom/google/android/gms/internal/play_billing/zzdk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzdl;->zzb:Lcom/google/android/gms/internal/play_billing/zzdk;

    return-object v0
.end method
