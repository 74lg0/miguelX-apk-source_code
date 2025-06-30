.class public final Lcom/google/android/gms/internal/ads/zzbki;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbkd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbkd<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzbkd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbkd<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzbkd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbkd<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzd:Lcom/google/android/gms/internal/ads/zzbkd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbkd<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final zze:Lcom/google/android/gms/internal/ads/zzbkd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbkd<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzf:Lcom/google/android/gms/internal/ads/zzbkd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbkd<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "gads:content_age_weight"

    const-wide/16 v1, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbkd;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbkd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbki;->zza:Lcom/google/android/gms/internal/ads/zzbkd;

    const-string v0, "gads:enable_content_fetching"

    const/4 v3, 0x1

    .line 2
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzbkd;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbkd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbki;->zzb:Lcom/google/android/gms/internal/ads/zzbkd;

    const-string v0, "gads:fingerprint_number"

    const-wide/16 v3, 0xa

    .line 3
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzbkd;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbkd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbki;->zzc:Lcom/google/android/gms/internal/ads/zzbkd;

    const-string v0, "gads:content_length_weight"

    .line 4
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbkd;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbkd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbki;->zzd:Lcom/google/android/gms/internal/ads/zzbkd;

    const-string v0, "gads:min_content_len"

    const-wide/16 v1, 0xb

    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbkd;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbkd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbki;->zze:Lcom/google/android/gms/internal/ads/zzbkd;

    const-string v0, "gads:sleep_sec"

    .line 6
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzbkd;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzbkd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbki;->zzf:Lcom/google/android/gms/internal/ads/zzbkd;

    return-void
.end method
