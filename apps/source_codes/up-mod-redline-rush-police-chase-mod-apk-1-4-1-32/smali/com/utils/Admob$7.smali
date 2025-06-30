.class Lcom/utils/Admob$7;
.super Ljava/lang/Object;
.source "Admob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/Admob;->callAdFinished()V
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

    .line 427
    iput-object p1, p0, Lcom/utils/Admob$7;->this$0:Lcom/utils/Admob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/utils/Admob$7;->this$0:Lcom/utils/Admob;

    invoke-virtual {v0}, Lcom/utils/Admob;->adFinishedCallback()V

    return-void
.end method
