.class public final enum Lcom/microsoft/xbox/idp/services/Endpoints$Type;
.super Ljava/lang/Enum;
.source "Endpoints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/services/Endpoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/idp/services/Endpoints$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/services/Endpoints$Type;

.field public static final enum DNET:Lcom/microsoft/xbox/idp/services/Endpoints$Type;

.field public static final enum PROD:Lcom/microsoft/xbox/idp/services/Endpoints$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    const-string v1, "PROD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/services/Endpoints$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/services/Endpoints$Type;->PROD:Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    new-instance v1, Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    const-string v2, "DNET"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/idp/services/Endpoints$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/idp/services/Endpoints$Type;->DNET:Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    filled-new-array {v0, v1}, [Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/services/Endpoints$Type;->$VALUES:[Lcom/microsoft/xbox/idp/services/Endpoints$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/services/Endpoints$Type;
    .locals 1

    const-class v0, Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/services/Endpoints$Type;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/idp/services/Endpoints$Type;->$VALUES:[Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/services/Endpoints$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    return-object v0
.end method
