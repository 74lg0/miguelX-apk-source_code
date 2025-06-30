.class Lcom/utils/InappPurchase$3;
.super Ljava/lang/Object;
.source "InappPurchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/InappPurchase;->restorePurchases()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/InappPurchase;


# direct methods
.method constructor <init>(Lcom/utils/InappPurchase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 270
    iput-object p1, p0, Lcom/utils/InappPurchase$3;->this$0:Lcom/utils/InappPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "inapp"

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/utils/InappPurchase$3;->this$0:Lcom/utils/InappPurchase;

    const-string v2, "queryPurchaseHistoryAsync"

    invoke-static {v1, v2}, Lcom/utils/InappPurchase;->access$300(Lcom/utils/InappPurchase;Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/utils/InappPurchase$3;->this$0:Lcom/utils/InappPurchase;

    iget-object v1, v1, Lcom/utils/InappPurchase;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lcom/utils/InappPurchase$3$1;

    invoke-direct {v2, p0}, Lcom/utils/InappPurchase$3$1;-><init>(Lcom/utils/InappPurchase$3;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchaseHistoryAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    .line 290
    iget-object v1, p0, Lcom/utils/InappPurchase$3;->this$0:Lcom/utils/InappPurchase;

    iget-object v1, v1, Lcom/utils/InappPurchase;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    const-string v2, "subs"

    new-instance v3, Lcom/utils/InappPurchase$3$2;

    invoke-direct {v3, p0}, Lcom/utils/InappPurchase$3$2;-><init>(Lcom/utils/InappPurchase$3;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/billingclient/api/BillingClient;->queryPurchaseHistoryAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    .line 303
    iget-object v1, p0, Lcom/utils/InappPurchase$3;->this$0:Lcom/utils/InappPurchase;

    iget-object v1, v1, Lcom/utils/InappPurchase;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingClient;->queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getBillingResult()Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 307
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getPurchasesList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getPurchasesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 311
    iget-object v2, p0, Lcom/utils/InappPurchase$3;->this$0:Lcom/utils/InappPurchase;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/utils/InappPurchase;->access$400(Lcom/utils/InappPurchase;Lcom/android/billingclient/api/Purchase;Z)V

    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/utils/InappPurchase$3;->this$0:Lcom/utils/InappPurchase;

    invoke-static {v0}, Lcom/utils/InappPurchase;->access$500(Lcom/utils/InappPurchase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 319
    iget-object v1, p0, Lcom/utils/InappPurchase$3;->this$0:Lcom/utils/InappPurchase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restore - excp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/utils/InappPurchase;->access$300(Lcom/utils/InappPurchase;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/utils/InappPurchase$3;->this$0:Lcom/utils/InappPurchase;

    invoke-static {v0}, Lcom/utils/InappPurchase;->access$500(Lcom/utils/InappPurchase;)V

    :goto_1
    return-void
.end method
