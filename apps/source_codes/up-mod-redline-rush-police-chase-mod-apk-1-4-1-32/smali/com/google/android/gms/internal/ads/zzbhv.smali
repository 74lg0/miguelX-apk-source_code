.class final synthetic Lcom/google/android/gms/internal/ads/zzbhv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbhw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbhw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhv;->zza:Lcom/google/android/gms/internal/ads/zzbhw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhv;->zza:Lcom/google/android/gms/internal/ads/zzbhw;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhw;->zzb()V

    return-void
.end method
