.class public Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;
.super Ljava/lang/Object;
.source "ProjectSpecificDataProvider.java"

# interfaces
.implements Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;


# static fields
.field private static instance:Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;


# instance fields
.field private provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->instance:Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkProvider()V
    .locals 0

    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->instance:Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    return-object v0
.end method


# virtual methods
.method public getAllowExplicitContent()Z
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getAllowExplicitContent()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoSuggestdDataSource()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getAutoSuggestdDataSource()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCombinedContentRating()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getCombinedContentRating()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectedLocale()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getConnectedLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectedLocale(Z)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getConnectedLocale(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContentRestrictions()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getContentRestrictions()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentSandboxID()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getCurrentSandboxID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInitializeComplete()Z
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getInitializeComplete()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIsForXboxOne()Z
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getIsForXboxOne()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIsFreeAccount()Z
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getIsFreeAccount()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getIsXboxMusicSupported()Z
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getIsXboxMusicSupported()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLegalLocale()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getLegalLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMembershipLevel()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getMembershipLevel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrivileges()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getPrivileges()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSCDRpsTicket()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getSCDRpsTicket()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersionCheckUrl()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getVersionCheckUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getVersionCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWindowsLiveClientId()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getWindowsLiveClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getXuidString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getXuidString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDeviceLocaleKnown()Z
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->isDeviceLocaleKnown()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public resetModels(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->resetModels(Z)V

    :cond_0
    return-void
.end method

.method public setPrivileges(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->setPrivileges(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setProvider(Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    return-void
.end method

.method public setSCDRpsTicket(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->setSCDRpsTicket(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setXuidString(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->setXuidString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
