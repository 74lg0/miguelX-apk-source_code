.class final synthetic Lcom/google/android/gms/internal/ads/zzcgb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcge;


# instance fields
.field private final zza:I

.field private final zzb:Ljava/util/Map;


# direct methods
.method constructor <init>(ILjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcgb;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgb;->zzb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/util/JsonWriter;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcgb;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgb;->zzb:Ljava/util/Map;

    .line 1
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcgf;->zzl(ILjava/util/Map;Landroid/util/JsonWriter;)V

    return-void
.end method
