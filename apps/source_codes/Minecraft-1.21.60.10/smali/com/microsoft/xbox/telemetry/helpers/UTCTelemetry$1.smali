.class synthetic Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$1;
.super Ljava/lang/Object;
.source "UTCTelemetry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$microsoft$xbox$idp$ui$ErrorActivity$ErrorScreen:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->values()[Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$1;->$SwitchMap$com$microsoft$xbox$idp$ui$ErrorActivity$ErrorScreen:[I

    :try_start_0
    sget-object v1, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->BAN:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$1;->$SwitchMap$com$microsoft$xbox$idp$ui$ErrorActivity$ErrorScreen:[I

    sget-object v1, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CATCHALL:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$1;->$SwitchMap$com$microsoft$xbox$idp$ui$ErrorActivity$ErrorScreen:[I

    sget-object v1, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->CREATION:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$1;->$SwitchMap$com$microsoft$xbox$idp$ui$ErrorActivity$ErrorScreen:[I

    sget-object v1, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->OFFLINE:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
