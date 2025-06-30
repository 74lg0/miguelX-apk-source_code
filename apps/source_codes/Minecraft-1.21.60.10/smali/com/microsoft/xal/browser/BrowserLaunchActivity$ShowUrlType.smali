.class public final enum Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;
.super Ljava/lang/Enum;
.source "BrowserLaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xal/browser/BrowserLaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShowUrlType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

.field public static final enum CookieRemoval:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

.field public static final enum CookieRemovalSkipIfSharedCredentials:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

.field public static final enum NonAuthFlow:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

.field public static final enum Normal:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    const-string v1, "Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->Normal:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    new-instance v1, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    const-string v2, "CookieRemoval"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->CookieRemoval:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    new-instance v2, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    const-string v3, "CookieRemovalSkipIfSharedCredentials"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->CookieRemovalSkipIfSharedCredentials:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    new-instance v3, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    const-string v4, "NonAuthFlow"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->NonAuthFlow:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->$VALUES:[Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->NonAuthFlow:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->CookieRemovalSkipIfSharedCredentials:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->CookieRemoval:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    return-object p0

    :cond_3
    sget-object p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->Normal:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;
    .locals 1

    const-class v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;
    .locals 1

    sget-object v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->$VALUES:[Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    invoke-virtual {v0}, [Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$1;->$SwitchMap$com$microsoft$xal$browser$BrowserLaunchActivity$ShowUrlType:[I

    invoke-virtual {p0}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "Unknown"

    return-object v0

    :cond_0
    const-string v0, "NonAuthFlow"

    return-object v0

    :cond_1
    const-string v0, "CookieRemovalSkipIfSharedCredentials"

    return-object v0

    :cond_2
    const-string v0, "CookieRemoval"

    return-object v0

    :cond_3
    const-string v0, "Normal"

    return-object v0
.end method
