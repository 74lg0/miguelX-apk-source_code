.class Lcom/utils/Admob$8;
.super Ljava/lang/Object;
.source "Admob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/Admob;->callRewardEarned()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/Admob;


# direct methods
.method constructor <init>(Lcom/utils/Admob;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 438
    iput-object p1, p0, Lcom/utils/Admob$8;->this$0:Lcom/utils/Admob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/utils/Admob$8;->this$0:Lcom/utils/Admob;

    invoke-virtual {v0}, Lcom/utils/Admob;->rewardEarnedCallback()V

    return-void
.end method
