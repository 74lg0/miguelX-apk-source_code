.class public abstract Lcom/microsoft/xbox/xle/app/activity/ActivityBase;
.super Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
.source "ActivityBase.java"


# instance fields
.field private showRightPane:Z

.field private showUtilityBar:Z

.field protected viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->showUtilityBar:Z

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->showRightPane:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->showUtilityBar:Z

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->showRightPane:Z

    return-void
.end method

.method private getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/microsoft/xbox/xle/ui/XLERootView;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/ui/XLERootView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public adjustBottomMargin(I)V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/ui/XLERootView;->setBottomMargin(I)V

    :cond_0
    return-void
.end method

.method protected computeBottomMargin()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected delayAppbarAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public forceRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->forceRefresh()V

    :cond_0
    return-void
.end method

.method public forceUpdateViewImmediately()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->forceUpdateViewImmediately()V

    :cond_0
    return-void
.end method

.method protected abstract getActivityName()Ljava/lang/String;
.end method

.method public getAnimateIn(Z)Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/microsoft/xbox/toolkit/anim/MAAS;->getInstance()Lcom/microsoft/xbox/toolkit/anim/MAAS;

    move-result-object v1

    const-string v2, "Screen"

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/anim/MAAS;->getAnimation(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageNavigationManager;

    sget-object v2, Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;->ANIMATE_IN:Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;

    invoke-virtual {v1, v2, p1, v0}, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageNavigationManager;->compile(Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;ZLandroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;-><init>()V

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->add(Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAnimateOut(Z)Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/microsoft/xbox/toolkit/anim/MAAS;->getInstance()Lcom/microsoft/xbox/toolkit/anim/MAAS;

    move-result-object v1

    const-string v2, "Screen"

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/anim/MAAS;->getAnimation(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageNavigationManager;

    sget-object v2, Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;->ANIMATE_OUT:Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;

    invoke-virtual {v1, v2, p1, v0}, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageNavigationManager;->compile(Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;ZLandroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;-><init>()V

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->add(Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRelativeId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getShouldShowAppbar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAnimateInCompleted()V
    .locals 3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->getInstance()Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    move-result-object v1

    new-instance v2, Lcom/microsoft/xbox/xle/app/activity/ActivityBase$1;

    invoke-direct {v2, p0, v0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase$1;-><init>(Lcom/microsoft/xbox/xle/app/activity/ActivityBase;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->postRunnableAfterReady(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onAnimateInCompleted()V

    :cond_1
    return-void
.end method

.method public onAnimateInStarted()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->forceUpdateViewImmediately()V

    :cond_0
    return-void
.end method

.method public onApplicationPause()V
    .locals 1

    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onApplicationPause()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onApplicationPause()V

    :cond_0
    return-void
.end method

.method public onApplicationResume()V
    .locals 1

    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onApplicationResume()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onApplicationResume()V

    :cond_0
    return-void
.end method

.method public onBackButtonPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onBackButtonPressed()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public abstract onCreateContentView()V
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onDestroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onDestroy()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->clearDisappearingChildren()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onPause()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onPause()V

    :cond_0
    return-void
.end method

.method public onRehydrate()V
    .locals 1

    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onRehydrate()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onRehydrate()V

    :cond_0
    return-void
.end method

.method public onRehydrateOverride()V
    .locals 0

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->onCreateContentView()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onResume()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onResume()V

    :cond_0
    return-void
.end method

.method public onSetActive()V
    .locals 1

    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onSetActive()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onSetActive()V

    :cond_0
    return-void
.end method

.method public onSetInactive()V
    .locals 1

    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onSetInactive()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onSetInactive()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getIsStarted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onStart()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onStart()V

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->load()V

    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->delayAppbarAnimation()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->computeBottomMargin()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->adjustBottomMargin(I)V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getIsStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onStop()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onSetInactive()V

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onStop()V

    :cond_1
    return-void
.end method

.method public onTombstone()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onTombstone()V

    :cond_0
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onTombstone()V

    return-void
.end method

.method public removeBottomMargin()V
    .locals 2

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/XLERootView;->setBottomMargin(I)V

    :cond_0
    return-void
.end method

.method public resetBottomMargin()V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->getXLERootView()Lcom/microsoft/xbox/xle/ui/XLERootView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->computeBottomMargin()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->adjustBottomMargin(I)V

    :cond_0
    return-void
.end method

.method public setHeaderName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setScreenState(I)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->setScreenState(I)V

    :cond_0
    return-void
.end method
