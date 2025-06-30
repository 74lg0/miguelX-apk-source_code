.class Lcom/utils/InappPurchase$12;
.super Ljava/lang/Object;
.source "InappPurchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/InappPurchase;->handlePurchase(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/InappPurchase;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/utils/InappPurchase;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$id"
        }
    .end annotation

    .line 841
    iput-object p1, p0, Lcom/utils/InappPurchase$12;->this$0:Lcom/utils/InappPurchase;

    iput-object p2, p0, Lcom/utils/InappPurchase$12;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 844
    invoke-static {}, Lcom/utils/InappPurchase;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/utils/InappPurchase$12;->this$0:Lcom/utils/InappPurchase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "purchaseCompleteCallback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/utils/InappPurchase$12;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/utils/InappPurchase;->access$300(Lcom/utils/InappPurchase;Ljava/lang/String;)V

    .line 847
    iget-object v0, p0, Lcom/utils/InappPurchase$12;->this$0:Lcom/utils/InappPurchase;

    iget-object v1, p0, Lcom/utils/InappPurchase$12;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/utils/InappPurchase;->purchaseCompleteCallback(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
