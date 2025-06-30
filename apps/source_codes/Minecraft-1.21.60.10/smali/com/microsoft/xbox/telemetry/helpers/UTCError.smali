.class public Lcom/microsoft/xbox/telemetry/helpers/UTCError;
.super Ljava/lang/Object;
.source "UTCError.java"


# static fields
.field private static final UINEEDEDERROR:Ljava/lang/String; = "Client Error Type - UI Needed"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static trackClose(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;Ljava/lang/CharSequence;)V
    .locals 0

    :try_start_0
    const-string p0, "Errors - Close error screen"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "UTCError.trackClose"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static trackException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/microsoft/xbox/telemetry/utc/ClientError;

    invoke-direct {v0}, Lcom/microsoft/xbox/telemetry/utc/ClientError;-><init>()V

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/microsoft/xbox/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/telemetry/utc/ClientError;->errorName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/telemetry/utc/ClientError;->errorText:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v1, p0

    if-lez v1, :cond_2

    :goto_0
    array-length v1, p0

    if-ge v2, v1, :cond_2

    const/16 v1, 0xa

    if-ge v2, v1, :cond_2

    aget-object v1, p0, v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%s;%s"

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xc8

    if-le v1, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput-object p1, v0, Lcom/microsoft/xbox/telemetry/utc/ClientError;->callStack:Ljava/lang/String;

    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;->getCurrentPage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/microsoft/xbox/telemetry/utc/ClientError;->pageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry;->LogEvent(Lcom/microsoft/xbox/telemetry/utc/CommonData;)V

    :cond_3
    return-void
.end method

.method public static trackGoToEnforcement(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;Ljava/lang/CharSequence;)V
    .locals 0

    :try_start_0
    const-string p0, "Errors - View enforcement site"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "UTCError.trackGoToEnforcement"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static trackPageView(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;Ljava/lang/CharSequence;)V
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry;->getErrorScreen(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "UTCError.trackPageView"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static trackRightButton(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;Ljava/lang/CharSequence;)V
    .locals 0

    :try_start_0
    const-string p0, "Errors - Ok"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "UTCError.trackRightButton"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static trackTryAgain(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;Ljava/lang/CharSequence;)V
    .locals 0

    :try_start_0
    const-string p0, "Errors - Try again"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "UTCError.trackTryAgain"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static trackUINeeded(Ljava/lang/String;ZLcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;)V
    .locals 5

    const-string v0, "Client Error Type - UI Needed"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/microsoft/xbox/telemetry/utc/ClientError;

    invoke-direct {v2}, Lcom/microsoft/xbox/telemetry/utc/ClientError;-><init>()V

    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;->getCurrentPage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/microsoft/xbox/telemetry/utc/ClientError;->pageName:Ljava/lang/String;

    iput-object v0, v2, Lcom/microsoft/xbox/telemetry/utc/ClientError;->errorName:Ljava/lang/String;

    iget-object v3, v2, Lcom/microsoft/xbox/telemetry/utc/ClientError;->additionalInfo:Ljava/util/HashMap;

    const-string v4, "isSilent"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v2, Lcom/microsoft/xbox/telemetry/utc/ClientError;->additionalInfo:Ljava/util/HashMap;

    const-string v3, "job"

    invoke-virtual {p1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v2, Lcom/microsoft/xbox/telemetry/utc/ClientError;->additionalInfo:Ljava/util/HashMap;

    const-string p1, "source"

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "Error:%s, additionalInfo:%s"

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v1

    invoke-virtual {v2}, Lcom/microsoft/xbox/telemetry/utc/ClientError;->GetAdditionalInfoString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    invoke-static {p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry;->LogEvent(Lcom/microsoft/xbox/telemetry/utc/CommonData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "UTCError.trackUINeeded"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
