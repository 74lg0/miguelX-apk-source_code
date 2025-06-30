.class Lcom/utils/GPlayService$17;
.super Ljava/lang/Object;
.source "GPlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/GPlayService;->callOnCloudDataLoadedCallback(IZ[BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/GPlayService;

.field final synthetic val$data:[B

.field final synthetic val$errorCode:I

.field final synthetic val$id:I

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/utils/GPlayService;IZ[BI)V
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
            "val$errorCode",
            "val$data",
            "val$success",
            "val$id"
        }
    .end annotation

    .line 741
    iput-object p1, p0, Lcom/utils/GPlayService$17;->this$0:Lcom/utils/GPlayService;

    iput p2, p0, Lcom/utils/GPlayService$17;->val$id:I

    iput-boolean p3, p0, Lcom/utils/GPlayService$17;->val$success:Z

    iput-object p4, p0, Lcom/utils/GPlayService$17;->val$data:[B

    iput p5, p0, Lcom/utils/GPlayService$17;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 744
    iget v0, p0, Lcom/utils/GPlayService$17;->val$id:I

    iget-boolean v1, p0, Lcom/utils/GPlayService$17;->val$success:Z

    iget-object v2, p0, Lcom/utils/GPlayService$17;->val$data:[B

    iget v3, p0, Lcom/utils/GPlayService$17;->val$errorCode:I

    invoke-static {v0, v1, v2, v3}, Lcom/utils/GPlayService;->access$1000(IZ[BI)V

    return-void
.end method
