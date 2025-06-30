.class Lcom/utils/UnityAds$2;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/UnityAds;->showVideoAd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/UnityAds;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/utils/UnityAds;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$placementId"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/utils/UnityAds$2;->this$0:Lcom/utils/UnityAds;

    iput-object p2, p0, Lcom/utils/UnityAds$2;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/utils/UnityAds$2;->this$0:Lcom/utils/UnityAds;

    const-string v1, "showVideoAd - 1"

    invoke-static {v0, v1}, Lcom/utils/UnityAds;->access$000(Lcom/utils/UnityAds;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/utils/UnityAds$2;->this$0:Lcom/utils/UnityAds;

    iget-object v1, p0, Lcom/utils/UnityAds$2;->val$placementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/utils/UnityAds;->hasCachedVideoAd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/utils/UnityAds$2;->this$0:Lcom/utils/UnityAds;

    const-string v1, "showVideoAd - 2"

    invoke-static {v0, v1}, Lcom/utils/UnityAds;->access$000(Lcom/utils/UnityAds;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/utils/UnityAds$2;->this$0:Lcom/utils/UnityAds;

    iget-object v0, v0, Lcom/utils/UnityAds;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/utils/UnityAds$2;->val$placementId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/utils/UnityAds$2;->this$0:Lcom/utils/UnityAds;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/utils/UnityAds;->access$100(Lcom/utils/UnityAds;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 125
    iget-object v1, p0, Lcom/utils/UnityAds$2;->this$0:Lcom/utils/UnityAds;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showVideoAd - exp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/utils/UnityAds;->access$000(Lcom/utils/UnityAds;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
