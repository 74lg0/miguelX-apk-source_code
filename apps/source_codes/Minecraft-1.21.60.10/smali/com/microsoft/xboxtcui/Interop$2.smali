.class Lcom/microsoft/xboxtcui/Interop$2;
.super Ljava/lang/Object;
.source "Interop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xboxtcui/Interop;->ShowProfileCardUI(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activityToUse:Landroid/app/Activity;

.field final synthetic val$params:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xboxtcui/Interop$2;->val$activityToUse:Landroid/app/Activity;

    iput-object p2, p0, Lcom/microsoft/xboxtcui/Interop$2;->val$params:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;

    iget-object v1, p0, Lcom/microsoft/xboxtcui/Interop$2;->val$activityToUse:Landroid/app/Activity;

    const-class v2, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreen;

    iget-object v3, p0, Lcom/microsoft/xboxtcui/Interop$2;->val$params:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;-><init>(Landroid/app/Activity;Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    invoke-static {}, Lcom/microsoft/xboxtcui/Interop;->access$100()Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->setDetachedCallback(Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog$DetachedCallback;)V

    invoke-virtual {v0}, Lcom/microsoft/xboxtcui/XboxTcuiWindowDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/microsoft/xboxtcui/Interop;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/microsoft/xboxtcui/Interop;->access$000(I)V

    :goto_0
    return-void
.end method
