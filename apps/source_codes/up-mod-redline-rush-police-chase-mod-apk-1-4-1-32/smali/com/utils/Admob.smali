.class public Lcom/utils/Admob;
.super Ljava/lang/Object;
.source "Admob.java"


# static fields
.field private static instance:Lcom/utils/Admob; = null

.field public static mActivity:Landroid/app/Activity; = null

.field private static mDebug:Z = false

.field private static mTestMode:Z = false

.field private static maxBannerRatio:F = 0.125f


# instance fields
.field private final PosBottom:I

.field private final PosTop:I

.field private mBannerID:Ljava/lang/String;

.field private mBannerParentView:Landroid/widget/FrameLayout;

.field private mBannerView:Lcom/google/android/gms/ads/AdView;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private volatile mHasReward:Z

.field private volatile mInterstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

.field private mInterstitialID:Ljava/lang/String;

.field private volatile mInterstitialLoading:Z

.field private volatile mRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

.field private mRewardedID:Ljava/lang/String;

.field private volatile mRewardedLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/utils/Admob;->mBannerView:Lcom/google/android/gms/ads/AdView;

    .line 35
    iput-object v0, p0, Lcom/utils/Admob;->mInterstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Lcom/utils/Admob;->mInterstitialLoading:Z

    .line 39
    iput-object v0, p0, Lcom/utils/Admob;->mRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 40
    iput-boolean v1, p0, Lcom/utils/Admob;->mRewardedLoading:Z

    .line 42
    iput-boolean v1, p0, Lcom/utils/Admob;->mHasReward:Z

    .line 465
    iput v1, p0, Lcom/utils/Admob;->PosBottom:I

    const/4 v0, 0x1

    .line 466
    iput v0, p0, Lcom/utils/Admob;->PosTop:I

    return-void
.end method

.method private static _log(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 58
    sget-boolean v0, Lcom/utils/Admob;->mDebug:Z

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdMob Java - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "xgame"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/utils/Admob;->_log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/utils/Admob;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/utils/Admob;->mInterstitialLoading:Z

    return p1
.end method

.method static synthetic access$202(Lcom/utils/Admob;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/utils/Admob;->mInterstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-object p1
.end method

.method static synthetic access$302(Lcom/utils/Admob;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/utils/Admob;->mRewardedLoading:Z

    return p1
.end method

.method static synthetic access$402(Lcom/utils/Admob;Lcom/google/android/gms/ads/rewarded/RewardedAd;)Lcom/google/android/gms/ads/rewarded/RewardedAd;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/utils/Admob;->mRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-object p1
.end method

.method static synthetic access$500(Lcom/utils/Admob;)Lcom/google/android/gms/ads/AdView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/utils/Admob;->mBannerView:Lcom/google/android/gms/ads/AdView;

    return-object p0
.end method

.method static synthetic access$600()F
    .locals 1

    .line 21
    sget v0, Lcom/utils/Admob;->maxBannerRatio:F

    return v0
.end method

.method public static dpFromPx(Landroid/content/Context;F)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "px"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    return p1
.end method

.method public static getBannerHeight()F
    .locals 2

    .line 68
    sget-object v0, Lcom/utils/Admob;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/utils/Admob;->instance:Lcom/utils/Admob;

    iget-object v0, v0, Lcom/utils/Admob;->mBannerView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    sget-object v1, Lcom/utils/Admob;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 71
    sget-object v1, Lcom/utils/Admob;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/utils/Admob;->dpFromPx(Landroid/content/Context;F)F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getBannerHeightRatio()F
    .locals 2

    .line 80
    sget-object v0, Lcom/utils/Admob;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/utils/Admob;->instance:Lcom/utils/Admob;

    iget-object v0, v0, Lcom/utils/Admob;->mBannerView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    sget-object v1, Lcom/utils/Admob;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 83
    sget-object v1, Lcom/utils/Admob;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static getInstance()Lcom/utils/Admob;
    .locals 1

    .line 48
    sget-object v0, Lcom/utils/Admob;->instance:Lcom/utils/Admob;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/utils/Admob;

    invoke-direct {v0}, Lcom/utils/Admob;-><init>()V

    sput-object v0, Lcom/utils/Admob;->instance:Lcom/utils/Admob;

    .line 53
    :cond_0
    sget-object v0, Lcom/utils/Admob;->instance:Lcom/utils/Admob;

    return-object v0
.end method


# virtual methods
.method public CacheInterstitial()V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/utils/Admob;->mInterstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/utils/Admob;->mInterstitialID:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/utils/Admob;->mInterstitialLoading:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/utils/Admob;->mInterstitialLoading:Z

    const-string v0, "CacheInterstitial"

    .line 217
    invoke-static {v0}, Lcom/utils/Admob;->_log(Ljava/lang/String;)V

    .line 219
    sget-boolean v0, Lcom/utils/Admob;->mTestMode:Z

    if-eqz v0, :cond_1

    const-string v0, "ca-app-pub-3940256099942544/1033173712"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/utils/Admob;->mInterstitialID:Ljava/lang/String;

    .line 221
    :goto_0
    sget-object v1, Lcom/utils/Admob;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/utils/Admob$3;

    invoke-direct {v2, p0, v0}, Lcom/utils/Admob$3;-><init>(Lcom/utils/Admob;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public CacheRewarded()V
    .locals 3

    .line 309
    iget-object v0, p0, Lcom/utils/Admob;->mRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/utils/Admob;->mRewardedID:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/utils/Admob;->mRewardedLoading:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 312
    iput-boolean v0, p0, Lcom/utils/Admob;->mRewardedLoading:Z

    const-string v0, "CacheRewarded"

    .line 314
    invoke-static {v0}, Lcom/utils/Admob;->_log(Ljava/lang/String;)V

    .line 316
    sget-boolean v0, Lcom/utils/Admob;->mTestMode:Z

    if-eqz v0, :cond_1

    const-string v0, "ca-app-pub-3940256099942544/5224354917"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/utils/Admob;->mRewardedID:Ljava/lang/String;

    .line 318
    :goto_0
    sget-object v1, Lcom/utils/Admob;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/utils/Admob$5;

    invoke-direct {v2, p0, v0}, Lcom/utils/Admob$5;-><init>(Lcom/utils/Admob;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public HasCachedRewarded()Z
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/utils/Admob;->mRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 413
    invoke-virtual {p0}, Lcom/utils/Admob;->CacheRewarded()V

    :cond_1
    return v0
.end method

.method public Init(Landroid/app/Activity;Landroid/opengl/GLSurfaceView;Landroid/widget/FrameLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
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
            "context",
            "glSurfaceView",
            "mainView",
            "_bannerID",
            "_interstitialID",
            "_rewardedID"
        }
    .end annotation

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x13

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_2

    :cond_2
    :goto_1
    const-string v0, "xgame"

    const-string v2, "AdMob Java - DISABLED"

    .line 94
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_2
    sput-object p1, Lcom/utils/Admob;->mActivity:Landroid/app/Activity;

    .line 99
    iput-object p2, p0, Lcom/utils/Admob;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v1, :cond_3

    return-void

    .line 112
    :cond_3
    new-instance p2, Lcom/utils/Admob$1;

    invoke-direct {p2, p0}, Lcom/utils/Admob$1;-><init>(Lcom/utils/Admob;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    .line 121
    :try_start_0
    iput-object p4, p0, Lcom/utils/Admob;->mBannerID:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/utils/Admob;->mBannerParentView:Landroid/widget/FrameLayout;

    if-eqz p4, :cond_4

    if-eqz p3, :cond_4

    .line 126
    invoke-virtual {p0}, Lcom/utils/Admob;->InitBanner()V

    .line 129
    :cond_4
    iput-object p5, p0, Lcom/utils/Admob;->mInterstitialID:Ljava/lang/String;

    if-eqz p5, :cond_5

    .line 132
    invoke-virtual {p0}, Lcom/utils/Admob;->CacheInterstitial()V

    .line 135
    :cond_5
    iput-object p6, p0, Lcom/utils/Admob;->mRewardedID:Ljava/lang/String;

    if-eqz p6, :cond_6

    .line 138
    invoke-virtual {p0}, Lcom/utils/Admob;->CacheRewarded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    return-void
.end method

.method public InitBanner()V
    .locals 7

    const-string v0, " screen width = "

    .line 150
    :try_start_0
    new-instance v1, Lcom/google/android/gms/ads/AdView;

    sget-object v2, Lcom/utils/Admob;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/utils/Admob;->mBannerView:Lcom/google/android/gms/ads/AdView;

    .line 152
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 155
    sget-object v2, Lcom/utils/Admob;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 156
    sget-object v3, Lcom/utils/Admob;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 157
    sget-object v4, Lcom/utils/Admob;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "density = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/utils/Admob;->_log(Ljava/lang/String;)V

    int-to-float v3, v3

    div-float/2addr v3, v2

    int-to-float v4, v4

    div-float/2addr v4, v2

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "dp height = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "dp"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/Admob;->_log(Ljava/lang/String;)V

    const/high16 v0, 0x44340000    # 720.0f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    div-float/2addr v0, v3

    .line 165
    sget v2, Lcom/utils/Admob;->maxBannerRatio:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const-string v0, "AdSize is BANNER"

    .line 167
    invoke-static {v0}, Lcom/utils/Admob;->_log(Ljava/lang/String;)V

    .line 168
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    goto :goto_0

    :cond_0
    const-string v0, "AdSize is SMART_BANNER"

    .line 171
    invoke-static {v0}, Lcom/utils/Admob;->_log(Ljava/lang/String;)V

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/utils/Admob;->mBannerView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 174
    sget-boolean v0, Lcom/utils/Admob;->mTestMode:Z

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/utils/Admob;->mBannerView:Lcom/google/android/gms/ads/AdView;

    const-string v1, "ca-app-pub-3940256099942544/6300978111"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    goto :goto_1

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/utils/Admob;->mBannerView:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/utils/Admob;->mBannerID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 179
    :goto_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 180
    iget-object v1, p0, Lcom/utils/Admob;->mBannerParentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/utils/Admob;->mBannerView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object v0, p0, Lcom/utils/Admob;->mBannerView:Lcom/google/android/gms/ads/AdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/utils/Admob;->mBannerView:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/utils/Admob$2;

    invoke-direct {v1, p0}, Lcom/utils/Admob$2;-><init>(Lcom/utils/Admob;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    const-string v0, "banner ad request"

    .line 201
    invoke-static {v0}, Lcom/utils/Admob;->_log(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/utils/Admob;->mBannerView:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "banner ad request exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/Admob;->_log(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public SetBannerPosition(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    return-void
.end method

.method public SetBannerVisible(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetVisible:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/Admob;->_log(Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/utils/Admob;->mBannerView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 510
    :try_start_0
    sget-object v0, Lcom/utils/Admob;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/utils/Admob$9;

    invoke-direct {v1, p0, p1}, Lcom/utils/Admob$9;-><init>(Lcom/utils/Admob;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad::SetVisible ex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/Admob;->_log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public ShowInterstitial()Z
    .locals 3

    const-string v0, "ShowInterstitial - @1"

    .line 263
    invoke-static {v0}, Lcom/utils/Admob;->_log(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/utils/Admob;->mInterstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-eqz v0, :cond_0

    const-string v0, "ShowInterstitial - has cached ad"

    .line 266
    invoke-static {v0}, Lcom/utils/Admob;->_log(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/utils/Admob;->mInterstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    const/4 v1, 0x0

    .line 268
    iput-object v1, p0, Lcom/utils/Admob;->mInterstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 270
    sget-object v1, Lcom/utils/Admob;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/utils/Admob$4;

    invoke-direct {v2, p0, v0}, Lcom/utils/Admob$4;-><init>(Lcom/utils/Admob;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 299
    :goto_0
    iget-object v1, p0, Lcom/utils/Admob;->mInterstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-nez v1, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/utils/Admob;->CacheInterstitial()V

    :cond_1
    return v0
.end method

.method public ShowRewarded()V
    .locals 3

    const-string v0, "ShowRewarded - @1"

    .line 358
    invoke-static {v0}, Lcom/utils/Admob;->_log(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/utils/Admob;->mRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v0, :cond_0

    const-string v0, "ShowRewarded - has cached ad"

    .line 361
    invoke-static {v0}, Lcom/utils/Admob;->_log(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/utils/Admob;->mRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    const/4 v1, 0x0

    .line 363
    iput-object v1, p0, Lcom/utils/Admob;->mRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 365
    sget-object v1, Lcom/utils/Admob;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/utils/Admob$6;

    invoke-direct {v2, p0, v0}, Lcom/utils/Admob$6;-><init>(Lcom/utils/Admob;Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/utils/Admob;->mRewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-nez v0, :cond_1

    .line 404
    invoke-virtual {p0}, Lcom/utils/Admob;->CacheRewarded()V

    :cond_1
    return-void
.end method

.method public native adFinishedCallback()V
.end method

.method public callAdFinished()V
    .locals 1

    const-string v0, "call adFinishedCallback"

    .line 426
    invoke-static {v0}, Lcom/utils/Admob;->_log(Ljava/lang/String;)V

    .line 427
    new-instance v0, Lcom/utils/Admob$7;

    invoke-direct {v0, p0}, Lcom/utils/Admob$7;-><init>(Lcom/utils/Admob;)V

    invoke-virtual {p0, v0}, Lcom/utils/Admob;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public callRewardEarned()V
    .locals 1

    const-string v0, "call RewardedEarnedCallback"

    .line 437
    invoke-static {v0}, Lcom/utils/Admob;->_log(Ljava/lang/String;)V

    .line 438
    new-instance v0, Lcom/utils/Admob$8;

    invoke-direct {v0, p0}, Lcom/utils/Admob$8;-><init>(Lcom/utils/Admob;)V

    invoke-virtual {p0, v0}, Lcom/utils/Admob;->runOnGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "onDestroy()"

    .line 460
    invoke-static {v0}, Lcom/utils/Admob;->_log(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/utils/Admob;->mBannerView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const-string v0, "onPause()"

    .line 453
    invoke-static {v0}, Lcom/utils/Admob;->_log(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/utils/Admob;->mBannerView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    const-string v0, "onResume()"

    .line 446
    invoke-static {v0}, Lcom/utils/Admob;->_log(Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/utils/Admob;->mBannerView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    :cond_0
    return-void
.end method

.method public native rewardEarnedCallback()V
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

    .line 419
    iget-object v0, p0, Lcom/utils/Admob;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
