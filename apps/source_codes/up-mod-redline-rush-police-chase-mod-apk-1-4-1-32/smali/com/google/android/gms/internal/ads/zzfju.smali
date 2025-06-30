.class public final Lcom/google/android/gms/internal/ads/zzfju;
.super Lcom/google/android/gms/internal/ads/zzfjn;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzfld;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfld<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzb:Lcom/google/android/gms/internal/ads/zzfld;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzfld<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzc:Lcom/google/android/gms/internal/ads/zzfjt;

.field private zzd:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfjp;->zza:Lcom/google/android/gms/internal/ads/zzfld;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfjq;->zza:Lcom/google/android/gms/internal/ads/zzfld;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfjn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfju;->zza:Lcom/google/android/gms/internal/ads/zzfld;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfju;->zzb:Lcom/google/android/gms/internal/ads/zzfld;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfju;->zzc:Lcom/google/android/gms/internal/ads/zzfjt;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfju;->zzd:Ljava/net/HttpURLConnection;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfjo;->zzb()V

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfjt;II)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfjr;

    const/16 p3, 0x109

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzfjr;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfju;->zza:Lcom/google/android/gms/internal/ads/zzfld;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfjs;

    const/4 p3, -0x1

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzfjs;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfju;->zzb:Lcom/google/android/gms/internal/ads/zzfld;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfju;->zzc:Lcom/google/android/gms/internal/ads/zzfjt;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfju;->zza:Lcom/google/android/gms/internal/ads/zzfld;

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfld;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfju;->zzb:Lcom/google/android/gms/internal/ads/zzfld;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzfld;->zza()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfjo;->zza(II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfju;->zzc:Lcom/google/android/gms/internal/ads/zzfjt;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfjt;->zza()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfju;->zzd:Ljava/net/HttpURLConnection;

    return-object p1
.end method
