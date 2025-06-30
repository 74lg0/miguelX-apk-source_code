.class Lcom/utils/GPlayService$8;
.super Ljava/lang/Object;
.source "GPlayService.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/GPlayService;->onSignInSucceeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/gms/games/Player;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/GPlayService;


# direct methods
.method constructor <init>(Lcom/utils/GPlayService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 503
    iput-object p1, p0, Lcom/utils/GPlayService$8;->this$0:Lcom/utils/GPlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
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
            "Lcom/google/android/gms/games/Player;",
            ">;)V"
        }
    .end annotation

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentPlayer() onComplete success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/utils/GPlayService;->access$000(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 508
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/Player;

    .line 509
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/utils/GPlayService$8;->this$0:Lcom/utils/GPlayService;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/utils/GPlayService;->access$502(Lcom/utils/GPlayService;Ljava/lang/String;)Ljava/lang/String;

    .line 511
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/utils/GPlayService$8;->this$0:Lcom/utils/GPlayService;

    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/utils/GPlayService;->access$602(Lcom/utils/GPlayService;Ljava/lang/String;)Ljava/lang/String;

    .line 513
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Player Name: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/utils/GPlayService$8;->this$0:Lcom/utils/GPlayService;

    invoke-static {v0}, Lcom/utils/GPlayService;->access$500(Lcom/utils/GPlayService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/GPlayService;->access$000(Ljava/lang/String;)V

    .line 514
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Player Id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/utils/GPlayService$8;->this$0:Lcom/utils/GPlayService;

    invoke-static {v0}, Lcom/utils/GPlayService;->access$600(Lcom/utils/GPlayService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/GPlayService;->access$000(Ljava/lang/String;)V

    .line 515
    iget-object p1, p0, Lcom/utils/GPlayService$8;->this$0:Lcom/utils/GPlayService;

    invoke-static {p1}, Lcom/utils/GPlayService;->access$200(Lcom/utils/GPlayService;)V

    goto :goto_0

    .line 519
    :cond_2
    iget-object p1, p0, Lcom/utils/GPlayService$8;->this$0:Lcom/utils/GPlayService;

    invoke-static {p1}, Lcom/utils/GPlayService;->access$400(Lcom/utils/GPlayService;)V

    .line 521
    iget-object p1, p0, Lcom/utils/GPlayService$8;->this$0:Lcom/utils/GPlayService;

    iget-object p1, p1, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_GAMES_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    .line 522
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/utils/GPlayService$8;->this$0:Lcom/utils/GPlayService;

    iget-object v0, v0, Lcom/utils/GPlayService;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/utils/GPlayService$8$1;

    invoke-direct {v1, p0}, Lcom/utils/GPlayService$8$1;-><init>(Lcom/utils/GPlayService$8;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :goto_0
    return-void
.end method
