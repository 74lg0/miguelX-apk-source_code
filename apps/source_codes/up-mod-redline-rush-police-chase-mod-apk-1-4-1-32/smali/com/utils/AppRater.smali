.class public Lcom/utils/AppRater;
.super Ljava/lang/Object;
.source "AppRater.java"


# static fields
.field private static final DAYS_UNTIL_PROMPT:I = 0x3

.field private static final LAUNCHES_UNTIL_PROMPT:I = 0x3

.field private static _instance:Lcom/utils/AppRater;

.field private static mDebug:Z


# instance fields
.field private APP_LINK:Ljava/lang/String;

.field private APP_TITLE:Ljava/lang/String;

.field private isOpened:Z

.field public mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/utils/AppRater;->mActivity:Landroid/app/Activity;

    const-string v0, ""

    .line 52
    iput-object v0, p0, Lcom/utils/AppRater;->APP_TITLE:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/utils/AppRater;->APP_LINK:Ljava/lang/String;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/utils/AppRater;->isOpened:Z

    return-void
.end method

.method private static _log(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 40
    sget-boolean v0, Lcom/utils/AppRater;->mDebug:Z

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Apprater Java - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "xgame"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/utils/AppRater;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/utils/AppRater;->APP_LINK:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/utils/AppRater;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/utils/AppRater;->APP_TITLE:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/utils/AppRater;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/utils/AppRater;->isOpened:Z

    return p1
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/utils/AppRater;->_log(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/utils/AppRater;
    .locals 1

    .line 30
    sget-object v0, Lcom/utils/AppRater;->_instance:Lcom/utils/AppRater;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/utils/AppRater;

    invoke-direct {v0}, Lcom/utils/AppRater;-><init>()V

    sput-object v0, Lcom/utils/AppRater;->_instance:Lcom/utils/AppRater;

    .line 35
    :cond_0
    sget-object v0, Lcom/utils/AppRater;->_instance:Lcom/utils/AppRater;

    return-object v0
.end method

.method private showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "mContext",
            "editor"
        }
    .end annotation

    const-string v0, "showRateDialog"

    .line 160
    invoke-static {v0}, Lcom/utils/AppRater;->_log(Ljava/lang/String;)V

    .line 161
    iget-boolean v0, p0, Lcom/utils/AppRater;->isOpened:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lcom/utils/AppRater;->isOpened:Z

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/utils/AppRater;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/utils/AppRater$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/utils/AppRater$2;-><init>(Lcom/utils/AppRater;Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 263
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showRateDialog2 - exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/utils/AppRater;->_log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public appLaunched(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "link"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/utils/AppRater;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/utils/AppRater;->APP_LINK:Ljava/lang/String;

    const-string p1, "apprater"

    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "dontshowagain"

    .line 74
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 76
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "launch_count"

    const-wide/16 v2, 0x0

    .line 79
    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 80
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "date_firstlaunch"

    .line 83
    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-nez v8, :cond_2

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_2
    const-wide/16 v1, 0x3

    cmp-long v3, v4, v1

    if-ltz v3, :cond_3

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0xf731400

    add-long/2addr v3, v5

    cmp-long p1, v1, v3

    if-ltz p1, :cond_3

    .line 93
    iget-object p1, p0, Lcom/utils/AppRater;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p1, v0}, Lcom/utils/AppRater;->showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V

    .line 97
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public eventRaise()V
    .locals 9

    const-string v0, "eventRaise - 1"

    .line 102
    invoke-static {v0}, Lcom/utils/AppRater;->_log(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/utils/AppRater;->mActivity:Landroid/app/Activity;

    const-string v1, "apprater"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "dontshowagain"

    .line 105
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "launch_count"

    const-wide/16 v3, 0x0

    .line 110
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    .line 111
    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v2, "date_firstlaunch"

    .line 115
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v2, v7, v3

    if-nez v2, :cond_1

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_1
    const-wide/16 v2, 0x3

    cmp-long v4, v5, v2

    if-ltz v4, :cond_2

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xf731400

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/utils/AppRater;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0, v1}, Lcom/utils/AppRater;->showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V

    :cond_2
    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "title"
        }
    .end annotation

    const-string v0, "AppRater.java inited"

    .line 62
    invoke-static {v0}, Lcom/utils/AppRater;->_log(Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/utils/AppRater;->mActivity:Landroid/app/Activity;

    .line 64
    iput-object p2, p0, Lcom/utils/AppRater;->APP_TITLE:Ljava/lang/String;

    return-void
.end method

.method public isActiveNetworkConnection()Z
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/utils/AppRater;->mActivity:Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 47
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public rateNow()Z
    .locals 3

    .line 133
    invoke-virtual {p0}, Lcom/utils/AppRater;->isActiveNetworkConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 138
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/utils/AppRater;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/utils/AppRater$1;

    invoke-direct {v2, p0}, Lcom/utils/AppRater$1;-><init>(Lcom/utils/AppRater;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    return v1
.end method
