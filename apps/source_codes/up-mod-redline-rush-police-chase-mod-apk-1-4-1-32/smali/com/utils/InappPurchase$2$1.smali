.class Lcom/utils/InappPurchase$2$1;
.super Ljava/lang/Object;
.source "InappPurchase.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/InappPurchase$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/utils/InappPurchase$2;


# direct methods
.method constructor <init>(Lcom/utils/InappPurchase$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/utils/InappPurchase$2$1;->this$1:Lcom/utils/InappPurchase$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/utils/InappPurchase$2$1;->this$1:Lcom/utils/InappPurchase$2;

    iget-object v0, v0, Lcom/utils/InappPurchase$2;->this$0:Lcom/utils/InappPurchase;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/utils/InappPurchase;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    .line 160
    iget-object v0, p0, Lcom/utils/InappPurchase$2$1;->this$1:Lcom/utils/InappPurchase$2;

    iget-object v0, v0, Lcom/utils/InappPurchase$2;->this$0:Lcom/utils/InappPurchase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/utils/InappPurchase;->access$202(Lcom/utils/InappPurchase;Z)Z

    .line 162
    iget-object v0, p0, Lcom/utils/InappPurchase$2$1;->this$1:Lcom/utils/InappPurchase$2;

    iget-object v0, v0, Lcom/utils/InappPurchase$2;->this$0:Lcom/utils/InappPurchase;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/utils/InappPurchase;->access$102(Lcom/utils/InappPurchase;I)I

    .line 163
    iget-object v0, p0, Lcom/utils/InappPurchase$2$1;->this$1:Lcom/utils/InappPurchase$2;

    iget-object v0, v0, Lcom/utils/InappPurchase$2;->this$0:Lcom/utils/InappPurchase;

    const-string v1, "billing service disconnected"

    invoke-static {v0, v1}, Lcom/utils/InappPurchase;->access$300(Lcom/utils/InappPurchase;Ljava/lang/String;)V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "billingResult"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/utils/InappPurchase$2$1;->this$1:Lcom/utils/InappPurchase$2;

    iget-object v0, v0, Lcom/utils/InappPurchase$2;->this$0:Lcom/utils/InappPurchase;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/utils/InappPurchase;->access$102(Lcom/utils/InappPurchase;I)I

    .line 130
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 132
    iget-object p1, p0, Lcom/utils/InappPurchase$2$1;->this$1:Lcom/utils/InappPurchase$2;

    iget-object p1, p1, Lcom/utils/InappPurchase$2;->this$0:Lcom/utils/InappPurchase;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/utils/InappPurchase;->access$202(Lcom/utils/InappPurchase;Z)Z

    .line 133
    iget-object p1, p0, Lcom/utils/InappPurchase$2$1;->this$1:Lcom/utils/InappPurchase$2;

    iget-object p1, p1, Lcom/utils/InappPurchase$2;->this$0:Lcom/utils/InappPurchase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAPBilling is supported  pendingPurchases:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/utils/InappPurchase$2$1;->this$1:Lcom/utils/InappPurchase$2;

    iget-object v2, v2, Lcom/utils/InappPurchase$2;->this$0:Lcom/utils/InappPurchase;

    iget-boolean v2, v2, Lcom/utils/InappPurchase;->mPendingRequestProductPurchases:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " pendingPrices: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/utils/InappPurchase$2$1;->this$1:Lcom/utils/InappPurchase$2;

    iget-object v2, v2, Lcom/utils/InappPurchase$2;->this$0:Lcom/utils/InappPurchase;

    iget-boolean v2, v2, Lcom/utils/InappPurchase;->mPendingRequestProductPrices:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/utils/InappPurchase;->access$300(Lcom/utils/InappPurchase;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/utils/InappPurchase$2$1;->this$1:Lcom/utils/InappPurchase$2;

    iget-object p1, p1, Lcom/utils/InappPurchase$2;->this$0:Lcom/utils/InappPurchase;

    iget-boolean p1, p1, Lcom/utils/InappPurchase;->mPendingRequestProductPurchases:Z

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/utils/InappPurchase$2$1;->this$1:Lcom/utils/InappPurchase$2;

    iget-object p1, p1, Lcom/utils/InappPurchase$2;->this$0:Lcom/utils/InappPurchase;

    iget-object v1, p0, Lcom/utils/InappPurchase$2$1;->this$1:Lcom/utils/InappPurchase$2;

    iget-object v1, v1, Lcom/utils/InappPurchase$2;->this$0:Lcom/utils/InappPurchase;

    iget-boolean v1, v1, Lcom/utils/InappPurchase;->mNeedCallbackProductPurchases:Z

    invoke-virtual {p1, v1}, Lcom/utils/InappPurchase;->requestProductPurchases(Z)V

    .line 139
    iget-object p1, p0, Lcom/utils/InappPurchase$2$1;->this$1:Lcom/utils/InappPurchase$2;

    iget-object p1, p1, Lcom/utils/InappPurchase$2;->this$0:Lcom/utils/InappPurchase;

    iput-boolean v0, p1, Lcom/utils/InappPurchase;->mNeedCallbackProductPurchases:Z

    .line 140
    iget-object p1, p0, Lcom/utils/InappPurchase$2$1;->this$1:Lcom/utils/InappPurchase$2;

    iget-object p1, p1, Lcom/utils/InappPurchase$2;->this$0:Lcom/utils/InappPurchase;

    iput-boolean v0, p1, Lcom/utils/InappPurchase;->mPendingRequestProductPurchases:Z

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/utils/InappPurchase$2$1;->this$1:Lcom/utils/InappPurchase$2;

    iget-object p1, p1, Lcom/utils/InappPurchase$2;->this$0:Lcom/utils/InappPurchase;

    iget-boolean p1, p1, Lcom/utils/InappPurchase;->mPendingRequestProductPrices:Z

    if-eqz p1, :cond_2

    .line 145
    iget-object p1, p0, Lcom/utils/InappPurchase$2$1;->this$1:Lcom/utils/InappPurchase$2;

    iget-object p1, p1, Lcom/utils/InappPurchase$2;->this$0:Lcom/utils/InappPurchase;

    invoke-virtual {p1}, Lcom/utils/InappPurchase;->requestProductPrices()V

    .line 146
    iget-object p1, p0, Lcom/utils/InappPurchase$2$1;->this$1:Lcom/utils/InappPurchase$2;

    iget-object p1, p1, Lcom/utils/InappPurchase$2;->this$0:Lcom/utils/InappPurchase;

    iput-boolean v0, p1, Lcom/utils/InappPurchase;->mPendingRequestProductPrices:Z

    goto :goto_0

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/utils/InappPurchase$2$1;->this$1:Lcom/utils/InappPurchase$2;

    iget-object p1, p1, Lcom/utils/InappPurchase$2;->this$0:Lcom/utils/InappPurchase;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/utils/InappPurchase;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    .line 152
    iget-object p1, p0, Lcom/utils/InappPurchase$2$1;->this$1:Lcom/utils/InappPurchase$2;

    iget-object p1, p1, Lcom/utils/InappPurchase$2;->this$0:Lcom/utils/InappPurchase;

    invoke-static {p1, v0}, Lcom/utils/InappPurchase;->access$202(Lcom/utils/InappPurchase;Z)Z

    :cond_2
    :goto_0
    return-void
.end method
