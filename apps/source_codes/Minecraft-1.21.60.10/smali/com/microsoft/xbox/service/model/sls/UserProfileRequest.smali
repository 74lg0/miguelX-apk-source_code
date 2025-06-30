.class public Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;
.super Ljava/lang/Object;
.source "UserProfileRequest.java"


# instance fields
.field public settings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public userIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->userIds:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->setDefaultProfileSettingsRequest(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;-><init>(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->userIds:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->userIds:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->setDefaultProfileSettingsRequest(Z)V

    return-void
.end method

.method public static getUserProfileRequestBody(Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/GsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setDefaultProfileSettingsRequest(Z)V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->GameDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AppDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AppDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Gamerscore:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Gamertag:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->GameDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AccountTier:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->TenureLevel:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->XboxOneRep:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->PreferredColor:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Location:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Bio:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Watermarks:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/microsoft/xbox/service/model/sls/UserProfileRequest;->settings:Ljava/util/ArrayList;

    sget-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->RealName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
