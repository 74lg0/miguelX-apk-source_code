.class public final enum Lcom/microsoft/xbox/service/model/UserStatus;
.super Ljava/lang/Enum;
.source "UserStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/service/model/UserStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/service/model/UserStatus;

.field public static final enum Offline:Lcom/microsoft/xbox/service/model/UserStatus;

.field public static final enum Online:Lcom/microsoft/xbox/service/model/UserStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/microsoft/xbox/service/model/UserStatus;

    const-string v1, "Offline"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/UserStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/UserStatus;->Offline:Lcom/microsoft/xbox/service/model/UserStatus;

    new-instance v1, Lcom/microsoft/xbox/service/model/UserStatus;

    const-string v2, "Online"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/service/model/UserStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/service/model/UserStatus;->Online:Lcom/microsoft/xbox/service/model/UserStatus;

    filled-new-array {v0, v1}, [Lcom/microsoft/xbox/service/model/UserStatus;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/service/model/UserStatus;->$VALUES:[Lcom/microsoft/xbox/service/model/UserStatus;

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

.method public static getStatusFromString(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/UserStatus;
    .locals 2

    sget-object v0, Lcom/microsoft/xbox/service/model/UserStatus;->Online:Lcom/microsoft/xbox/service/model/UserStatus;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/UserStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->stringsEqualCaseInsensitive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    sget-object p0, Lcom/microsoft/xbox/service/model/UserStatus;->Offline:Lcom/microsoft/xbox/service/model/UserStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/UserStatus;
    .locals 1

    const-class v0, Lcom/microsoft/xbox/service/model/UserStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/service/model/UserStatus;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/service/model/UserStatus;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/service/model/UserStatus;->$VALUES:[Lcom/microsoft/xbox/service/model/UserStatus;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/service/model/UserStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/service/model/UserStatus;

    return-object v0
.end method
