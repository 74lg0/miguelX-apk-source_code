.class final Lcom/braze/Braze$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braze/Braze;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()V"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/braze/Braze;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/braze/Braze;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    iput-object p2, p0, Lcom/braze/Braze$d;->c:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    const-string v0, "registrationDataProvider"

    iget-object v1, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    invoke-virtual {v1}, Lcom/braze/Braze;->applyPendingRuntimeConfiguration$android_sdk_base_release()V

    iget-object v1, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    new-instance v2, Lcom/braze/configuration/BrazeConfigurationProvider;

    iget-object v3, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    invoke-static {v3}, Lcom/braze/Braze;->access$getApplicationContext$p(Lcom/braze/Braze;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/braze/configuration/BrazeConfigurationProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/braze/Braze;->setConfigurationProvider$android_sdk_base_release(Lcom/braze/configuration/BrazeConfigurationProvider;)V

    iget-object v1, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    sget-object v2, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v1}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/braze/Braze$Companion;->getConfiguredApiKey(Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    xor-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/braze/Braze;->setApiKeyPresent$android_sdk_base_release(Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    invoke-virtual {v1}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/braze/configuration/BrazeConfigurationProvider;->getLoggerInitialLogLevel()I

    move-result v1

    invoke-static {v1}, Lcom/braze/support/BrazeLogger;->setInitialLogLevelFromConfiguration(I)V

    const/4 v1, 0x0

    invoke-static {v4, v5, v1}, Lcom/braze/support/BrazeLogger;->checkForSystemLogLevelProperty$default(ZILjava/lang/Object;)V

    iget-object v3, p0, Lcom/braze/Braze$d;->c:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/braze/Braze$Companion;->access$getSdkEnablementProvider(Lcom/braze/Braze$Companion;Landroid/content/Context;)Lbo/app/v4;

    move-result-object v3

    invoke-virtual {v3}, Lbo/app/v4;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v5}, Lcom/braze/Braze$Companion;->setOutboundNetworkRequestsOffline(Z)V

    :cond_2
    iget-object v3, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    new-instance v6, Lbo/app/n0;

    iget-object v7, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    invoke-static {v7}, Lcom/braze/Braze;->access$getApplicationContext$p(Lcom/braze/Braze;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lbo/app/n0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Lcom/braze/Braze;->setDeviceIdReader$android_sdk_base_release(Lbo/app/d2;)V

    iget-object v3, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    new-instance v6, Lbo/app/r3;

    iget-object v7, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    invoke-static {v7}, Lcom/braze/Braze;->access$getApplicationContext$p(Lcom/braze/Braze;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lbo/app/r3;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v6}, Lcom/braze/Braze;->access$setOfflineUserStorageProvider$p(Lcom/braze/Braze;Lbo/app/r3;)V

    iget-object v3, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    new-instance v6, Lbo/app/h4;

    iget-object v7, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    invoke-static {v7}, Lcom/braze/Braze;->access$getApplicationContext$p(Lcom/braze/Braze;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    invoke-virtual {v8}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lbo/app/h4;-><init>(Landroid/content/Context;Lcom/braze/configuration/BrazeConfigurationProvider;)V

    invoke-static {v3, v6}, Lcom/braze/Braze;->access$setRegistrationDataProvider$p(Lcom/braze/Braze;Lbo/app/j2;)V

    iget-object v3, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    invoke-virtual {v3}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/braze/configuration/BrazeConfigurationProvider;->getCustomEndpoint()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v4, v5

    :cond_4
    if-nez v4, :cond_5

    iget-object v3, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    invoke-virtual {v3}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/braze/configuration/BrazeConfigurationProvider;->getCustomEndpoint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/braze/Braze$Companion;->setConfiguredCustomEndpoint$android_sdk_base_release(Ljava/lang/String;)V

    :cond_5
    :try_start_0
    iget-object v2, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    invoke-virtual {v2}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/braze/configuration/BrazeConfigurationProvider;->isFirebaseCloudMessagingRegistrationEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lbo/app/m1;

    iget-object v3, p0, Lcom/braze/Braze$d;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    invoke-static {v4}, Lcom/braze/Braze;->access$getRegistrationDataProvider$p(Lcom/braze/Braze;)Lbo/app/j2;

    move-result-object v4

    if-nez v4, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_6
    invoke-direct {v2, v3, v4}, Lbo/app/m1;-><init>(Landroid/content/Context;Lbo/app/j2;)V

    invoke-virtual {v2}, Lbo/app/m1;->a()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    iget-object v5, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    sget-object v6, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    const/4 v7, 0x0

    sget-object v8, Lcom/braze/Braze$d$b;->b:Lcom/braze/Braze$d$b;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    invoke-virtual {v3}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/braze/configuration/BrazeConfigurationProvider;->getFirebaseCloudMessagingSenderIdKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v2, v3}, Lbo/app/m1;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    iget-object v4, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    const/4 v6, 0x0

    sget-object v7, Lcom/braze/Braze$d$c;->b:Lcom/braze/Braze$d$c;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_2

    :cond_8
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    iget-object v4, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    const/4 v6, 0x0

    sget-object v7, Lcom/braze/Braze$d$d;->b:Lcom/braze/Braze$d$d;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    invoke-virtual {v2}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/braze/configuration/BrazeConfigurationProvider;->isAdmMessagingRegistrationEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lbo/app/b;->c:Lbo/app/b$a;

    iget-object v3, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    invoke-static {v3}, Lcom/braze/Braze;->access$getApplicationContext$p(Lcom/braze/Braze;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbo/app/b$a;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    iget-object v4, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    const/4 v6, 0x0

    sget-object v7, Lcom/braze/Braze$d$e;->b:Lcom/braze/Braze$d$e;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    new-instance v2, Lbo/app/b;

    iget-object v3, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    invoke-static {v3}, Lcom/braze/Braze;->access$getApplicationContext$p(Lcom/braze/Braze;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    invoke-static {v4}, Lcom/braze/Braze;->access$getRegistrationDataProvider$p(Lcom/braze/Braze;)Lbo/app/j2;

    move-result-object v4

    if-nez v4, :cond_a

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_a
    invoke-direct {v2, v3, v4}, Lbo/app/b;-><init>(Landroid/content/Context;Lbo/app/j2;)V

    invoke-virtual {v2}, Lbo/app/b;->a()V

    goto :goto_3

    :cond_b
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    iget-object v4, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    const/4 v6, 0x0

    sget-object v7, Lcom/braze/Braze$d$f;->b:Lcom/braze/Braze$d$f;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_3

    :cond_c
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    iget-object v4, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    const/4 v6, 0x0

    sget-object v7, Lcom/braze/Braze$d$g;->b:Lcom/braze/Braze$d$g;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_3
    iget-object v2, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    invoke-static {v2}, Lcom/braze/Braze;->access$verifyProperSdkSetup(Lcom/braze/Braze;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    iget-object v4, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v6, Lcom/braze/Braze$d$h;->b:Lcom/braze/Braze$d$h;

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :goto_4
    sget-object v7, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    iget-object v8, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    sget-object v9, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v11, Lcom/braze/Braze$d$i;->b:Lcom/braze/Braze$d$i;

    const/4 v10, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :try_start_1
    iget-object v2, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    new-instance v12, Lbo/app/n6;

    invoke-static {v2}, Lcom/braze/Braze;->access$getApplicationContext$p(Lcom/braze/Braze;)Landroid/content/Context;

    move-result-object v4

    iget-object v3, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    invoke-static {v3}, Lcom/braze/Braze;->access$getOfflineUserStorageProvider$p(Lcom/braze/Braze;)Lbo/app/r3;

    move-result-object v3

    if-nez v3, :cond_d

    const-string v3, "offlineUserStorageProvider"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    goto :goto_5

    :cond_d
    move-object v5, v3

    :goto_5
    iget-object v3, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    invoke-virtual {v3}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v6

    iget-object v3, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    invoke-virtual {v3}, Lcom/braze/Braze;->getExternalIEventMessenger$android_sdk_base_release()Lbo/app/g2;

    move-result-object v7

    iget-object v3, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    invoke-virtual {v3}, Lcom/braze/Braze;->getDeviceIdReader$android_sdk_base_release()Lbo/app/d2;

    move-result-object v8

    iget-object v3, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    invoke-static {v3}, Lcom/braze/Braze;->access$getRegistrationDataProvider$p(Lcom/braze/Braze;)Lbo/app/j2;

    move-result-object v3

    if-nez v3, :cond_e

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v1

    goto :goto_6

    :cond_e
    move-object v9, v3

    :goto_6
    invoke-static {}, Lcom/braze/Braze;->access$getShouldMockNetworkRequestsAndDropEvents$cp()Z

    move-result v10

    invoke-static {}, Lcom/braze/Braze;->access$getAreOutboundNetworkRequestsOffline$cp()Z

    move-result v11

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lbo/app/n6;-><init>(Landroid/content/Context;Lbo/app/r3;Lcom/braze/configuration/BrazeConfigurationProvider;Lbo/app/g2;Lbo/app/d2;Lbo/app/j2;ZZ)V

    invoke-static {v2, v12}, Lcom/braze/Braze;->access$setUserSpecificMemberVariablesAndStartDispatch(Lcom/braze/Braze;Lbo/app/n6;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    iget-object v2, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v4, Lcom/braze/Braze$d$a;->b:Lcom/braze/Braze$d$a;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    iget-object v1, p0, Lcom/braze/Braze$d;->b:Lcom/braze/Braze;

    invoke-static {v1, v0}, Lcom/braze/Braze;->access$publishError(Lcom/braze/Braze;Ljava/lang/Throwable;)V

    :goto_7
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/braze/Braze$d;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
