.class Lcom/utils/HttpGet$2;
.super Ljava/lang/Object;
.source "HttpGet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/HttpGet;->onFileDownloadedCb(I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/HttpGet;

.field final synthetic val$_data:[B

.field final synthetic val$_id:I


# direct methods
.method constructor <init>(Lcom/utils/HttpGet;I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$_data",
            "val$_id"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/utils/HttpGet$2;->this$0:Lcom/utils/HttpGet;

    iput p2, p0, Lcom/utils/HttpGet$2;->val$_id:I

    iput-object p3, p0, Lcom/utils/HttpGet$2;->val$_data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/utils/HttpGet$2;->this$0:Lcom/utils/HttpGet;

    iget v1, p0, Lcom/utils/HttpGet$2;->val$_id:I

    iget-object v2, p0, Lcom/utils/HttpGet$2;->val$_data:[B

    invoke-virtual {v0, v1, v2}, Lcom/utils/HttpGet;->onFileDownloadFinished(I[B)V

    return-void
.end method
