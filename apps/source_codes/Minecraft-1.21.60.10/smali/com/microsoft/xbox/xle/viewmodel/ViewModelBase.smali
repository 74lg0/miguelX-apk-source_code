.class public abstract Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;
.super Ljava/lang/Object;
.source "ViewModelBase.java"

# interfaces
.implements Lcom/microsoft/xbox/toolkit/XLEObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;,
        Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/xbox/toolkit/XLEObserver<",
        "Lcom/microsoft/xbox/service/model/UpdateData;",
        ">;"
    }
.end annotation


# static fields
.field protected static LAUNCH_TIME_OUT:I = 0x1388

.field public static final TAG_PAGE_LOADING_TIME:Ljava/lang/String; = "performance_measure_page_loadingtime"


# instance fields
.field protected LifetimeInMinutes:I

.field protected adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

.field protected isActive:Z

.field protected isForeground:Z

.field protected isLaunching:Z

.field protected launchTimeoutHandler:Ljava/lang/Runnable;

.field protected listIndex:I

.field private nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

.field protected offset:I

.field private onlyProcessExceptionsAndShowToastsWhenActive:Z

.field private parent:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

.field private final screen:Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

.field private shouldHideScreen:Z

.field private showNoNetworkPopup:Z

.field private updateExceptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/microsoft/xbox/service/model/UpdateType;",
            "Lcom/microsoft/xbox/toolkit/XLEException;",
            ">;"
        }
    .end annotation
.end field

.field private updateTypesToCheck:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/xbox/service/model/UpdateType;",
            ">;"
        }
    .end annotation
.end field

.field private updating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;ZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->LifetimeInMinutes:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateExceptions:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updating:Z

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isLaunching:Z

    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->screen:Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    iput-boolean p2, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->showNoNetworkPopup:Z

    iput-boolean p3, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onlyProcessExceptionsAndShowToastsWhenActive:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;ZZ)V

    return-void
.end method

.method private shouldProcessErrors()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onlyProcessExceptionsAndShowToastsWhenActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isActive:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected NavigateTo(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->NavigateTo(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    return-void
.end method

.method protected NavigateTo(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->NavigateTo(Ljava/lang/Class;ZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    return-void
.end method

.method protected NavigateTo(Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->NavigateTo(Ljava/lang/Class;ZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    return-void
.end method

.method protected NavigateTo(Ljava/lang/Class;ZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;Z",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->cancelLaunchTimeout()V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isBlockingBusy()Z

    move-result v0

    const-string v1, "We shouldn\'t navigate to a new screen if the current screen is blocking"

    invoke-static {v1, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updating:Z

    if-eqz v0, :cond_1

    new-instance p3, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    if-eqz p2, :cond_0

    sget-object p2, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;->Push:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;->PopReplace:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

    :goto_0
    invoke-direct {p3, p0, p1, p2}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;Ljava/lang/Class;Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;)V

    iput-object p3, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isBlockingBusy()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->NavigateTo(Ljava/lang/Class;ZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    :goto_1
    return-void
.end method

.method public TEST_induceGoBack()V
    .locals 0

    return-void
.end method

.method protected adapterUpdateView()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->updateView()V

    :cond_0
    return-void
.end method

.method public cancelLaunch()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isLaunching:Z

    return-void
.end method

.method protected cancelLaunchTimeout()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isLaunching:Z

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->launchTimeoutHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/microsoft/xbox/toolkit/ThreadManager;->Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->launchTimeoutHandler:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected checkErrorCode(Lcom/microsoft/xbox/service/model/UpdateType;J)Z
    .locals 4

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateExceptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateExceptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEException;->getErrorCode()J

    move-result-wide v2

    cmp-long p2, v2, p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateExceptions:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/XLEException;->getIsHandled()Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->screen:Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->xleFindViewId(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public forceRefresh()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->load(Z)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->updateView()V

    :cond_0
    return-void
.end method

.method public forceUpdateViewImmediately()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->forceUpdateViewImmediately()V

    :cond_0
    return-void
.end method

.method public getAdapter()Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    return-object v0
.end method

.method public getAndResetListOffset()I
    .locals 2

    iget v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->offset:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->offset:I

    return v0
.end method

.method public getAndResetListPosition()I
    .locals 2

    iget v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->listIndex:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->listIndex:I

    return v0
.end method

.method public getAnimateIn(Z)Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->getAnimateIn(Z)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->add(Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;)V

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAnimateOut(Z)Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->getAnimateOut(Z)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->add(Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;)V

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBlockingStatusText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isActive:Z

    return v0
.end method

.method protected getParent()Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->parent:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    return-object v0
.end method

.method public getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->screen:Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    return-object v0
.end method

.method public getShouldHideScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->shouldHideScreen:Z

    return v0
.end method

.method public getShowNoNetworkPopup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->showNoNetworkPopup:Z

    return v0
.end method

.method public isBlockingBusy()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isBusy()Z
.end method

.method public leaveViewModel(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public load()V
    .locals 2

    invoke-static {}, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->getInstance()Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->CheckDrainShouldRefresh(Ljava/lang/Class;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->load(Z)V

    return-void
.end method

.method public abstract load(Z)V
.end method

.method protected logOut(Z)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onAnimateInCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onAnimateInCompleted()V

    :cond_0
    return-void
.end method

.method public onApplicationPause()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onApplicationPause()V

    :cond_0
    return-void
.end method

.method public onApplicationResume()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onApplicationResume()V

    :cond_0
    return-void
.end method

.method public onBackButtonPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onChildViewModelChanged(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onDestroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->cancelLaunchTimeout()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onPause()V

    :cond_0
    return-void
.end method

.method public abstract onRehydrate()V
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onResume()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->updateView()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSetActive()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isActive:Z

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onSetActive()V

    :cond_0
    return-void
.end method

.method public onSetInactive()V
    .locals 1

    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->dismissToast()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isActive:Z

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onSetInactive()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isForeground:Z

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onStartOverride()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onStart()V

    :cond_0
    return-void
.end method

.method protected abstract onStartOverride()V
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isForeground:Z

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onStop()V

    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->dismissBlocking()V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->shouldDismissTopNoFatalAlert()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->dismissTopNonFatalAlert()V

    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->dismissToast()V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onStopOverride()V

    return-void
.end method

.method protected abstract onStopOverride()V
.end method

.method public onTombstone()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onDestroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    return-void
.end method

.method protected onUpdateFinished()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateTypesToCheck:Ljava/util/EnumSet;

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateExceptions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public setAsPivotPane()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->showNoNetworkPopup:Z

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onlyProcessExceptionsAndShowToastsWhenActive:Z

    return-void
.end method

.method public setListPosition(II)V
    .locals 0

    iput p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->listIndex:I

    iput p2, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->offset:I

    return-void
.end method

.method protected setParent(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->parent:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    return-void
.end method

.method public setScreenState(I)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->setScreenState(I)V

    :cond_0
    return-void
.end method

.method public setShouldHideScreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->shouldHideScreen:Z

    return-void
.end method

.method protected setUpdateTypesToCheck(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/xbox/service/model/UpdateType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateTypesToCheck:Ljava/util/EnumSet;

    iget-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateExceptions:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method protected shouldDismissTopNoFatalAlert()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldRefreshAsPivotHeader()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected showError(I)V
    .locals 1

    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/DialogManager;->showToast(I)V

    return-void
.end method

.method protected showMustActDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)V
    .locals 0

    return-void
.end method

.method protected showOkCancelDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->showOkCancelDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected showOkCancelDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->shouldProcessErrors()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static/range {p1 .. p6}, Lcom/microsoft/xbox/xle/app/XLEUtil;->showOkCancelDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final update(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/service/model/UpdateData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updating:Z

    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/XLEException;->getErrorCode()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/xbox/toolkit/XLEException;->getIsHandled()Z

    move-result v5

    if-nez v5, :cond_1

    const-wide/16 v5, 0x3ed

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/microsoft/xbox/toolkit/XLEException;->setIsHandled(Z)V

    :cond_1
    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateWithoutAdapter()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateOverride(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    :cond_3
    iput-boolean v2, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updating:Z

    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    if-eqz v3, :cond_7

    :try_start_0
    sget-object p1, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$1;->$SwitchMap$com$microsoft$xbox$xle$viewmodel$ViewModelBase$NavigationType:[I

    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    invoke-virtual {v3}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;->getNavigationType()Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;->ordinal()I

    move-result v3

    aget p1, p1, v3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;->getScreenClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->GotoScreenWithPop(Ljava/lang/Class;)V

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;->getScreenClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->NavigateTo(Ljava/lang/Class;Z)V

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object p1

    iget-object v2, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    invoke-virtual {v2}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;->getScreenClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->NavigateTo(Ljava/lang/Class;Z)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->shouldProcessErrors()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEException;->getIsHandled()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateTypesToCheck:Ljava/util/EnumSet;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/model/UpdateData;

    invoke-virtual {v2}, Lcom/microsoft/xbox/service/model/UpdateData;->getUpdateType()Lcom/microsoft/xbox/service/model/UpdateType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateExceptions:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/model/UpdateData;

    invoke-virtual {v2}, Lcom/microsoft/xbox/service/model/UpdateData;->getUpdateType()Lcom/microsoft/xbox/service/model/UpdateType;

    move-result-object v2

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/UpdateData;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/UpdateData;->getIsFinal()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateTypesToCheck:Ljava/util/EnumSet;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/service/model/UpdateData;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/UpdateData;->getUpdateType()Lcom/microsoft/xbox/service/model/UpdateType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    :cond_9
    iget-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateTypesToCheck:Ljava/util/EnumSet;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onUpdateFinished()V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateTypesToCheck:Ljava/util/EnumSet;

    :catch_0
    :cond_b
    :goto_1
    iput-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    return-void
.end method

.method protected updateAdapter()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateAdapter(Z)V

    return-void
.end method

.method protected updateAdapter(Z)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->updateView()V

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->parent:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onChildViewModelChanged(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V

    :cond_1
    return-void
.end method

.method protected updateOverride(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/service/model/UpdateData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected updateTypesToCheckHadAnyErrors()Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateExceptions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected updateTypesToCheckIsEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateTypesToCheck:Ljava/util/EnumSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected updateWithoutAdapter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
