.class public Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;
.super Ljava/lang/Object;
.source "NvAPKFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/devtech/NvAPKFileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NvAPKFile"
.end annotation


# instance fields
.field public bufferSize:I

.field public data:[B

.field public is:Ljava/io/InputStream;

.field public length:I

.field public position:I

.field final synthetic this$0:Lcom/nvidia/devtech/NvAPKFileHelper;


# direct methods
.method public constructor <init>(Lcom/nvidia/devtech/NvAPKFileHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/nvidia/devtech/NvAPKFileHelper$NvAPKFile;->this$0:Lcom/nvidia/devtech/NvAPKFileHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
