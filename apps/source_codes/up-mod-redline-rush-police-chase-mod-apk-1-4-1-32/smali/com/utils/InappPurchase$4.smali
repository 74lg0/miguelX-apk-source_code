.class Lcom/utils/InappPurchase$4;
.super Ljava/lang/Object;
.source "InappPurchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/InappPurchase;->startPurchase(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/InappPurchase;

.field final synthetic val$_skuDetails:Lcom/android/billingclient/api/SkuDetails;


# direct methods
.method constructor <init>(Lcom/utils/InappPurchase;Lcom/android/billingclient/api/SkuDetails;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_skuDetails"
        }
    .end annotation

    .line 381
    iput-object p1, p0, Lcom/utils/InappPurchase$4;->this$0:Lcom/utils/InappPurchase;

    iput-object p2, p0, Lcom/utils/InappPurchase$4;->val$_skuDetails:Lcom/android/billingclient/api/SkuDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 385
    :try_start_0
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/utils/InappPurchase$4;->val$_skuDetails:Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lcom/utils/InappPurchase$4;->this$0:Lcom/utils/InappPurchase;

    iget-object v1, v1, Lcom/utils/InappPurchase;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    iget-object v2, p0, Lcom/utils/InappPurchase$4;->this$0:Lcom/utils/InappPurchase;

    invoke-static {v2}, Lcom/utils/InappPurchase;->access$000(Lcom/utils/InappPurchase;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/utils/InappPurchase$4;->this$0:Lcom/utils/InappPurchase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchBillingFlow response code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/utils/InappPurchase;->access$300(Lcom/utils/InappPurchase;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 391
    iget-object v1, p0, Lcom/utils/InappPurchase$4;->this$0:Lcom/utils/InappPurchase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPurchase - excep: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/utils/InappPurchase;->access$300(Lcom/utils/InappPurchase;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/utils/InappPurchase$4;->this$0:Lcom/utils/InappPurchase;

    const/16 v1, 0x3ec

    invoke-static {v0, v1}, Lcom/utils/InappPurchase;->access$600(Lcom/utils/InappPurchase;I)V

    :goto_0
    return-void
.end method
