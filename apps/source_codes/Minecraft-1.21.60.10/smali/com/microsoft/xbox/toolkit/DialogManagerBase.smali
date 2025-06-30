.class public abstract Lcom/microsoft/xbox/toolkit/DialogManagerBase;
.super Ljava/lang/Object;
.source "DialogManagerBase.java"

# interfaces
.implements Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;


# instance fields
.field private blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

.field private cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

.field private dialogStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private isEnabled:Z

.field private visibleToast:Landroid/widget/Toast;


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/toolkit/DialogManagerBase;)Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    return-object p0
.end method

.method static synthetic access$002(Lcom/microsoft/xbox/toolkit/DialogManagerBase;Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;)Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    return-object p1
.end method

.method private buildDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;
    .locals 2

    new-instance v0, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/microsoft/xbox/toolkit/DialogManagerBase$2;

    invoke-direct {p1, p0, p4}, Lcom/microsoft/xbox/toolkit/DialogManagerBase$2;-><init>(Lcom/microsoft/xbox/toolkit/DialogManagerBase;Ljava/lang/Runnable;)V

    const/4 p2, -0x1

    invoke-virtual {v0, p2, p3, p1}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/microsoft/xbox/toolkit/DialogManagerBase$3;

    invoke-direct {p1, p0, v0, p6}, Lcom/microsoft/xbox/toolkit/DialogManagerBase$3;-><init>(Lcom/microsoft/xbox/toolkit/DialogManagerBase;Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;Ljava/lang/Runnable;)V

    new-instance p2, Lcom/microsoft/xbox/toolkit/DialogManagerBase$4;

    invoke-direct {p2, p0, p1}, Lcom/microsoft/xbox/toolkit/DialogManagerBase$4;-><init>(Lcom/microsoft/xbox/toolkit/DialogManagerBase;Ljava/lang/Runnable;)V

    const/4 p3, -0x2

    invoke-virtual {v0, p3, p5, p2}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setCancelable(Z)V

    new-instance p2, Lcom/microsoft/xbox/toolkit/DialogManagerBase$5;

    invoke-direct {p2, p0, p1}, Lcom/microsoft/xbox/toolkit/DialogManagerBase$5;-><init>(Lcom/microsoft/xbox/toolkit/DialogManagerBase;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p2}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setCancelable(Z)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public addManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public dismissBlocking()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;->dismiss()V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->dismiss()V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    :cond_1
    return-void
.end method

.method public dismissManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismissToast()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->visibleToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->visibleToast:Landroid/widget/Toast;

    :cond_0
    return-void
.end method

.method public dismissTopNonFatalAlert()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;->getDialogType()Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;->FATAL:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public forceDismissAlerts()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;->quickDismiss()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public forceDismissAll()V
    .locals 0

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dismissToast()V

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->forceDismissAlerts()V

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dismissBlocking()V

    return-void
.end method

.method public getIsBlocking()Z
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVisibleDialog()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDialogStopped(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBlocking(ZLjava/lang/String;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    if-nez p1, :cond_1

    new-instance p1, Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    :cond_1
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;->dismiss()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->blockingSpinner:Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;

    :cond_3
    :goto_1
    return-void
.end method

.method public setCancelableBlocking(ZLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    if-nez p1, :cond_1

    new-instance p1, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    new-instance v0, Lcom/microsoft/xbox/toolkit/DialogManagerBase$1;

    invoke-direct {v0, p0, p3}, Lcom/microsoft/xbox/toolkit/DialogManagerBase$1;-><init>(Lcom/microsoft/xbox/toolkit/DialogManagerBase;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->setCancelButtonAction(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->dismiss()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->cancelableBlockingDialog:Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    :cond_3
    :goto_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    :cond_0
    return-void
.end method

.method protected shouldDismissAllBeforeOpeningADialog()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showFatalAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->forceDismissAll()V

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->buildDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;

    move-result-object p1

    sget-object p2, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;->FATAL:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setDialogType(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;)V

    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public showManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V
    .locals 2

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->shouldDismissAllBeforeOpeningADialog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->forceDismissAll()V

    :cond_0
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-interface {p1}, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Adding window failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public showNonFatalAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->buildDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;

    move-result-object p1

    sget-object p2, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;->NON_FATAL:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setDialogType(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;)V

    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public showOkCancelDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "You must supply cancel text if this is not a must-act dialog."

    invoke-static {v0, p5}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct/range {p0 .. p6}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->buildDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;

    move-result-object p1

    sget-object p2, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;->NORMAL:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->setDialogType(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;)V

    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dialogStack:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/XLEManagedAlertDialog;->show()V

    :cond_1
    return-void
.end method

.method public showToast(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->dismissToast()V

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->isEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->visibleToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
