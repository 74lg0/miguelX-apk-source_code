.class public Lcom/google/android/gms/ads/query/AdInfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/ads/query/QueryInfo;

.field private final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/query/QueryInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/query/AdInfo;->zza:Lcom/google/android/gms/ads/query/QueryInfo;

    iput-object p2, p0, Lcom/google/android/gms/ads/query/AdInfo;->zzb:Ljava/lang/String;

    return-void
.end method

.method public static getRequestId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p0, :cond_0

    const-string p0, "adString passed to AdInfo.getRequestId() cannot be null. Returning empty string."

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzi(Ljava/lang/String;)V

    return-object v0

    .line 2
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "request_id"

    .line 4
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    const-string p0, "Invalid adString passed to AdInfo.getRequestId(). Returning empty string."

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcgg;->zzi(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAdString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/query/AdInfo;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryInfo()Lcom/google/android/gms/ads/query/QueryInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/query/AdInfo;->zza:Lcom/google/android/gms/ads/query/QueryInfo;

    return-object v0
.end method
