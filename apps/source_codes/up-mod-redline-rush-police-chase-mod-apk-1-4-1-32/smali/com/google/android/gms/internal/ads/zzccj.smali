.class public abstract Lcom/google/android/gms/internal/ads/zzccj;
.super Lcom/google/android/gms/internal/ads/zzow;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcck;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzow;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zzbT(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzccj;->zzk()V

    goto :goto_1

    .line 2
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzccj;->zzj()V

    goto :goto_1

    .line 3
    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzox;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbcr;

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzccj;->zzi(Lcom/google/android/gms/internal/ads/zzbcr;)V

    goto :goto_1

    .line 5
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzccj;->zzh(I)V

    goto :goto_1

    .line 7
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.android.gms.ads.internal.rewarded.client.IRewardItem"

    .line 8
    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 9
    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzcce;

    if-eqz p4, :cond_1

    .line 10
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcce;

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzccc;

    .line 11
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzccc;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    .line 12
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzccj;->zzg(Lcom/google/android/gms/internal/ads/zzcce;)V

    goto :goto_1

    .line 13
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzccj;->zzf()V

    goto :goto_1

    .line 14
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzccj;->zze()V

    .line 15
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
