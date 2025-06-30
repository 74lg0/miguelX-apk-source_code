.class public Lcom/microsoft/xbox/xle/app/activity/ReportUserScreen;
.super Lcom/microsoft/xbox/xle/app/activity/ActivityBase;
.source "ReportUserScreen.java"


# instance fields
.field private reportUserScreenViewModel:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getActivityName()Ljava/lang/String;
    .locals 1

    const-string v0, "Report user"

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->onCreate()V

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ReportUserScreen;->onCreateContentView()V

    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ReportUserScreen;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ReportUserScreen;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    check-cast v0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ReportUserScreen;->reportUserScreenViewModel:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/ReportUserScreen;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/ReportUserScreen;->reportUserScreenViewModel:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->getXUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCReportUser;->trackReportView(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateContentView()V
    .locals 1

    sget v0, Lcom/microsoft/xboxtcui/R$layout;->report_user_screen:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/ReportUserScreen;->setContentView(I)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->onStart()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/ReportUserScreen;->reportUserScreenViewModel:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->getPreferredColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/ReportUserScreen;->setBackgroundColor(I)V

    return-void
.end method
