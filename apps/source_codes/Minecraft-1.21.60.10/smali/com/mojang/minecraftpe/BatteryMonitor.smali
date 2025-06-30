.class public Lcom/mojang/minecraftpe/BatteryMonitor;
.super Landroid/content/BroadcastReceiver;
.source "BatteryMonitor.java"


# instance fields
.field public mBatteryLevel:I

.field public mBatteryScale:I

.field public mBatteryStatus:I

.field private mBatteryTemperature:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryLevel:I

    iput v0, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryScale:I

    iput v0, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryStatus:I

    iput v0, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryTemperature:I

    iput-object p1, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public getBatteryLevel()I
    .locals 1

    iget v0, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryLevel:I

    return v0
.end method

.method public getBatteryScale()I
    .locals 1

    iget v0, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryScale:I

    return v0
.end method

.method public getBatteryStatus()I
    .locals 1

    iget v0, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryStatus:I

    return v0
.end method

.method public getBatteryTemperature()I
    .locals 1

    iget v0, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryTemperature:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "level"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryLevel:I

    const-string p1, "scale"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryScale:I

    const-string p1, "status"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryStatus:I

    const-string p1, "temperature"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryTemperature:I

    return-void
.end method
