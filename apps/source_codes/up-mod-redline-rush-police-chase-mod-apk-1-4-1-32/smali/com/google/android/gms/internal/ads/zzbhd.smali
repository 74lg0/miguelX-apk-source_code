.class public final Lcom/google/android/gms/internal/ads/zzbhd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzbek;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbus;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbdc;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zze:Lcom/google/android/gms/ads/VideoController;

.field private zzf:Lcom/google/android/gms/internal/ads/zzbcn;

.field private zzg:Lcom/google/android/gms/ads/AdListener;

.field private zzh:[Lcom/google/android/gms/ads/AdSize;

.field private zzi:Lcom/google/android/gms/ads/admanager/AppEventListener;

.field private zzj:Lcom/google/android/gms/internal/ads/zzbff;

.field private zzk:Lcom/google/android/gms/ads/VideoOptions;

.field private zzl:Ljava/lang/String;

.field private final zzm:Landroid/view/ViewGroup;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field private zzn:I

.field private zzo:Z

.field private zzp:Lcom/google/android/gms/ads/OnPaidEventListener;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 7

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbdc;->zza:Lcom/google/android/gms/internal/ads/zzbdc;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbhd;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zzbdc;Lcom/google/android/gms/internal/ads/zzbff;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 7

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbdc;->zza:Lcom/google/android/gms/internal/ads/zzbdc;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbhd;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zzbdc;Lcom/google/android/gms/internal/ads/zzbff;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .locals 7

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbdc;->zza:Lcom/google/android/gms/internal/ads/zzbdc;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbhd;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zzbdc;Lcom/google/android/gms/internal/ads/zzbff;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V
    .locals 7

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbdc;->zza:Lcom/google/android/gms/internal/ads/zzbdc;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbhd;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zzbdc;Lcom/google/android/gms/internal/ads/zzbff;I)V

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zzbdc;Lcom/google/android/gms/internal/ads/zzbff;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Lcom/google/android/gms/internal/ads/zzbus;

    .line 5
    invoke-direct {p5}, Lcom/google/android/gms/internal/ads/zzbus;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzb:Lcom/google/android/gms/internal/ads/zzbus;

    new-instance p5, Lcom/google/android/gms/ads/VideoController;

    .line 6
    invoke-direct {p5}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zze:Lcom/google/android/gms/ads/VideoController;

    new-instance p5, Lcom/google/android/gms/internal/ads/zzbhc;

    .line 7
    invoke-direct {p5, p0}, Lcom/google/android/gms/internal/ads/zzbhc;-><init>(Lcom/google/android/gms/internal/ads/zzbhd;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zza:Lcom/google/android/gms/internal/ads/zzbek;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzm:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzc:Lcom/google/android/gms/internal/ads/zzbdc;

    const/4 p4, 0x0

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;

    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p5, 0x0

    .line 8
    invoke-direct {p4, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzd:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzn:I

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p4

    :try_start_0
    new-instance p6, Lcom/google/android/gms/internal/ads/zzbdl;

    .line 10
    invoke-direct {p6, p4, p2}, Lcom/google/android/gms/internal/ads/zzbdl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    invoke-virtual {p6, p3}, Lcom/google/android/gms/internal/ads/zzbdl;->zza(Z)[Lcom/google/android/gms/ads/AdSize;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzh:[Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzbdl;->zzb()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbej;->zza()Lcom/google/android/gms/internal/ads/zzcfz;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzh:[Lcom/google/android/gms/ads/AdSize;

    aget-object p3, p3, p5

    iget p5, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzn:I

    .line 18
    sget-object p6, Lcom/google/android/gms/ads/AdSize;->INVALID:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p3, p6}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_0

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdd;->zze()Lcom/google/android/gms/internal/ads/zzbdd;

    move-result-object p3

    goto :goto_0

    .line 20
    :cond_0
    new-instance p6, Lcom/google/android/gms/internal/ads/zzbdd;

    invoke-direct {p6, p4, p3}, Lcom/google/android/gms/internal/ads/zzbdd;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzbhd;->zzC(I)Z

    move-result p3

    iput-boolean p3, p6, Lcom/google/android/gms/internal/ads/zzbdd;->zzj:Z

    move-object p3, p6

    :goto_0
    const-string p4, "Ads by Google"

    .line 21
    invoke-virtual {p2, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzcfz;->zzc(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzbdd;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p2

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbej;->zza()Lcom/google/android/gms/internal/ads/zzcfz;

    move-result-object p3

    new-instance p5, Lcom/google/android/gms/internal/ads/zzbdd;

    sget-object p6, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-direct {p5, p4, p6}, Lcom/google/android/gms/internal/ads/zzbdd;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    .line 13
    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p4

    .line 14
    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 15
    invoke-virtual {p3, p1, p5, p4, p2}, Lcom/google/android/gms/internal/ads/zzcfz;->zzb(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzbdd;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic zzA(Lcom/google/android/gms/internal/ads/zzbhd;)Lcom/google/android/gms/ads/VideoController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zze:Lcom/google/android/gms/ads/VideoController;

    return-object p0
.end method

.method private static zzB(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/ads/zzbdd;
    .locals 4

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 2
    sget-object v3, Lcom/google/android/gms/ads/AdSize;->INVALID:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdd;->zze()Lcom/google/android/gms/internal/ads/zzbdd;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbdd;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbhd;->zzC(I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/google/android/gms/internal/ads/zzbdd;->zzj:Z

    return-object v0
.end method

.method private static zzC(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbff;->zzc()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzg:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/ads/AdSize;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbff;->zzn()Lcom/google/android/gms/internal/ads/zzbdd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzbdd;->zze:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzbdd;->zzb:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbdd;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/ads/zza;->zza(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzh:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzd()[Lcom/google/android/gms/ads/AdSize;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzh:[Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzl:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;

    if-eqz v0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbff;->zzu()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzl:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzl:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/ads/admanager/AppEventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzi:Lcom/google/android/gms/ads/admanager/AppEventListener;

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzbhb;)V
    .locals 10

    const-string v0, "#007 Could not call remote method."

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzh:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzl:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzm:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzh:[Lcom/google/android/gms/ads/AdSize;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzn:I

    .line 3
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbhd;->zzB(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/ads/zzbdd;

    move-result-object v5

    const-string v2, "search_v2"

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzbdd;->zza:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbej;->zzb()Lcom/google/android/gms/internal/ads/zzbeh;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzl:Ljava/lang/String;

    .line 6
    new-instance v4, Lcom/google/android/gms/internal/ads/zzbdw;

    invoke-direct {v4, v2, v1, v5, v3}, Lcom/google/android/gms/internal/ads/zzbdw;-><init>(Lcom/google/android/gms/internal/ads/zzbeh;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdd;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v4, v1, v8}, Lcom/google/android/gms/internal/ads/zzbei;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Lcom/google/android/gms/internal/ads/zzbff;

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbej;->zzb()Lcom/google/android/gms/internal/ads/zzbeh;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzl:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzb:Lcom/google/android/gms/internal/ads/zzbus;

    .line 10
    new-instance v9, Lcom/google/android/gms/internal/ads/zzbdu;

    move-object v2, v9

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzbdu;-><init>(Lcom/google/android/gms/internal/ads/zzbeh;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbuv;)V

    .line 11
    invoke-virtual {v9, v1, v8}, Lcom/google/android/gms/internal/ads/zzbei;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    .line 12
    check-cast v1, Lcom/google/android/gms/internal/ads/zzbff;

    .line 8
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbct;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zza:Lcom/google/android/gms/internal/ads/zzbek;

    .line 13
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzbct;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbff;->zzh(Lcom/google/android/gms/internal/ads/zzbes;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzf:Lcom/google/android/gms/internal/ads/zzbcn;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbco;

    .line 14
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzbco;-><init>(Lcom/google/android/gms/internal/ads/zzbcn;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzbff;->zzy(Lcom/google/android/gms/internal/ads/zzbep;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzi:Lcom/google/android/gms/ads/admanager/AppEventListener;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzawj;

    .line 15
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzawj;-><init>(Lcom/google/android/gms/ads/admanager/AppEventListener;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzbff;->zzi(Lcom/google/android/gms/internal/ads/zzbfm;)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzk:Lcom/google/android/gms/ads/VideoOptions;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;

    .line 16
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbij;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzbij;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzbff;->zzF(Lcom/google/android/gms/internal/ads/zzbij;)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbic;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzp:Lcom/google/android/gms/ads/OnPaidEventListener;

    .line 17
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzbic;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbff;->zzO(Lcom/google/android/gms/internal/ads/zzbgo;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzo:Z

    .line 18
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbff;->zzz(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_4

    goto :goto_1

    .line 19
    :cond_4
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbff;->zzb()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzm:Landroid/view/ViewGroup;

    .line 20
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 21
    :try_start_2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 0
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    .line 1
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzc:Lcom/google/android/gms/internal/ads/zzbdc;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzm:Landroid/view/ViewGroup;

    .line 22
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzbdc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbhb;)Lcom/google/android/gms/internal/ads/zzbcy;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzbff;->zze(Lcom/google/android/gms/internal/ads/zzbcy;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzb:Lcom/google/android/gms/internal/ads/zzbus;

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbhb;->zzn()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbus;->zze(Ljava/util/Map;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_7
    return-void

    :catch_1
    move-exception p1

    .line 25
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzh()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbff;->zzf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzi()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbff;->zzm()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzj()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbff;->zzg()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/ads/AdListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzg:Lcom/google/android/gms/ads/AdListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zza:Lcom/google/android/gms/internal/ads/zzbek;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbek;->zza(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzbcn;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzf:Lcom/google/android/gms/internal/ads/zzbcn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbco;

    .line 1
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbco;-><init>(Lcom/google/android/gms/internal/ads/zzbcn;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbff;->zzy(Lcom/google/android/gms/internal/ads/zzbep;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs zzm([Lcom/google/android/gms/ads/AdSize;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzh:[Lcom/google/android/gms/ads/AdSize;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhd;->zzn([Lcom/google/android/gms/ads/AdSize;)V

    return-void

    .line 0
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad size can only be set once on AdView."

    .line 1
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs zzn([Lcom/google/android/gms/ads/AdSize;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzh:[Lcom/google/android/gms/ads/AdSize;

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzm:Landroid/view/ViewGroup;

    .line 1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzh:[Lcom/google/android/gms/ads/AdSize;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzn:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbhd;->zzB(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/ads/zzbdd;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbff;->zzo(Lcom/google/android/gms/internal/ads/zzbdd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzm:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final zzo(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzl:Ljava/lang/String;

    return-void

    .line 0
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad unit ID can only be set once on AdView."

    .line 1
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzp(Lcom/google/android/gms/ads/admanager/AppEventListener;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzi:Lcom/google/android/gms/ads/admanager/AppEventListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzawj;

    .line 1
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzawj;-><init>(Lcom/google/android/gms/ads/admanager/AppEventListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbff;->zzi(Lcom/google/android/gms/internal/ads/zzbfm;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzq(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzo:Z

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbff;->zzz(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzr()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;

    if-eqz v0, :cond_0

    .line 1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbff;->zzA()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzs()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;

    if-eqz v1, :cond_0

    .line 1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbff;->zzt()Lcom/google/android/gms/internal/ads/zzbgr;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 2
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->zzb(Lcom/google/android/gms/internal/ads/zzbgr;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final zzt(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzp:Lcom/google/android/gms/ads/OnPaidEventListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbic;

    .line 1
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbic;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbff;->zzO(Lcom/google/android/gms/internal/ads/zzbgo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#008 Must be called on the main UI thread."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzu()Lcom/google/android/gms/ads/OnPaidEventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzp:Lcom/google/android/gms/ads/OnPaidEventListener;

    return-object v0
.end method

.method public final zzv()Lcom/google/android/gms/ads/VideoController;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zze:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public final zzw()Lcom/google/android/gms/internal/ads/zzbgu;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbff;->zzE()Lcom/google/android/gms/internal/ads/zzbgu;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "#007 Could not call remote method."

    .line 2
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v1
.end method

.method public final zzx(Lcom/google/android/gms/ads/VideoOptions;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzk:Lcom/google/android/gms/ads/VideoOptions;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbij;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzbij;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    move-object p1, v1

    .line 2
    :goto_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbff;->zzF(Lcom/google/android/gms/internal/ads/zzbij;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzy()Lcom/google/android/gms/ads/VideoOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzk:Lcom/google/android/gms/ads/VideoOptions;

    return-object v0
.end method

.method public final zzz(Lcom/google/android/gms/internal/ads/zzbff;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbff;->zzb()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzm:Landroid/view/ViewGroup;

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhd;->zzj:Lcom/google/android/gms/internal/ads/zzbff;

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v1, "#007 Could not call remote method."

    .line 2
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcgg;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method
