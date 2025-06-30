.class Lcom/utils/InappPurchase$7$1;
.super Ljava/lang/Object;
.source "InappPurchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/InappPurchase$7;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/utils/InappPurchase$7;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/utils/InappPurchase$7;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$success"
        }
    .end annotation

    .line 619
    iput-object p1, p0, Lcom/utils/InappPurchase$7$1;->this$1:Lcom/utils/InappPurchase$7;

    iput-boolean p2, p0, Lcom/utils/InappPurchase$7$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 622
    iget-object v0, p0, Lcom/utils/InappPurchase$7$1;->this$1:Lcom/utils/InappPurchase$7;

    iget-object v0, v0, Lcom/utils/InappPurchase$7;->this$0:Lcom/utils/InappPurchase;

    iget-boolean v1, p0, Lcom/utils/InappPurchase$7$1;->val$success:Z

    invoke-virtual {v0, v1}, Lcom/utils/InappPurchase;->requestProductPurchasesCompleteCallback(Z)V

    return-void
.end method
