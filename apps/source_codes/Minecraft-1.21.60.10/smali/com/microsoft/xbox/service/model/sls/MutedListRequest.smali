.class public Lcom/microsoft/xbox/service/model/sls/MutedListRequest;
.super Ljava/lang/Object;
.source "MutedListRequest.java"


# instance fields
.field public xuid:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/microsoft/xbox/service/model/sls/MutedListRequest;->xuid:J

    return-void
.end method

.method public static getNeverListRequestBody(Lcom/microsoft/xbox/service/model/sls/MutedListRequest;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/GsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
