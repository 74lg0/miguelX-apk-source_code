.class public final enum Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;
.super Ljava/lang/Enum;
.source "XboxLiveEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Environment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

.field public static final enum CERTNET:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

.field public static final enum DNET:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

.field public static final enum PARTNERNET:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

.field public static final enum PROD:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

.field public static final enum STUB:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

.field public static final enum VINT:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    const-string v1, "STUB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->STUB:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    new-instance v1, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    const-string v2, "VINT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->VINT:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    new-instance v2, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    const-string v3, "CERTNET"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->CERTNET:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    new-instance v3, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    const-string v4, "PARTNERNET"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->PARTNERNET:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    new-instance v4, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    const-string v5, "PROD"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->PROD:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    new-instance v5, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    const-string v6, "DNET"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->DNET:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    filled-new-array/range {v0 .. v5}, [Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->$VALUES:[Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;
    .locals 1

    const-class v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->$VALUES:[Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    return-object v0
.end method
