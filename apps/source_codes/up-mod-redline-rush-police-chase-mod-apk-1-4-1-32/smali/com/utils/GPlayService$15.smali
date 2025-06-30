.class Lcom/utils/GPlayService$15;
.super Ljava/lang/Object;
.source "GPlayService.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/GPlayService;->cloudSaveData(Ljava/lang/String;Ljava/lang/String;I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<",
        "Lcom/google/android/gms/games/snapshot/Snapshot;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/GPlayService;

.field final synthetic val$data:[B

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$id:I

.field final synthetic val$snapshotsClient:Lcom/google/android/gms/games/SnapshotsClient;


# direct methods
.method constructor <init>(Lcom/utils/GPlayService;[BLjava/lang/String;Lcom/google/android/gms/games/SnapshotsClient;I)V
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
            "val$id",
            "val$snapshotsClient",
            "val$description",
            "val$data"
        }
    .end annotation

    .line 707
    iput-object p1, p0, Lcom/utils/GPlayService$15;->this$0:Lcom/utils/GPlayService;

    iput-object p2, p0, Lcom/utils/GPlayService$15;->val$data:[B

    iput-object p3, p0, Lcom/utils/GPlayService$15;->val$description:Ljava/lang/String;

    iput-object p4, p0, Lcom/utils/GPlayService$15;->val$snapshotsClient:Lcom/google/android/gms/games/SnapshotsClient;

    iput p5, p0, Lcom/utils/GPlayService$15;->val$id:I

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
            "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ">;>;)V"
        }
    .end annotation

    .line 711
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;

    invoke-virtual {p1}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/snapshot/Snapshot;

    .line 714
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshot;->getSnapshotContents()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v0

    iget-object v1, p0, Lcom/utils/GPlayService$15;->val$data:[B

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->writeBytes([B)Z

    const-string v0, "cloudSaveData writeBytes"

    .line 716
    invoke-static {v0}, Lcom/utils/GPlayService;->access$000(Ljava/lang/String;)V

    .line 718
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;-><init>()V

    iget-object v1, p0, Lcom/utils/GPlayService$15;->val$description:Ljava/lang/String;

    .line 719
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;

    move-result-object v0

    .line 720
    invoke-virtual {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->build()Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    move-result-object v0

    .line 724
    iget-object v1, p0, Lcom/utils/GPlayService$15;->val$snapshotsClient:Lcom/google/android/gms/games/SnapshotsClient;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/games/SnapshotsClient;->commitAndClose(Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/utils/GPlayService$15$1;

    invoke-direct {v0, p0}, Lcom/utils/GPlayService$15$1;-><init>(Lcom/utils/GPlayService$15;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while getting result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/GPlayService;->access$000(Ljava/lang/String;)V

    .line 733
    iget-object p1, p0, Lcom/utils/GPlayService$15;->this$0:Lcom/utils/GPlayService;

    iget v0, p0, Lcom/utils/GPlayService$15;->val$id:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/utils/GPlayService;->access$900(Lcom/utils/GPlayService;IZ)V

    :goto_0
    return-void
.end method
