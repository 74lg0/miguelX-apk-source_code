.class Lcom/mojang/minecraftpe/Webview/MinecraftWebview$4;
.super Ljava/lang/Object;
.source "MinecraftWebview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->setShowView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

.field final synthetic val$showCapture:Z


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$4;->this$0:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

    iput-boolean p2, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$4;->val$showCapture:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$4;->this$0:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

    invoke-static {v0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->access$100(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)Lcom/mojang/minecraftpe/PopupView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$4;->val$showCapture:Z

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/PopupView;->setVisible(Z)V

    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$4;->this$0:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$4;->val$showCapture:Z

    if-eqz v2, :cond_0

    const-string v2, "onShow"

    goto :goto_0

    :cond_0
    const-string v2, "onHide"

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "window.ipcCodeScreenRenderer.%s();"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->sendToWebView(Ljava/lang/String;)V

    return-void
.end method
