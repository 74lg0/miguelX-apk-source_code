.class public final Lcom/microsoft/xboxtcui/XboxTcuiSdk;
.super Ljava/lang/Object;
.source "XboxTcuiSdk.java"


# static fields
.field private static activity:Landroid/app/Activity;

.field private static applicationContext:Landroid/content/Context;

.field private static assetManager:Landroid/content/res/AssetManager;

.field private static contentResolver:Landroid/content/ContentResolver;

.field private static resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->applicationContext:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getAssetManager()Landroid/content/res/AssetManager;
    .locals 1

    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->assetManager:Landroid/content/res/AssetManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->assetManager:Landroid/content/res/AssetManager;

    :cond_0
    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->assetManager:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public static getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->contentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->contentResolver:Landroid/content/ContentResolver;

    :cond_0
    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->contentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public static getIsTablet()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getResources()Landroid/content/res/Resources;
    .locals 1

    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->resources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->resources:Landroid/content/res/Resources;

    :cond_0
    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->resources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public static getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized sdkInitialize(Landroid/app/Activity;)V
    .locals 1

    const-class v0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    sput-object p0, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->activity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
