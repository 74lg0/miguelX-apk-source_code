.class final Lcom/android/billingclient/api/zzaa;
.super Landroid/os/ResultReceiver;
.source "com.android.billingclient:billing@@6.0.1"


# instance fields
.field final synthetic zza:Lcom/android/billingclient/api/InAppMessageResponseListener;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Landroid/os/Handler;Lcom/android/billingclient/api/InAppMessageResponseListener;)V
    .locals 0

    iput-object p3, p0, Lcom/android/billingclient/api/zzaa;->zza:Lcom/android/billingclient/api/InAppMessageResponseListener;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Lcom/android/billingclient/api/zzaa;->zza:Lcom/android/billingclient/api/InAppMessageResponseListener;

    const-string v0, "BillingClient"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zze(Landroid/os/Bundle;Ljava/lang/String;)Lcom/android/billingclient/api/InAppMessageResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/billingclient/api/InAppMessageResponseListener;->onInAppMessageResponse(Lcom/android/billingclient/api/InAppMessageResult;)V

    return-void
.end method
