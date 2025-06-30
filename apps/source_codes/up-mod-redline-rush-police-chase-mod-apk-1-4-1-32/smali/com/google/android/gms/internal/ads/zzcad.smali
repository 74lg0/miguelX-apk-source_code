.class final synthetic Lcom/google/android/gms/internal/ads/zzcad;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcgl;

.field private final zzb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcgl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcad;->zza:Lcom/google/android/gms/internal/ads/zzcgl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcad;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcad;->zza:Lcom/google/android/gms/internal/ads/zzcgl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcad;->zzb:Ljava/lang/String;

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcgl;->zza(Ljava/lang/String;)V

    return-void
.end method
