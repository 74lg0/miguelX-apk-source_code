.class public Lcom/utils/UnityAds;
.super Ljava/lang/Object;
.source "UnityAds.java"


# static fields
.field private static mInstance:Lcom/utils/UnityAds;


# instance fields
.field private final adsListener:Lcom/unity3d/ads/IUnityAdsListener;

.field public mActivity:Landroid/app/Activity;

.field mDebugMode:Z

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field mTestMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/utils/UnityAds;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/utils/UnityAds;->mTestMode:Z

    .line 22
    iput-boolean v0, p0, Lcom/utils/UnityAds;->mDebugMode:Z

    .line 24
    new-instance v0, Lcom/utils/UnityAds$1;

    invoke-direct {v0, p0}, Lcom/utils/UnityAds$1;-><init>(Lcom/utils/UnityAds;)V

    iput-object v0, p0, Lcom/utils/UnityAds;->adsListener:Lcom/unity3d/ads/IUnityAdsListener;

    return-void
.end method

.method private _log(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 68
    iget-boolean v0, p0, Lcom/utils/UnityAds;->mDebugMode:Z

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnityAds - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "xgame"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/utils/UnityAds;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/utils/UnityAds;->_log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/utils/UnityAds;Z)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/utils/UnityAds;->onVideoAdFinishedCb(Z)V

    return-void
.end method

.method public static getInstance()Lcom/utils/UnityAds;
    .locals 1

    .line 58
    sget-object v0, Lcom/utils/UnityAds;->mInstance:Lcom/utils/UnityAds;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/utils/UnityAds;

    invoke-direct {v0}, Lcom/utils/UnityAds;-><init>()V

    sput-object v0, Lcom/utils/UnityAds;->mInstance:Lcom/utils/UnityAds;

    .line 63
    :cond_0
    sget-object v0, Lcom/utils/UnityAds;->mInstance:Lcom/utils/UnityAds;

    return-object v0
.end method

.method private isSupported()Z
    .locals 2

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onVideoAdFinishedCb(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/utils/UnityAds;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 151
    new-instance v1, Lcom/utils/UnityAds$3;

    invoke-direct {v1, p0, p1}, Lcom/utils/UnityAds$3;-><init>(Lcom/utils/UnityAds;Z)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public hasCachedVideoAd(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placement"
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Lcom/utils/UnityAds;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 135
    :cond_0
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 138
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hasCachedVideoAd "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/utils/UnityAds;->_log(Ljava/lang/String;)V

    return v1
.end method

.method public init(Landroid/app/Activity;Landroid/opengl/GLSurfaceView;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "act",
            "glView",
            "appID"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/utils/UnityAds;->_log(Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/utils/UnityAds;->mActivity:Landroid/app/Activity;

    .line 76
    iput-object p2, p0, Lcom/utils/UnityAds;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 79
    invoke-direct {p0}, Lcom/utils/UnityAds;->isSupported()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 83
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/utils/UnityAds;->adsListener:Lcom/unity3d/ads/IUnityAdsListener;

    iget-boolean v0, p0, Lcom/utils/UnityAds;->mTestMode:Z

    invoke-static {p1, p3, p2, v0}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "init - exception - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/utils/UnityAds;->_log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public native onAdFinished()V
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public native onRewardEarned()V
.end method

.method public showVideoAd(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placement"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lcom/utils/UnityAds;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showVideoAd - 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/utils/UnityAds;->_log(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/utils/UnityAds;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/utils/UnityAds$2;

    invoke-direct {v1, p0, p1}, Lcom/utils/UnityAds$2;-><init>(Lcom/utils/UnityAds;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
