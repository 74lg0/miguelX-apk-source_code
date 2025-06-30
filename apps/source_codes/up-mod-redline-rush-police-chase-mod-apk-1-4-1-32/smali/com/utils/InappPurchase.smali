.class public Lcom/utils/InappPurchase;
.super Ljava/lang/Object;
.source "InappPurchase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/utils/InappPurchase$ProductInfo;
    }
.end annotation


# static fields
.field public static CODE_1:Ljava/lang/String; = ""

.field public static CODE_2:Ljava/lang/String; = ""

.field public static CODE_3:Ljava/lang/String; = ""

.field public static CODE_4:Ljava/lang/String; = ""

.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final PURCHASE_CANCELLED_BY_USER:I = 0x1

.field private static final PURCHASE_FAILED:I = 0x2

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static _instance:Lcom/utils/InappPurchase;

.field private static volatile sNativeInitialized:Z


# instance fields
.field private BASE_64_ENCODED_PUBLIC_KEY:Ljava/lang/String;

.field public final ProductType_Consumable:I

.field public final ProductType_NonConsumable:I

.field public final ProductType_Subscription:I

.field private volatile isIAPSupported:Z

.field private volatile lastStartConnectionResult:I

.field private mActivity:Landroid/app/Activity;

.field volatile mBillingClient:Lcom/android/billingclient/api/BillingClient;

.field private final mDebugMode:Z

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field volatile mNeedCallbackProductPurchases:Z

.field volatile mPendingRequestProductPrices:Z

.field volatile mPendingRequestProductPurchases:Z

.field private mProductInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/utils/InappPurchase$ProductInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field mUserHandledDuplicateNonConsumableCallbacks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/utils/InappPurchase;->mDebugMode:Z

    const-string v1, ""

    .line 39
    iput-object v1, p0, Lcom/utils/InappPurchase;->BASE_64_ENCODED_PUBLIC_KEY:Ljava/lang/String;

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/utils/InappPurchase;->mProductInfos:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcom/utils/InappPurchase;->mActivity:Landroid/app/Activity;

    .line 65
    iput-boolean v0, p0, Lcom/utils/InappPurchase;->isIAPSupported:Z

    .line 66
    iput v0, p0, Lcom/utils/InappPurchase;->lastStartConnectionResult:I

    .line 68
    iput-boolean v0, p0, Lcom/utils/InappPurchase;->mPendingRequestProductPrices:Z

    const/4 v1, 0x1

    .line 69
    iput-boolean v1, p0, Lcom/utils/InappPurchase;->mPendingRequestProductPurchases:Z

    .line 70
    iput-boolean v0, p0, Lcom/utils/InappPurchase;->mNeedCallbackProductPurchases:Z

    .line 894
    iput v0, p0, Lcom/utils/InappPurchase;->ProductType_NonConsumable:I

    .line 895
    iput v1, p0, Lcom/utils/InappPurchase;->ProductType_Consumable:I

    const/4 v0, 0x2

    .line 896
    iput v0, p0, Lcom/utils/InappPurchase;->ProductType_Subscription:I

    return-void
.end method

.method private _log(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    return-void
.end method

.method static synthetic access$000(Lcom/utils/InappPurchase;)Landroid/app/Activity;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/utils/InappPurchase;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$102(Lcom/utils/InappPurchase;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/utils/InappPurchase;->lastStartConnectionResult:I

    return p1
.end method

.method static synthetic access$202(Lcom/utils/InappPurchase;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/utils/InappPurchase;->isIAPSupported:Z

    return p1
.end method

.method static synthetic access$300(Lcom/utils/InappPurchase;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/utils/InappPurchase;Lcom/android/billingclient/api/Purchase;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/utils/InappPurchase;->handlePurchase(Lcom/android/billingclient/api/Purchase;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/utils/InappPurchase;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/utils/InappPurchase;->restoreCompleteJavaCB()V

    return-void
.end method

.method static synthetic access$600(Lcom/utils/InappPurchase;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/utils/InappPurchase;->purchaseFailedJavaCB(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/utils/InappPurchase;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/utils/InappPurchase;->mProductInfos:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/utils/InappPurchase;->sNativeInitialized:Z

    return v0
.end method

.method public static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedPublicKey"
        }
    .end annotation

    const/4 v0, 0x0

    .line 401
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    const-string v0, "RSA"

    .line 402
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 403
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 405
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generatePublicKey - excep: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Game"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Lcom/utils/InappPurchase;
    .locals 1

    .line 77
    sget-object v0, Lcom/utils/InappPurchase;->_instance:Lcom/utils/InappPurchase;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/utils/InappPurchase;

    invoke-direct {v0}, Lcom/utils/InappPurchase;-><init>()V

    sput-object v0, Lcom/utils/InappPurchase;->_instance:Lcom/utils/InappPurchase;

    .line 82
    :cond_0
    sget-object v0, Lcom/utils/InappPurchase;->_instance:Lcom/utils/InappPurchase;

    return-object v0
.end method

.method private handlePurchase(Lcom/android/billingclient/api/Purchase;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "purchase",
            "restore"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 660
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSku()Ljava/lang/String;

    move-result-object v8

    .line 662
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_2

    .line 664
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v10

    .line 665
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v3

    .line 667
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v5

    .line 668
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, v8

    move-object v2, v10

    move v7, p2

    .line 670
    invoke-direct/range {v0 .. v7}, Lcom/utils/InappPurchase;->handlePurchase(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)V

    .line 675
    :try_start_0
    invoke-virtual {p0, v8}, Lcom/utils/InappPurchase;->getProductInfo(Ljava/lang/String;)Lcom/utils/InappPurchase$ProductInfo;

    move-result-object p2

    if-eqz v10, :cond_3

    if-eqz p2, :cond_3

    .line 678
    iget p2, p2, Lcom/utils/InappPurchase$ProductInfo;->mType:I

    if-ne p2, v9, :cond_1

    .line 680
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Consume sku:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    .line 681
    new-instance p1, Lcom/utils/InappPurchase$8;

    invoke-direct {p1, p0}, Lcom/utils/InappPurchase$8;-><init>(Lcom/utils/InappPurchase;)V

    .line 688
    iget-object p2, p0, Lcom/utils/InappPurchase;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/utils/InappPurchase$9;

    invoke-direct {v0, p0, v10, p1}, Lcom/utils/InappPurchase$9;-><init>(Lcom/utils/InappPurchase;Ljava/lang/String;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 700
    :cond_1
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result p1

    if-nez p1, :cond_3

    .line 702
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Acknowledge sku:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    .line 704
    new-instance p1, Lcom/utils/InappPurchase$10;

    invoke-direct {p1, p0}, Lcom/utils/InappPurchase$10;-><init>(Lcom/utils/InappPurchase;)V

    .line 711
    iget-object p2, p0, Lcom/utils/InappPurchase;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/utils/InappPurchase$11;

    invoke-direct {v0, p0, v10, p1}, Lcom/utils/InappPurchase$11;-><init>(Lcom/utils/InappPurchase;Ljava/lang/String;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 725
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSkuDetails exception:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    goto :goto_0

    .line 730
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Purchase sku:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " state:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (NOT PURCHASED)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private handlePurchase(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sku",
            "purchaseToken",
            "purchaseTime",
            "originalJson",
            "signature",
            "restore"
        }
    .end annotation

    const-string v0, "DogbytePurchases"

    .line 750
    invoke-virtual {p0, p1}, Lcom/utils/InappPurchase;->getProductInfo(Ljava/lang/String;)Lcom/utils/InappPurchase$ProductInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-wide/16 v3, 0x3e8

    .line 753
    div-long/2addr p3, v3

    const-wide/16 v3, 0x0

    cmp-long v5, p3, v3

    if-nez v5, :cond_0

    const-wide/16 p3, 0x1

    .line 755
    :cond_0
    iput-wide p3, v1, Lcom/utils/InappPurchase$ProductInfo;->mPurchaseTime:J

    .line 756
    iget p3, v1, Lcom/utils/InappPurchase$ProductInfo;->mType:I

    const/4 p4, 0x2

    if-ne p3, p4, :cond_1

    .line 758
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " purchase time: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/utils/InappPurchase$ProductInfo;->mPurchaseTime:J

    invoke-virtual {p3, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " token: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    .line 762
    :cond_1
    iget p3, v1, Lcom/utils/InappPurchase$ProductInfo;->mType:I

    if-eqz p3, :cond_3

    :goto_0
    const/4 p7, 0x0

    goto :goto_1

    .line 770
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid product sku"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p3, 0x1

    if-eqz p2, :cond_c

    .line 780
    :try_start_0
    iget-object p4, p0, Lcom/utils/InappPurchase;->BASE_64_ENCODED_PUBLIC_KEY:Ljava/lang/String;

    invoke-static {p4}, Lcom/utils/InappPurchase;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p4

    .line 781
    invoke-static {p4, p5, p6}, Lcom/utils/InappPurchase;->verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz p4, :cond_b

    .line 785
    :try_start_1
    iget-boolean p5, p0, Lcom/utils/InappPurchase;->mUserHandledDuplicateNonConsumableCallbacks:Z

    if-eqz p5, :cond_4

    iget p5, v1, Lcom/utils/InappPurchase$ProductInfo;->mType:I

    if-nez p5, :cond_4

    :goto_2
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 793
    :cond_4
    iget-object p5, p0, Lcom/utils/InappPurchase;->mActivity:Landroid/app/Activity;

    invoke-virtual {p5, v2}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p5

    const/4 p6, 0x0

    .line 794
    invoke-interface {p5, v0, p6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 796
    invoke-virtual {p0, p2}, Lcom/utils/InappPurchase;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p6, :cond_6

    .line 799
    invoke-virtual {p6, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-gez v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 p3, 0x0

    .line 801
    :cond_6
    :goto_3
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " verified  isNewPurchase: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    if-eqz p3, :cond_a

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'DogbytePurchases\' length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p6, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v2

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    if-eqz p6, :cond_8

    goto :goto_5

    :cond_8
    const-string p6, ""

    .line 809
    :goto_5
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1000

    if-le v1, v2, :cond_9

    .line 811
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p6

    .line 813
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "|"

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 815
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'DogbytePurchases\' length after adding new token: "

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p0, p6}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    .line 817
    invoke-interface {p5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p5

    .line 818
    invoke-interface {p5, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 819
    invoke-interface {p5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_a
    move v2, p3

    goto :goto_7

    :catch_0
    move-exception p2

    move v2, p3

    goto :goto_6

    :catch_1
    move-exception p2

    goto :goto_6

    .line 826
    :cond_b
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "handlePurchase "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " verification error."

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception p2

    const/4 v2, 0x1

    goto :goto_6

    :catch_3
    move-exception p2

    const/4 p4, 0x0

    .line 832
    :goto_6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "handlePurchase: handle local purchase list exception:"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    const/4 p4, 0x0

    :goto_7
    if-nez v2, :cond_d

    if-eqz p7, :cond_f

    :cond_d
    if-eqz p4, :cond_e

    .line 841
    new-instance p2, Lcom/utils/InappPurchase$12;

    invoke-direct {p2, p0, p1}, Lcom/utils/InappPurchase$12;-><init>(Lcom/utils/InappPurchase;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/utils/InappPurchase;->runOnGLThread(Ljava/lang/Runnable;)V

    goto :goto_8

    :cond_e
    const/16 p1, 0x3ed

    .line 853
    invoke-direct {p0, p1}, Lcom/utils/InappPurchase;->purchaseFailedJavaCB(I)V

    :cond_f
    :goto_8
    return-void
.end method

.method private purchaseCanceledJavaCB()V
    .locals 1

    .line 860
    new-instance v0, Lcom/utils/InappPurchase$13;

    invoke-direct {v0, p0}, Lcom/utils/InappPurchase$13;-><init>(Lcom/utils/InappPurchase;)V

    invoke-virtual {p0, v0}, Lcom/utils/InappPurchase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private purchaseFailedJavaCB(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "systemCode"
        }
    .end annotation

    .line 870
    new-instance v0, Lcom/utils/InappPurchase$14;

    invoke-direct {v0, p0, p1}, Lcom/utils/InappPurchase$14;-><init>(Lcom/utils/InappPurchase;I)V

    invoke-virtual {p0, v0}, Lcom/utils/InappPurchase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private restoreCompleteJavaCB()V
    .locals 1

    .line 880
    new-instance v0, Lcom/utils/InappPurchase$15;

    invoke-direct {v0, p0}, Lcom/utils/InappPurchase$15;-><init>(Lcom/utils/InappPurchase;)V

    invoke-virtual {p0, v0}, Lcom/utils/InappPurchase;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "signedData",
            "signature"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SHA1withRSA"

    .line 419
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 420
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 421
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/Signature;->update([B)V

    .line 422
    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 431
    invoke-static {}, Lcom/utils/InappPurchase;->getInstance()Lcom/utils/InappPurchase;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verify - excep: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "md5"
        }
    .end annotation

    :try_start_0
    const-string v0, "MD5"

    .line 736
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 737
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 738
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 739
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 740
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    or-int/lit16 v3, v3, 0x100

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 742
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method

.method public addProduct(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "type"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/utils/InappPurchase;->mProductInfos:Ljava/util/ArrayList;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/utils/InappPurchase;->mProductInfos:Ljava/util/ArrayList;

    new-instance v2, Lcom/utils/InappPurchase$ProductInfo;

    invoke-direct {v2, p0, p1, p2}, Lcom/utils/InappPurchase$ProductInfo;-><init>(Lcom/utils/InappPurchase;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clearPurchaseTimes()V
    .locals 5

    .line 186
    iget-object v0, p0, Lcom/utils/InappPurchase;->mProductInfos:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 188
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/utils/InappPurchase;->mProductInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/utils/InappPurchase;->mProductInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/utils/InappPurchase$ProductInfo;

    const-wide/16 v3, 0x0

    .line 191
    iput-wide v3, v2, Lcom/utils/InappPurchase$ProductInfo;->mPurchaseTime:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public getProductInfo(Ljava/lang/String;)Lcom/utils/InappPurchase$ProductInfo;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "productId"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/utils/InappPurchase;->mProductInfos:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 247
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/utils/InappPurchase;->mProductInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 249
    iget-object v2, p0, Lcom/utils/InappPurchase;->mProductInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/utils/InappPurchase$ProductInfo;

    .line 250
    iget-object v3, v2, Lcom/utils/InappPurchase$ProductInfo;->mID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    monitor-exit v0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getProductPrice(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "productId"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/utils/InappPurchase;->mProductInfos:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 200
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/utils/InappPurchase;->mProductInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 202
    iget-object v2, p0, Lcom/utils/InappPurchase;->mProductInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/utils/InappPurchase$ProductInfo;

    .line 204
    iget-object v3, v2, Lcom/utils/InappPurchase$ProductInfo;->mID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    iget-object p1, v2, Lcom/utils/InappPurchase$ProductInfo;->mSkuDetails:Lcom/android/billingclient/api/SkuDetails;

    if-eqz p1, :cond_0

    .line 208
    iget-object p1, v2, Lcom/utils/InappPurchase$ProductInfo;->mSkuDetails:Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    const-string p1, ""

    .line 212
    monitor-exit v0

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProductPrice: product not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    const-string p1, ""

    return-object p1

    :catchall_0
    move-exception p1

    .line 216
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getProductPurchaseTime(Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "productId"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/utils/InappPurchase;->mProductInfos:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 229
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/utils/InappPurchase;->mProductInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 231
    iget-object v2, p0, Lcom/utils/InappPurchase;->mProductInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/utils/InappPurchase$ProductInfo;

    .line 232
    iget-object v3, v2, Lcom/utils/InappPurchase$ProductInfo;->mID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    iget-wide v1, v2, Lcom/utils/InappPurchase$ProductInfo;->mPurchaseTime:J

    monitor-exit v0

    return-wide v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    :cond_1
    monitor-exit v0

    const-wide/16 v0, 0x0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public handleOnPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "billingResult",
            "purchases"
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

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnPurchasesUpdated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 641
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    const/4 v0, 0x0

    .line 643
    invoke-direct {p0, p2, v0}, Lcom/utils/InappPurchase;->handlePurchase(Lcom/android/billingclient/api/Purchase;Z)V

    goto :goto_0

    .line 645
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 648
    invoke-direct {p0}, Lcom/utils/InappPurchase;->purchaseCanceledJavaCB()V

    goto :goto_1

    .line 651
    :cond_1
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/utils/InappPurchase;->purchaseFailedJavaCB(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public init(Landroid/app/Activity;Landroid/opengl/GLSurfaceView;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "glSurfaceView",
            "UserHandledDuplicateNonConsumableCallbacks"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/utils/InappPurchase;->CODE_1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/utils/InappPurchase;->CODE_2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/utils/InappPurchase;->CODE_3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/utils/InappPurchase;->CODE_4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/utils/InappPurchase;->BASE_64_ENCODED_PUBLIC_KEY:Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/utils/InappPurchase;->mActivity:Landroid/app/Activity;

    .line 95
    iput-object p2, p0, Lcom/utils/InappPurchase;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 97
    iput-boolean p3, p0, Lcom/utils/InappPurchase;->mUserHandledDuplicateNonConsumableCallbacks:Z

    const-string p1, "init IAPBilling..."

    .line 99
    invoke-direct {p0, p1}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    .line 100
    new-instance p1, Lcom/utils/InappPurchase$1;

    invoke-direct {p1, p0}, Lcom/utils/InappPurchase$1;-><init>(Lcom/utils/InappPurchase;)V

    iput-object p1, p0, Lcom/utils/InappPurchase;->mUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 106
    sget-boolean p1, Lcom/utils/InappPurchase;->sNativeInitialized:Z

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/utils/InappPurchase;->startConnection()V

    :cond_0
    return-void
.end method

.method public isGoogleIAPEnabled()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/utils/InappPurchase;->isIAPSupported:Z

    return v0
.end method

.method public native purchaseCompleteCallback(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "productID"
        }
    .end annotation
.end method

.method public native purchaseFailedCallback(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reason",
            "systemReason"
        }
    .end annotation
.end method

.method queryPurchases(Lcom/android/billingclient/api/PurchasesUpdatedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listener"
        }
    .end annotation

    .line 522
    new-instance v0, Lcom/utils/InappPurchase$6;

    invoke-direct {v0, p0, p1}, Lcom/utils/InappPurchase$6;-><init>(Lcom/utils/InappPurchase;Lcom/android/billingclient/api/PurchasesUpdatedListener;)V

    .line 568
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public requestProductPrices()V
    .locals 3

    .line 438
    iget-boolean v0, p0, Lcom/utils/InappPurchase;->isIAPSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/utils/InappPurchase;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestProductPrices java for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/utils/InappPurchase;->mProductInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " products..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/utils/InappPurchase;->mProductInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/utils/InappPurchase$ProductInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/utils/InappPurchase$ProductInfo;

    .line 450
    iget-object v1, p0, Lcom/utils/InappPurchase;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/utils/InappPurchase$5;

    invoke-direct {v2, p0, v0}, Lcom/utils/InappPurchase$5;-><init>(Lcom/utils/InappPurchase;[Lcom/utils/InappPurchase$ProductInfo;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "requestProductPrices. IAP is not initalized. Postponing to onConnected"

    .line 440
    invoke-direct {p0, v0}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 441
    iput-boolean v0, p0, Lcom/utils/InappPurchase;->mPendingRequestProductPrices:Z

    .line 442
    invoke-virtual {p0}, Lcom/utils/InappPurchase;->startConnection()V

    return-void
.end method

.method public native requestProductPricesCompleteCallback()V
.end method

.method public requestProductPurchases(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callNativeCallback"
        }
    .end annotation

    const-string v0, "requestProductPurchases java..."

    .line 573
    invoke-direct {p0, v0}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    .line 575
    iget-boolean v0, p0, Lcom/utils/InappPurchase;->isIAPSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/utils/InappPurchase;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_0

    goto :goto_0

    .line 584
    :cond_0
    new-instance v0, Lcom/utils/InappPurchase$7;

    invoke-direct {v0, p0, p1}, Lcom/utils/InappPurchase$7;-><init>(Lcom/utils/InappPurchase;Z)V

    invoke-virtual {p0, v0}, Lcom/utils/InappPurchase;->queryPurchases(Lcom/android/billingclient/api/PurchasesUpdatedListener;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "requestProductPurchases: IAP is not yet initalized."

    .line 577
    invoke-direct {p0, v0}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 578
    iput-boolean v0, p0, Lcom/utils/InappPurchase;->mPendingRequestProductPurchases:Z

    .line 579
    iget-boolean v0, p0, Lcom/utils/InappPurchase;->mNeedCallbackProductPurchases:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/utils/InappPurchase;->mNeedCallbackProductPurchases:Z

    .line 580
    invoke-virtual {p0}, Lcom/utils/InappPurchase;->startConnection()V

    return-void
.end method

.method public native requestProductPurchasesCompleteCallback(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "success"
        }
    .end annotation
.end method

.method public native restoreCompleteCallback()V
.end method

.method public restorePurchases()V
    .locals 2

    .line 262
    iget-boolean v0, p0, Lcom/utils/InappPurchase;->isIAPSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/utils/InappPurchase;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/utils/InappPurchase;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/utils/InappPurchase$3;

    invoke-direct {v1, p0}, Lcom/utils/InappPurchase$3;-><init>(Lcom/utils/InappPurchase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "restorePurchases. IAP is not initalized."

    .line 264
    invoke-direct {p0, v0}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    .line 265
    invoke-direct {p0}, Lcom/utils/InappPurchase;->restoreCompleteJavaCB()V

    .line 266
    invoke-virtual {p0}, Lcom/utils/InappPurchase;->startConnection()V

    return-void
.end method

.method public runOnGLThread(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pRunnable"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/utils/InappPurchase;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setNativeInit()V
    .locals 1

    const/4 v0, 0x1

    .line 56
    sput-boolean v0, Lcom/utils/InappPurchase;->sNativeInitialized:Z

    const-string v0, "setNativeInit"

    .line 57
    invoke-direct {p0, v0}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/utils/InappPurchase;->startConnection()V

    return-void
.end method

.method startConnection()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/utils/InappPurchase;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/utils/InappPurchase;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v0, "startConnection"

    .line 114
    invoke-direct {p0, v0}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/utils/InappPurchase;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/utils/InappPurchase$2;

    invoke-direct {v1, p0}, Lcom/utils/InappPurchase$2;-><init>(Lcom/utils/InappPurchase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public startPurchase(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sku"
        }
    .end annotation

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPurchase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    .line 329
    iget-boolean v0, p0, Lcom/utils/InappPurchase;->isIAPSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/utils/InappPurchase;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "startPurchase no active billingclient"

    .line 331
    invoke-direct {p0, v0}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    .line 333
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 335
    iget p1, p0, Lcom/utils/InappPurchase;->lastStartConnectionResult:I

    add-int/lit16 p1, p1, 0x7d0

    invoke-direct {p0, p1}, Lcom/utils/InappPurchase;->purchaseFailedJavaCB(I)V

    .line 336
    invoke-virtual {p0}, Lcom/utils/InappPurchase;->startConnection()V

    return-void

    :cond_1
    :try_start_0
    const-string v0, "startPurchase starting connection"

    .line 343
    invoke-direct {p0, v0}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/utils/InappPurchase;->startConnection()V

    const-wide/16 v0, 0x2710

    .line 346
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPurchase wait for connection - excp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    :goto_0
    const-string v0, "recheck after waiting"

    .line 353
    invoke-direct {p0, v0}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    .line 355
    iget-boolean v0, p0, Lcom/utils/InappPurchase;->isIAPSupported:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/utils/InappPurchase;->mBillingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_2

    goto :goto_1

    .line 363
    :cond_2
    invoke-virtual {p0, p1}, Lcom/utils/InappPurchase;->getProductInfo(Ljava/lang/String;)Lcom/utils/InappPurchase$ProductInfo;

    move-result-object v0

    if-nez v0, :cond_3

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Product not found sku:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    const/16 p1, 0x3ea

    .line 367
    invoke-direct {p0, p1}, Lcom/utils/InappPurchase;->purchaseFailedJavaCB(I)V

    return-void

    .line 371
    :cond_3
    iget-object v0, v0, Lcom/utils/InappPurchase$ProductInfo;->mSkuDetails:Lcom/android/billingclient/api/SkuDetails;

    if-nez v0, :cond_4

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Product has no details, requesting now: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/utils/InappPurchase;->_log(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/utils/InappPurchase;->requestProductPrices()V

    const/16 p1, 0x3eb

    .line 376
    invoke-direct {p0, p1}, Lcom/utils/InappPurchase;->purchaseFailedJavaCB(I)V

    return-void

    .line 381
    :cond_4
    iget-object p1, p0, Lcom/utils/InappPurchase;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/utils/InappPurchase$4;

    invoke-direct {v1, p0, v0}, Lcom/utils/InappPurchase$4;-><init>(Lcom/utils/InappPurchase;Lcom/android/billingclient/api/SkuDetails;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 357
    :cond_5
    :goto_1
    iget p1, p0, Lcom/utils/InappPurchase;->lastStartConnectionResult:I

    add-int/lit16 p1, p1, 0xbb8

    invoke-direct {p0, p1}, Lcom/utils/InappPurchase;->purchaseFailedJavaCB(I)V

    return-void
.end method
