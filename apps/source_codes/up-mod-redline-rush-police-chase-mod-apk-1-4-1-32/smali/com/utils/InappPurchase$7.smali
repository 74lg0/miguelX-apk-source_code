.class Lcom/utils/InappPurchase$7;
.super Ljava/lang/Object;
.source "InappPurchase.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/InappPurchase;->requestProductPurchases(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/InappPurchase;

.field final synthetic val$callNativeCallback:Z


# direct methods
.method constructor <init>(Lcom/utils/InappPurchase;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$callNativeCallback"
        }
    .end annotation

    .line 584
    iput-object p1, p0, Lcom/utils/InappPurchase$7;->this$0:Lcom/utils/InappPurchase;

    iput-boolean p2, p0, Lcom/utils/InappPurchase$7;->val$callNativeCallback:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "billingResult",
            "purchasesList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 592
    :try_start_0
    iget-object v0, p0, Lcom/utils/InappPurchase$7;->this$0:Lcom/utils/InappPurchase;

    invoke-static {v0}, Lcom/utils/InappPurchase;->access$700(Lcom/utils/InappPurchase;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :try_start_1
    iget-object v1, p0, Lcom/utils/InappPurchase$7;->this$0:Lcom/utils/InappPurchase;

    invoke-virtual {v1}, Lcom/utils/InappPurchase;->clearPurchaseTimes()V

    .line 596
    iget-object v1, p0, Lcom/utils/InappPurchase$7;->this$0:Lcom/utils/InappPurchase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PurchasesUpdatedListener threadID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/utils/InappPurchase;->access$300(Lcom/utils/InappPurchase;Ljava/lang/String;)V

    .line 598
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 602
    iget-object p1, p0, Lcom/utils/InappPurchase$7;->this$0:Lcom/utils/InappPurchase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestProductPurchases purchaseList.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/utils/InappPurchase;->access$300(Lcom/utils/InappPurchase;Ljava/lang/String;)V

    .line 603
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    .line 605
    iget-object v3, p0, Lcom/utils/InappPurchase$7;->this$0:Lcom/utils/InappPurchase;

    invoke-static {v3, p2, v2}, Lcom/utils/InappPurchase;->access$400(Lcom/utils/InappPurchase;Lcom/android/billingclient/api/Purchase;Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 613
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    :try_start_2
    iget-boolean p2, p0, Lcom/utils/InappPurchase$7;->val$callNativeCallback:Z

    if-eqz p2, :cond_3

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 619
    :goto_2
    iget-object p1, p0, Lcom/utils/InappPurchase$7;->this$0:Lcom/utils/InappPurchase;

    new-instance p2, Lcom/utils/InappPurchase$7$1;

    invoke-direct {p2, p0, v1}, Lcom/utils/InappPurchase$7$1;-><init>(Lcom/utils/InappPurchase$7;Z)V

    invoke-virtual {p1, p2}, Lcom/utils/InappPurchase;->runOnGLThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 613
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 628
    iget-object p2, p0, Lcom/utils/InappPurchase$7;->this$0:Lcom/utils/InappPurchase;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestProductPurchases exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/utils/InappPurchase;->access$300(Lcom/utils/InappPurchase;Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-void
.end method
