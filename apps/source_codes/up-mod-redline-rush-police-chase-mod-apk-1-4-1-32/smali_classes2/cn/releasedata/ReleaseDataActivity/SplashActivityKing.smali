.class public Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;
.super Landroid/app/Activity;
.source "ReleaseActivity.java"


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing$1;

    invoke-direct {v0, p0}, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing$1;-><init>(Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;)V

    iput-object v0, p0, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private releaseData()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "releaseData: call"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing$2;

    invoke-direct {v0, p0}, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing$2;-><init>(Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;)V

    invoke-virtual {v0}, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing$2;->start()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-static {p0}, Lhm/mod/update/up;->process(Landroid/content/Context;)V

    const-string v0, "bmgame.png"

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "onCreate: call"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1, v2}, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-static {p0}, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->isNeedReleaseData(Landroid/content/Context;)Z

    move-result v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedReleaseData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v0, :cond_0

    iget-object v1, p0, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;->handler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    invoke-direct {p0}, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;->releaseData()V

    return-void
.end method
