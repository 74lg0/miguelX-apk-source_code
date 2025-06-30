.class public final Lcom/google/android/gms/internal/ads/zzfla;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfkh;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfkx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzfkx;[B)V
    .locals 0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzfkg;->zza:Lcom/google/android/gms/internal/ads/zzfkg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfla;->zzb:Lcom/google/android/gms/internal/ads/zzfkx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfla;->zza:Lcom/google/android/gms/internal/ads/zzfkh;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzfkh;)Lcom/google/android/gms/internal/ads/zzfla;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfla;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfkx;

    .line 1
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfkx;-><init>(Lcom/google/android/gms/internal/ads/zzfkh;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzfla;-><init>(Lcom/google/android/gms/internal/ads/zzfkx;[B)V

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzfla;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfla;->zzf(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzfla;)Lcom/google/android/gms/internal/ads/zzfkh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfla;->zza:Lcom/google/android/gms/internal/ads/zzfkh;

    return-object p0
.end method

.method private final zzf(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfla;->zzb:Lcom/google/android/gms/internal/ads/zzfkx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfkw;

    .line 1
    invoke-direct {v1, v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfkw;-><init>(Lcom/google/android/gms/internal/ads/zzfkx;Lcom/google/android/gms/internal/ads/zzfla;Ljava/lang/CharSequence;)V

    return-object v1
.end method


# virtual methods
.method public final zzb(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfky;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfky;-><init>(Lcom/google/android/gms/internal/ads/zzfla;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final zzc(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfla;->zzf(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
