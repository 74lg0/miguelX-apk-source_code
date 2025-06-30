.class public Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;
.super Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
.source "XLEAnimationAbsListView.java"


# instance fields
.field private layoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private layoutView:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/view/animation/LayoutAnimationController;)V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;->layoutView:Landroid/widget/AbsListView;

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;->layoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;->layoutView:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;->layoutView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->clearAnimation()V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;->layoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, p1}, Landroid/view/animation/LayoutAnimationController;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    instance-of v0, p1, Landroid/widget/AbsListView;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    check-cast p1, Landroid/widget/AbsListView;

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;->layoutView:Landroid/widget/AbsListView;

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;->layoutView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;->layoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;->endRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;->endRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
