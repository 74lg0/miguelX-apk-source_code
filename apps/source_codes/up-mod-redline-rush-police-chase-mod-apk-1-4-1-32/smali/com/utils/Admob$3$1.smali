.class Lcom/utils/Admob$3$1;
.super Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
.source "Admob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/Admob$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/utils/Admob$3;


# direct methods
.method constructor <init>(Lcom/utils/Admob$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lcom/utils/Admob$3$1;->this$1:Lcom/utils/Admob$3;

    invoke-direct {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;-><init>()V

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

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interstitial failed to load ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/Admob;->access$000(Ljava/lang/String;)V

    .line 241
    iget-object p1, p0, Lcom/utils/Admob$3$1;->this$1:Lcom/utils/Admob$3;

    iget-object p1, p1, Lcom/utils/Admob$3;->this$0:Lcom/utils/Admob;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/utils/Admob;->access$102(Lcom/utils/Admob;Z)Z

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interstitialAd"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/utils/Admob$3$1;->this$1:Lcom/utils/Admob$3;

    iget-object v0, v0, Lcom/utils/Admob$3;->this$0:Lcom/utils/Admob;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/utils/Admob;->access$102(Lcom/utils/Admob;Z)Z

    .line 234
    iget-object v0, p0, Lcom/utils/Admob$3$1;->this$1:Lcom/utils/Admob$3;

    iget-object v0, v0, Lcom/utils/Admob$3;->this$0:Lcom/utils/Admob;

    invoke-static {v0, p1}, Lcom/utils/Admob;->access$202(Lcom/utils/Admob;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    const-string p1, "interstitial onAdLoaded"

    .line 235
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
            "interstitialAd"
        }
    .end annotation

    .line 228
    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/utils/Admob$3$1;->onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    return-void
.end method
