.class Lcom/mojang/minecraftpe/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

.field final synthetic val$activityRootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/MainActivity;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$10;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iput-object p2, p0, Lcom/mojang/minecraftpe/MainActivity$10;->val$activityRootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$10;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$10;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$10;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/mojang/minecraftpe/MainActivity;->virtualKeyboardHeight:I

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$10;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$10;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v0}, Lcom/mojang/minecraftpe/MainActivity;->access$300(Lcom/mojang/minecraftpe/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$10;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->access$302(Lcom/mojang/minecraftpe/MainActivity;Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$10;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v0}, Lcom/mojang/minecraftpe/MainActivity;->access$300(Lcom/mojang/minecraftpe/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$10;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->access$302(Lcom/mojang/minecraftpe/MainActivity;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
