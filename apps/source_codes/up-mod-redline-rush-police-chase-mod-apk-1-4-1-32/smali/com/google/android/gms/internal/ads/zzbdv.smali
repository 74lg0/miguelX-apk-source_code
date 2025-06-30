.class final Lcom/google/android/gms/internal/ads/zzbdv;
.super Lcom/google/android/gms/internal/ads/zzbei;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbei<",
        "Lcom/google/android/gms/internal/ads/zzbff;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Landroid/content/Context;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbdd;

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbuv;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzbeh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbeh;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbuv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zze:Lcom/google/android/gms/internal/ads/zzbeh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zza:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzb:Lcom/google/android/gms/internal/ads/zzbdd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzc:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzd:Lcom/google/android/gms/internal/ads/zzbuv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbei;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zza:Landroid/content/Context;

    const-string v1, "app_open"

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbeh;->zzl(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhu;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbhu;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zze:Lcom/google/android/gms/internal/ads/zzbeh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbeh;->zzk(Lcom/google/android/gms/internal/ads/zzbeh;)Lcom/google/android/gms/internal/ads/zzbcx;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zza:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzb:Lcom/google/android/gms/internal/ads/zzbdd;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzc:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzd:Lcom/google/android/gms/internal/ads/zzbuv;

    const/4 v6, 0x4

    .line 1
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbcx;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbuv;I)Lcom/google/android/gms/internal/ads/zzbff;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzbfp;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zza:Landroid/content/Context;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzb:Lcom/google/android/gms/internal/ads/zzbdd;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzc:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzd:Lcom/google/android/gms/internal/ads/zzbuv;

    const v6, 0xcb0bfb0

    move-object v1, p1

    .line 2
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbfp;->zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbdd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbuv;I)Lcom/google/android/gms/internal/ads/zzbff;

    move-result-object p1

    return-object p1
.end method
