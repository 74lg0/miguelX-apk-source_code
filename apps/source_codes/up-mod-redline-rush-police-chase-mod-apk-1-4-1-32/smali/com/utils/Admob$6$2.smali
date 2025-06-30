.class Lcom/utils/Admob$6$2;
.super Ljava/lang/Object;
.source "Admob.java"

# interfaces
.implements Lcom/google/android/gms/ads/OnUserEarnedRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/Admob$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/utils/Admob$6;


# direct methods
.method constructor <init>(Lcom/utils/Admob$6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 384
    iput-object p1, p0, Lcom/utils/Admob$6$2;->this$1:Lcom/utils/Admob$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rewardItem"
        }
    .end annotation

    const-string p1, "ShowRewarded - onUserEarnedReward"

    .line 387
    invoke-static {p1}, Lcom/utils/Admob;->access$000(Ljava/lang/String;)V

    .line 388
    iget-object p1, p0, Lcom/utils/Admob$6$2;->this$1:Lcom/utils/Admob$6;

    iget-object p1, p1, Lcom/utils/Admob$6;->this$0:Lcom/utils/Admob;

    invoke-virtual {p1}, Lcom/utils/Admob;->callRewardEarned()V

    return-void
.end method
