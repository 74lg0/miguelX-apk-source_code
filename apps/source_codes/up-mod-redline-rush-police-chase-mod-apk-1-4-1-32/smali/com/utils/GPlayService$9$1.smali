.class Lcom/utils/GPlayService$9$1;
.super Ljava/lang/Object;
.source "GPlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/GPlayService$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/utils/GPlayService$9;


# direct methods
.method constructor <init>(Lcom/utils/GPlayService$9;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 551
    iput-object p1, p0, Lcom/utils/GPlayService$9$1;->this$1:Lcom/utils/GPlayService$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/utils/GPlayService$9$1;->this$1:Lcom/utils/GPlayService$9;

    iget-object v0, v0, Lcom/utils/GPlayService$9;->this$0:Lcom/utils/GPlayService;

    invoke-virtual {v0}, Lcom/utils/GPlayService;->onSignedInCallback()V

    return-void
.end method
