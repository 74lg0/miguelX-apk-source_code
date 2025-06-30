.class final Lcn/releasedata/ReleaseDataActivity/ReleaseUtils$1;
.super Landroid/os/Handler;
.source "ReleaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

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

    const/4 v1, 0x0

    const-string v2, "\u91ca\u653e\u6570\u636e\u4e2d, \u8bf7\u7a0d\u5019..."

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    :try_start_0
    invoke-static {}, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->access$300()Landroid/content/Context;

    move-result-object v0

    const-string v1, "obb \u65e0\u6cd5\u91ca\u653e, \u8bf7\u4f7f\u7528\u5b89\u88c5\u5668"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    nop

    :goto_0
    return-void

    :pswitch_1
    invoke-static {}, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {}, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->access$100()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMax(I)V

    invoke-static {}, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-static {}, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    invoke-static {}, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    invoke-static {}, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {}, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->access$200()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void

    :pswitch_2
    invoke-static {}, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {}, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->access$100()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMax(I)V

    invoke-static {}, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-static {}, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    invoke-static {}, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void

    :pswitch_3
    invoke-static {}, Lcn/releasedata/ReleaseDataActivity/ReleaseUtils;->access$000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
