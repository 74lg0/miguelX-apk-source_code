.class public Lcom/android/billingclient/api/AlternativeChoiceDetails$Product;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/AlternativeChoiceDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Product"
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lorg/json/JSONObject;Lcom/android/billingclient/api/zzc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "productId"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/billingclient/api/AlternativeChoiceDetails$Product;->zza:Ljava/lang/String;

    const-string p2, "productType"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/billingclient/api/AlternativeChoiceDetails$Product;->zzb:Ljava/lang/String;

    const-string p2, "offerToken"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lcom/android/billingclient/api/AlternativeChoiceDetails$Product;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/billingclient/api/AlternativeChoiceDetails$Product;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/billingclient/api/AlternativeChoiceDetails$Product;

    iget-object v1, p0, Lcom/android/billingclient/api/AlternativeChoiceDetails$Product;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/billingclient/api/AlternativeChoiceDetails$Product;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/billingclient/api/AlternativeChoiceDetails$Product;->zzb:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/billingclient/api/AlternativeChoiceDetails$Product;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/billingclient/api/AlternativeChoiceDetails$Product;->zzc:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/billingclient/api/AlternativeChoiceDetails$Product;->getOfferToken()Ljava/lang/String;

    move-result-object p1

    if-eq v1, p1, :cond_2

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    return v0

    :cond_3
    return v2
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/AlternativeChoiceDetails$Product;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/AlternativeChoiceDetails$Product;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/AlternativeChoiceDetails$Product;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/AlternativeChoiceDetails$Product;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/billingclient/api/AlternativeChoiceDetails$Product;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/billingclient/api/AlternativeChoiceDetails$Product;->zzc:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/AlternativeChoiceDetails$Product;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/billingclient/api/AlternativeChoiceDetails$Product;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/billingclient/api/AlternativeChoiceDetails$Product;->zzc:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{id: %s, type: %s, offer token: %s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
