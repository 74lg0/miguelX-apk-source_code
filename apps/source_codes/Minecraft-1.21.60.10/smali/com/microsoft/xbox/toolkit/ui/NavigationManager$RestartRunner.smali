.class Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;
.super Ljava/lang/Object;
.source "NavigationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/ui/NavigationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestartRunner"
.end annotation


# instance fields
.field private final params:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->params:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->access$102(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;Z)Z

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onSetInactive()V

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onPause()V

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onStop()V

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->access$300(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    const-string v2, "navigationParameters cannot be empty!"

    invoke-static {v2, v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->access$300(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->access$300(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;)Ljava/util/Stack;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->params:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onStart()V

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onResume()V

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onSetActive()V

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onAnimateInStarted()V

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->access$400(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;)Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->access$400(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;)Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;->onPageRestarted(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;->this$0:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->access$102(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;Z)Z

    return-void
.end method
