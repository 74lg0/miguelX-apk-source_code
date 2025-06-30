.class Lcom/utils/InappPurchase$14;
.super Ljava/lang/Object;
.source "InappPurchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/InappPurchase;->purchaseFailedJavaCB(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/InappPurchase;

.field final synthetic val$systemCode:I


# direct methods
.method constructor <init>(Lcom/utils/InappPurchase;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$systemCode"
        }
    .end annotation

    .line 870
    iput-object p1, p0, Lcom/utils/InappPurchase$14;->this$0:Lcom/utils/InappPurchase;

    iput p2, p0, Lcom/utils/InappPurchase$14;->val$systemCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 873
    invoke-static {}, Lcom/utils/InappPurchase;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/utils/InappPurchase$14;->this$0:Lcom/utils/InappPurchase;

    const/4 v1, 0x2

    iget v2, p0, Lcom/utils/InappPurchase$14;->val$systemCode:I

    invoke-virtual {v0, v1, v2}, Lcom/utils/InappPurchase;->purchaseFailedCallback(II)V

    :cond_0
    return-void
.end method
