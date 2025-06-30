.class Lcom/utils/Admob$5$1;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "Admob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/Admob$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/utils/Admob$5;


# direct methods
.method constructor <init>(Lcom/utils/Admob$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lcom/utils/Admob$5$1;->this$1:Lcom/utils/Admob$5;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadAdError"
        }
    .end annotation

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rewarded failed to load ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/Admob;->access$000(Ljava/lang/String;)V

    .line 336
    iget-object p1, p0, Lcom/utils/Admob$5$1;->this$1:Lcom/utils/Admob$5;

    iget-object p1, p1, Lcom/utils/Admob$5;->this$0:Lcom/utils/Admob;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/utils/Admob;->access$302(Lcom/utils/Admob;Z)Z

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rewardedAd"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/utils/Admob$5$1;->this$1:Lcom/utils/Admob$5;

    iget-object v0, v0, Lcom/utils/Admob$5;->this$0:Lcom/utils/Admob;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/utils/Admob;->access$302(Lcom/utils/Admob;Z)Z

    .line 329
    iget-object v0, p0, Lcom/utils/Admob$5$1;->this$1:Lcom/utils/Admob$5;

    iget-object v0, v0, Lcom/utils/Admob$5;->this$0:Lcom/utils/Admob;

    invoke-static {v0, p1}, Lcom/utils/Admob;->access$402(Lcom/utils/Admob;Lcom/google/android/gms/ads/rewarded/RewardedAd;)Lcom/google/android/gms/ads/rewarded/RewardedAd;

    const-string p1, "rewarded onAdLoaded"

    .line 330
    invoke-static {p1}, Lcom/utils/Admob;->access$000(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "rewardedAd"
        }
    .end annotation

    .line 325
    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lcom/utils/Admob$5$1;->onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    return-void
.end method
