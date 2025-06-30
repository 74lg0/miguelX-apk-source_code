.class Lcom/utils/InappPurchase$5$1$1;
.super Ljava/lang/Object;
.source "InappPurchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/InappPurchase$5$1;->onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/utils/InappPurchase$5$1;


# direct methods
.method constructor <init>(Lcom/utils/InappPurchase$5$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    .line 498
    iput-object p1, p0, Lcom/utils/InappPurchase$5$1$1;->this$2:Lcom/utils/InappPurchase$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/utils/InappPurchase$5$1$1;->this$2:Lcom/utils/InappPurchase$5$1;

    iget-object v0, v0, Lcom/utils/InappPurchase$5$1;->this$1:Lcom/utils/InappPurchase$5;

    iget-object v0, v0, Lcom/utils/InappPurchase$5;->this$0:Lcom/utils/InappPurchase;

    invoke-virtual {v0}, Lcom/utils/InappPurchase;->requestProductPricesCompleteCallback()V

    return-void
.end method
