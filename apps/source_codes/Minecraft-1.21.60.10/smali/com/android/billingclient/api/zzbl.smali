.class final Lcom/android/billingclient/api/zzbl;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.0.1"


# direct methods
.method static zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/android/billingclient/api/zzbk;
    .locals 5

    sget-object p1, Lcom/android/billingclient/api/zzat;->zzj:Lcom/android/billingclient/api/BillingResult;

    const-string v0, "BillingClient"

    if-nez p0, :cond_0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "%s got null owned items list"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/billingclient/api/zzbk;

    const/16 p2, 0x36

    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/zzbk;-><init>(Lcom/android/billingclient/api/BillingResult;I)V

    return-object p0

    :cond_0
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzf(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    invoke-virtual {v3, v2}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    invoke-virtual {v3}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s failed. Response code: %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/billingclient/api/zzbk;

    const/16 p1, 0x17

    invoke-direct {p0, v2, p1}, Lcom/android/billingclient/api/zzbk;-><init>(Lcom/android/billingclient/api/BillingResult;I)V

    return-object p0

    :cond_1
    const-string v1, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez v1, :cond_3

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Bundle returned from %s contains null SKUs list."

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/billingclient/api/zzbk;

    const/16 p2, 0x38

    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/zzbk;-><init>(Lcom/android/billingclient/api/BillingResult;I)V

    return-object p0

    :cond_3
    if-nez v2, :cond_4

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Bundle returned from %s contains null purchases list."

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/billingclient/api/zzbk;

    const/16 p2, 0x39

    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/zzbk;-><init>(Lcom/android/billingclient/api/BillingResult;I)V

    return-object p0

    :cond_4
    if-nez p0, :cond_5

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Bundle returned from %s contains null signatures list."

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/billingclient/api/zzbk;

    const/16 p2, 0x3a

    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/zzbk;-><init>(Lcom/android/billingclient/api/BillingResult;I)V

    return-object p0

    :cond_5
    new-instance p0, Lcom/android/billingclient/api/zzbk;

    sget-object p1, Lcom/android/billingclient/api/zzat;->zzl:Lcom/android/billingclient/api/BillingResult;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/zzbk;-><init>(Lcom/android/billingclient/api/BillingResult;I)V

    return-object p0

    :cond_6
    :goto_0
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Bundle returned from %s doesn\'t contain required fields."

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/billingclient/api/zzbk;

    const/16 p2, 0x37

    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/zzbk;-><init>(Lcom/android/billingclient/api/BillingResult;I)V

    return-object p0
.end method
