.class Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$MinecraftLicenseCheckerCallback;
.super Ljava/lang/Object;
.source "GooglePlayStore.java"

# interfaces
.implements Lcom/googleplay/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MinecraftLicenseCheckerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;


# direct methods
.method private constructor <init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;)V
    .locals 0

    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$MinecraftLicenseCheckerCallback;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$MinecraftLicenseCheckerCallback;-><init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;)V

    return-void
.end method


# virtual methods
.method public allow(I)V
    .locals 2

    const/16 v0, 0x123

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/lang/String;

    const-string v0, "RETRY"

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    if-ne p1, v0, :cond_1

    new-instance p1, Ljava/lang/String;

    const-string v0, "LICENSED"

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    const-string v0, "UNKNOWN REASON"

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$MinecraftLicenseCheckerCallback;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->access$000(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;ZZ)V

    const-string v0, "allowed reason: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MinecraftLicenseCheckerCallback"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public applicationError(I)V
    .locals 3

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$MinecraftLicenseCheckerCallback;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->access$000(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;ZZ)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "error: %d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MinecraftLicenseCheckerCallback"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dontAllow(I)V
    .locals 3

    const/16 v0, 0x231

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/lang/String;

    const-string v0, "NOT LICENSED"

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x123

    if-ne p1, v0, :cond_1

    new-instance p1, Ljava/lang/String;

    const-string v0, "RETRY"

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    const-string v0, "UNKNOWN REASON"

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$MinecraftLicenseCheckerCallback;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->access$000(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;ZZ)V

    const-string v0, "denied reason: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MinecraftLicenseCheckerCallback"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
