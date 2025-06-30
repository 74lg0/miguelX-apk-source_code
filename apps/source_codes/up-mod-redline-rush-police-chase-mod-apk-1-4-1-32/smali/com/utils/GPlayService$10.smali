.class Lcom/utils/GPlayService$10;
.super Ljava/lang/Object;
.source "GPlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/utils/GPlayService;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$id",
            "val$name"
        }
    .end annotation

    .line 595
    iput-object p1, p0, Lcom/utils/GPlayService$10;->this$0:Lcom/utils/GPlayService;

    iput-object p2, p0, Lcom/utils/GPlayService$10;->val$name:Ljava/lang/String;

    iput p3, p0, Lcom/utils/GPlayService$10;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 598
    iget-object v0, p0, Lcom/utils/GPlayService$10;->this$0:Lcom/utils/GPlayService;

    iget-object v1, p0, Lcom/utils/GPlayService$10;->val$name:Ljava/lang/String;

    iget v2, p0, Lcom/utils/GPlayService$10;->val$id:I

    invoke-virtual {v0, v1, v2}, Lcom/utils/GPlayService;->cloudLoadData(Ljava/lang/String;I)V

    return-void
.end method
