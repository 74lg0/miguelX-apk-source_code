.class Lcom/utils/UnityAds$3;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/UnityAds;->onVideoAdFinishedCb(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/UnityAds;

.field final synthetic val$_reward:Z


# direct methods
.method constructor <init>(Lcom/utils/UnityAds;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_reward"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/utils/UnityAds$3;->this$0:Lcom/utils/UnityAds;

    iput-boolean p2, p0, Lcom/utils/UnityAds$3;->val$_reward:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 156
    :try_start_0
    iget-boolean v0, p0, Lcom/utils/UnityAds$3;->val$_reward:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/utils/UnityAds$3;->this$0:Lcom/utils/UnityAds;

    invoke-virtual {v0}, Lcom/utils/UnityAds;->onRewardEarned()V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/utils/UnityAds$3;->this$0:Lcom/utils/UnityAds;

    invoke-virtual {v0}, Lcom/utils/UnityAds;->onAdFinished()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 162
    iget-object v1, p0, Lcom/utils/UnityAds$3;->this$0:Lcom/utils/UnityAds;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVideoAdFinished not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/utils/UnityAds;->access$000(Lcom/utils/UnityAds;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
