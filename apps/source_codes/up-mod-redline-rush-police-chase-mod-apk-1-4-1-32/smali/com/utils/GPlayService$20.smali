.class Lcom/utils/GPlayService$20;
.super Ljava/lang/Object;
.source "GPlayService.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/GPlayService;->continueWithLeaderboardCurrentPlayerScore(Ljava/lang/String;IILjava/util/Vector;)V
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
        "Lcom/google/android/gms/games/leaderboard/LeaderboardScore;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/GPlayService;

.field final synthetic val$collection:I

.field final synthetic val$entries:Ljava/util/Vector;

.field final synthetic val$leaderboardId:Ljava/lang/String;

.field final synthetic val$span:I


# direct methods
.method constructor <init>(Lcom/utils/GPlayService;Ljava/util/Vector;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$collection",
            "val$span",
            "val$leaderboardId",
            "val$entries"
        }
    .end annotation

    .line 886
    iput-object p1, p0, Lcom/utils/GPlayService$20;->this$0:Lcom/utils/GPlayService;

    iput-object p2, p0, Lcom/utils/GPlayService$20;->val$entries:Ljava/util/Vector;

    iput-object p3, p0, Lcom/utils/GPlayService$20;->val$leaderboardId:Ljava/lang/String;

    iput p4, p0, Lcom/utils/GPlayService$20;->val$span:I

    iput p5, p0, Lcom/utils/GPlayService$20;->val$collection:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 8
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
            "Lcom/google/android/gms/games/leaderboard/LeaderboardScore;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 891
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

    .line 892
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 894
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/AnnotatedData;

    invoke-virtual {p1}, Lcom/google/android/gms/games/AnnotatedData;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    .line 896
    iget-object v1, p0, Lcom/utils/GPlayService$20;->this$0:Lcom/utils/GPlayService;

    invoke-virtual {v1, p1}, Lcom/utils/GPlayService;->parseScore(Lcom/google/android/gms/games/leaderboard/LeaderboardScore;)Lcom/utils/GPLeaderboardEntry;

    move-result-object v7

    .line 897
    iget p1, v7, Lcom/utils/GPLeaderboardEntry;->mRank:I

    if-lez p1, :cond_0

    .line 899
    iget-object p1, p0, Lcom/utils/GPlayService$20;->val$entries:Ljava/util/Vector;

    invoke-virtual {p1, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 900
    iget-object p1, p0, Lcom/utils/GPlayService$20;->this$0:Lcom/utils/GPlayService;

    iget-object v1, p0, Lcom/utils/GPlayService$20;->val$leaderboardId:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/utils/GPlayService$20;->val$entries:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/utils/GPlayService;->access$1400(Lcom/utils/GPlayService;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 904
    :cond_0
    iget-object v2, p0, Lcom/utils/GPlayService$20;->this$0:Lcom/utils/GPlayService;

    iget-object v3, p0, Lcom/utils/GPlayService$20;->val$leaderboardId:Ljava/lang/String;

    iget v4, p0, Lcom/utils/GPlayService$20;->val$span:I

    iget v5, p0, Lcom/utils/GPlayService$20;->val$collection:I

    iget-object v6, p0, Lcom/utils/GPlayService$20;->val$entries:Ljava/util/Vector;

    invoke-static/range {v2 .. v7}, Lcom/utils/GPlayService;->access$1500(Lcom/utils/GPlayService;Ljava/lang/String;IILjava/util/Vector;Lcom/utils/GPLeaderboardEntry;)V

    goto :goto_0

    .line 909
    :cond_1
    iget-object p1, p0, Lcom/utils/GPlayService$20;->this$0:Lcom/utils/GPlayService;

    iget-object v1, p0, Lcom/utils/GPlayService$20;->val$leaderboardId:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-static {p1, v1, v2, v0}, Lcom/utils/GPlayService;->access$1400(Lcom/utils/GPlayService;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 914
    iget-object v1, p0, Lcom/utils/GPlayService$20;->this$0:Lcom/utils/GPlayService;

    iget-object v2, p0, Lcom/utils/GPlayService$20;->val$leaderboardId:Ljava/lang/String;

    const/16 v3, 0xc

    invoke-static {v1, v2, v3, v0}, Lcom/utils/GPlayService;->access$1400(Lcom/utils/GPlayService;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadCurrentPlayerLeaderboardScore - excp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/GPlayService;->access$000(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
