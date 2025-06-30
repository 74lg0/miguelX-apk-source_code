.class public Lcom/microsoft/xbox/xle/model/SystemSettingsModel;
.super Lcom/microsoft/xbox/service/model/ModelBase;
.source "SystemSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetSmartglassSettingsRunner;,
        Lcom/microsoft/xbox/xle/model/SystemSettingsModel$SystemSettingsModelContainer;,
        Lcom/microsoft/xbox/xle/model/SystemSettingsModel$OnUpdateExistListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/service/model/ModelBase<",
        "Lcom/microsoft/xbox/service/model/serialization/Version;",
        ">;"
    }
.end annotation


# instance fields
.field private final hiddenMruItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private latestVersion:I

.field private marketUrl:Ljava/lang/String;

.field private minRequiredOSVersion:I

.field private minVersion:I

.field private remoteControlSpecialTitleIds:[I

.field private smartglassSettings:Lcom/microsoft/xbox/xle/app/SmartglassSettings;

.field private final smartglassSettingsLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private updateExistListener:Lcom/microsoft/xbox/xle/model/SystemSettingsModel$OnUpdateExistListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/service/model/ModelBase;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->minRequiredOSVersion:I

    iput v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->minVersion:I

    iput v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->latestVersion:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->hiddenMruItems:Ljava/util/HashSet;

    new-instance v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->smartglassSettingsLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/xle/model/SystemSettingsModel$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/xle/model/SystemSettingsModel;Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->onGetSmartglassSettingsCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/xle/model/SystemSettingsModel;
    .locals 1

    invoke-static {}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$SystemSettingsModelContainer;->access$000()Lcom/microsoft/xbox/xle/model/SystemSettingsModel;

    move-result-object v0

    return-object v0
.end method

.method private getMinimumVersion()I
    .locals 1

    iget v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->minVersion:I

    return v0
.end method

.method private onGetSmartglassSettingsCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/xle/app/SmartglassSettings;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/xle/app/SmartglassSettings;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->smartglassSettings:Lcom/microsoft/xbox/xle/app/SmartglassSettings;

    if-eqz p1, :cond_2

    iget p1, p1, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->ANDROID_VERSIONMINOS:I

    iput p1, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->minRequiredOSVersion:I

    iget-object p1, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->smartglassSettings:Lcom/microsoft/xbox/xle/app/SmartglassSettings;

    iget p1, p1, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->ANDROID_VERSIONMIN:I

    iput p1, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->minVersion:I

    iget-object p1, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->smartglassSettings:Lcom/microsoft/xbox/xle/app/SmartglassSettings;

    iget p1, p1, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->ANDROID_VERSIONLATEST:I

    iput p1, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->latestVersion:I

    iget-object p1, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->smartglassSettings:Lcom/microsoft/xbox/xle/app/SmartglassSettings;

    iget-object p1, p1, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->ANDROID_VERSIONURL:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->marketUrl:Ljava/lang/String;

    iget-object p1, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->smartglassSettings:Lcom/microsoft/xbox/xle/app/SmartglassSettings;

    iget-object p1, p1, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->HIDDEN_MRU_ITEMS:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->populateHiddenMruItems(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->smartglassSettings:Lcom/microsoft/xbox/xle/app/SmartglassSettings;

    iget-object p1, p1, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->REMOTE_CONTROL_SPECIALS:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->populateRemoteControlSpecialTitleIds(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->updateExistListener:Lcom/microsoft/xbox/xle/model/SystemSettingsModel$OnUpdateExistListener;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getVersionCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->getMustUpdate(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->updateExistListener:Lcom/microsoft/xbox/xle/model/SystemSettingsModel$OnUpdateExistListener;

    invoke-interface {p1}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$OnUpdateExistListener;->onMustUpdate()V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getVersionCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->getHasUpdate(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->updateExistListener:Lcom/microsoft/xbox/xle/model/SystemSettingsModel$OnUpdateExistListener;

    invoke-interface {p1}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$OnUpdateExistListener;->onOptionalUpdate()V

    :cond_2
    :goto_1
    return-void
.end method

.method private populateHiddenMruItems(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->hiddenMruItems:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    if-eqz p1, :cond_0

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->hiddenMruItems:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private populateRemoteControlSpecialTitleIds(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_0

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->remoteControlSpecialTitleIds:[I

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p1, v2

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v4, v1

    :goto_1
    iget-object v5, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->remoteControlSpecialTitleIds:[I

    add-int/lit8 v6, v3, 0x1

    aput v4, v5, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getHasUpdate(I)Z
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->minRequiredOSVersion:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->getLatestVersion()I

    move-result v0

    if-le v0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method

.method public getLatestVersion()I
    .locals 1

    iget v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->latestVersion:I

    return v0
.end method

.method public getMarketUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->marketUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMustUpdate(I)Z
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->minRequiredOSVersion:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->getMinimumVersion()I

    move-result v0

    if-le v0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method

.method public getRemoteControlSpecialTitleIds()[I
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->remoteControlSpecialTitleIds:[I

    return-object v0
.end method

.method public isInHiddenMruItems(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->hiddenMruItems:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public loadAsync(Z)V
    .locals 7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    iget-wide v2, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->lifetime:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->smartglassSettingsLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetSmartglassSettingsRunner;

    invoke-direct {v6, p0, p0}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetSmartglassSettingsRunner;-><init>(Lcom/microsoft/xbox/xle/model/SystemSettingsModel;Lcom/microsoft/xbox/xle/model/SystemSettingsModel;)V

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->StartLoadFromUI(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;

    return-void
.end method

.method public loadSystemSettings(Z)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/xle/app/SmartglassSettings;",
            ">;"
        }
    .end annotation

    iget-wide v1, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->lifetime:J

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->smartglassSettingsLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v5, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetSmartglassSettingsRunner;

    invoke-direct {v5, p0, p0}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetSmartglassSettingsRunner;-><init>(Lcom/microsoft/xbox/xle/model/SystemSettingsModel;Lcom/microsoft/xbox/xle/model/SystemSettingsModel;)V

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method public setOnUpdateExistListener(Lcom/microsoft/xbox/xle/model/SystemSettingsModel$OnUpdateExistListener;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->updateExistListener:Lcom/microsoft/xbox/xle/model/SystemSettingsModel$OnUpdateExistListener;

    return-void
.end method
