.class Lcom/utils/InappPurchase$ProductInfo;
.super Ljava/lang/Object;
.source "InappPurchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/utils/InappPurchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProductInfo"
.end annotation


# instance fields
.field public mID:Ljava/lang/String;

.field public mPurchaseTime:J

.field public mSkuDetails:Lcom/android/billingclient/api/SkuDetails;

.field public mType:I

.field final synthetic this$0:Lcom/utils/InappPurchase;


# direct methods
.method public constructor <init>(Lcom/utils/InappPurchase;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "id",
            "type"
        }
    .end annotation

    .line 906
    iput-object p1, p0, Lcom/utils/InappPurchase$ProductInfo;->this$0:Lcom/utils/InappPurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 907
    iput-object p2, p0, Lcom/utils/InappPurchase$ProductInfo;->mID:Ljava/lang/String;

    .line 908
    iput p3, p0, Lcom/utils/InappPurchase$ProductInfo;->mType:I

    return-void
.end method
