.class Lcom/mojang/minecraftpe/MainActivity$9$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity$9;->onBackKeyPressed()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mojang/minecraftpe/MainActivity$9;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity$9;)V
    .locals 0

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$9$2;->this$1:Lcom/mojang/minecraftpe/MainActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "mcpe - keyboard"

    const-string v1, "textInputWidget.onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$9$2;->this$1:Lcom/mojang/minecraftpe/MainActivity$9;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity$9;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->nativeBackPressed()V

    return-void
.end method
