.class final Lcom/google/android/gms/internal/auth/zzdp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"


# instance fields
.field public zza:I

.field public zzb:J

.field public zzc:Ljava/lang/Object;

.field public final zzd:Lcom/google/android/gms/internal/auth/zzeg;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzeg;->zza()Lcom/google/android/gms/internal/auth/zzeg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzdp;->zzd:Lcom/google/android/gms/internal/auth/zzeg;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/auth/zzeg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/zzdp;->zzd:Lcom/google/android/gms/internal/auth/zzeg;

    return-void
.end method
