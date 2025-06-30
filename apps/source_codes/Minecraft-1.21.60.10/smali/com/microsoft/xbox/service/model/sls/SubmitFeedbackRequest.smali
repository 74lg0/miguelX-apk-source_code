.class public Lcom/microsoft/xbox/service/model/sls/SubmitFeedbackRequest;
.super Ljava/lang/Object;
.source "SubmitFeedbackRequest.java"


# instance fields
.field public evidenceId:Ljava/lang/String;

.field public feedbackType:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public sessionRef:Ljava/lang/String;

.field public textReason:Ljava/lang/String;

.field public voiceReasonId:Ljava/lang/String;

.field public xuid:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/microsoft/xbox/service/model/sls/FeedbackType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/microsoft/xbox/service/model/sls/SubmitFeedbackRequest;->xuid:J

    iput-object p3, p0, Lcom/microsoft/xbox/service/model/sls/SubmitFeedbackRequest;->sessionRef:Ljava/lang/String;

    iput-object p4, p0, Lcom/microsoft/xbox/service/model/sls/SubmitFeedbackRequest;->feedbackType:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    iput-object p5, p0, Lcom/microsoft/xbox/service/model/sls/SubmitFeedbackRequest;->textReason:Ljava/lang/String;

    iput-object p6, p0, Lcom/microsoft/xbox/service/model/sls/SubmitFeedbackRequest;->voiceReasonId:Ljava/lang/String;

    iput-object p7, p0, Lcom/microsoft/xbox/service/model/sls/SubmitFeedbackRequest;->evidenceId:Ljava/lang/String;

    return-void
.end method

.method public static getSubmitFeedbackRequestBody(Lcom/microsoft/xbox/service/model/sls/SubmitFeedbackRequest;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/GsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
