.class Lcom/utils/InappPurchase$9;
.super Ljava/lang/Object;
.source "InappPurchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/InappPurchase;->handlePurchase(Lcom/android/billingclient/api/Purchase;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/InappPurchase;

.field final synthetic val$listener:Lcom/android/billingclient/api/ConsumeResponseListener;

.field final synthetic val$purchaseToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/utils/InappPurchase;Ljava/lang/String;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener",
            "val$purchaseToken"
        }
    .end annotation

    .line 688
    iput-object p1, p0, Lcom/utils/InappPurchase$9;->this$0:Lcom/utils/InappPurchase;

    iput-object p2, p0, Lcom/utils/InappPurchase$9;->val$purchaseToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/utils/InappPurchase$9;->val$listener:Lcom/android/billingclient/api/ConsumeResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 690
    iget-object v0, p0, Lcom/utils/InappPurchase$9;->this$0:Lcom/utils/InappPurchase;

    iget-object v0, v0, Lcom/utils/InappPurchase;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_0

    .line 692
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/utils/InappPurchase$9;->val$purchaseToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object v0

    .line 693
    iget-object v1, p0, Lcom/utils/InappPurchase$9;->this$0:Lcom/utils/InappPurchase;

    iget-object v1, v1, Lcom/utils/InappPurchase;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    iget-object v2, p0, Lcom/utils/InappPurchase$9;->val$listener:Lcom/android/billingclient/api/ConsumeResponseListener;

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    :cond_0
    return-void
.end method
