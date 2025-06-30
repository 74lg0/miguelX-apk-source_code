.class Lcom/utils/GPlayService$12;
.super Ljava/lang/Object;
.source "GPlayService.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/GPlayService;->cloudLoadData(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/GPlayService;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/utils/GPlayService;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$id"
        }
    .end annotation

    .line 659
    iput-object p1, p0, Lcom/utils/GPlayService$12;->this$0:Lcom/utils/GPlayService;

    iput p2, p0, Lcom/utils/GPlayService$12;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 5
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
            "[B>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 666
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "snapshotsClient OnCompleteListener success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/utils/GPlayService;->access$000(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 669
    iget-object v2, p0, Lcom/utils/GPlayService$12;->this$0:Lcom/utils/GPlayService;

    iget v3, p0, Lcom/utils/GPlayService$12;->val$id:I

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {v2, v3, v4, p1, v1}, Lcom/utils/GPlayService;->access$800(Lcom/utils/GPlayService;IZ[BI)V

    goto :goto_0

    .line 673
    :cond_0
    iget-object p1, p0, Lcom/utils/GPlayService$12;->this$0:Lcom/utils/GPlayService;

    iget v2, p0, Lcom/utils/GPlayService$12;->val$id:I

    const/16 v3, 0x66

    invoke-static {p1, v2, v1, v0, v3}, Lcom/utils/GPlayService;->access$800(Lcom/utils/GPlayService;IZ[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while getting result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/GPlayService;->access$000(Ljava/lang/String;)V

    .line 677
    iget-object p1, p0, Lcom/utils/GPlayService$12;->this$0:Lcom/utils/GPlayService;

    iget v2, p0, Lcom/utils/GPlayService$12;->val$id:I

    const/16 v3, 0x67

    invoke-static {p1, v2, v1, v0, v3}, Lcom/utils/GPlayService;->access$800(Lcom/utils/GPlayService;IZ[BI)V

    :goto_0
    return-void
.end method
