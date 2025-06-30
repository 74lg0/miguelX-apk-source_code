.class Lcom/utils/GPlayService$23;
.super Ljava/lang/Object;
.source "GPlayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/GPlayService;->callOnGetLeaderboardDataCallback(Ljava/lang/String;I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/GPlayService;

.field final synthetic val$entries:[Ljava/lang/Object;

.field final synthetic val$errorCode:I

.field final synthetic val$leaderboardID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/utils/GPlayService;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$entries",
            "val$errorCode",
            "val$leaderboardID"
        }
    .end annotation

    .line 1060
    iput-object p1, p0, Lcom/utils/GPlayService$23;->this$0:Lcom/utils/GPlayService;

    iput-object p2, p0, Lcom/utils/GPlayService$23;->val$leaderboardID:Ljava/lang/String;

    iput p3, p0, Lcom/utils/GPlayService$23;->val$errorCode:I

    iput-object p4, p0, Lcom/utils/GPlayService$23;->val$entries:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1063
    iget-object v0, p0, Lcom/utils/GPlayService$23;->val$leaderboardID:Ljava/lang/String;

    iget v1, p0, Lcom/utils/GPlayService$23;->val$errorCode:I

    iget-object v2, p0, Lcom/utils/GPlayService$23;->val$entries:[Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/utils/GPlayService;->access$1600(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method
