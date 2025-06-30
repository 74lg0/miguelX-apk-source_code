.class public Lcom/microsoft/xbox/service/model/RecommendationsPeopleData;
.super Lcom/microsoft/xbox/service/model/FollowersData;
.source "RecommendationsPeopleData.java"


# instance fields
.field private recommendationInfo:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/service/model/FollowersData;-><init>(Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;)V

    iget-object v0, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recommendation:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recommendation:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/RecommendationsPeopleData;->recommendationInfo:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    return-void
.end method

.method public constructor <init>(ZLcom/microsoft/xbox/service/model/FollowersData$DummyType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/service/model/FollowersData;-><init>(ZLcom/microsoft/xbox/service/model/FollowersData$DummyType;)V

    return-void
.end method


# virtual methods
.method public getIsFacebookFriend()Z
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/RecommendationsPeopleData;->recommendationInfo:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;->getRecommendationType()Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;->FacebookFriend:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRecommendationFirstReason()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/RecommendationsPeopleData;->recommendationInfo:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    iget-object v0, v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;->Reasons:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/XLEUtil;->isNullOrEmpty(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/RecommendationsPeopleData;->recommendationInfo:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    iget-object v0, v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;->Reasons:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getRecommendationType()Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/RecommendationsPeopleData;->recommendationInfo:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubRecommendation;->getRecommendationType()Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecommendationType;

    move-result-object v0

    return-object v0
.end method
