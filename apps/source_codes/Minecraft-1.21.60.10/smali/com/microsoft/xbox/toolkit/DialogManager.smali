.class public Lcom/microsoft/xbox/toolkit/DialogManager;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;


# static fields
.field private static instance:Lcom/microsoft/xbox/toolkit/DialogManager;


# instance fields
.field private manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/toolkit/DialogManager;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/DialogManager;->instance:Lcom/microsoft/xbox/toolkit/DialogManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkProvider()V
    .locals 0

    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/toolkit/DialogManager;->instance:Lcom/microsoft/xbox/toolkit/DialogManager;

    return-object v0
.end method


# virtual methods
.method public addManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->addManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V

    :cond_0
    return-void
.end method

.method public dismissBlocking()V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->dismissBlocking()V

    :cond_0
    return-void
.end method

.method public dismissManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->dismissManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V

    :cond_0
    return-void
.end method

.method public dismissToast()V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->dismissToast()V

    :cond_0
    return-void
.end method

.method public dismissTopNonFatalAlert()V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->dismissTopNonFatalAlert()V

    :cond_0
    return-void
.end method

.method public forceDismissAlerts()V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->forceDismissAlerts()V

    :cond_0
    return-void
.end method

.method public forceDismissAll()V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->forceDismissAll()V

    :cond_0
    return-void
.end method

.method public getIsBlocking()Z
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->getIsBlocking()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getManager()Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    return-object v0
.end method

.method public getVisibleDialog()Landroid/app/Dialog;
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onApplicationPause()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->onApplicationPause()V

    :cond_0
    return-void
.end method

.method public onApplicationResume()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->onApplicationResume()V

    :cond_0
    return-void
.end method

.method public onDialogStopped(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->onDialogStopped(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V

    :cond_0
    return-void
.end method

.method public setBlocking(ZLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->setBlocking(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCancelableBlocking(ZLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->setCancelableBlocking(ZLjava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setManager(Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    return-void
.end method

.method public showFatalAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->showFatalAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public showManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->showManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V

    :cond_0
    return-void
.end method

.method public showNonFatalAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->showNonFatalAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public showOkCancelDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->showOkCancelDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public showToast(I)V
    .locals 1

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->checkProvider()V

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/DialogManager;->manager:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;->showToast(I)V

    :cond_0
    return-void
.end method
