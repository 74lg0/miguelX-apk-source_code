.class synthetic Lcom/microsoft/xbox/idp/services/EndpointsFactory$1;
.super Ljava/lang/Object;
.source "EndpointsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/services/EndpointsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$microsoft$xbox$idp$services$Endpoints$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/microsoft/xbox/idp/services/Endpoints$Type;->values()[Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/microsoft/xbox/idp/services/EndpointsFactory$1;->$SwitchMap$com$microsoft$xbox$idp$services$Endpoints$Type:[I

    :try_start_0
    sget-object v1, Lcom/microsoft/xbox/idp/services/Endpoints$Type;->PROD:Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/services/Endpoints$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/microsoft/xbox/idp/services/EndpointsFactory$1;->$SwitchMap$com$microsoft$xbox$idp$services$Endpoints$Type:[I

    sget-object v1, Lcom/microsoft/xbox/idp/services/Endpoints$Type;->DNET:Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/services/Endpoints$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
