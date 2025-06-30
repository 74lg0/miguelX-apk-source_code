.class public Lcom/mojang/minecraftpe/NotificationListenerService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "NotificationListenerService.java"


# static fields
.field private static sDeviceRegistrationToken:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    invoke-static {}, Lcom/mojang/minecraftpe/NotificationListenerService;->retrieveDeviceToken()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mojang/minecraftpe/NotificationListenerService;->sDeviceRegistrationToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/mojang/minecraftpe/NotificationListenerService;->sDeviceRegistrationToken:Ljava/lang/String;

    return-object p0
.end method

.method public static getDeviceRegistrationToken()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mojang/minecraftpe/NotificationListenerService;->sDeviceRegistrationToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mojang/minecraftpe/NotificationListenerService;->retrieveDeviceToken()V

    :cond_0
    sget-object v0, Lcom/mojang/minecraftpe/NotificationListenerService;->sDeviceRegistrationToken:Ljava/lang/String;

    return-object v0
.end method

.method private static retrieveDeviceToken()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Minecraft"

    const-string v1, "NotificationListenerService.retrieveDeviceToken() should not run on main thread."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/mojang/minecraftpe/NotificationListenerService$1;

    invoke-direct {v1}, Lcom/mojang/minecraftpe/NotificationListenerService$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method native nativePushNotificationReceived(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 4

    invoke-static {p0, p1}, Lcom/braze/push/BrazeFirebaseMessagingService;->handleBrazeRemoteMessage(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "xbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p0}, Lcom/microsoft/xbox/service/notification/NotificationHelper;->tryParseXboxLiveNotification(Lcom/google/firebase/messaging/RemoteMessage;Landroid/content/Context;)Lcom/microsoft/xbox/service/notification/NotificationResult;

    move-result-object p1

    iget-object v0, p1, Lcom/microsoft/xbox/service/notification/NotificationResult;->notificationType:Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;->ordinal()I

    move-result v0

    iget-object v1, p1, Lcom/microsoft/xbox/service/notification/NotificationResult;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/microsoft/xbox/service/notification/NotificationResult;->body:Ljava/lang/String;

    iget-object p1, p1, Lcom/microsoft/xbox/service/notification/NotificationResult;->data:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/mojang/minecraftpe/NotificationListenerService;->nativePushNotificationReceived(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;->Unknown:Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p1

    const-string v3, ""

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/mojang/minecraftpe/NotificationListenerService;->nativePushNotificationReceived(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "New Device Push Token: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Minecraft"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/mojang/minecraftpe/NotificationListenerService;->sDeviceRegistrationToken:Ljava/lang/String;

    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/braze/Braze;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object p1

    sget-object v0, Lcom/mojang/minecraftpe/NotificationListenerService;->sDeviceRegistrationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/braze/Braze;->setRegisteredPushToken(Ljava/lang/String;)V

    return-void
.end method
