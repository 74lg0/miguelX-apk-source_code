.class public Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;
.super Ljava/lang/Object;
.source "XLEGlobalData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData$XLEGlobalDataHolder;
    }
.end annotation


# static fields
.field private static final MAX_SEARCH_TEXT_LENGTH:I = 0x78


# instance fields
.field private autoLoginStarted:Z

.field private defaultScreenClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/xle/app/activity/ActivityBase;",
            ">;"
        }
    .end annotation
.end field

.field private errorCodeForLogin:J

.field private forceRefreshProfile:Z

.field private forceRefreshVMs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;",
            ">;>;"
        }
    .end annotation
.end field

.field private friendListUpdated:Z

.field private hideCollectionFilter:Z

.field private isLoggedIn:Z

.field private isOffline:Z

.field private launchTitleIsBrowser:Z

.field private pivotTitle:Ljava/lang/String;

.field private searchFilterSetterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;",
            ">;"
        }
    .end annotation
.end field

.field private searchTag:Ljava/lang/String;

.field private selectedAchievementKey:Ljava/lang/String;

.field private selectedDataSource:Ljava/lang/String;

.field private selectedGamertag:Ljava/lang/String;

.field private selectedImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field

.field private selectedRecipients:Lcom/microsoft/xbox/toolkit/MultiSelection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/xbox/toolkit/MultiSelection<",
            "Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;",
            ">;"
        }
    .end annotation
.end field

.field private selectedXuid:Ljava/lang/String;

.field private showLoginError:Z

.field private titleId:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->isOffline:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->friendListUpdated:Z

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->launchTitleIsBrowser:Z

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->hideCollectionFilter:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData$XLEGlobalDataHolder;->instance:Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;

    return-object v0
.end method


# virtual methods
.method public AddForceRefresh(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsUIThread()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->forceRefreshVMs:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->forceRefreshVMs:Ljava/util/HashSet;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->forceRefreshVMs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public CheckDrainShouldRefresh(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->forceRefreshVMs:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAutoLoginStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->autoLoginStarted:Z

    return v0
.end method

.method public getDefaultScreenClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/xle/app/activity/ActivityBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->defaultScreenClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getForceRefreshProfile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->forceRefreshProfile:Z

    return v0
.end method

.method public getFriendListUpdated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->friendListUpdated:Z

    return v0
.end method

.method public getHideCollectionFilter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->hideCollectionFilter:Z

    return v0
.end method

.method public getIsLoggedIn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->isLoggedIn:Z

    return v0
.end method

.method public getIsOffline()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->isOffline:Z

    return v0
.end method

.method public getIsOnline()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->isOffline:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getLastLoginError()J
    .locals 4

    iget-wide v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->errorCodeForLogin:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->errorCodeForLogin:J

    return-wide v0
.end method

.method public getLaunchTitleIsBrowser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->launchTitleIsBrowser:Z

    return v0
.end method

.method public getPivotTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->pivotTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchFilterSetterClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->searchFilterSetterClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getSearchTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->searchTag:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedAchievementKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->selectedAchievementKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedDataSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->selectedDataSource:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedGamertag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->selectedGamertag:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedImages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->selectedImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedRecipients()Lcom/microsoft/xbox/toolkit/MultiSelection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/microsoft/xbox/toolkit/MultiSelection<",
            "Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->selectedRecipients:Lcom/microsoft/xbox/toolkit/MultiSelection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/microsoft/xbox/toolkit/MultiSelection;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/MultiSelection;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->selectedRecipients:Lcom/microsoft/xbox/toolkit/MultiSelection;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->selectedRecipients:Lcom/microsoft/xbox/toolkit/MultiSelection;

    return-object v0
.end method

.method public getSelectedTitleId()J
    .locals 2

    iget-wide v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->titleId:J

    return-wide v0
.end method

.method public getSelectedXuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->selectedXuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getXuidString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->selectedXuid:Ljava/lang/String;

    return-object v0
.end method

.method public getShowLoginError()Z
    .locals 2

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->showLoginError:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->showLoginError:Z

    return v0
.end method

.method public resetGlobalParameters()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->selectedGamertag:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->selectedAchievementKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->selectedDataSource:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->isLoggedIn:Z

    iput-boolean v1, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->showLoginError:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->isOffline:Z

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->searchTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->selectedImages:Ljava/util/ArrayList;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->titleId:J

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->forceRefreshVMs:Ljava/util/HashSet;

    return-void
.end method

.method public setAutoLoginStarted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->autoLoginStarted:Z

    return-void
.end method

.method public setDefaultScreenClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/xle/app/activity/ActivityBase;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->defaultScreenClass:Ljava/lang/Class;

    return-void
.end method

.method public setForceRefreshProfile(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->forceRefreshProfile:Z

    return-void
.end method

.method public setFriendListUpdated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->friendListUpdated:Z

    return-void
.end method

.method public setHideCollectionFilter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->hideCollectionFilter:Z

    return-void
.end method

.method public setIsOffline(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->isOffline:Z

    return-void
.end method

.method public setLaunchTitleIsBrowser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->launchTitleIsBrowser:Z

    return-void
.end method

.method public setLoggedIn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->isLoggedIn:Z

    return-void
.end method

.method public setLoginErrorCode(J)V
    .locals 0

    iput-wide p1, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->errorCodeForLogin:J

    return-void
.end method

.method public setPivotTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->pivotTitle:Ljava/lang/String;

    return-void
.end method

.method public setSearchTag(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x78

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->searchTag:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->searchTag:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setSelectedAchievementKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->selectedAchievementKey:Ljava/lang/String;

    return-void
.end method

.method public setSelectedDataSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->selectedDataSource:Ljava/lang/String;

    return-void
.end method

.method public setSelectedGamertag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->selectedGamertag:Ljava/lang/String;

    return-void
.end method

.method public setSelectedImages(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/net/URI;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->selectedImages:Ljava/util/ArrayList;

    return-void
.end method

.method public setSelectedTitleId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->titleId:J

    return-void
.end method

.method public setSelectedXuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->selectedXuid:Ljava/lang/String;

    return-void
.end method

.method public setShowLoginError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->showLoginError:Z

    return-void
.end method
