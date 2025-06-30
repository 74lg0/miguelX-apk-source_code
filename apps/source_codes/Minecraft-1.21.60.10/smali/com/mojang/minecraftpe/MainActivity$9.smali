.class Lcom/mojang/minecraftpe/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->createTextWidget()Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$9;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackKeyPressed()Z
    .locals 2

    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$9;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$9$2;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/MainActivity$9$2;-><init>(Lcom/mojang/minecraftpe/MainActivity$9;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDeleteKeyPressed()V
    .locals 2

    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$9;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$9$1;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/MainActivity$9$1;-><init>(Lcom/mojang/minecraftpe/MainActivity$9;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
