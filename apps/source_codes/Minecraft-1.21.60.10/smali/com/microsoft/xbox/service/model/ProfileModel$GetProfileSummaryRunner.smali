.class Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileSummaryRunner;
.super Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;
.source "ProfileModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/ProfileModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetProfileSummaryRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<",
        "Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;",
        ">;"
    }
.end annotation


# instance fields
.field private caller:Lcom/microsoft/xbox/service/model/ProfileModel;

.field final synthetic this$0:Lcom/microsoft/xbox/service/model/ProfileModel;

.field private xuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileSummaryRunner;->this$0:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;-><init>()V

    iput-object p2, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileSummaryRunner;->caller:Lcom/microsoft/xbox/service/model/ProfileModel;

    iput-object p3, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileSummaryRunner;->xuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public buildData()Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileSummaryRunner;->xuid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->getProfileSummaryInfo(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileSummaryRunner;->buildData()Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultErrorCode()J
    .locals 2

    const-wide/16 v0, 0xbba

    return-wide v0
.end method

.method public onPostExcute(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileSummaryRunner;->caller:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-static {v0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->access$900(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    return-void
.end method
