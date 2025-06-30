.class Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "MinecraftChromeClient.java"


# instance fields
.field private mView:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient;->mView:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

    return-void
.end method

.method static synthetic access$000(Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient;)Lcom/mojang/minecraftpe/Webview/MinecraftWebview;
    .locals 0

    iget-object p0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient;->mView:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

    return-object p0
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    sget-object p1, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    new-instance p2, Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient$1;

    invoke-direct {p2, p0}, Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient$1;-><init>(Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient;)V

    invoke-virtual {p1, p2}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
