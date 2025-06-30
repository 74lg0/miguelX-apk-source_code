.class Lcom/utils/Admob$4;
.super Ljava/lang/Object;
.source "Admob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/Admob;->ShowInterstitial()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/Admob;

.field final synthetic val$_interstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/utils/Admob;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_interstitial"
        }
    .end annotation

    .line 270
    iput-object p1, p0, Lcom/utils/Admob$4;->this$0:Lcom/utils/Admob;

    iput-object p2, p0, Lcom/utils/Admob$4;->val$_interstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "ShowInterstitial - show on UI thread"

    .line 272
    invoke-static {v0}, Lcom/utils/Admob;->access$000(Ljava/lang/String;)V

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/utils/Admob$4;->val$_interstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    new-instance v1, Lcom/utils/Admob$4$1;

    invoke-direct {v1, p0}, Lcom/utils/Admob$4$1;-><init>(Lcom/utils/Admob$4;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 288
    iget-object v0, p0, Lcom/utils/Admob$4;->val$_interstitial:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    sget-object v1, Lcom/utils/Admob;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
