.class public Lcom/microsoft/xbox/toolkit/XLEUnhandledExceptionHandler;
.super Ljava/lang/Object;
.source "XLEUnhandledExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static Instance:Lcom/microsoft/xbox/toolkit/XLEUnhandledExceptionHandler;


# instance fields
.field private oldExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/toolkit/XLEUnhandledExceptionHandler;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/XLEUnhandledExceptionHandler;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/XLEUnhandledExceptionHandler;->Instance:Lcom/microsoft/xbox/toolkit/XLEUnhandledExceptionHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEUnhandledExceptionHandler;->oldExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method private printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length p2, p1

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p1, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "\t%s\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "CAUSE STACK TRACE"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/microsoft/xbox/toolkit/XLEUnhandledExceptionHandler;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-string v0, "MAIN THREAD STACK TRACE"

    invoke-direct {p0, v0, p2}, Lcom/microsoft/xbox/toolkit/XLEUnhandledExceptionHandler;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEUnhandledExceptionHandler;->oldExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
