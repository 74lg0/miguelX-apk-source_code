.class Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUsersFromShareIdentityListRunner;
.super Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;
.source "ProfileModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/ProfileModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveUsersFromShareIdentityListRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private caller:Lcom/microsoft/xbox/service/model/ProfileModel;

.field final synthetic this$0:Lcom/microsoft/xbox/service/model/ProfileModel;

.field private userIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/service/model/ProfileModel;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUsersFromShareIdentityListRunner;->this$0:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;-><init>()V

    iput-object p2, p0, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUsersFromShareIdentityListRunner;->caller:Lcom/microsoft/xbox/service/model/ProfileModel;

    iput-object p3, p0, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUsersFromShareIdentityListRunner;->userIds:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public buildData()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    new-instance v0, Lcom/microsoft/xbox/service/model/sls/AddShareIdentityRequest;

    iget-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUsersFromShareIdentityListRunner;->userIds:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/service/model/sls/AddShareIdentityRequest;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0}, Lcom/microsoft/xbox/service/model/sls/AddShareIdentityRequest;->getAddShareIdentityRequestBody(Lcom/microsoft/xbox/service/model/sls/AddShareIdentityRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUsersFromShareIdentityListRunner;->caller:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-static {v2}, Lcom/microsoft/xbox/service/model/ProfileModel;->access$300(Lcom/microsoft/xbox/service/model/ProfileModel;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->removeFriendFromShareIdentitySetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

    invoke-virtual {p0}, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUsersFromShareIdentityListRunner;->buildData()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultErrorCode()J
    .locals 2

    const-wide/32 v0, 0x9c6a

    return-wide v0
.end method

.method public onPostExcute(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUsersFromShareIdentityListRunner;->caller:Lcom/microsoft/xbox/service/model/ProfileModel;

    iget-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUsersFromShareIdentityListRunner;->userIds:Ljava/util/ArrayList;

    invoke-static {v0, p1, v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->access$400(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    return-void
.end method
