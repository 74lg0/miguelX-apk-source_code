.class public Lcn/releasedata/ReleaseDataActivity/GameActivity;
.super Landroid/app/Activity;
.source "GameActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcn/releasedata/ReleaseDataActivity/GameActivity;->setContentView(I)V

    return-void
.end method
