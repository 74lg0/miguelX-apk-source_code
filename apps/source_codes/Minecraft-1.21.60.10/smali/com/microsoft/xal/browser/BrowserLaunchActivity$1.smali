.class synthetic Lcom/microsoft/xal/browser/BrowserLaunchActivity$1;
.super Ljava/lang/Object;
.source "BrowserLaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xal/browser/BrowserLaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$microsoft$xal$browser$BrowserLaunchActivity$ShowUrlType:[I

.field static final synthetic $SwitchMap$com$microsoft$xal$browser$BrowserLaunchActivity$WebResult:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;->values()[Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$1;->$SwitchMap$com$microsoft$xal$browser$BrowserLaunchActivity$WebResult:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;->SUCCESS:Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    invoke-virtual {v2}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/microsoft/xal/browser/BrowserLaunchActivity$1;->$SwitchMap$com$microsoft$xal$browser$BrowserLaunchActivity$WebResult:[I

    sget-object v3, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;->CANCEL:Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    invoke-virtual {v3}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/microsoft/xal/browser/BrowserLaunchActivity$1;->$SwitchMap$com$microsoft$xal$browser$BrowserLaunchActivity$WebResult:[I

    sget-object v4, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;->FAIL:Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    invoke-virtual {v4}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->values()[Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/microsoft/xal/browser/BrowserLaunchActivity$1;->$SwitchMap$com$microsoft$xal$browser$BrowserLaunchActivity$ShowUrlType:[I

    :try_start_3
    sget-object v4, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->Normal:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    invoke-virtual {v4}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/microsoft/xal/browser/BrowserLaunchActivity$1;->$SwitchMap$com$microsoft$xal$browser$BrowserLaunchActivity$ShowUrlType:[I

    sget-object v3, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->CookieRemoval:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    invoke-virtual {v3}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$1;->$SwitchMap$com$microsoft$xal$browser$BrowserLaunchActivity$ShowUrlType:[I

    sget-object v1, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->CookieRemovalSkipIfSharedCredentials:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    invoke-virtual {v1}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$1;->$SwitchMap$com$microsoft$xal$browser$BrowserLaunchActivity$ShowUrlType:[I

    sget-object v1, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->NonAuthFlow:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    invoke-virtual {v1}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
