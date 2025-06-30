.class public Lcom/microsoft/xboxtcui/XboxAppDeepLinker;
.super Ljava/lang/Object;
.source "XboxAppDeepLinker.java"


# static fields
.field public static final ACTION_FIND_PEOPLE:Ljava/lang/String; = "com.microsoft.xbox.action.ACTION_FIND_PEOPLE"

.field private static final ACTION_VIEW_ACHIEVEMENTS:Ljava/lang/String; = "com.microsoft.xbox.action.ACTION_VIEW_ACHIEVEMENTS"

.field private static final ACTION_VIEW_GAME_PROFILE:Ljava/lang/String; = "com.microsoft.xbox.action.ACTION_VIEW_GAME_PROFILE"

.field private static final ACTION_VIEW_SETTINGS:Ljava/lang/String; = "com.microsoft.xbox.action.ACTION_VIEW_SETTINGS"

.field private static final ACTION_VIEW_USER_PROFILE:Ljava/lang/String; = "com.microsoft.xbox.action.ACTION_VIEW_USER_PROFILE"

.field private static final AMAZON_FIRE_TV_MODEL_PREFIX:Ljava/lang/String; = "AFT"

.field private static final AMAZON_MANUFACTURER:Ljava/lang/String; = "Amazon"

.field private static final AMAZON_STORE_URI:Ljava/lang/String; = "amzn://apps/android?p="

.field private static final AMAZON_TABLET_STORE_PACKAGE:Ljava/lang/String; = "com.amazon.venezia"

.field private static final AMAZON_UNDERGROUND_PACKAGE:Ljava/lang/String; = "com.amazon.mShop.android"

.field private static final EXTRA_IS_XBOX360_GAME:Ljava/lang/String; = "com.microsoft.xbox.extra.IS_XBOX360_GAME"

.field private static final EXTRA_TITLEID:Ljava/lang/String; = "com.microsoft.xbox.extra.TITLEID"

.field private static final EXTRA_XUID:Ljava/lang/String; = "com.microsoft.xbox.extra.XUID"

.field private static final OCULUS_STORE_WEB_URI:Ljava/lang/String; = "oculus.store://link/products?referrer=manual&item_id="

.field private static final OCULUS_XBOXAPP_APP_ID:Ljava/lang/String; = "1193603937358048"

.field private static final PLAY_STORE_PACKAGE:Ljava/lang/String; = "com.android.vending"

.field private static final PLAY_STORE_URI:Ljava/lang/String; = "market://details?id="

.field private static final PLAY_STORE_WEB_URI:Ljava/lang/String; = "https://play.google.com/store/apps/details?id="

.field private static final XBOXAPP_BETA_PACKAGE:Ljava/lang/String; = "com.microsoft.xboxone.smartglass.beta"

.field private static final XBOXAPP_PACKAGE:Ljava/lang/String; = "com.microsoft.xboxone.smartglass"

.field private static betaAppInstalled:Z

.field private static mainAppInstalled:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appDeeplinkingSupported()Z
    .locals 3

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "AFT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method private static getActivityTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "DeepLink"

    return-object v0
.end method

.method private static getXboxAppInStoreIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "com.microsoft.xboxone.smartglass"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance p1, Landroid/content/ComponentName;

    iget-object p2, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, 0x10200000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getXboxAppLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    sget-boolean v0, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->mainAppInstalled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->betaAppInstalled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    sget-boolean v0, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->betaAppInstalled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.microsoft.xboxone.smartglass.beta"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.microsoft.xboxone.smartglass"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private static launchXboxAppStorePage(Landroid/content/Context;)V
    .locals 3

    const-string v0, "market://details?id="

    const-string v1, "com.android.vending"

    invoke-static {p0, v0, v1}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getXboxAppInStoreIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "amzn://apps/android?p="

    if-nez v0, :cond_0

    const-string v0, "com.amazon.mShop.android"

    invoke-static {p0, v1, v0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getXboxAppInStoreIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "com.amazon.venezia"

    invoke-static {p0, v1, v0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getXboxAppInStoreIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://play.google.com/store/apps/details?id=com.microsoft.xboxone.smartglass"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_2
    const v1, 0x10208000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static launchXboxAppStorePageInOculusStore(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "oculus.store://link/products?referrer=manual&item_id=1193603937358048"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v1, 0x10208000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static showAddFriends(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->appDeeplinkingSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->xboxAppIsInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getActivityTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;->trackFriendSuggestionsLink(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getXboxAppLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.microsoft.xbox.action.ACTION_FIND_PEOPLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "deepLinkId"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "deepLinkCaller"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getActivityTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeepLink - Friend Suggestions"

    invoke-static {v1, v0, v2}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;->trackUserSendToStore(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->launchXboxAppStorePageInOculusStore(Landroid/content/Context;)V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static showTitleAchievements(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->appDeeplinkingSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->xboxAppIsInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getActivityTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;->trackGameHubAchievementsLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getXboxAppLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.microsoft.xbox.action.ACTION_VIEW_ACHIEVEMENTS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.microsoft.xbox.extra.TITLEID"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "deepLinkId"

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "deepLinkCaller"

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getActivityTitle()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DeepLink - GameHub Achievements"

    invoke-static {p1, v0, v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;->trackUserSendToStore(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->launchXboxAppStorePage(Landroid/content/Context;)V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static showTitleHub(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->appDeeplinkingSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->xboxAppIsInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getActivityTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;->trackGameHubLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getXboxAppLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.microsoft.xbox.action.ACTION_VIEW_GAME_PROFILE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.microsoft.xbox.extra.TITLEID"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "deepLinkId"

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "deepLinkCaller"

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getActivityTitle()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DeepLink - GameHub"

    invoke-static {p1, v0, v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;->trackUserSendToStore(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->launchXboxAppStorePage(Landroid/content/Context;)V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static showUserProfile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->appDeeplinkingSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->xboxAppIsInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getActivityTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;->trackUserProfileLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getXboxAppLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.microsoft.xbox.action.ACTION_VIEW_USER_PROFILE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.microsoft.xbox.extra.XUID"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "deepLinkId"

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "deepLinkCaller"

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getActivityTitle()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DeepLink - User Profile"

    invoke-static {p1, v0, v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;->trackUserSendToStore(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->launchXboxAppStorePage(Landroid/content/Context;)V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static showUserSettings(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->appDeeplinkingSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->xboxAppIsInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getActivityTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;->trackUserSettingsLink(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getXboxAppLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.microsoft.xbox.action.ACTION_VIEW_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "deepLinkId"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "deepLinkCaller"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->getActivityTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeepLink - User Settings"

    invoke-static {v1, v0, v2}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;->trackUserSendToStore(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->launchXboxAppStorePage(Landroid/content/Context;)V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method private static xboxAppIsInstalled(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.microsoft.xboxone.smartglass"

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    sput-boolean v1, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->mainAppInstalled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sput-boolean v0, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->mainAppInstalled:Z

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.microsoft.xboxone.smartglass.beta"

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    sput-boolean v1, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->betaAppInstalled:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    sput-boolean v0, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->betaAppInstalled:Z

    :goto_1
    sget-boolean p0, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->mainAppInstalled:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/microsoft/xboxtcui/XboxAppDeepLinker;->betaAppInstalled:Z

    if-eqz p0, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method
