.class public Lcom/microsoft/xal/browser/WebKitWebViewController;
.super Landroid/app/Activity;
.source "WebKitWebViewController.java"


# static fields
.field public static final END_URL:Ljava/lang/String; = "END_URL"

.field public static final REQUEST_HEADER_KEYS:Ljava/lang/String; = "REQUEST_HEADER_KEYS"

.field public static final REQUEST_HEADER_VALUES:Ljava/lang/String; = "REQUEST_HEADER_VALUES"

.field public static final RESPONSE_KEY:Ljava/lang/String; = "RESPONSE"

.field public static final RESULT_FAILED:I = 0x1f76

.field public static final SHOW_TYPE:Ljava/lang/String; = "SHOW_TYPE"

.field public static final START_URL:Ljava/lang/String; = "START_URL"


# instance fields
.field private final m_logger:Lcom/microsoft/xal/logging/XalLogger;

.field private m_webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/microsoft/xal/logging/XalLogger;

    const-string v1, "WebKitWebViewController"

    invoke-direct {v0, v1}, Lcom/microsoft/xal/logging/XalLogger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/xal/browser/WebKitWebViewController;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xal/browser/WebKitWebViewController;)Lcom/microsoft/xal/logging/XalLogger;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/xal/browser/WebKitWebViewController;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    return-object p0
.end method

.method private deleteCookies(Ljava/lang/String;Z)V
    .locals 9

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    const-string p2, "https://"

    goto :goto_0

    :cond_0
    const-string p2, "http://"

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "__Secure-"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const-string v8, ";Path=/"

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Secure;Domain="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1
    const-string v7, "__Host-"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Secure;Path=/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Domain="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v0, p2, v5}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_3
    array-length p2, v1

    if-lez p2, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_5

    iget-object p2, p0, Lcom/microsoft/xal/browser/WebKitWebViewController;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteCookies() Deleted cookies for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/microsoft/xal/logging/XalLogger;->Information(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lcom/microsoft/xal/browser/WebKitWebViewController;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteCookies() Found no cookies for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/microsoft/xal/logging/XalLogger;->Information(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/microsoft/xal/browser/WebKitWebViewController;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/16 v0, 0x1f76

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/microsoft/xal/browser/WebKitWebViewController;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v1, "onCreate() Called with no extras."

    invoke-virtual {p1, v1}, Lcom/microsoft/xal/logging/XalLogger;->Error(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/xal/browser/WebKitWebViewController;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    invoke-virtual {p1}, Lcom/microsoft/xal/logging/XalLogger;->Flush()V

    invoke-virtual {p0, v0}, Lcom/microsoft/xal/browser/WebKitWebViewController;->setResult(I)V

    invoke-virtual {p0}, Lcom/microsoft/xal/browser/WebKitWebViewController;->finish()V

    return-void

    :cond_0
    const-string v1, "START_URL"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "END_URL"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v3, "REQUEST_HEADER_KEYS"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "REQUEST_HEADER_VALUES"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v3

    array-length v6, v4

    if-eq v5, v6, :cond_2

    iget-object p1, p0, Lcom/microsoft/xal/browser/WebKitWebViewController;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v1, "onCreate() Received request header and key arrays of different lengths."

    invoke-virtual {p1, v1}, Lcom/microsoft/xal/logging/XalLogger;->Error(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/xal/browser/WebKitWebViewController;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    invoke-virtual {p1}, Lcom/microsoft/xal/logging/XalLogger;->Flush()V

    invoke-virtual {p0, v0}, Lcom/microsoft/xal/browser/WebKitWebViewController;->setResult(I)V

    invoke-virtual {p0}, Lcom/microsoft/xal/browser/WebKitWebViewController;->finish()V

    return-void

    :cond_2
    const-string v5, "SHOW_TYPE"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    sget-object v5, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->CookieRemoval:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    const/4 v6, 0x1

    if-eq p1, v5, :cond_7

    sget-object v5, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->CookieRemovalSkipIfSharedCredentials:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    if-ne p1, v5, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/util/HashMap;

    array-length v5, v3

    invoke-direct {p1, v5}, Ljava/util/HashMap;-><init>(I)V

    const/4 v5, 0x0

    :goto_0
    array-length v7, v3

    if-ge v5, v7, :cond_6

    aget-object v7, v3, v5

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    aget-object v7, v4, v5

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    aget-object v7, v3, v5

    aget-object v8, v4, v5

    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/microsoft/xal/browser/WebKitWebViewController;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v1, "onCreate() Received null or empty request field."

    invoke-virtual {p1, v1}, Lcom/microsoft/xal/logging/XalLogger;->Error(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/xal/browser/WebKitWebViewController;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    invoke-virtual {p1}, Lcom/microsoft/xal/logging/XalLogger;->Flush()V

    invoke-virtual {p0, v0}, Lcom/microsoft/xal/browser/WebKitWebViewController;->setResult(I)V

    invoke-virtual {p0}, Lcom/microsoft/xal/browser/WebKitWebViewController;->finish()V

    return-void

    :cond_6
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/microsoft/xal/browser/WebKitWebViewController;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/microsoft/xal/browser/WebKitWebViewController;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/microsoft/xal/browser/WebKitWebViewController;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/microsoft/xal/browser/WebKitWebViewController;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    iget-object v0, p0, Lcom/microsoft/xal/browser/WebKitWebViewController;->m_webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/microsoft/xal/browser/WebKitWebViewController$1;

    invoke-direct {v3, p0}, Lcom/microsoft/xal/browser/WebKitWebViewController$1;-><init>(Lcom/microsoft/xal/browser/WebKitWebViewController;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/microsoft/xal/browser/WebKitWebViewController;->m_webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/microsoft/xal/browser/WebKitWebViewController$2;

    invoke-direct {v3, p0, v2}, Lcom/microsoft/xal/browser/WebKitWebViewController$2;-><init>(Lcom/microsoft/xal/browser/WebKitWebViewController;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/microsoft/xal/browser/WebKitWebViewController;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/microsoft/xal/browser/WebKitWebViewController;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v0, "onCreate() WebView invoked for cookie removal. Deleting cookies and finishing."

    invoke-virtual {p1, v0}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    array-length p1, v3

    if-lez p1, :cond_8

    iget-object p1, p0, Lcom/microsoft/xal/browser/WebKitWebViewController;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v0, "onCreate() WebView invoked for cookie removal with requestHeaders."

    invoke-virtual {p1, v0}, Lcom/microsoft/xal/logging/XalLogger;->Warning(Ljava/lang/String;)V

    :cond_8
    const-string p1, "login.live.com"

    invoke-direct {p0, p1, v6}, Lcom/microsoft/xal/browser/WebKitWebViewController;->deleteCookies(Ljava/lang/String;Z)V

    const-string p1, "account.live.com"

    invoke-direct {p0, p1, v6}, Lcom/microsoft/xal/browser/WebKitWebViewController;->deleteCookies(Ljava/lang/String;Z)V

    const-string p1, "live.com"

    invoke-direct {p0, p1, v6}, Lcom/microsoft/xal/browser/WebKitWebViewController;->deleteCookies(Ljava/lang/String;Z)V

    const-string p1, "xboxlive.com"

    invoke-direct {p0, p1, v6}, Lcom/microsoft/xal/browser/WebKitWebViewController;->deleteCookies(Ljava/lang/String;Z)V

    const-string p1, "sisu.xboxlive.com"

    invoke-direct {p0, p1, v6}, Lcom/microsoft/xal/browser/WebKitWebViewController;->deleteCookies(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/microsoft/xal/browser/WebKitWebViewController;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    invoke-virtual {p1}, Lcom/microsoft/xal/logging/XalLogger;->Flush()V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "RESPONSE"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/xal/browser/WebKitWebViewController;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/microsoft/xal/browser/WebKitWebViewController;->finish()V

    return-void

    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/microsoft/xal/browser/WebKitWebViewController;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v1, "onCreate() Received invalid start or end URL."

    invoke-virtual {p1, v1}, Lcom/microsoft/xal/logging/XalLogger;->Error(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/microsoft/xal/browser/WebKitWebViewController;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    invoke-virtual {p1}, Lcom/microsoft/xal/logging/XalLogger;->Flush()V

    invoke-virtual {p0, v0}, Lcom/microsoft/xal/browser/WebKitWebViewController;->setResult(I)V

    invoke-virtual {p0}, Lcom/microsoft/xal/browser/WebKitWebViewController;->finish()V

    return-void
.end method
