.class public Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;
.super Ljava/lang/Object;
.source "GooglePlayBillingImpl.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;
.implements Lcom/android/billingclient/api/PurchasesResponseListener;
.implements Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;
.implements Lcom/android/billingclient/api/ConsumeResponseListener;
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# static fields
.field private static final mNewSubscriptionTag:Ljava/lang/String; = "NEW_SUB"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mBillingClient:Lcom/android/billingclient/api/BillingClient;

.field private mHasTelemetryBeenSentThisSession:Z

.field private final mListener:Lcom/mojang/minecraftpe/store/StoreListener;

.field private final mProductDetailsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignatureBase64:Ljava/lang/String;

.field private mSkuInProgress:Ljava/lang/String;

.field private mWorldName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/mojang/minecraftpe/store/StoreListener;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mHasTelemetryBeenSentThisSession:Z

    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    iput-object p3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mSignatureBase64:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mProductDetailsMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;)Lcom/mojang/minecraftpe/store/StoreListener;
    .locals 0

    iget-object p0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    return-object p0
.end method

.method private createReceipt(Lcom/android/billingclient/api/Purchase;)Ljava/lang/String;
    .locals 9

    const-string v0, "obfuscatedAccountId"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "GooglePlayBillingImpl"

    if-eqz p1, :cond_8

    :try_start_0
    iget-object v3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mProductDetailsMap:Ljava/util/Map;

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mProductDetailsMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mProductDetailsMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    const-string v5, "subs"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "obfuscatedProfileId"

    if-eqz v5, :cond_1

    :try_start_1
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "NEW_SUB"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v5, ""

    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "subscription_id"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "world_name"

    iget-object v7, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mWorldName:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_1
    const-string v4, "developerPayload"

    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    const-string v0, "itemtype"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "originaljson"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "signature"

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "VERBOSE"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string p1, "createReceipt could not find product in product map"

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string p1, "createReceipt has purchase with no products"

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const-string p1, "skuDetails map was null"

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_8
    const-string p1, "Null purchase in createReceipt"

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private initialize()V
    .locals 2

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    iput-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl$1;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl$1;-><init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method

.method private parseReceipt(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/android/billingclient/api/Purchase;

    const-string v1, "originaljson"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "signature"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "GooglePlayBillingImpl"

    invoke-virtual {p1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public acknowledgePurchase(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    const-string v1, "GooglePlayBillingImpl"

    if-eqz v0, :cond_0

    const-string v0, "Acknowledging purchase"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object p1

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0, p1, p0}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    goto :goto_0

    :cond_0
    const-string p1, "Billing client is not ready when acknowledging purchase"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public consumeOrAckPurchase(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->parseReceipt(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase;

    move-result-object p1

    const-string v0, "GooglePlayBillingImpl"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mProductDetailsMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mProductDetailsMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->consumePurchase(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->acknowledgePurchase(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "consumeOrAckPurchase could not find product in product map"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p1, "consumeOrAckPurchase has purchase with no products"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p1, "consumeOrAckPurchase has null purchase"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public consumePurchase(Lcom/android/billingclient/api/Purchase;)V
    .locals 3

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    const-string v1, "GooglePlayBillingImpl"

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object p1

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0, p1, p0}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    goto :goto_0

    :cond_0
    const-string p1, "Purchase is not in PurchasedState"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "Billing client is not ready when consuming purchase"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public launchInAppPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    const-string v1, "GooglePlayBillingImpl"

    if-nez v0, :cond_0

    const-string p1, "Billing client is not ready when launching purchase flow"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mProductDetailsMap:Ljava/util/Map;

    if-nez v0, :cond_1

    const-string p1, "mProductDetails map is null"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails;

    if-nez v0, :cond_2

    const-string p1, "Unable to find SKU"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iput-object p2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mSkuInProgress:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p2

    iget-object p3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p3, p1, p2}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "launchInAppBillingFlow: BillingResponse "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "world_name"

    const-string v1, "subscription_id"

    const-string v2, "launchSubscriptionPurchaseFlow: BillingResponse "

    iget-object v3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v3}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v3

    const-string v4, "GooglePlayBillingImpl"

    if-nez v3, :cond_0

    const-string p1, "Billing client is not ready when launching purchase flow"

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mProductDetailsMap:Ljava/util/Map;

    if-nez v3, :cond_1

    const-string p1, "mProductDetails map is null"

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/ProductDetails;

    if-nez v3, :cond_2

    const-string p1, "Unable to find SKU"

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iput-object p2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mSkuInProgress:Ljava/lang/String;

    :try_start_0
    new-instance p2, Lorg/json/JSONTokener;

    invoke-direct {p2, p3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ""

    if-eqz p3, :cond_3

    :try_start_1
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p3, "NEW_SUB"

    goto :goto_0

    :cond_3
    move-object p3, v5

    :cond_4
    :goto_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mWorldName:Ljava/lang/String;

    :cond_5
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "xuid"

    const/4 v6, 0x0

    aput-object v1, v0, v6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2, v0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    :cond_6
    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {p2, v5}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedProfileId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    :cond_7
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p2

    iget-object p3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p3, p1, p2}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    const-string p1, "Subscription Offer Details not found"

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onAcknowledgePurchaseResponse: BillingResponse "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GooglePlayBillingImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "AckSuccess"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "AckFail"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConsumeResponse: BillingResponse "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GooglePlayBillingImpl"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ConsumeSuccess"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "ConsumeFail"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProductDetailsResponse: BillingResponse "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GooglePlayBillingImpl"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v2

    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    goto :goto_1

    :cond_1
    const-string v2, ""

    move-object v3, v2

    :goto_1
    new-instance v4, Lcom/mojang/minecraftpe/store/Product;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2, v3, v2}, Lcom/mojang/minecraftpe/store/Product;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mProductDetailsMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onProductDetailsResponse: PRODUCT: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    new-array v0, v2, [Lcom/mojang/minecraftpe/store/Product;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/mojang/minecraftpe/store/Product;

    invoke-interface {p2, p1}, Lcom/mojang/minecraftpe/store/StoreListener;->onQueryProductsSuccess([Lcom/mojang/minecraftpe/store/Product;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    invoke-interface {p1}, Lcom/mojang/minecraftpe/store/StoreListener;->onQueryProductsFail()V

    :goto_2
    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPurchasesUpdated: BillingResponse "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GooglePlayBillingImpl"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v4

    if-ne v3, p1, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mSignatureBase64:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lhandheld/project/android/src/com/mojang/minecraftpe/store/googleplay/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "marketplacepass"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "marketplacepass.trial"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, ""

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->createReceipt(Lcom/android/billingclient/api/Purchase;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v3, v0}, Lcom/mojang/minecraftpe/store/StoreListener;->onPurchaseSuccessful(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Lcom/mojang/minecraftpe/store/StoreListener;->onPurchaseFailed(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onPurchasesUpdated: PurchaseState "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Lcom/mojang/minecraftpe/store/StoreListener;->onPurchasePending(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    if-ne v0, p1, :cond_6

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p2}, Lcom/mojang/minecraftpe/store/StoreListener;->onPurchaseCanceled(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    iget-object p2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mSkuInProgress:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/mojang/minecraftpe/store/StoreListener;->onPurchaseCanceled(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p2}, Lcom/mojang/minecraftpe/store/StoreListener;->onPurchaseFailed(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    iget-object p2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mSkuInProgress:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/mojang/minecraftpe/store/StoreListener;->onPurchaseFailed(Ljava/lang/String;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onQueryPurchasesResponse: BillingResponse "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GooglePlayBillingImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "marketplacepass"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "marketplacepass.trial"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, ""

    goto :goto_2

    :cond_2
    :goto_1
    move-object v5, v4

    :goto_2
    new-instance v6, Lcom/mojang/minecraftpe/store/Purchase;

    invoke-direct {p0, v0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->createReceipt(Lcom/android/billingclient/api/Purchase;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    if-ne v0, v2, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    invoke-direct {v6, v4, v5, v7, v2}, Lcom/mojang/minecraftpe/store/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onQueryPurchasesResponse: num of purchases sent to c++ "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mHasTelemetryBeenSentThisSession:Z

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    :cond_5
    iget-object p2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    new-array v0, v3, [Lcom/mojang/minecraftpe/store/Purchase;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/mojang/minecraftpe/store/Purchase;

    invoke-interface {p2, p1}, Lcom/mojang/minecraftpe/store/StoreListener;->onQueryPurchasesSuccess([Lcom/mojang/minecraftpe/store/Purchase;)V

    iput-boolean v2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mHasTelemetryBeenSentThisSession:Z

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    invoke-interface {p1}, Lcom/mojang/minecraftpe/store/StoreListener;->onQueryPurchasesFail()V

    :cond_7
    :goto_4
    return-void
.end method

.method public queryConsumables([Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    const-string v4, "marketplacepass"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "marketplacepass.trial"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v3

    const-string v4, "inapp"

    invoke-virtual {v3, v4}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object p1

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0, p1, p0}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    goto :goto_2

    :cond_3
    const-string p1, "GooglePlayBillingImpl"

    const-string v0, "Billing client is not ready when querying Subscriptions"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public queryProducts([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->queryConsumables([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    const-string v0, "subscriptions"

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "marketplacepass"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "marketplacepass.trial"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "realms.subscription.monthly.10player.01"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "realms.subscription.monthly.10player.02"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "realms.subscription.monthly.10player.03"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "realms.subscription.monthly.10player.trial"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "realms.subscription.monthly.2player.01"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "realms.subscription.monthly.2player.02"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "realms.subscription.monthly.2player.03"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->querySubscriptions([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "GooglePlayBillingImpl"

    const-string v0, "Billing client is not ready when querying products"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public queryPurchases()V
    .locals 3

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    const-string v2, "inapp"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    const-string v1, "subscriptions"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    const-string v2, "subs"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "GooglePlayBillingImpl"

    const-string v1, "Billing client is not ready when querying purchases"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public querySubscriptions([Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v3

    const-string v4, "subs"

    invoke-virtual {v3, v4}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object p1

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    const-string v1, "subscriptions"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0, p1, p0}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    goto :goto_1

    :cond_1
    const-string p1, "GooglePlayBillingImpl"

    const-string v0, "Billing client is not ready when querying Subscriptions"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
