.class Lcom/utils/GPlayService$14;
.super Ljava/lang/Object;
.source "GPlayService.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/GPlayService;->cloudLoadData(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 640
    iput-object p1, p0, Lcom/utils/GPlayService$14;->this$0:Lcom/utils/GPlayService;

    iput p2, p0, Lcom/utils/GPlayService$14;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while opening Snapshot."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/GPlayService;->access$000(Ljava/lang/String;)V

    .line 644
    iget-object p1, p0, Lcom/utils/GPlayService$14;->this$0:Lcom/utils/GPlayService;

    iget v0, p0, Lcom/utils/GPlayService$14;->val$id:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x65

    invoke-static {p1, v0, v1, v2, v3}, Lcom/utils/GPlayService;->access$800(Lcom/utils/GPlayService;IZ[BI)V

    return-void
.end method
