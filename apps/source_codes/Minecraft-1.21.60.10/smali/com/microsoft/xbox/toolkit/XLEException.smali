.class public Lcom/microsoft/xbox/toolkit/XLEException;
.super Ljava/lang/Exception;
.source "XLEException.java"


# instance fields
.field private errorCode:J

.field private isHandled:Z

.field private userObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(J)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p3, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-wide p1, p0, Lcom/microsoft/xbox/toolkit/XLEException;->errorCode:J

    iput-object p5, p0, Lcom/microsoft/xbox/toolkit/XLEException;->userObject:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/XLEException;->isHandled:Z

    return-void
.end method

.method public constructor <init>(JLjava/lang/Throwable;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getErrorCode()J
    .locals 2

    iget-wide v0, p0, Lcom/microsoft/xbox/toolkit/XLEException;->errorCode:J

    return-wide v0
.end method

.method public getIsHandled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEException;->isHandled:Z

    return v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEException;->userObject:Ljava/lang/Object;

    return-object v0
.end method

.method public setIsHandled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/XLEException;->isHandled:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/microsoft/xbox/toolkit/XLEException;->errorCode:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEException;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "XLEException ErrorCode: %d; ErrorMessage: %s \n\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\t Cause ErrorMessage: %s, StackTrace: "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\n\n \t "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
