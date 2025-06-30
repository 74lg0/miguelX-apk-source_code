.class public Lcom/utils/HttpGet;
.super Ljava/lang/Object;
.source "HttpGet.java"


# static fields
.field private static _instance:Lcom/utils/HttpGet;


# instance fields
.field private mIsDebugMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/utils/HttpGet;->mIsDebugMode:Z

    return-void
.end method

.method private _log(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 116
    iget-boolean v0, p0, Lcom/utils/HttpGet;->mIsDebugMode:Z

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpGet - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "game"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/utils/HttpGet;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/utils/HttpGet;->_log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/utils/HttpGet;I[B)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/utils/HttpGet;->onFileDownloadedCb(I[B)V

    return-void
.end method

.method public static getInstance()Lcom/utils/HttpGet;
    .locals 1

    .line 25
    sget-object v0, Lcom/utils/HttpGet;->_instance:Lcom/utils/HttpGet;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/utils/HttpGet;

    invoke-direct {v0}, Lcom/utils/HttpGet;-><init>()V

    sput-object v0, Lcom/utils/HttpGet;->_instance:Lcom/utils/HttpGet;

    .line 28
    :cond_0
    sget-object v0, Lcom/utils/HttpGet;->_instance:Lcom/utils/HttpGet;

    return-object v0
.end method

.method private onFileDownloadedCb(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "data"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFileDownloadedCb id= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  size= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/utils/HttpGet;->_log(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getActivity()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getActivity()Lorg/cocos2dx/lib/Cocos2dxActivity;

    move-result-object v0

    new-instance v1, Lcom/utils/HttpGet$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/utils/HttpGet$2;-><init>(Lcom/utils/HttpGet;I[B)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public download(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "link"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " link = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/utils/HttpGet;->_log(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/utils/HttpGet;->onFileDownloadedCb(I[B)V

    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/utils/HttpGet$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/utils/HttpGet$1;-><init>(Lcom/utils/HttpGet;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public native onFileDownloadFinished(I[B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "data"
        }
    .end annotation
.end method
