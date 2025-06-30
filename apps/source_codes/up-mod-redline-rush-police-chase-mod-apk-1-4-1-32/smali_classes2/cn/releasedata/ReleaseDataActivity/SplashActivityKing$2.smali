.class Lcn/releasedata/ReleaseDataActivity/SplashActivityKing$2;
.super Ljava/lang/Thread;
.source "ReleaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;->releaseData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;


# direct methods
.method constructor <init>(Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing$2;->this$0:Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing$2;->this$0:Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;

    invoke-static {v0}, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->startReleaseData(Landroid/content/Context;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing$2;->this$0:Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;

    invoke-static {v3}, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;->access$000(Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing$2;->this$0:Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;

    invoke-static {v3}, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;->access$000(Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x65

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
