.class public final Lcom/google/android/gms/internal/play_billing/zzfb;
.super Lcom/google/android/gms/internal/play_billing/zzcb;
.source "com.android.billingclient:billing@@6.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/zzdg;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/play_billing/zzfb;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/play_billing/zzfj;

.field private zzi:Lcom/google/android/gms/internal/play_billing/zzfs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzfb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/zzfb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/zzfb;->zzb:Lcom/google/android/gms/internal/play_billing/zzfb;

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzfb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzcb;->zzp(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/zzcb;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzcb;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/play_billing/zzfb;->zze:I

    return-void
.end method

.method static synthetic zzA(Lcom/google/android/gms/internal/play_billing/zzfb;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfb;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzfb;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfb;->zzd:I

    return-void
.end method

.method public static zzv()Lcom/google/android/gms/internal/play_billing/zzfa;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzfb;->zzb:Lcom/google/android/gms/internal/play_billing/zzfb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzcb;->zzg()Lcom/google/android/gms/internal/play_billing/zzbx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzfa;

    return-object v0
.end method

.method static synthetic zzw()Lcom/google/android/gms/internal/play_billing/zzfb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzfb;->zzb:Lcom/google/android/gms/internal/play_billing/zzfb;

    return-object v0
.end method

.method public static zzx([BLcom/google/android/gms/internal/play_billing/zzbn;)Lcom/google/android/gms/internal/play_billing/zzfb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/play_billing/zzci;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzfb;->zzb:Lcom/google/android/gms/internal/play_billing/zzfb;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/play_billing/zzcb;->zzj(Lcom/google/android/gms/internal/play_billing/zzcb;[BLcom/google/android/gms/internal/play_billing/zzbn;)Lcom/google/android/gms/internal/play_billing/zzcb;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/play_billing/zzfb;

    return-object p0
.end method

.method static synthetic zzy(Lcom/google/android/gms/internal/play_billing/zzfb;Lcom/google/android/gms/internal/play_billing/zzfj;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzfb;->zzh:Lcom/google/android/gms/internal/play_billing/zzfj;

    iget p1, p0, Lcom/google/android/gms/internal/play_billing/zzfb;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfb;->zzd:I

    return-void
.end method

.method static synthetic zzz(Lcom/google/android/gms/internal/play_billing/zzfb;Lcom/google/android/gms/internal/play_billing/zzfw;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzfb;->zzf:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/play_billing/zzfb;->zze:I

    return-void
.end method


# virtual methods
.method protected final zzu(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

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
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzfb;->zzb:Lcom/google/android/gms/internal/play_billing/zzfb;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzfa;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzfa;-><init>(Lcom/google/android/gms/internal/play_billing/zzez;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzfb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/play_billing/zzfb;-><init>()V

    return-object p1

    :cond_3
    const-string v0, "zzf"

    const-string v1, "zze"

    const-string v2, "zzd"

    const-string v3, "zzg"

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzfc;->zza:Lcom/google/android/gms/internal/play_billing/zzce;

    const-string v5, "zzh"

    const-string v6, "zzi"

    const-class v7, Lcom/google/android/gms/internal/play_billing/zzfw;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzfb;->zzb:Lcom/google/android/gms/internal/play_billing/zzfb;

    const-string p3, "\u0001\u0004\u0001\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004<\u0000"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzfb;->zzm(Lcom/google/android/gms/internal/play_billing/zzdf;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
