.class public Lcom/utils/DeviceAndSystem;
.super Ljava/lang/Object;
.source "DeviceAndSystem.java"


# static fields
.field public static activity:Landroid/app/Activity;

.field private static instance:Lcom/utils/DeviceAndSystem;

.field private static mainClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

.field private NOTIFICATION_CHANNEL_NAME:Ljava/lang/String;

.field private autoPowerSave:Z

.field private createdNotificationChannel:Z

.field private icon:I

.field private final mDebugMode:Z

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/utils/DeviceAndSystem;->mDebugMode:Z

    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Lcom/utils/DeviceAndSystem;->autoPowerSave:Z

    .line 51
    iput v0, p0, Lcom/utils/DeviceAndSystem;->icon:I

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/utils/DeviceAndSystem;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 86
    iput-boolean v0, p0, Lcom/utils/DeviceAndSystem;->createdNotificationChannel:Z

    const-string v0, "DEFAULT_CHANNEL_ID"

    .line 87
    iput-object v0, p0, Lcom/utils/DeviceAndSystem;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    const-string v0, "Default Category"

    .line 88
    iput-object v0, p0, Lcom/utils/DeviceAndSystem;->NOTIFICATION_CHANNEL_NAME:Ljava/lang/String;

    return-void
.end method

.method private _log(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    return-void
.end method

.method static synthetic access$000(Lcom/utils/DeviceAndSystem;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/utils/DeviceAndSystem;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method private createNotificationChannel()V
    .locals 4

    .line 91
    iget-boolean v0, p0, Lcom/utils/DeviceAndSystem;->createdNotificationChannel:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/utils/DeviceAndSystem;->createdNotificationChannel:Z

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 97
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v1, p0, Lcom/utils/DeviceAndSystem;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/utils/DeviceAndSystem;->NOTIFICATION_CHANNEL_NAME:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 100
    sget-object v1, Lcom/utils/DeviceAndSystem;->activity:Landroid/app/Activity;

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 101
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/utils/DeviceAndSystem;
    .locals 1

    .line 57
    sget-object v0, Lcom/utils/DeviceAndSystem;->instance:Lcom/utils/DeviceAndSystem;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/utils/DeviceAndSystem;

    invoke-direct {v0}, Lcom/utils/DeviceAndSystem;-><init>()V

    sput-object v0, Lcom/utils/DeviceAndSystem;->instance:Lcom/utils/DeviceAndSystem;

    .line 62
    :cond_0
    sget-object v0, Lcom/utils/DeviceAndSystem;->instance:Lcom/utils/DeviceAndSystem;

    return-object v0
.end method


# virtual methods
.method public GetDeviceID()Ljava/lang/String;
    .locals 7

    const-string v0, "0"

    const-string v1, "000000000000000"

    const/4 v2, 0x0

    .line 258
    :try_start_0
    sget-object v3, Lcom/utils/DeviceAndSystem;->activity:Landroid/app/Activity;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_2

    .line 262
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    .line 265
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 268
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMEI"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_2
    :goto_1
    move-object v3, v2

    goto :goto_3

    :catch_1
    move-exception v4

    move-object v3, v2

    .line 273
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TelephonyManager error ex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "game"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-nez v3, :cond_5

    .line 279
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x9

    if-lt v4, v5, :cond_5

    .line 281
    sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 284
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "unknown"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    .line 287
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    move-object v2, v3

    :cond_6
    :goto_4
    if-nez v2, :cond_7

    const-string v2, "invalid id"

    .line 293
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetDeviceType()Ljava/lang/String;
    .locals 2

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public HasVibrator()Z
    .locals 2

    .line 347
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 349
    :cond_0
    sget-object v0, Lcom/utils/DeviceAndSystem;->activity:Landroid/app/Activity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 350
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    return v0
.end method

.method public Init(Landroid/app/Activity;Ljava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "mainClass",
            "icon"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 79
    sput-object p1, Lcom/utils/DeviceAndSystem;->activity:Landroid/app/Activity;

    .line 80
    iput p3, p0, Lcom/utils/DeviceAndSystem;->icon:I

    .line 81
    sput-object p2, Lcom/utils/DeviceAndSystem;->mainClass:Ljava/lang/Class;

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DeviceAndSysetem - Init/icon: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "game"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public OpenURL(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Lcom/utils/DeviceAndSystem;->isActiveNetworkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 177
    sget-object p1, Lcom/utils/DeviceAndSystem;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    return p1

    .line 186
    :cond_0
    sget-object p1, Lcom/utils/DeviceAndSystem;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/utils/DeviceAndSystem$1;

    invoke-direct {v0, p0}, Lcom/utils/DeviceAndSystem$1;-><init>(Lcom/utils/DeviceAndSystem;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public SetAutoPowerSave(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 200
    iget-boolean v0, p0, Lcom/utils/DeviceAndSystem;->autoPowerSave:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 202
    :cond_0
    iput-boolean p1, p0, Lcom/utils/DeviceAndSystem;->autoPowerSave:Z

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/utils/DeviceAndSystem;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 207
    sget-object v0, Lcom/utils/DeviceAndSystem;->activity:Landroid/app/Activity;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string v2, "My WakeLock"

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/utils/DeviceAndSystem;->wakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_1
    if-nez p1, :cond_2

    .line 211
    iget-object p1, p0, Lcom/utils/DeviceAndSystem;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 216
    :cond_2
    sget-object p1, Lcom/utils/DeviceAndSystem;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/utils/DeviceAndSystem$2;

    invoke-direct {v0, p0}, Lcom/utils/DeviceAndSystem$2;-><init>(Lcom/utils/DeviceAndSystem;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetAutoPowerSave - excep - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "game"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public Vibrate()V
    .locals 3

    .line 354
    sget-object v0, Lcom/utils/DeviceAndSystem;->activity:Landroid/app/Activity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0xfa

    .line 355
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public addLocalNotification(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "identifier",
            "time",
            "title",
            "message"
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Lcom/utils/DeviceAndSystem;->createNotificationChannel()V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addLocalNotification id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " title = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/utils/DeviceAndSystem;->_log(Ljava/lang/String;)V

    .line 114
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/utils/DeviceAndSystem;->activity:Landroid/app/Activity;

    sget-object v2, Lcom/utils/DeviceAndSystem;->mainClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    sget-object v1, Lcom/utils/DeviceAndSystem;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 117
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v4, Lcom/utils/DeviceAndSystem;->activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/utils/DeviceAndSystem;->NOTIFICATION_CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget v4, p0, Lcom/utils/DeviceAndSystem;->icon:I

    .line 119
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 120
    invoke-virtual {v1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    const/4 v1, 0x1

    .line 121
    invoke-virtual {p3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 122
    invoke-virtual {p3, v2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 123
    invoke-virtual {p3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 124
    invoke-virtual {p3, p4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 125
    invoke-virtual {p3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    .line 126
    iget p4, p3, Landroid/app/Notification;->defaults:I

    or-int/2addr p4, v1

    iput p4, p3, Landroid/app/Notification;->defaults:I

    .line 128
    new-instance p4, Landroid/content/Intent;

    sget-object v0, Lcom/utils/DeviceAndSystem;->activity:Landroid/app/Activity;

    const-class v1, Lcom/utils/NotificationPublisher;

    invoke-direct {p4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    sget-object v0, Lcom/utils/NotificationPublisher;->NOTIFICATION_ID:Ljava/lang/String;

    invoke-virtual {p4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    sget-object v0, Lcom/utils/NotificationPublisher;->NOTIFICATION:Ljava/lang/String;

    invoke-virtual {p4, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 132
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addLocalNotification intent="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/utils/DeviceAndSystem;->_log(Ljava/lang/String;)V

    .line 134
    sget-object p3, Lcom/utils/DeviceAndSystem;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p3, p1, p4, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 136
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    const/16 p4, 0xd

    .line 137
    invoke-virtual {p3, p4, p2}, Ljava/util/Calendar;->add(II)V

    .line 138
    sget-object p2, Lcom/utils/DeviceAndSystem;->activity:Landroid/app/Activity;

    const-string p4, "alarm"

    invoke-virtual {p2, p4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    .line 140
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p4, v0, :cond_0

    .line 143
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p3

    invoke-virtual {p2, v2, p3, p4, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p3

    invoke-virtual {p2, v2, p3, p4, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :goto_0
    return-void
.end method

.method public cancelLocalNotifications(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "identifier"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelLocalNotifications id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/utils/DeviceAndSystem;->_log(Ljava/lang/String;)V

    .line 155
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/utils/DeviceAndSystem;->activity:Landroid/app/Activity;

    const-class v2, Lcom/utils/NotificationPublisher;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    sget-object v1, Lcom/utils/DeviceAndSystem;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/high16 v2, 0x8000000

    invoke-static {v1, p1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 158
    sget-object v0, Lcom/utils/DeviceAndSystem;->activity:Landroid/app/Activity;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 159
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public getClipBoardText()Ljava/lang/String;
    .locals 2

    .line 306
    sget-object v0, Lcom/utils/DeviceAndSystem;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :cond_0
    return-object v1
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 300
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOS()Ljava/lang/String;
    .locals 2

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActiveNetworkConnection()Z
    .locals 2

    .line 164
    sget-object v0, Lcom/utils/DeviceAndSystem;->activity:Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 165
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
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

.method public onStart()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/utils/DeviceAndSystem;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/utils/DeviceAndSystem;->autoPowerSave:Z

    if-nez v1, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/utils/DeviceAndSystem;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/utils/DeviceAndSystem;->autoPowerSave:Z

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method
