.class public final Lcom/google/android/gms/internal/ads/zzbku;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbkd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbkd<",
            "Ljava/lang/String;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gads:safe_browsing:api_key"

    const-string v1, "AIzaSyDRKQ9d6kfsoZT2lUnZcZnBYvH69HExNPE"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbkd;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbkd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbku;->zza:Lcom/google/android/gms/internal/ads/zzbkd;

    const-string v0, "gads:safe_browsing:debug"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbkd;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbkd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbku;->zzb:Lcom/google/android/gms/internal/ads/zzbkd;

    return-void
.end method
