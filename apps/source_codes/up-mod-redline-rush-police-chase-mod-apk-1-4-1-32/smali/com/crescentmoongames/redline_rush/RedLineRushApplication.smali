.class public Lcom/crescentmoongames/redline_rush/RedLineRushApplication;
.super Landroid/app/Application;
.source "RedLineRushApplication.java"


# instance fields
.field private androidDefaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private handler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 11
    new-instance v0, Lcom/crescentmoongames/redline_rush/RedLineRushApplication$1;

    invoke-direct {v0, p0}, Lcom/crescentmoongames/redline_rush/RedLineRushApplication$1;-><init>(Lcom/crescentmoongames/redline_rush/RedLineRushApplication;)V

    iput-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRushApplication;->handler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/crescentmoongames/redline_rush/RedLineRushApplication;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/crescentmoongames/redline_rush/RedLineRushApplication;->androidDefaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 25
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 28
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRushApplication;->androidDefaultUEH:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 29
    iget-object v0, p0, Lcom/crescentmoongames/redline_rush/RedLineRushApplication;->handler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .line 40
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method
