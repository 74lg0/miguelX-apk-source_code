.class Lcn/releasedata/ReleaseDataActivity/SplashActivityKing$1;
.super Landroid/os/Handler;
.source "ReleaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;
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

    iput-object p1, p0, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing$1;->this$0:Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing$1;->this$0:Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;

    const-string v2, "\u6570\u636e\u91ca\u653e\u5931\u8d25"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing$1;->this$0:Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;

    invoke-virtual {v0}, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing$1;->this$0:Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;

    invoke-static {v2}, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->getNextActivityClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v3, p0, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing$1;->this$0:Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;

    const-string v4, "nextClass: null"

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing$1;->this$0:Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;

    invoke-virtual {v3, v1}, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing$1;->this$0:Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;

    invoke-virtual {v3}, Lcn/releasedata/ReleaseDataActivity/SplashActivityKing;->finish()V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
