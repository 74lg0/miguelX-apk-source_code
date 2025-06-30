.class final synthetic Lcom/google/android/gms/internal/ads/zzbdm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcgi;


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzcgi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbdm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbdm;->zza:Lcom/google/android/gms/internal/ads/zzcgi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbzh;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbzi;

    move-result-object p1

    return-object p1
.end method
