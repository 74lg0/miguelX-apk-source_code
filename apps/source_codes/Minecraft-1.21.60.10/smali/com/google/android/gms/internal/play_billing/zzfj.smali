.class public final Lcom/google/android/gms/internal/play_billing/zzfj;
.super Lcom/google/android/gms/internal/play_billing/zzcb;
.source "com.android.billingclient:billing@@6.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzdg;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzfj;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzfj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzfj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzb:Lcom/google/android/gms/internal/play_billing/zzfj;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzfj;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzcb;->zzp(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzcb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzcb;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static zzv()Lcom/google/android/gms/internal/play_billing/zzfh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzb:Lcom/google/android/gms/internal/play_billing/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzcb;->zzg()Lcom/google/android/gms/internal/play_billing/zzbx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfh;

    return-object v0
.end method

.method static synthetic zzw()Lcom/google/android/gms/internal/play_billing/zzfj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzb:Lcom/google/android/gms/internal/play_billing/zzfj;

    return-object v0
.end method

.method static synthetic zzx(Lcom/google/android/gms/internal/play_billing/zzfj;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzd:I

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zze:I

    return-void
.end method

.method static synthetic zzy(Lcom/google/android/gms/internal/play_billing/zzfj;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzd:I

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzf:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzz(Lcom/google/android/gms/internal/play_billing/zzfj;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfj;->zzd:I

    return-void
.end method


# virtual methods
.method protected final zzu(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzfj;->zzb:Lcom/google/android/gms/internal/play_billing/zzfj;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzfh;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzfh;-><init>(Lcom/google/android/gms/internal/play_billing/zzfg;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzfj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzfj;-><init>()V

    return-object p1

    :cond_3
    const-string v0, "zzd"

    const-string v1, "zze"

    const-string v2, "zzf"

    const-string v3, "zzg"

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzfi;->zza:Lcom/google/android/gms/internal/play_billing/zzce;

    const-string v5, "zzh"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzfj;->zzb:Lcom/google/android/gms/internal/play_billing/zzfj;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0005\u0004\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0004\u180c\u0002\u0005\u1008\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzfj;->zzm(Lcom/google/android/gms/internal/play_billing/zzdf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
