.class public Lcom/microsoft/xbox/service/model/FollowersData;
.super Ljava/lang/Object;
.source "FollowersData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/service/model/FollowersData$DummyType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5d301434c32a65e1L


# instance fields
.field private followerText:Ljava/lang/String;

.field public isCurrentlyPlaying:Z

.field protected isDummy:Z

.field public isFavorite:Z

.field public transient isNew:Z

.field protected itemDummyType:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

.field private lastPlayedWithDateTime:Ljava/util/Date;

.field private personSummary:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

.field public presenceString:Ljava/lang/String;

.field private recentPlayerText:Ljava/lang/String;

.field private searchResultPerson:Lcom/microsoft/xbox/service/model/SearchResultPerson;

.field public status:Lcom/microsoft/xbox/service/model/UserStatus;

.field private timeStamp:Ljava/util/Date;

.field public titleId:J

.field public userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

.field public xuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->personSummary:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isCurrentlyPlaying:Z

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isDummy:Z

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isNew:Z

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/service/model/FollowersData;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->personSummary:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isCurrentlyPlaying:Z

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isDummy:Z

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isNew:Z

    iget-object v0, p1, Lcom/microsoft/xbox/service/model/FollowersData;->xuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->xuid:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/microsoft/xbox/service/model/FollowersData;->isFavorite:Z

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isFavorite:Z

    iget-object v0, p1, Lcom/microsoft/xbox/service/model/FollowersData;->status:Lcom/microsoft/xbox/service/model/UserStatus;

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->status:Lcom/microsoft/xbox/service/model/UserStatus;

    iget-object v0, p1, Lcom/microsoft/xbox/service/model/FollowersData;->presenceString:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->presenceString:Ljava/lang/String;

    iget-wide v0, p1, Lcom/microsoft/xbox/service/model/FollowersData;->titleId:J

    iput-wide v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->titleId:J

    iget-object v0, p1, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    iget-boolean v0, p1, Lcom/microsoft/xbox/service/model/FollowersData;->isCurrentlyPlaying:Z

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isCurrentlyPlaying:Z

    iget-object v0, p1, Lcom/microsoft/xbox/service/model/FollowersData;->timeStamp:Ljava/util/Date;

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->timeStamp:Ljava/util/Date;

    iget-boolean p1, p1, Lcom/microsoft/xbox/service/model/FollowersData;->isDummy:Z

    iput-boolean p1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isDummy:Z

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->personSummary:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isCurrentlyPlaying:Z

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isDummy:Z

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isNew:Z

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->personSummary:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    iget-object v1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->xuid:Ljava/lang/String;

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->xuid:Ljava/lang/String;

    new-instance v1, Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-direct {v1, p1}, Lcom/microsoft/xbox/service/model/UserProfileData;-><init>(Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;)V

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    iget-boolean v1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->isFavorite:Z

    iput-boolean v1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isFavorite:Z

    iget-object v1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->presenceState:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/xbox/service/model/UserStatus;->getStatusFromString(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/UserStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->status:Lcom/microsoft/xbox/service/model/UserStatus;

    iget-object v1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->presenceText:Ljava/lang/String;

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->presenceString:Ljava/lang/String;

    iget-object v1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->titleHistory:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitleHistory;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->titleHistory:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitleHistory;

    iget-wide v1, v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitleHistory;->TitleId:J

    iput-wide v1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->titleId:J

    iget-object v1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->titleHistory:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitleHistory;

    iget-object v1, v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitleHistory;->LastTimePlayed:Ljava/util/Date;

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->timeStamp:Ljava/util/Date;

    :cond_0
    iget-object v1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recentPlayer:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecentPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recentPlayer:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecentPlayer;

    iget-object v1, v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecentPlayer;->text:Ljava/lang/String;

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->recentPlayerText:Ljava/lang/String;

    iget-object v1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recentPlayer:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecentPlayer;

    iget-object v1, v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecentPlayer;->titles:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->isNullOrEmpty(Ljava/lang/Iterable;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->recentPlayer:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecentPlayer;

    iget-object v1, v1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$RecentPlayer;->titles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$Title;

    iget-object v0, v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$Title;->lastPlayedWithDateTime:Ljava/util/Date;

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->lastPlayedWithDateTime:Ljava/util/Date;

    :cond_1
    iget-object v0, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->follower:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$Follower;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->follower:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$Follower;

    iget-object v0, v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$Follower;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->followerText:Ljava/lang/String;

    :cond_2
    iget-object v0, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->titlePresence:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitlePresence;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->titlePresence:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitlePresence;

    iget-boolean v0, v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitlePresence;->IsCurrentlyPlaying:Z

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isCurrentlyPlaying:Z

    iget-object p1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;->titlePresence:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitlePresence;

    iget-object p1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubTitlePresence;->PresenceText:Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->presenceString:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->NOT_SET:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/service/model/FollowersData;-><init>(ZLcom/microsoft/xbox/service/model/FollowersData$DummyType;)V

    return-void
.end method

.method public constructor <init>(ZLcom/microsoft/xbox/service/model/FollowersData$DummyType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->personSummary:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isCurrentlyPlaying:Z

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isNew:Z

    iput-boolean p1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isDummy:Z

    iput-object p2, p0, Lcom/microsoft/xbox/service/model/FollowersData;->itemDummyType:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    return-void
.end method


# virtual methods
.method public getFollowersTitleText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->followerText:Ljava/lang/String;

    return-object v0
.end method

.method public getGameScore()I
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerScore:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getGamerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->appDisplayName:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getGamerPicUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->profileImageUrl:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGamerRealName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerRealName:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getGamertag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerTag:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getIsDummy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isDummy:Z

    return v0
.end method

.method public getIsOnline()Z
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->status:Lcom/microsoft/xbox/service/model/UserStatus;

    sget-object v1, Lcom/microsoft/xbox/service/model/UserStatus;->Online:Lcom/microsoft/xbox/service/model/UserStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemDummyType()Lcom/microsoft/xbox/service/model/FollowersData$DummyType;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->itemDummyType:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    return-object v0
.end method

.method public getLastPlayedWithDateTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->lastPlayedWithDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getPersonSummary()Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->personSummary:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    return-object v0
.end method

.method public getRecentPlayerTitleText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->recentPlayerText:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchResultPerson()Lcom/microsoft/xbox/service/model/SearchResultPerson;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->searchResultPerson:Lcom/microsoft/xbox/service/model/SearchResultPerson;

    return-object v0
.end method

.method public getTimeStamp()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->timeStamp:Ljava/util/Date;

    return-object v0
.end method

.method public setItemDummyType(Lcom/microsoft/xbox/service/model/FollowersData$DummyType;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/FollowersData;->isDummy:Z

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->itemDummyType:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    return-void
.end method

.method public setSearchResultPerson(Lcom/microsoft/xbox/service/model/SearchResultPerson;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->searchResultPerson:Lcom/microsoft/xbox/service/model/SearchResultPerson;

    return-void
.end method

.method public setTimeStamp(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/FollowersData;->timeStamp:Ljava/util/Date;

    return-void
.end method
