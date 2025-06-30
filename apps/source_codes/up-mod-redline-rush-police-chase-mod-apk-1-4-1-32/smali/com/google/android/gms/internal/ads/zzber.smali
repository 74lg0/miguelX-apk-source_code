.class public abstract Lcom/google/android/gms/internal/ads/zzber;
.super Lcom/google/android/gms/internal/ads/zzow;
.source "com.google.android.gms:play-services-ads-lite@@20.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbes;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IAdListener"

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzox;->zzc(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbcr;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzber;->zzd(Lcom/google/android/gms/internal/ads/zzbcr;)V

    goto :goto_0

    .line 3
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzi()V

    goto :goto_0

    .line 4
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzh()V

    goto :goto_0

    .line 5
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzg()V

    goto :goto_0

    .line 6
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzf()V

    goto :goto_0

    .line 7
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzber;->zzc(I)V

    goto :goto_0

    .line 9
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzber;->zzb()V

    .line 10
    :goto_0
    :pswitch_7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
