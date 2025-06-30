.class Lcom/utils/InappPurchase$6$1;
.super Ljava/lang/Object;
.source "InappPurchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/InappPurchase$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/utils/InappPurchase$6;

.field final synthetic val$allPurchases:Ljava/util/ArrayList;

.field final synthetic val$fresult:Lcom/android/billingclient/api/BillingResult;


# direct methods
.method constructor <init>(Lcom/utils/InappPurchase$6;Lcom/android/billingclient/api/BillingResult;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$allPurchases",
            "val$fresult"
        }
    .end annotation

    .line 556
    iput-object p1, p0, Lcom/utils/InappPurchase$6$1;->this$1:Lcom/utils/InappPurchase$6;

    iput-object p2, p0, Lcom/utils/InappPurchase$6$1;->val$fresult:Lcom/android/billingclient/api/BillingResult;

    iput-object p3, p0, Lcom/utils/InappPurchase$6$1;->val$allPurchases:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 558
    iget-object v0, p0, Lcom/utils/InappPurchase$6$1;->this$1:Lcom/utils/InappPurchase$6;

    iget-object v0, v0, Lcom/utils/InappPurchase$6;->val$listener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    iget-object v1, p0, Lcom/utils/InappPurchase$6$1;->val$fresult:Lcom/android/billingclient/api/BillingResult;

    iget-object v2, p0, Lcom/utils/InappPurchase$6$1;->val$allPurchases:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
