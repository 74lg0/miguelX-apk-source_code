.class Lcom/mojang/minecraftpe/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->requestPushPermission()V
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

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$5;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$5;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v1}, Lcom/mojang/minecraftpe/MainActivity;->suspendGameplayUpdates()V

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$5;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/mojang/minecraftpe/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
