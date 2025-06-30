.class Lcom/utils/InappPurchase$5;
.super Ljava/lang/Object;
.source "InappPurchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/InappPurchase;->requestProductPrices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/InappPurchase;

.field final synthetic val$_products:[Lcom/utils/InappPurchase$ProductInfo;


# direct methods
.method constructor <init>(Lcom/utils/InappPurchase;[Lcom/utils/InappPurchase$ProductInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_products"
        }
    .end annotation

    .line 450
    iput-object p1, p0, Lcom/utils/InappPurchase$5;->this$0:Lcom/utils/InappPurchase;

    iput-object p2, p0, Lcom/utils/InappPurchase$5;->val$_products:[Lcom/utils/InappPurchase$ProductInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 455
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 456
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 458
    :goto_0
    iget-object v4, p0, Lcom/utils/InappPurchase$5;->val$_products:[Lcom/utils/InappPurchase$ProductInfo;

    array-length v4, v4

    const/4 v5, 0x2

    if-ge v3, v4, :cond_1

    .line 460
    iget-object v4, p0, Lcom/utils/InappPurchase$5;->this$0:Lcom/utils/InappPurchase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "product id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/utils/InappPurchase$5;->val$_products:[Lcom/utils/InappPurchase$ProductInfo;

    aget-object v7, v7, v3

    iget-object v7, v7, Lcom/utils/InappPurchase$ProductInfo;->mID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/utils/InappPurchase$5;->val$_products:[Lcom/utils/InappPurchase$ProductInfo;

    aget-object v7, v7, v3

    iget v7, v7, Lcom/utils/InappPurchase$ProductInfo;->mType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/utils/InappPurchase;->access$300(Lcom/utils/InappPurchase;Ljava/lang/String;)V

    .line 461
    iget-object v4, p0, Lcom/utils/InappPurchase$5;->val$_products:[Lcom/utils/InappPurchase$ProductInfo;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/utils/InappPurchase$ProductInfo;->mType:I

    if-ne v4, v5, :cond_0

    .line 462
    iget-object v4, p0, Lcom/utils/InappPurchase$5;->val$_products:[Lcom/utils/InappPurchase$ProductInfo;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/utils/InappPurchase$ProductInfo;->mID:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 464
    :cond_0
    iget-object v4, p0, Lcom/utils/InappPurchase$5;->val$_products:[Lcom/utils/InappPurchase$ProductInfo;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/utils/InappPurchase$ProductInfo;->mID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v2, v5, :cond_4

    if-nez v2, :cond_2

    move-object v3, v0

    goto :goto_3

    :cond_2
    move-object v3, v1

    .line 471
    :goto_3
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v4

    .line 472
    invoke-virtual {v4, v3}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v3

    if-nez v2, :cond_3

    const-string v6, "inapp"

    goto :goto_4

    :cond_3
    const-string v6, "subs"

    :goto_4
    invoke-virtual {v3, v6}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    .line 476
    iget-object v3, p0, Lcom/utils/InappPurchase$5;->this$0:Lcom/utils/InappPurchase;

    iget-object v3, v3, Lcom/utils/InappPurchase;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v4}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v4

    new-instance v6, Lcom/utils/InappPurchase$5$1;

    invoke-direct {v6, p0, v2}, Lcom/utils/InappPurchase$5$1;-><init>(Lcom/utils/InappPurchase$5;I)V

    invoke-virtual {v3, v4, v6}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 515
    iget-object v1, p0, Lcom/utils/InappPurchase$5;->this$0:Lcom/utils/InappPurchase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSkuDetails exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/utils/InappPurchase;->access$300(Lcom/utils/InappPurchase;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
