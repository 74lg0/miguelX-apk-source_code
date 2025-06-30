.class public Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;
.super Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;
.source "ProfileScreenAdapter.java"


# instance fields
.field private blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

.field private contentScrollView:Landroid/widget/ScrollView;

.field private followButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

.field private gamerPicImageView:Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;

.field private gamerscoreIconTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private gamerscoreTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private gamertagTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private loadingProgressBar:Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

.field private muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

.field private realNameTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private reportButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

.field private rootView:Lcom/microsoft/xbox/xle/ui/XLERootView;

.field private viewInXboxAppButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

.field private viewInXboxAppSubTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->profile_root:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/xle/ui/XLERootView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->rootView:Lcom/microsoft/xbox/xle/ui/XLERootView;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->profile_gamerpic:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamerPicImageView:Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->profile_screen_loading:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->loadingProgressBar:Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->profile_screen_content_list:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->contentScrollView:Landroid/widget/ScrollView;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->profile_realname:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->realNameTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->profile_gamerscore_icon:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamerscoreIconTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->profile_gamerscore:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamerscoreTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->profile_gamertag:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamertagTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->profile_follow:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->followButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->profile_mute:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->profile_block:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->profile_report:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->reportButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->profile_view_in_xbox_app:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    sget p1, Lcom/microsoft/xboxtcui/R$id;->profile_view_in_xbox_app_subtext:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppSubTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {p1, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isMeProfile()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->followButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->reportButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppSubTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget v0, Lcom/microsoft/xboxtcui/R$string;->Profile_ViewInXboxApp_Details_MeProfile:I

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->followButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->followButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {p1, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {p1, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->reportButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->reportButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {p1, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->reportButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppSubTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    sget v0, Lcom/microsoft/xboxtcui/R$string;->Profile_ViewInXboxApp_Details_YouProfile:I

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setText(I)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    return-object p0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onStart()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->followButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$1;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$1;-><init>(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$2;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$2;-><init>(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$3;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$3;-><init>(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->reportButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$4;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$4;-><init>(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->appDeeplinkingSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    new-instance v1, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$5;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter$5;-><init>(Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewInXboxAppSubTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected updateViewOverride()V
    .locals 6

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->rootView:Lcom/microsoft/xbox/xle/ui/XLERootView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getPreferredColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/ui/XLERootView;->setBackgroundColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->loadingProgressBar:Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isBusy()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->contentScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isBusy()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamerPicImageView:Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getGamerPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/xbox/xle/app/ImageUtil;->getMedium(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    sget v4, Lcom/microsoft/xboxtcui/R$drawable;->gamerpic_missing:I

    sget v5, Lcom/microsoft/xboxtcui/R$drawable;->gamerpic_missing:I

    invoke-virtual {v0, v1, v4, v5}, Lcom/microsoft/xbox/toolkit/ui/XLERoundedUniversalImageView;->setImageURI2(Ljava/net/URI;II)V

    :cond_3
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->realNameTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getRealName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->realNameTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-virtual {v1, v0}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->realNameTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-virtual {v0, v3}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->realNameTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-virtual {v0, v2}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setVisibility(I)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamerscoreTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamerscoreIconTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getGamerScore()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamerscoreTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v1, v0, v3}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamerscoreIconTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v0, v3}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateVisibilityIfNotNull(Landroid/view/View;I)V

    :cond_6
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamertagTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getGamerTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->gamertagTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {v1, v0, v3}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    :cond_7
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isMeProfile()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getIsAddingUserToBlockList()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getIsRemovingUserFromBlockList()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    move v0, v3

    goto :goto_4

    :cond_9
    :goto_3
    move v0, v1

    :goto_4
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->followButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isCallerFollowingTarget()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->followButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    if-nez v0, :cond_a

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getIsBlocked()Z

    move-result v4

    if-nez v4, :cond_a

    move v4, v1

    goto :goto_5

    :cond_a
    move v4, v3

    :goto_5
    invoke-virtual {v2, v4}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getIsMuted()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->muteButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getIsAddingUserToMutedList()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v4}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getIsRemovingUserFromMutedList()Z

    move-result v4

    if-nez v4, :cond_b

    move v3, v1

    :cond_b
    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    iget-object v3, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->viewModel:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {v3}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getIsBlocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;->blockButton:Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;

    xor-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setEnabled(Z)V

    :cond_c
    return-void
.end method
