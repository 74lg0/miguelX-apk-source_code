.class public Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;
.super Lcom/microsoft/xbox/toolkit/DialogManagerBase;
.source "SGProjectSpecificDialogManager.java"


# static fields
.field private static instance:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;


# instance fields
.field private changeFriendshipDialog:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;

    invoke-direct {v0}, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->instance:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->instance:Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    return-object v0
.end method

.method public static getProjectSpecificInstance()Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;
    .locals 1

    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->getManager()Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;

    return-object v0
.end method


# virtual methods
.method public dismissChangeFriendshipDialog()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->changeFriendshipDialog:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->dismissManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->changeFriendshipDialog:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    :cond_0
    return-void
.end method

.method public forceDismissAll()V
    .locals 0

    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->forceDismissAll()V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->dismissChangeFriendshipDialog()V

    return-void
.end method

.method public notifyChangeFriendshipDialogAsyncTaskCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->changeFriendshipDialog:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->reportAsyncTaskCompleted()V

    :cond_0
    return-void
.end method

.method public notifyChangeFriendshipDialogAsyncTaskFailed(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->changeFriendshipDialog:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->reportAsyncTaskFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notifyChangeFriendshipDialogUpdateView()V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->changeFriendshipDialog:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->updateView()V

    :cond_0
    return-void
.end method

.method public onApplicationPause()V
    .locals 0

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->forceDismissAll()V

    return-void
.end method

.method public onApplicationResume()V
    .locals 0

    return-void
.end method

.method protected shouldDismissAllBeforeOpeningADialog()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showChangeFriendshipDialog(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->changeFriendshipDialog:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->setVm(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->changeFriendshipDialog:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->changeFriendshipDialog:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->addManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V

    :goto_0
    return-void
.end method
