.class public Lcom/microsoft/xal/browser/BrowserLaunchActivity;
.super Landroid/app/Activity;
.source "BrowserLaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;,
        Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;,
        Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;
    }
.end annotation


# static fields
.field private static final BROWSER_INFO_STATE_KEY:Ljava/lang/String; = "BROWSER_INFO_STATE"

.field private static final CUSTOM_TABS_IN_PROGRESS_STATE_KEY:Ljava/lang/String; = "CUSTOM_TABS_IN_PROGRESS_STATE"

.field public static final END_URL:Ljava/lang/String; = "END_URL"

.field public static final IN_PROC_BROWSER:Ljava/lang/String; = "IN_PROC_BROWSER"

.field public static final OPERATION_ID:Ljava/lang/String; = "OPERATION_ID"

.field private static final OPERATION_ID_STATE_KEY:Ljava/lang/String; = "OPERATION_ID_STATE"

.field public static final REQUEST_HEADER_KEYS:Ljava/lang/String; = "REQUEST_HEADER_KEYS"

.field public static final REQUEST_HEADER_VALUES:Ljava/lang/String; = "REQUEST_HEADER_VALUES"

.field public static final RESULT_FAILED:I = 0x1f74

.field private static final SHARED_BROWSER_USED_STATE_KEY:Ljava/lang/String; = "SHARED_BROWSER_USED_STATE"

.field public static final SHOW_TYPE:Ljava/lang/String; = "SHOW_TYPE"

.field public static final START_URL:Ljava/lang/String; = "START_URL"

.field public static final WEB_KIT_WEB_VIEW_REQUEST:I = 0x1f75


# instance fields
.field private m_browserInfo:Ljava/lang/String;

.field private m_customTabsInProgress:Z

.field private m_launchParameters:Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;

.field private final m_logger:Lcom/microsoft/xal/logging/XalLogger;

.field private m_operationId:J

.field private m_sharedBrowserUsed:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/microsoft/xal/logging/XalLogger;

    const-string v1, "BrowserLaunchActivity"

    invoke-direct {v0, v1}, Lcom/microsoft/xal/logging/XalLogger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_launchParameters:Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_operationId:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_customTabsInProgress:Z

    iput-boolean v1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_sharedBrowserUsed:Z

    iput-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_browserInfo:Ljava/lang/String;

    return-void
.end method

.method private static native checkIsLoaded()V
.end method

.method private checkNativeCodeLoaded()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->checkIsLoaded()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    iget-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v1, "checkNativeCodeLoaded() Caught UnsatisfiedLinkError, native code not loaded"

    invoke-virtual {v0, v1}, Lcom/microsoft/xal/logging/XalLogger;->Error(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private finishOperation(Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;Ljava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_operationId:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_operationId:J

    invoke-virtual {p0}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->finish()V

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object p1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string p2, "finishOperation() No operation ID to complete."

    invoke-virtual {p1, p2}, Lcom/microsoft/xal/logging/XalLogger;->Error(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    invoke-virtual {p1}, Lcom/microsoft/xal/logging/XalLogger;->Flush()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    invoke-virtual {v2}, Lcom/microsoft/xal/logging/XalLogger;->Flush()V

    sget-object v2, Lcom/microsoft/xal/browser/BrowserLaunchActivity$1;->$SwitchMap$com$microsoft$xal$browser$BrowserLaunchActivity$WebResult:[I

    invoke-virtual {p1}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_sharedBrowserUsed:Z

    iget-object p2, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_browserInfo:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->urlOperationFailed(JZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_sharedBrowserUsed:Z

    iget-object p2, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_browserInfo:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->urlOperationCanceled(JZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_sharedBrowserUsed:Z

    iget-object v2, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_browserInfo:Ljava/lang/String;

    invoke-static {v0, v1, p2, p1, v2}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->urlOperationSucceeded(JLjava/lang/String;ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static showUrl(JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 5

    const-string v0, "Unrecognized show type received: "

    new-instance v1, Lcom/microsoft/xal/logging/XalLogger;

    const-string v2, "BrowserLaunchActivity.showUrl()"

    invoke-direct {v1, v2}, Lcom/microsoft/xal/logging/XalLogger;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v2, "JNI call received."

    invoke-virtual {v1, v2}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p5}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->fromInt(I)Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/microsoft/xal/logging/XalLogger;->Error(Ljava/lang/String;)V

    invoke-static {p0, p1, v4, v3}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->urlOperationFailed(JZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/microsoft/xal/logging/XalLogger;->close()V

    return-void

    :cond_1
    :try_start_1
    array-length p5, p6

    array-length v0, p7

    if-eq p5, v0, :cond_2

    const-string p2, "requestHeaderKeys different length than requestHeaderValues."

    invoke-virtual {v1, p2}, Lcom/microsoft/xal/logging/XalLogger;->Error(Ljava/lang/String;)V

    invoke-static {p0, p1, v4, v3}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->urlOperationFailed(JZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lcom/microsoft/xal/logging/XalLogger;->close()V

    return-void

    :cond_2
    :try_start_2
    new-instance p5, Landroid/content/Intent;

    const-class v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;

    invoke-direct {p5, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "OPERATION_ID"

    invoke-virtual {v0, v3, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "START_URL"

    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "END_URL"

    invoke-virtual {v0, p0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "SHOW_TYPE"

    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "REQUEST_HEADER_KEYS"

    invoke-virtual {v0, p0, p6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p0, "REQUEST_HEADER_VALUES"

    invoke-virtual {v0, p0, p7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p0, "IN_PROC_BROWSER"

    invoke-virtual {v0, p0, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p5, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {p5, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p2, p5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Lcom/microsoft/xal/logging/XalLogger;->close()V

    return-void

    :cond_3
    :goto_0
    :try_start_3
    const-string p2, "Received invalid start or end URL."

    invoke-virtual {v1, p2}, Lcom/microsoft/xal/logging/XalLogger;->Error(Ljava/lang/String;)V

    invoke-static {p0, p1, v4, v3}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->urlOperationFailed(JZLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v1}, Lcom/microsoft/xal/logging/XalLogger;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_4
    invoke-virtual {v1}, Lcom/microsoft/xal/logging/XalLogger;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method private startAuthSession(Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;)V
    .locals 8

    invoke-virtual {p0}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p1, Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;->UseInProcBrowser:Z

    invoke-static {v0, v1}, Lcom/microsoft/xal/browser/BrowserSelector;->selectBrowser(Landroid/content/Context;Z)Lcom/microsoft/xal/browser/BrowserSelectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xal/browser/BrowserSelectionResult;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_browserInfo:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startAuthSession() Set browser info: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_browserInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startAuthSession() Starting auth session for ShowUrlType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;->ShowType:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    invoke-virtual {v3}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/microsoft/xal/browser/BrowserSelectionResult;->packageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v1, "startAuthSession() BrowserSelector returned null package name. Choosing WebKit strategy."

    invoke-virtual {v0, v1}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;->StartUrl:Ljava/lang/String;

    iget-object v4, p1, Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;->EndUrl:Ljava/lang/String;

    iget-object v5, p1, Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;->ShowType:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    iget-object v6, p1, Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;->RequestHeaderKeys:[Ljava/lang/String;

    iget-object v7, p1, Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;->RequestHeaderValues:[Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->startWebView(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v2, "startAuthSession() BrowserSelector returned non-null package name. Choosing CustomTabs strategy."

    invoke-virtual {v1, v2}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;->StartUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;->EndUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;->ShowType:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->startCustomTabsInBrowser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;)V

    :goto_0
    return-void
.end method

.method private startCustomTabsInBrowser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;)V
    .locals 1

    sget-object v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->CookieRemovalSkipIfSharedCredentials:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    if-ne p4, v0, :cond_0

    sget-object p1, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;->SUCCESS:Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    invoke-direct {p0, p1, p3}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->finishOperation(Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_customTabsInProgress:Z

    iput-boolean p3, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_sharedBrowserUsed:Z

    new-instance p4, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {p4}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {p4, p3}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setShowTitle(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-virtual {p4}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p3

    iget-object p4, p3, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p2, p3, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p3, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startWebView(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_sharedBrowserUsed:Z

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/microsoft/xal/browser/WebKitWebViewController;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "START_URL"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "END_URL"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SHOW_TYPE"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "REQUEST_HEADER_KEYS"

    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "REQUEST_HEADER_VALUES"

    invoke-virtual {v1, p1, p5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 p1, 0x1f75

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private static native urlOperationCanceled(JZLjava/lang/String;)V
.end method

.method private static native urlOperationFailed(JZLjava/lang/String;)V
.end method

.method private static native urlOperationSucceeded(JLjava/lang/String;ZLjava/lang/String;)V
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v1, "onActivityResult() Result received."

    invoke-virtual {v0, v1}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    const/16 v0, 0x1f75

    if-ne p1, v0, :cond_4

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "RESPONSE"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string p2, "onActivityResult() Invalid final URL received from web view."

    invoke-virtual {p1, p2}, Lcom/microsoft/xal/logging/XalLogger;->Error(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;->SUCCESS:Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    invoke-direct {p0, p2, p1}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->finishOperation(Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    sget-object p1, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;->CANCEL:Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->finishOperation(Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 p1, 0x1f76

    if-eq p2, p1, :cond_3

    iget-object p1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult() Unrecognized result code received from web view:"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/xal/logging/XalLogger;->Warning(Ljava/lang/String;)V

    :cond_3
    :goto_0
    sget-object p1, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;->FAIL:Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->finishOperation(Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string p2, "onActivityResult() Result received from unrecognized request."

    invoke-virtual {p1, p2}, Lcom/microsoft/xal/logging/XalLogger;->Warning(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v1, "onCreate()"

    invoke-virtual {v0, v1}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->checkNativeCodeLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v0, "onCreate() Called while XAL not loaded. Dropping flow and starting app\'s main activity."

    invoke-virtual {p1, v0}, Lcom/microsoft/xal/logging/XalLogger;->Warning(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    invoke-virtual {p1}, Lcom/microsoft/xal/logging/XalLogger;->Flush()V

    invoke-virtual {p0}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->finish()V

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v1, "onCreate() Recreating with saved state."

    invoke-virtual {v0, v1}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    const-string v0, "OPERATION_ID_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_operationId:J

    const-string v0, "CUSTOM_TABS_IN_PROGRESS_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_customTabsInProgress:Z

    const-string v0, "SHARED_BROWSER_USED_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_sharedBrowserUsed:Z

    const-string v0, "BROWSER_INFO_STATE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_browserInfo:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v2, "onCreate() Created with intent args. Starting auth session."

    invoke-virtual {v1, v2}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    const-string v1, "OPERATION_ID"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_operationId:J

    invoke-static {v0}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;->FromArgs(Landroid/os/Bundle;)Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_launchParameters:Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_operationId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v1, "onCreate() Found invalid args, failing operation."

    invoke-virtual {v0, v1}, Lcom/microsoft/xal/logging/XalLogger;->Error(Ljava/lang/String;)V

    sget-object v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;->FAIL:Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    invoke-direct {p0, v0, p1}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->finishOperation(Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/16 v1, 0x1f74

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v2, "onCreate() Unexpectedly created with intent data. Finishing with failure."

    invoke-virtual {v0, v2}, Lcom/microsoft/xal/logging/XalLogger;->Error(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->setResult(I)V

    sget-object v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;->FAIL:Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    invoke-direct {p0, v0, p1}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->finishOperation(Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v2, "onCreate() Unexpectedly created, reason unknown. Finishing with failure."

    invoke-virtual {v0, v2}, Lcom/microsoft/xal/logging/XalLogger;->Error(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->setResult(I)V

    sget-object v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;->FAIL:Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    invoke-direct {p0, v0, p1}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->finishOperation(Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v1, "onDestroy()"

    invoke-virtual {v0, v1}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_operationId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v1, "onDestroy() Activity is finishing with operation in progress, canceling."

    invoke-virtual {v0, v1}, Lcom/microsoft/xal/logging/XalLogger;->Warning(Ljava/lang/String;)V

    sget-object v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;->CANCEL:Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->finishOperation(Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v1, "onNewIntent() Received intent."

    invoke-virtual {v0, v1}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v1, "onResume()"

    invoke-virtual {v0, v1}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_customTabsInProgress:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_launchParameters:Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v2, "onResume() Resumed with launch parameters. Starting auth session."

    invoke-virtual {v0, v2}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_launchParameters:Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;

    iput-object v1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_launchParameters:Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;

    invoke-direct {p0, v0}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->startAuthSession(Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_customTabsInProgress:Z

    invoke-virtual {p0}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v2, "onResume() Resumed with intent data. Finishing operation successfully."

    invoke-virtual {v1, v2}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    sget-object v1, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;->SUCCESS:Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->finishOperation(Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v2, "onResume() Resumed with no intent data. Canceling operation."

    invoke-virtual {v0, v2}, Lcom/microsoft/xal/logging/XalLogger;->Warning(Ljava/lang/String;)V

    sget-object v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;->CANCEL:Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    invoke-direct {p0, v0, v1}, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->finishOperation(Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v1, "onResume() No action to take. This shouldn\'t happen."

    invoke-virtual {v0, v1}, Lcom/microsoft/xal/logging/XalLogger;->Warning(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v1, "onSaveInstanceState() Preserving state."

    invoke-virtual {v0, v1}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    const-string v0, "OPERATION_ID_STATE"

    iget-wide v1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_operationId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "CUSTOM_TABS_IN_PROGRESS_STATE"

    iget-boolean v1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_customTabsInProgress:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "SHARED_BROWSER_USED_STATE"

    iget-boolean v1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_sharedBrowserUsed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "BROWSER_INFO_STATE"

    iget-object v1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity;->m_browserInfo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
