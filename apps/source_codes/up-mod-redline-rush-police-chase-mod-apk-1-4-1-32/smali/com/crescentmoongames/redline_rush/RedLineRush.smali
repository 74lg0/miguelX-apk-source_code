.class public Lcom/crescentmoongames/redline_rush/RedLineRush;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "RedLineRush.java"

# interfaces
.implements Lcom/utils/IShareHelper;


# instance fields
.field private final ADMOB_APP_ID:Ljava/lang/String;

.field private final ADMOB_INTERSTITIAL_UNIT_ID:Ljava/lang/String;

.field private final ADMOB_REWARDED_UNIT_ID:Ljava/lang/String;

.field private final APP_NAME:Ljava/lang/String;

.field private final APP_PACKAGE_NAME:Ljava/lang/String;

.field private final CODE_PART_1:Ljava/lang/String;

.field private final CODE_PART_2:Ljava/lang/String;

.field private final CODE_PART_3:Ljava/lang/String;

.field private final CODE_PART_4:Ljava/lang/String;

.field private final UNITYADS_APP_ID:Ljava/lang/String;

.field private _instance:Lcom/crescentmoongames/redline_rush/RedLineRush;

.field private frameLayout:Landroid/widget/FrameLayout;

.field hasFocus:Z

.field private mDebug:Z

.field resumeOnWindowFocusChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "game"

    .line 292
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->frameLayout:Landroid/widget/FrameLayout;

    .line 38
    iput-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->_instance:Lcom/crescentmoongames/redline_rush/RedLineRush;

    const-string v0, "RedLine Rush"

    .line 39
    iput-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->APP_NAME:Ljava/lang/String;

    const-string v0, "com.crescentmoongames.redline_rush"

    .line 40
    iput-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->APP_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "43201"

    .line 42
    iput-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->UNITYADS_APP_ID:Ljava/lang/String;

    const-string v0, "ca-app-pub-8919397899007690~1427189765"

    .line 44
    iput-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->ADMOB_APP_ID:Ljava/lang/String;

    const-string v0, "ca-app-pub-8919397899007690/2903922964"

    .line 45
    iput-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->ADMOB_INTERSTITIAL_UNIT_ID:Ljava/lang/String;

    const-string v0, "ca-app-pub-8919397899007690/6859450068"

    .line 46
    iput-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->ADMOB_REWARDED_UNIT_ID:Ljava/lang/String;

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuc"

    .line 48
    iput-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->CODE_PART_1:Ljava/lang/String;

    const-string v0, "baKUkfIq3ERQvVRtXudjtnvgk9xFpZHhxV9aRCGkw2Eata+/uxNIxw0gPe+naVfxDBOUa4s9RxPfYWT"

    .line 49
    iput-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->CODE_PART_3:Ljava/lang/String;

    const-string v0, "QR+HMRz7Ah4OPXEUuykIcutChWtrAe5gozA6iRz7IQSneebq7fSdA8CydOHDdXTArsyfd4vQvrp2iaz69iXXTDKpGE"

    .line 50
    iput-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->CODE_PART_2:Ljava/lang/String;

    const-string v0, "dn7qEY1Fcboo0yiPuFKvqARZvSw11zIeRHo1f4cyQeJ3fbQ6PwX9fuJHN/BT4P+F6dvX/7Z+XYxhG02Ia0km4j8pAIuPeUvOFmZrIrfOJ8NbLkvbB0TzDD2+zzDXgEYTBX0vq2gB6Il6xer8/KvsuDdG9jDwqRb4BwlFb90mNkQIDAQAB"

    .line 51
    iput-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->CODE_PART_4:Ljava/lang/String;

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->mDebug:Z

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->resumeOnWindowFocusChanged:Z

    .line 128
    iput-boolean v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->hasFocus:Z

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

    .line 270
    iget-boolean v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->mDebug:Z

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RedlineRush - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "game"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/crescentmoongames/redline_rush/RedLineRush;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/crescentmoongames/redline_rush/RedLineRush;->setImmersiveMode()V

    return-void
.end method

.method private initIAPBillingInterface()V
    .locals 3

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuc"

    .line 276
    sput-object v0, Lcom/utils/InappPurchase;->CODE_1:Ljava/lang/String;

    const-string v0, "baKUkfIq3ERQvVRtXudjtnvgk9xFpZHhxV9aRCGkw2Eata+/uxNIxw0gPe+naVfxDBOUa4s9RxPfYWT"

    .line 277
    sput-object v0, Lcom/utils/InappPurchase;->CODE_2:Ljava/lang/String;

    const-string v0, "QR+HMRz7Ah4OPXEUuykIcutChWtrAe5gozA6iRz7IQSneebq7fSdA8CydOHDdXTArsyfd4vQvrp2iaz69iXXTDKpGE"

    .line 278
    sput-object v0, Lcom/utils/InappPurchase;->CODE_3:Ljava/lang/String;

    const-string v0, "dn7qEY1Fcboo0yiPuFKvqARZvSw11zIeRHo1f4cyQeJ3fbQ6PwX9fuJHN/BT4P+F6dvX/7Z+XYxhG02Ia0km4j8pAIuPeUvOFmZrIrfOJ8NbLkvbB0TzDD2+zzDXgEYTBX0vq2gB6Il6xer8/KvsuDdG9jDwqRb4BwlFb90mNkQIDAQAB"

    .line 279
    sput-object v0, Lcom/utils/InappPurchase;->CODE_4:Ljava/lang/String;

    .line 281
    invoke-static {}, Lcom/utils/InappPurchase;->getInstance()Lcom/utils/InappPurchase;

    move-result-object v0

    iget-object v1, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/utils/InappPurchase;->init(Landroid/app/Activity;Landroid/opengl/GLSurfaceView;Z)V

    return-void
.end method

.method private setImmersiveMode()V
    .locals 4

    const-string v0, "game"

    .line 212
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 216
    :try_start_0
    invoke-virtual {p0}, Lcom/crescentmoongames/redline_rush/RedLineRush;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/crescentmoongames/redline_rush/RedLineRush;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "setImmersiveMode"

    .line 218
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p0}, Lcom/crescentmoongames/redline_rush/RedLineRush;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x1706

    .line 229
    invoke-virtual {p0}, Lcom/crescentmoongames/redline_rush/RedLineRush;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setImmersiveMode - exp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private setSystemUiVisibilityChangeListener()V
    .locals 3

    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 191
    :try_start_0
    invoke-virtual {p0}, Lcom/crescentmoongames/redline_rush/RedLineRush;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 192
    new-instance v1, Lcom/crescentmoongames/redline_rush/RedLineRush$1;

    invoke-direct {v1, p0}, Lcom/crescentmoongames/redline_rush/RedLineRush$1;-><init>(Lcom/crescentmoongames/redline_rush/RedLineRush;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSystemUiVisibilityChangeListener - exp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "game"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getCurrentGL()Ljavax/microedition/khronos/opengles/GL10;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mCocos2dxRenderer:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->getCurrentGL()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    return-object v0
.end method

.method public getGLSurfaceHeight()I
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mCocos2dxRenderer:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    iget v0, v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenHeight:I

    return v0
.end method

.method public getGLSurfaceWidth()I
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->mCocos2dxRenderer:Lorg/cocos2dx/lib/Cocos2dxRenderer;

    iget v0, v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenWidth:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 255
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 259
    :try_start_0
    invoke-static {}, Lcom/utils/GPlayService;->getInstance()Lcom/utils/GPlayService;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/utils/GPlayService;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/crescentmoongames/redline_rush/RedLineRush;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/crescentmoongames/redline_rush/RedLineRush;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    const-string v0, "onCreate@1"

    .line 66
    invoke-direct {p0, v0}, Lcom/crescentmoongames/redline_rush/RedLineRush;->_log(Ljava/lang/String;)V

    .line 67
    iput-object p0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->_instance:Lcom/crescentmoongames/redline_rush/RedLineRush;

    .line 68
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->frameLayout:Landroid/widget/FrameLayout;

    .line 69
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-direct {v0, p0, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 70
    iget-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/crescentmoongames/redline_rush/RedLineRush;->setContentView(Landroid/view/View;)V

    .line 74
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "onCreate@2"

    .line 75
    invoke-direct {p0, p1}, Lcom/crescentmoongames/redline_rush/RedLineRush;->_log(Ljava/lang/String;)V

    .line 76
    sget-object p1, Lcom/crescentmoongames/redline_rush/RedLineRush;->accelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    if-eqz p1, :cond_1

    .line 77
    sget-object p1, Lcom/crescentmoongames/redline_rush/RedLineRush;->accelerometer:Lorg/cocos2dx/lib/Cocos2dxAccelerometer;

    iget-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {p1, v0}, Lorg/cocos2dx/lib/Cocos2dxAccelerometer;->setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V

    .line 79
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p1, v0, :cond_2

    .line 80
    iget-object p1, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {p1, v1}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 81
    :cond_2
    invoke-direct {p0}, Lcom/crescentmoongames/redline_rush/RedLineRush;->setImmersiveMode()V

    .line 82
    invoke-direct {p0}, Lcom/crescentmoongames/redline_rush/RedLineRush;->setSystemUiVisibilityChangeListener()V

    .line 84
    invoke-static {}, Lcom/nvidia/devtech/NvAPKFileHelper;->getInstance()Lcom/nvidia/devtech/NvAPKFileHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/nvidia/devtech/NvAPKFileHelper;->setContext(Landroid/content/Context;)V

    .line 85
    invoke-static {}, Lcom/nvidia/devtech/AudioHelper;->getInstance()Lcom/nvidia/devtech/AudioHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/nvidia/devtech/AudioHelper;->setContext(Landroid/content/Context;)V

    const-string p1, "onCreate@3"

    .line 87
    invoke-direct {p0, p1}, Lcom/crescentmoongames/redline_rush/RedLineRush;->_log(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/utils/DeviceAndSystem;->getInstance()Lcom/utils/DeviceAndSystem;

    move-result-object p1

    const-class v0, Lcom/crescentmoongames/redline_rush/RedLineRush;

    const v1, 0x7f060069

    invoke-virtual {p1, p0, v0, v1}, Lcom/utils/DeviceAndSystem;->Init(Landroid/app/Activity;Ljava/lang/Class;I)V

    .line 90
    invoke-static {}, Lcom/utils/ShareInterface;->getInstance()Lcom/utils/ShareInterface;

    move-result-object p1

    const v0, 0x7f0a0029

    invoke-virtual {p1, p0, p0, v0}, Lcom/utils/ShareInterface;->Init(Landroid/app/Activity;Lcom/utils/IShareHelper;I)V

    const-string p1, "onCreate@4"

    .line 92
    invoke-direct {p0, p1}, Lcom/crescentmoongames/redline_rush/RedLineRush;->_log(Ljava/lang/String;)V

    const-string p1, "onCreate@5"

    .line 95
    invoke-direct {p0, p1}, Lcom/crescentmoongames/redline_rush/RedLineRush;->_log(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/crescentmoongames/redline_rush/RedLineRush;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0028

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-static {}, Lcom/utils/AppRater;->getInstance()Lcom/utils/AppRater;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/utils/AppRater;->init(Landroid/app/Activity;Ljava/lang/String;)V

    const-string p1, "onCreate@6"

    .line 100
    invoke-direct {p0, p1}, Lcom/crescentmoongames/redline_rush/RedLineRush;->_log(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/utils/GPlayService;->getInstance()Lcom/utils/GPlayService;

    move-result-object p1

    iget-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {p1, p0, v0}, Lcom/utils/GPlayService;->init(Landroid/app/Activity;Landroid/opengl/GLSurfaceView;)V

    const-string p1, "onCreate@7"

    .line 102
    invoke-direct {p0, p1}, Lcom/crescentmoongames/redline_rush/RedLineRush;->_log(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/utils/UnityAds;->getInstance()Lcom/utils/UnityAds;

    move-result-object p1

    iget-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    const-string v1, "43201"

    invoke-virtual {p1, p0, v0, v1}, Lcom/utils/UnityAds;->init(Landroid/app/Activity;Landroid/opengl/GLSurfaceView;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/utils/Admob;->getInstance()Lcom/utils/Admob;

    move-result-object v2

    iget-object v4, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    iget-object v5, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    const-string v7, "ca-app-pub-8919397899007690/2903922964"

    const-string v8, "ca-app-pub-8919397899007690/6859450068"

    move-object v3, p0

    invoke-virtual/range {v2 .. v8}, Lcom/utils/Admob;->Init(Landroid/app/Activity;Landroid/opengl/GLSurfaceView;Landroid/widget/FrameLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/crescentmoongames/redline_rush/RedLineRush;->initIAPBillingInterface()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 113
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onPause()V

    .line 117
    invoke-static {}, Lcom/nvidia/devtech/AudioHelper;->getInstance()Lcom/nvidia/devtech/AudioHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/devtech/AudioHelper;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 123
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->hasFocus:Z

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 133
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->mGLSurfaceView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onResume()V

    .line 138
    iget-boolean v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->hasFocus:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Lcom/nvidia/devtech/AudioHelper;->getInstance()Lcom/nvidia/devtech/AudioHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nvidia/devtech/AudioHelper;->onResume()V

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->resumeOnWindowFocusChanged:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->resumeOnWindowFocusChanged:Z

    .line 146
    :goto_0
    invoke-static {}, Lcom/utils/UnityAds;->getInstance()Lcom/utils/UnityAds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/utils/UnityAds;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 242
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStart()V

    .line 245
    :try_start_0
    invoke-static {}, Lcom/utils/DeviceAndSystem;->getInstance()Lcom/utils/DeviceAndSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/utils/DeviceAndSystem;->onStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 174
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStop()V

    .line 177
    :try_start_0
    invoke-static {}, Lcom/utils/DeviceAndSystem;->getInstance()Lcom/utils/DeviceAndSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/utils/DeviceAndSystem;->onStop()V

    .line 178
    invoke-static {}, Lcom/utils/GPlayService;->getInstance()Lcom/utils/GPlayService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/utils/GPlayService;->onStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focus"
        }
    .end annotation

    .line 158
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onWindowFocusChanged(Z)V

    .line 160
    iput-boolean p1, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->hasFocus:Z

    if-eqz p1, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/crescentmoongames/redline_rush/RedLineRush;->setImmersiveMode()V

    :cond_0
    if-eqz p1, :cond_1

    .line 165
    iget-boolean p1, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->resumeOnWindowFocusChanged:Z

    if-eqz p1, :cond_1

    .line 166
    invoke-static {}, Lcom/nvidia/devtech/AudioHelper;->getInstance()Lcom/nvidia/devtech/AudioHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nvidia/devtech/AudioHelper;->onResume()V

    const/4 p1, 0x0

    .line 167
    iput-boolean p1, p0, Lcom/crescentmoongames/redline_rush/RedLineRush;->resumeOnWindowFocusChanged:Z

    :cond_1
    return-void
.end method
