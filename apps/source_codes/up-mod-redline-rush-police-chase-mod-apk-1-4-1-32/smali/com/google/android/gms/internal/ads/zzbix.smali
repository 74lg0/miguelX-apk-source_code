.class final synthetic Lcom/google/android/gms/internal/ads/zzbix;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfld;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbiz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbiz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbix;->zza:Lcom/google/android/gms/internal/ads/zzbiz;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbix;->zza:Lcom/google/android/gms/internal/ads/zzbiz;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbiz;->zzc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
