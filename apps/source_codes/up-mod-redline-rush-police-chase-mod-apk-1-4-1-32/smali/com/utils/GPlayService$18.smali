.class Lcom/utils/GPlayService$18;
.super Ljava/lang/Object;
.source "GPlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/GPlayService;->callOnCloudDataSavedCallback(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/GPlayService;

.field final synthetic val$id:I

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/utils/GPlayService;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$success",
            "val$id"
        }
    .end annotation

    .line 750
    iput-object p1, p0, Lcom/utils/GPlayService$18;->this$0:Lcom/utils/GPlayService;

    iput p2, p0, Lcom/utils/GPlayService$18;->val$id:I

    iput-boolean p3, p0, Lcom/utils/GPlayService$18;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 753
    iget v0, p0, Lcom/utils/GPlayService$18;->val$id:I

    iget-boolean v1, p0, Lcom/utils/GPlayService$18;->val$success:Z

    invoke-static {v0, v1}, Lcom/utils/GPlayService;->access$1100(IZ)V

    return-void
.end method
