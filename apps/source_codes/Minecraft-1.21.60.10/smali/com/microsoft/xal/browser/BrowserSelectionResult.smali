.class public Lcom/microsoft/xal/browser/BrowserSelectionResult;
.super Ljava/lang/Object;
.source "BrowserSelectionResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;
    }
.end annotation


# instance fields
.field private final m_defaultBrowserInfo:Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;

.field private final m_notes:Ljava/lang/String;

.field private final m_useCustomTabs:Z


# direct methods
.method constructor <init>(Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->m_defaultBrowserInfo:Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;

    iput-object p2, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->m_notes:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->m_useCustomTabs:Z

    return-void
.end method


# virtual methods
.method public packageName()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->m_useCustomTabs:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->m_defaultBrowserInfo:Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;

    iget-object v0, v0, Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;->packageName:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->m_useCustomTabs:Z

    if-eqz v2, :cond_0

    const-string v2, "CT"

    goto :goto_0

    :cond_0
    const-string v2, "WK"

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->m_defaultBrowserInfo:Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;

    iget-object v2, v2, Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->m_notes:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->m_defaultBrowserInfo:Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;

    iget-object v2, v2, Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;->versionName:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "%s-%s-%s::%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
