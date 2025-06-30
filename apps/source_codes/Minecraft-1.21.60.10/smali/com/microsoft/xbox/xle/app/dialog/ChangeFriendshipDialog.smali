.class public Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;
.super Lcom/microsoft/xbox/toolkit/XLEManagedDialog;
.source "ChangeFriendshipDialog.java"


# instance fields
.field private addFavorite:Landroid/widget/RadioButton;

.field private addFriend:Landroid/widget/RadioButton;

.field private cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

.field private changeFriendshipSwitchPanel:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

.field private confirmButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

.field private favoriteIconView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private gamertag:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private overlayLoadingIndicator:Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

.field private previousVM:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

.field private profileAccountTier:Landroid/widget/TextView;

.field private profileGamerScore:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private profilePic:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

.field private realName:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private removeFriendLayout:Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;

.field private shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

.field private vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V
    .locals 1

    sget v0, Lcom/microsoft/xboxtcui/R$style;->TcuiDialog:I

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->previousVM:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    iput-object p2, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->changeFriendshipSwitchPanel:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->dismissSelf()V

    return-void
.end method

.method private dismissSelf()V
    .locals 1

    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->getManager()Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->dismissChangeFriendshipDialog()V

    return-void
.end method

.method private setDialogLoadingView()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->overlayLoadingIndicator:Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateVisibilityIfNotNull(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->confirmButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private setDialogValidContentView()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->overlayLoadingIndicator:Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateVisibilityIfNotNull(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->confirmButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public closeDialog()V
    .locals 2

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->dismissSelf()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->previousVM:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->load(Z)V

    return-void
.end method

.method protected getActivityName()Ljava/lang/String;
    .locals 1

    const-string v0, "ChangeRelationship Info"

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->dismissSelf()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x400

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    sget p1, Lcom/microsoft/xboxtcui/R$layout;->change_friendship_dialog:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->setContentView(I)V

    sget p1, Lcom/microsoft/xboxtcui/R$id;->change_friendship_profile_pic:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->profilePic:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->gamertag_text:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->gamertag:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->realname_text:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->realName:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->peoplehub_info_gamerscore_icon:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->profileAccountTier:Landroid/widget/TextView;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->peoplehub_info_gamerscore:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->profileGamerScore:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->add_as_friend:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFriend:Landroid/widget/RadioButton;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->add_as_favorite:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFavorite:Landroid/widget/RadioButton;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->share_real_name_checkbox:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->submit_button:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->confirmButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->cancel_button:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->change_friendship_switch_panel:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->changeFriendshipSwitchPanel:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->remove_friend_btn_layout:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->removeFriendLayout:Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->people_favorites_icon:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->favoriteIconView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->overlay_loading_indicator:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->overlayLoadingIndicator:Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x5

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    new-instance v2, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v4}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setPadding(IIII)V

    sget v3, Lcom/microsoft/xboxtcui/R$drawable;->common_button_background:I

    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setBackgroundResource(I)V

    sget v3, Lcom/microsoft/xboxtcui/R$string;->ic_Close:I

    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setText(I)V

    invoke-virtual {v2, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setTextColor(I)V

    const/4 v0, 0x2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v0, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setTextSize(IF)V

    const-string v0, "fonts/SegXboxSymbol.ttf"

    invoke-virtual {v2, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setTypeFace(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/microsoft/xboxtcui/R$string;->TextInput_Confirm:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$1;-><init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V

    invoke-virtual {v2, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$2;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$2;-><init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V

    invoke-virtual {v2, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1, v1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->load()V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->updateView()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->changeFriendshipSwitchPanel:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getPreferredColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->getActivityName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipView(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public reportAsyncTaskCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isBusy()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->changeFriendshipSwitchPanel:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->closeDialog()V

    :cond_0
    return-void
.end method

.method public reportAsyncTaskFailed(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->changeFriendshipSwitchPanel:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->changeFriendshipSwitchPanel:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->setState(I)V

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->updateView()V

    return-void
.end method

.method public setVm(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    return-void
.end method

.method public updateShareIdentityCheckboxStatus()V
    .locals 7

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getCallerShareRealNameStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "Blocked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/16 v4, 0x8

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setVisibility(I)V

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getRealName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v4, "Everyone"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v4, v2}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v4, v2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setInitialRealNameSharingState(Z)V

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v4, v3}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setEnabled(Z)V

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/microsoft/xboxtcui/R$string;->ChangeRelationship_Checkbox_Subtext_ShareRealName_Everyone:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setSubText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v4, "PeopleOnMyList"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v4, v2}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v4, v2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setInitialRealNameSharingState(Z)V

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v4, v3}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setEnabled(Z)V

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/microsoft/xboxtcui/R$string;->ChangeRelationship_Checkbox_Subtext_ShareRealName_Friends:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setSubText(Ljava/lang/CharSequence;)V

    :cond_2
    const-string v4, "FriendCategoryShareIdentity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getIsFollowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getCallerMarkedTargetAsIdentityShared()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setInitialRealNameSharingState(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setInitialRealNameSharingState(Z)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setInitialRealNameSharingState(Z)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setShouldAddUserToShareIdentityList(Z)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setInitialRealNameSharingState(Z)V

    :goto_1
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->ChangeRelationship_Checkbox_Subtext_ShareRealName:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getGamerTag()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v1, v0}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setSubText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setEnabled(Z)V

    :cond_6
    return-void
.end method

.method public updateView()V
    .locals 4

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getViewModelState()Lcom/microsoft/xbox/toolkit/network/ListState;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/network/ListState;->ValidContentState:Lcom/microsoft/xbox/toolkit/network/ListState;

    if-ne v0, v1, :cond_d

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->setDialogValidContentView()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->gamertag:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getGamerTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateAndShowTextViewUnlessEmpty(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->profilePic:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getGamerPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getMedium(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    sget v2, Lcom/microsoft/xboxtcui/R$drawable;->gamerpic_missing:I

    sget v3, Lcom/microsoft/xboxtcui/R$drawable;->gamerpic_missing:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->setImageURI2(Ljava/net/URI;II)V

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->realName:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getRealName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateAndShowTextViewUnlessEmpty(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->favoriteIconView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getIsFavorite()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    :goto_0
    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateVisibilityIfNotNull(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getIsFavorite()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->favoriteIconView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/microsoft/xboxtcui/R$color;->XboxGreen:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setTextColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getGamerScore()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->profileGamerScore:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getGamerScore()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateAndShowTextViewUnlessEmpty(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->profileAccountTier:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateVisibilityIfNotNull(Landroid/view/View;I)V

    :cond_3
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFriend:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getIsFollowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFriend:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setShouldAddUserToFriendList(Z)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFriend:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_1
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFriend:Landroid/widget/RadioButton;

    new-instance v3, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$3;

    invoke-direct {v3, p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$3;-><init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFavorite:Landroid/widget/RadioButton;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getIsFavorite()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFavorite:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_6
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->addFavorite:Landroid/widget/RadioButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$4;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$4;-><init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->confirmButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    if-eqz v0, :cond_8

    new-instance v1, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$5;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$5;-><init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    if-eqz v0, :cond_9

    new-instance v1, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$6;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$6;-><init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getCallerMarkedTargetAsIdentityShared()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->shareRealNameCheckbox:Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;

    new-instance v1, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$7;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$7;-><init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLECheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->updateShareIdentityCheckboxStatus()V

    :cond_a
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->removeFriendLayout:Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getIsFollowing()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->removeFriendLayout:Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->removeFriendLayout:Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;

    new-instance v1, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$8;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$8;-><init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->removeFriendLayout:Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->removeFriendLayout:Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEClickableLayout;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->confirmButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getDialogButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->updateShareIdentityCheckboxStatus()V

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->vm:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getViewModelState()Lcom/microsoft/xbox/toolkit/network/ListState;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/network/ListState;->LoadingState:Lcom/microsoft/xbox/toolkit/network/ListState;

    if-ne v0, v1, :cond_e

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->setDialogLoadingView()V

    :cond_e
    :goto_3
    return-void
.end method
