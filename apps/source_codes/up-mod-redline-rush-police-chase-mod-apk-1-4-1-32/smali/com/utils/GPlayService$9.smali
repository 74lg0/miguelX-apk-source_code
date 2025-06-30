.class Lcom/utils/GPlayService$9;
.super Ljava/lang/Object;
.source "GPlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/GPlayService;->onSignInSucceeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 543
    iput-object p1, p0, Lcom/utils/GPlayService$9;->this$0:Lcom/utils/GPlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 549
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/utils/GPlayService;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/utils/GPlayService$9;->this$0:Lcom/utils/GPlayService;

    new-instance v1, Lcom/utils/GPlayService$9$1;

    invoke-direct {v1, p0}, Lcom/utils/GPlayService$9$1;-><init>(Lcom/utils/GPlayService$9;)V

    invoke-virtual {v0, v1}, Lcom/utils/GPlayService;->runOnGLThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0xfa

    .line 558
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :goto_1
    return-void
.end method
