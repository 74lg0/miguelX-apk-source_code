.class Lcom/utils/GPlayService$15$1;
.super Ljava/lang/Object;
.source "GPlayService.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/GPlayService$15;->onComplete(Lcom/google/android/gms/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/utils/GPlayService$15;


# direct methods
.method constructor <init>(Lcom/utils/GPlayService$15;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 724
    iput-object p1, p0, Lcom/utils/GPlayService$15$1;->this$1:Lcom/utils/GPlayService$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3
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
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
            ">;)V"
        }
    .end annotation

    .line 727
    iget-object v0, p0, Lcom/utils/GPlayService$15$1;->this$1:Lcom/utils/GPlayService$15;

    iget-object v0, v0, Lcom/utils/GPlayService$15;->this$0:Lcom/utils/GPlayService;

    iget-object v1, p0, Lcom/utils/GPlayService$15$1;->this$1:Lcom/utils/GPlayService$15;

    iget v1, v1, Lcom/utils/GPlayService$15;->val$id:I

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/utils/GPlayService;->access$900(Lcom/utils/GPlayService;IZ)V

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cloudSaveData finished success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/GPlayService;->access$000(Ljava/lang/String;)V

    return-void
.end method
