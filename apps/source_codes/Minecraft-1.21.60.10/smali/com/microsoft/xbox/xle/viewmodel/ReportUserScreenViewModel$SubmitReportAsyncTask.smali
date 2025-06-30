.class Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;
.super Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.source "ReportUserScreenViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubmitReportAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/NetworkAsyncTask<",
        "Lcom/microsoft/xbox/toolkit/AsyncActionStatus;",
        ">;"
    }
.end annotation


# instance fields
.field private feedbackType:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field private model:Lcom/microsoft/xbox/service/model/ProfileModel;

.field private textReason:Ljava/lang/String;

.field final synthetic this$0:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;


# direct methods
.method private constructor <init>(Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/sls/FeedbackType;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->this$0:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;-><init>()V

    iput-object p2, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    iput-object p3, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->feedbackType:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    iput-object p4, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->textReason:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/sls/FeedbackType;Ljava/lang/String;Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/sls/FeedbackType;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected checkShouldExecute()Z
    .locals 1

    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsUIThread()V

    const/4 v0, 0x1

    return v0
.end method

.method protected loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 4

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    iget-boolean v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->forceLoad:Z

    iget-object v2, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->feedbackType:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->textReason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/microsoft/xbox/service/model/ProfileModel;->submitFeedbackForUser(ZLcom/microsoft/xbox/service/model/sls/FeedbackType;Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic loadDataInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->loadDataInBackground()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method protected onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0
.end method

.method protected bridge synthetic onError()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->onError()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    return-object v0
.end method

.method protected onNoAction()V
    .locals 2

    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsUIThread()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->this$0:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_CHANGE:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->access$100(Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method protected onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->this$0:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    invoke-static {v0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->access$100(Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->onPostExecute(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsUIThread()V

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->this$0:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->access$202(Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;Z)Z

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel$SubmitReportAsyncTask;->this$0:Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->updateAdapter()V

    return-void
.end method
