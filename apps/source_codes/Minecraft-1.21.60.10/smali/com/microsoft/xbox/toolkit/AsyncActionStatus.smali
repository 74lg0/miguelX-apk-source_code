.class public final enum Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
.super Ljava/lang/Enum;
.source "AsyncActionStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/toolkit/AsyncActionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

.field public static final enum FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

.field private static final MERGE_MATRIX:[[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

.field public static final enum NO_CHANGE:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

.field public static final enum NO_OP_FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

.field public static final enum NO_OP_SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

.field public static final enum SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    new-instance v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    const-string v3, "FAIL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    new-instance v3, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    const-string v5, "NO_CHANGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_CHANGE:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    new-instance v5, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    const-string v7, "NO_OP_SUCCESS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    new-instance v7, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    const-string v9, "NO_OP_FAIL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    filled-new-array {v0, v1, v3, v5, v7}, [Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v9

    sput-object v9, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->$VALUES:[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    const/4 v9, 0x5

    new-array v9, v9, [[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    filled-new-array {v0, v1, v0, v0, v1}, [Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v11

    aput-object v11, v9, v2

    filled-new-array {v1, v1, v1, v1, v1}, [Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v2

    aput-object v2, v9, v4

    filled-new-array {v0, v1, v3, v5, v7}, [Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v2

    aput-object v2, v9, v6

    filled-new-array {v0, v1, v5, v5, v7}, [Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    aput-object v0, v9, v8

    filled-new-array {v1, v1, v7, v7, v7}, [Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    aput-object v0, v9, v10

    sput-object v9, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->MERGE_MATRIX:[[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

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

.method public static getIsFail(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)Z
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static varargs merge(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    sget-object v3, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->MERGE_MATRIX:[[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result p0

    aget-object p0, v3, p0

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result v2

    aget-object p0, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 1

    const-class v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->$VALUES:[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0
.end method
