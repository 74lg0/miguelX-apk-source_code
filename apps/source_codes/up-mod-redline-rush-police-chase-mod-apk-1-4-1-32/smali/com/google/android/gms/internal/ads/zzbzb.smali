.class public final enum Lcom/google/android/gms/internal/ads/zzbzb;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzbzb;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzbzb;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzbzb;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzbzb;

.field public static final enum zzd:Lcom/google/android/gms/internal/ads/zzbzb;

.field private static final synthetic zzf:[Lcom/google/android/gms/internal/ads/zzbzb;


# instance fields
.field private final zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzb;

    const-string v1, "BEGIN_TO_RENDER"

    const/4 v2, 0x0

    const-string v3, "beginToRender"

    .line 1
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbzb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbzb;->zza:Lcom/google/android/gms/internal/ads/zzbzb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbzb;

    const-string v3, "DEFINED_BY_JAVASCRIPT"

    const/4 v4, 0x1

    const-string v5, "definedByJavascript"

    .line 2
    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzbzb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzbzb;->zzb:Lcom/google/android/gms/internal/ads/zzbzb;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbzb;

    const-string v5, "ONE_PIXEL"

    const/4 v6, 0x2

    const-string v7, "onePixel"

    .line 3
    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzbzb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzbzb;->zzc:Lcom/google/android/gms/internal/ads/zzbzb;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbzb;

    const-string v7, "UNSPECIFIED"

    const/4 v8, 0x3

    const-string v9, "unspecified"

    .line 4
    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzbzb;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/android/gms/internal/ads/zzbzb;->zzd:Lcom/google/android/gms/internal/ads/zzbzb;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/zzbzb;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/android/gms/internal/ads/zzbzb;->zzf:[Lcom/google/android/gms/internal/ads/zzbzb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbzb;->zze:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzbzb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzb;->zzf:[Lcom/google/android/gms/internal/ads/zzbzb;

    .line 1
    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzbzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzbzb;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzb;->zze:Ljava/lang/String;

    return-object v0
.end method
