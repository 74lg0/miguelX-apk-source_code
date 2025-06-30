.class Lcom/crescentmoongames/redline_rush/RedLineRushApplication$1;
.super Ljava/lang/Object;
.source "RedLineRushApplication.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crescentmoongames/redline_rush/RedLineRushApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crescentmoongames/redline_rush/RedLineRushApplication;


# direct methods
.method constructor <init>(Lcom/crescentmoongames/redline_rush/RedLineRushApplication;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/crescentmoongames/redline_rush/RedLineRushApplication$1;->this$0:Lcom/crescentmoongames/redline_rush/RedLineRushApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "thread",
            "ex"
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fingerprint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/StackTraceElement;

    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/Error;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 19
    iget-object p2, p0, Lcom/crescentmoongames/redline_rush/RedLineRushApplication$1;->this$0:Lcom/crescentmoongames/redline_rush/RedLineRushApplication;

    invoke-static {p2}, Lcom/crescentmoongames/redline_rush/RedLineRushApplication;->access$000(Lcom/crescentmoongames/redline_rush/RedLineRushApplication;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p2

    invoke-interface {p2, p1, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
