.class Lcom/utils/Admob$6;
.super Ljava/lang/Object;
.source "Admob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/Admob;->ShowRewarded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/Admob;

.field final synthetic val$_rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;


# direct methods
.method constructor <init>(Lcom/utils/Admob;Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_rewardedAd"
        }
    .end annotation

    .line 365
    iput-object p1, p0, Lcom/utils/Admob$6;->this$0:Lcom/utils/Admob;

    iput-object p2, p0, Lcom/utils/Admob$6;->val$_rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "ShowRewarded - show on UI thread"

    .line 367
    invoke-static {v0}, Lcom/utils/Admob;->access$000(Ljava/lang/String;)V

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/utils/Admob$6;->val$_rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    new-instance v1, Lcom/utils/Admob$6$1;

    invoke-direct {v1, p0}, Lcom/utils/Admob$6$1;-><init>(Lcom/utils/Admob$6;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 384
    iget-object v0, p0, Lcom/utils/Admob$6;->val$_rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    sget-object v1, Lcom/utils/Admob;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/utils/Admob$6$2;

    invoke-direct {v2, p0}, Lcom/utils/Admob$6$2;-><init>(Lcom/utils/Admob$6;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShowRewarded - ex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/Admob;->access$000(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
