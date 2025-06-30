.class public final enum Lcom/utils/GPlayService$SigninState;
.super Ljava/lang/Enum;
.source "GPlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/utils/GPlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "SigninState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/utils/GPlayService$SigninState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/utils/GPlayService$SigninState;

.field public static final enum Failed:Lcom/utils/GPlayService$SigninState;

.field public static final enum InProgress:Lcom/utils/GPlayService$SigninState;

.field public static final enum Succeeded:Lcom/utils/GPlayService$SigninState;

.field public static final enum Unknown:Lcom/utils/GPlayService$SigninState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 49
    new-instance v0, Lcom/utils/GPlayService$SigninState;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/utils/GPlayService$SigninState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/utils/GPlayService$SigninState;->Unknown:Lcom/utils/GPlayService$SigninState;

    .line 50
    new-instance v1, Lcom/utils/GPlayService$SigninState;

    const-string v3, "InProgress"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/utils/GPlayService$SigninState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/utils/GPlayService$SigninState;->InProgress:Lcom/utils/GPlayService$SigninState;

    .line 51
    new-instance v3, Lcom/utils/GPlayService$SigninState;

    const-string v5, "Failed"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/utils/GPlayService$SigninState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/utils/GPlayService$SigninState;->Failed:Lcom/utils/GPlayService$SigninState;

    .line 52
    new-instance v5, Lcom/utils/GPlayService$SigninState;

    const-string v7, "Succeeded"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/utils/GPlayService$SigninState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/utils/GPlayService$SigninState;->Succeeded:Lcom/utils/GPlayService$SigninState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/utils/GPlayService$SigninState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 47
    sput-object v7, Lcom/utils/GPlayService$SigninState;->$VALUES:[Lcom/utils/GPlayService$SigninState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/utils/GPlayService$SigninState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 47
    const-class v0, Lcom/utils/GPlayService$SigninState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/utils/GPlayService$SigninState;

    return-object p0
.end method

.method public static values()[Lcom/utils/GPlayService$SigninState;
    .locals 1

    .line 47
    sget-object v0, Lcom/utils/GPlayService$SigninState;->$VALUES:[Lcom/utils/GPlayService$SigninState;

    invoke-virtual {v0}, [Lcom/utils/GPlayService$SigninState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/utils/GPlayService$SigninState;

    return-object v0
.end method
