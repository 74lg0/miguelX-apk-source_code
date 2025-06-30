.class Lcom/utils/InappPurchase$5$1;
.super Ljava/lang/Object;
.source "InappPurchase.java"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/InappPurchase$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/utils/InappPurchase$5;

.field final synthetic val$ftype:I


# direct methods
.method constructor <init>(Lcom/utils/InappPurchase$5;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$ftype"
        }
    .end annotation

    .line 477
    iput-object p1, p0, Lcom/utils/InappPurchase$5$1;->this$1:Lcom/utils/InappPurchase$5;

    iput p2, p0, Lcom/utils/InappPurchase$5$1;->val$ftype:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "billingResult",
            "skuDetailsList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 482
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 484
    iget-object p1, p0, Lcom/utils/InappPurchase$5$1;->this$1:Lcom/utils/InappPurchase$5;

    iget-object p1, p1, Lcom/utils/InappPurchase$5;->this$0:Lcom/utils/InappPurchase;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSkuDetailsResponse received info for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " items"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/utils/InappPurchase$5$1;->val$ftype:I

    if-nez v1, :cond_0

    const-string v1, "(INAPP)"

    goto :goto_0

    :cond_0
    const-string v1, "(SUBS)"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/utils/InappPurchase;->access$300(Lcom/utils/InappPurchase;Ljava/lang/String;)V

    .line 485
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/SkuDetails;

    .line 486
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v1

    .line 489
    iget-object v2, p0, Lcom/utils/InappPurchase$5$1;->this$1:Lcom/utils/InappPurchase$5;

    iget-object v2, v2, Lcom/utils/InappPurchase$5;->this$0:Lcom/utils/InappPurchase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sku: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/utils/InappPurchase;->access$300(Lcom/utils/InappPurchase;Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/utils/InappPurchase$5$1;->this$1:Lcom/utils/InappPurchase$5;

    iget-object v1, v1, Lcom/utils/InappPurchase$5;->this$0:Lcom/utils/InappPurchase;

    invoke-virtual {v1, v0}, Lcom/utils/InappPurchase;->getProductInfo(Ljava/lang/String;)Lcom/utils/InappPurchase$ProductInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 493
    iput-object p2, v0, Lcom/utils/InappPurchase$ProductInfo;->mSkuDetails:Lcom/android/billingclient/api/SkuDetails;

    goto :goto_1

    .line 498
    :cond_2
    iget-object p1, p0, Lcom/utils/InappPurchase$5$1;->this$1:Lcom/utils/InappPurchase$5;

    iget-object p1, p1, Lcom/utils/InappPurchase$5;->this$0:Lcom/utils/InappPurchase;

    new-instance p2, Lcom/utils/InappPurchase$5$1$1;

    invoke-direct {p2, p0}, Lcom/utils/InappPurchase$5$1$1;-><init>(Lcom/utils/InappPurchase$5$1;)V

    invoke-virtual {p1, p2}, Lcom/utils/InappPurchase;->runOnGLThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 507
    :cond_3
    iget-object p2, p0, Lcom/utils/InappPurchase$5$1;->this$1:Lcom/utils/InappPurchase$5;

    iget-object p2, p2, Lcom/utils/InappPurchase$5;->this$0:Lcom/utils/InappPurchase;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSkuDetailsResponse failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/utils/InappPurchase;->access$300(Lcom/utils/InappPurchase;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
