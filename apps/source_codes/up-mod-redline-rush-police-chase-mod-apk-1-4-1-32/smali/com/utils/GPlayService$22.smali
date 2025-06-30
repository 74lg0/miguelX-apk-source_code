.class Lcom/utils/GPlayService$22;
.super Ljava/lang/Object;
.source "GPlayService.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/GPlayService;->continueWithLeaderboardMoreScores(Ljava/lang/String;IILcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;IZ)V
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

.field final synthetic val$addLocalPlayer:Z

.field final synthetic val$collection:I

.field final synthetic val$count:I

.field final synthetic val$leaderboardId:Ljava/lang/String;

.field final synthetic val$span:I


# direct methods
.method constructor <init>(Lcom/utils/GPlayService;ILjava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$addLocalPlayer",
            "val$collection",
            "val$span",
            "val$leaderboardId",
            "val$count"
        }
    .end annotation

    .line 1005
    iput-object p1, p0, Lcom/utils/GPlayService$22;->this$0:Lcom/utils/GPlayService;

    iput p2, p0, Lcom/utils/GPlayService$22;->val$count:I

    iput-object p3, p0, Lcom/utils/GPlayService$22;->val$leaderboardId:Ljava/lang/String;

    iput p4, p0, Lcom/utils/GPlayService$22;->val$span:I

    iput p5, p0, Lcom/utils/GPlayService$22;->val$collection:I

    iput-boolean p6, p0, Lcom/utils/GPlayService$22;->val$addLocalPlayer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 10
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

    .line 1010
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMoreScores success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/utils/GPlayService;->access$000(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1013
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {p1}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;

    .line 1014
    invoke-virtual {p1}, Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;->getScores()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->getCount()I

    move-result v1

    .line 1015
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadMoreScores count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/GPlayService;->access$000(Ljava/lang/String;)V

    .line 1017
    iget v2, p0, Lcom/utils/GPlayService$22;->val$count:I

    sub-int v8, v2, v1

    if-lez v8, :cond_0

    const/16 v2, 0x19

    if-ne v1, v2, :cond_0

    .line 1020
    iget-object v3, p0, Lcom/utils/GPlayService$22;->this$0:Lcom/utils/GPlayService;

    iget-object v4, p0, Lcom/utils/GPlayService$22;->val$leaderboardId:Ljava/lang/String;

    iget v5, p0, Lcom/utils/GPlayService$22;->val$span:I

    iget v6, p0, Lcom/utils/GPlayService$22;->val$collection:I

    invoke-virtual {p1}, Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;->getScores()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    move-result-object v7

    iget-boolean v9, p0, Lcom/utils/GPlayService$22;->val$addLocalPlayer:Z

    invoke-static/range {v3 .. v9}, Lcom/utils/GPlayService;->access$1200(Lcom/utils/GPlayService;Ljava/lang/String;IILcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;IZ)V

    goto :goto_1

    .line 1024
    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1025
    invoke-virtual {p1}, Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;->getScores()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    .line 1027
    iget-object v4, p0, Lcom/utils/GPlayService$22;->this$0:Lcom/utils/GPlayService;

    invoke-virtual {v4, v3}, Lcom/utils/GPlayService;->parseScore(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)Lcom/utils/GPLeaderboardEntry;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1030
    :cond_1
    iget-boolean v2, p0, Lcom/utils/GPlayService$22;->val$addLocalPlayer:Z

    if-eqz v2, :cond_2

    .line 1031
    iget-object v2, p0, Lcom/utils/GPlayService$22;->this$0:Lcom/utils/GPlayService;

    iget-object v3, p0, Lcom/utils/GPlayService$22;->val$leaderboardId:Ljava/lang/String;

    iget v4, p0, Lcom/utils/GPlayService$22;->val$span:I

    iget v5, p0, Lcom/utils/GPlayService$22;->val$collection:I

    invoke-static {v2, v3, v4, v5, v1}, Lcom/utils/GPlayService;->access$1300(Lcom/utils/GPlayService;Ljava/lang/String;IILjava/util/Vector;)V

    goto :goto_1

    .line 1033
    :cond_2
    iget-object v2, p0, Lcom/utils/GPlayService$22;->this$0:Lcom/utils/GPlayService;

    iget-object v3, p0, Lcom/utils/GPlayService$22;->val$leaderboardId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lcom/utils/GPlayService;->access$1400(Lcom/utils/GPlayService;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1035
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;->release()V

    goto :goto_2

    .line 1039
    :cond_3
    iget-object p1, p0, Lcom/utils/GPlayService$22;->this$0:Lcom/utils/GPlayService;

    iget-object v1, p0, Lcom/utils/GPlayService$22;->val$leaderboardId:Ljava/lang/String;

    const/16 v2, 0x15

    invoke-static {p1, v1, v2, v0}, Lcom/utils/GPlayService;->access$1400(Lcom/utils/GPlayService;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1044
    iget-object v1, p0, Lcom/utils/GPlayService$22;->this$0:Lcom/utils/GPlayService;

    iget-object v2, p0, Lcom/utils/GPlayService$22;->val$leaderboardId:Ljava/lang/String;

    const/16 v3, 0x16

    invoke-static {v1, v2, v3, v0}, Lcom/utils/GPlayService;->access$1400(Lcom/utils/GPlayService;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadMoreScores - excp: "

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
