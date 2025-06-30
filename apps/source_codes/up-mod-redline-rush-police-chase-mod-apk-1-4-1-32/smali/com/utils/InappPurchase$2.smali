.class Lcom/utils/InappPurchase$2;
.super Ljava/lang/Object;
.source "InappPurchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/InappPurchase;->startConnection()V
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

    .line 116
    iput-object p1, p0, Lcom/utils/InappPurchase$2;->this$0:Lcom/utils/InappPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/utils/InappPurchase$2;->this$0:Lcom/utils/InappPurchase;

    iget-object v0, v0, Lcom/utils/InappPurchase;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/utils/InappPurchase$2;->this$0:Lcom/utils/InappPurchase;

    invoke-static {v0}, Lcom/utils/InappPurchase;->access$000(Lcom/utils/InappPurchase;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/utils/InappPurchase$2;->this$0:Lcom/utils/InappPurchase;

    iget-object v2, v2, Lcom/utils/InappPurchase;->mUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    iput-object v1, v0, Lcom/utils/InappPurchase;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    .line 123
    iget-object v0, p0, Lcom/utils/InappPurchase$2;->this$0:Lcom/utils/InappPurchase;

    iget-object v0, v0, Lcom/utils/InappPurchase;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/utils/InappPurchase$2$1;

    invoke-direct {v1, p0}, Lcom/utils/InappPurchase$2$1;-><init>(Lcom/utils/InappPurchase$2;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    :cond_0
    return-void
.end method
