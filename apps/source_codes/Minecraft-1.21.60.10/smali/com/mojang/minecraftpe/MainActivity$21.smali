.class Lcom/mojang/minecraftpe/MainActivity$21;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->setKeepScreenOnFlag(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;

.field final synthetic val$keepScreenOn:Z


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$21;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iput-boolean p2, p0, Lcom/mojang/minecraftpe/MainActivity$21;->val$keepScreenOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity$21;->val$keepScreenOn:Z

    const/16 v1, 0x80

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$21;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$21;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method
