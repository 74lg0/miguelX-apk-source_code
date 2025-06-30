.class Lcom/utils/GPlayService$21;
.super Ljava/lang/Object;
.source "GPlayService.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/GPlayService;->continueWithLeaderboardCurrentPlayerScoreFallback(Ljava/lang/String;IILjava/util/Vector;Lcom/utils/GPLeaderboardEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/gms/games/AnnotatedData<",
        "Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/GPlayService;

.field final synthetic val$entries:Ljava/util/Vector;

.field final synthetic val$leaderboardId:Ljava/lang/String;

.field final synthetic val$localPlayerEntry:Lcom/utils/GPLeaderboardEntry;


# direct methods
.method constructor <init>(Lcom/utils/GPlayService;Lcom/utils/GPLeaderboardEntry;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$leaderboardId",
            "val$entries",
            "val$localPlayerEntry"
        }
    .end annotation

    .line 934
    iput-object p1, p0, Lcom/utils/GPlayService$21;->this$0:Lcom/utils/GPlayService;

    iput-object p2, p0, Lcom/utils/GPlayService$21;->val$localPlayerEntry:Lcom/utils/GPLeaderboardEntry;

    iput-object p3, p0, Lcom/utils/GPlayService$21;->val$entries:Ljava/util/Vector;

    iput-object p4, p0, Lcom/utils/GPlayService$21;->val$leaderboardId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 939
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "continueWithLeaderboardCurrentPlayerScore success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/GPlayService;->access$000(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 942
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {p1}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;

    .line 943
    invoke-virtual {p1}, Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;->getScores()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->getCount()I

    move-result v1

    .line 944
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadPlayerCenteredScores count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/GPlayService;->access$000(Ljava/lang/String;)V

    .line 948
    iget-object v1, p0, Lcom/utils/GPlayService$21;->this$0:Lcom/utils/GPlayService;

    invoke-virtual {v1}, Lcom/utils/GPlayService;->getLoggedInPlayerID()Ljava/lang/String;

    move-result-object v1

    .line 950
    invoke-virtual {p1}, Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;->getScores()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    .line 952
    iget-object v4, p0, Lcom/utils/GPlayService$21;->this$0:Lcom/utils/GPlayService;

    invoke-virtual {v4, v3}, Lcom/utils/GPlayService;->parseScore(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)Lcom/utils/GPLeaderboardEntry;

    move-result-object v3

    .line 954
    iget-object v4, v3, Lcom/utils/GPLeaderboardEntry;->mPlayerID:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p1, "found score for current player"

    .line 956
    invoke-static {p1}, Lcom/utils/GPlayService;->access$000(Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 960
    iget v4, v3, Lcom/utils/GPLeaderboardEntry;->mScore:I

    iget-object v5, p0, Lcom/utils/GPlayService$21;->val$localPlayerEntry:Lcom/utils/GPLeaderboardEntry;

    iget v5, v5, Lcom/utils/GPLeaderboardEntry;->mScore:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, v2, Lcom/utils/GPLeaderboardEntry;->mScore:I

    iget-object v6, p0, Lcom/utils/GPlayService$21;->val$localPlayerEntry:Lcom/utils/GPLeaderboardEntry;

    iget v6, v6, Lcom/utils/GPLeaderboardEntry;->mScore:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_0

    :cond_2
    move-object v2, v3

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 968
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "settings rank from nearest entry. rank:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v2, Lcom/utils/GPLeaderboardEntry;->mRank:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/GPlayService;->access$000(Ljava/lang/String;)V

    .line 969
    iget-object p1, p0, Lcom/utils/GPlayService$21;->val$localPlayerEntry:Lcom/utils/GPLeaderboardEntry;

    iget v1, v2, Lcom/utils/GPLeaderboardEntry;->mRank:I

    iput v1, p1, Lcom/utils/GPLeaderboardEntry;->mRank:I

    .line 970
    iget-object p1, p0, Lcom/utils/GPlayService$21;->val$entries:Ljava/util/Vector;

    iget-object v1, p0, Lcom/utils/GPlayService$21;->val$localPlayerEntry:Lcom/utils/GPLeaderboardEntry;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 971
    iget-object p1, p0, Lcom/utils/GPlayService$21;->this$0:Lcom/utils/GPlayService;

    iget-object v1, p0, Lcom/utils/GPlayService$21;->val$leaderboardId:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/utils/GPlayService$21;->val$entries:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/utils/GPlayService;->access$1400(Lcom/utils/GPlayService;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_2

    .line 974
    :cond_4
    iget-object p1, p0, Lcom/utils/GPlayService$21;->this$0:Lcom/utils/GPlayService;

    iget-object v1, p0, Lcom/utils/GPlayService$21;->val$leaderboardId:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-static {p1, v1, v2, v0}, Lcom/utils/GPlayService;->access$1400(Lcom/utils/GPlayService;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_2

    .line 978
    :cond_5
    iget-object p1, p0, Lcom/utils/GPlayService$21;->this$0:Lcom/utils/GPlayService;

    iget-object v1, p0, Lcom/utils/GPlayService$21;->val$leaderboardId:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-static {p1, v1, v2, v0}, Lcom/utils/GPlayService;->access$1400(Lcom/utils/GPlayService;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 983
    iget-object v1, p0, Lcom/utils/GPlayService$21;->this$0:Lcom/utils/GPlayService;

    iget-object v2, p0, Lcom/utils/GPlayService$21;->val$leaderboardId:Ljava/lang/String;

    const/16 v3, 0xd

    invoke-static {v1, v2, v3, v0}, Lcom/utils/GPlayService;->access$1400(Lcom/utils/GPlayService;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadPlayerCenteredScores - excp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/GPlayService;->access$000(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
