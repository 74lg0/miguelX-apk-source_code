.class Lcom/mojang/minecraftpe/MainActivity$HeadsetConnectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mojang/minecraftpe/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetConnectionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;


# direct methods
.method private constructor <init>(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$HeadsetConnectionReceiver;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mojang/minecraftpe/MainActivity;Lcom/mojang/minecraftpe/MainActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/MainActivity$HeadsetConnectionReceiver;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "state"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "MCPE"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Headset plugged in"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$HeadsetConnectionReceiver;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {p1, v0}, Lcom/mojang/minecraftpe/MainActivity;->nativeSetHeadphonesConnected(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "Headset unplugged"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$HeadsetConnectionReceiver;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mojang/minecraftpe/MainActivity;->nativeSetHeadphonesConnected(Z)V

    :cond_2
    :goto_0
    return-void
.end method
