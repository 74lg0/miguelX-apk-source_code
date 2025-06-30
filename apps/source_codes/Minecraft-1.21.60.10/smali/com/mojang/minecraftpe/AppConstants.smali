.class public Lcom/mojang/minecraftpe/AppConstants;
.super Ljava/lang/Object;
.source "AppConstants.java"


# static fields
.field public static ANDROID_BUILD:Ljava/lang/String;

.field public static ANDROID_VERSION:Ljava/lang/String;

.field public static APP_PACKAGE:Ljava/lang/String;

.field public static APP_VERSION:I

.field public static APP_VERSION_NAME:Ljava/lang/String;

.field public static PHONE_MANUFACTURER:Ljava/lang/String;

.field public static PHONE_MODEL:Ljava/lang/String;

.field private static loadIdentifiersTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadFromContext(Landroid/content/Context;)V
    .locals 2

    const-string v0, "MinecraftPlatform"

    const-string v1, "CrashManager: AppConstants loadFromContext started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/mojang/minecraftpe/AppConstants;->ANDROID_VERSION:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sput-object v0, Lcom/mojang/minecraftpe/AppConstants;->ANDROID_BUILD:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/mojang/minecraftpe/AppConstants;->PHONE_MODEL:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/mojang/minecraftpe/AppConstants;->PHONE_MANUFACTURER:Ljava/lang/String;

    invoke-static {p0}, Lcom/mojang/minecraftpe/AppConstants;->loadPackageData(Landroid/content/Context;)V

    return-void
.end method

.method private static loadPackageData(Landroid/content/Context;)V
    .locals 3

    const-string v0, "MinecraftPlatform"

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v1, Lcom/mojang/minecraftpe/AppConstants;->APP_PACKAGE:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, Lcom/mojang/minecraftpe/AppConstants;->APP_VERSION:I

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object p0, Lcom/mojang/minecraftpe/AppConstants;->APP_VERSION_NAME:Ljava/lang/String;

    const-string p0, "CrashManager: AppConstants loadFromContext finished succesfully"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "CrashManager: Exception thrown when accessing the package info"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
