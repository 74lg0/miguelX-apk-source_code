.class public final enum Lcom/unity3d/services/purchasing/core/Store;
.super Ljava/lang/Enum;
.source "Store.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/purchasing/core/Store;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/services/purchasing/core/Store;

.field public static final enum AMAZON_APP_STORE:Lcom/unity3d/services/purchasing/core/Store;

.field public static final enum APPLE_APP_STORE:Lcom/unity3d/services/purchasing/core/Store;

.field public static final enum CLOUD_MOOLAH:Lcom/unity3d/services/purchasing/core/Store;

.field public static final enum FACEBOOK_STORE:Lcom/unity3d/services/purchasing/core/Store;

.field public static final enum GOOGLE_PLAY:Lcom/unity3d/services/purchasing/core/Store;

.field public static final enum MAC_APP_STORE:Lcom/unity3d/services/purchasing/core/Store;

.field public static final enum NOT_SPECIFIED:Lcom/unity3d/services/purchasing/core/Store;

.field public static final enum SAMSUNG_APPS:Lcom/unity3d/services/purchasing/core/Store;

.field public static final enum TIZEN_STORE:Lcom/unity3d/services/purchasing/core/Store;

.field public static final enum WIN_RT:Lcom/unity3d/services/purchasing/core/Store;

.field public static final enum XIAOMI_MI_PAY:Lcom/unity3d/services/purchasing/core/Store;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 4
    new-instance v0, Lcom/unity3d/services/purchasing/core/Store;

    const-string v1, "NOT_SPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/purchasing/core/Store;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/purchasing/core/Store;->NOT_SPECIFIED:Lcom/unity3d/services/purchasing/core/Store;

    .line 5
    new-instance v1, Lcom/unity3d/services/purchasing/core/Store;

    const-string v3, "GOOGLE_PLAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/services/purchasing/core/Store;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/purchasing/core/Store;->GOOGLE_PLAY:Lcom/unity3d/services/purchasing/core/Store;

    .line 6
    new-instance v3, Lcom/unity3d/services/purchasing/core/Store;

    const-string v5, "AMAZON_APP_STORE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/services/purchasing/core/Store;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/services/purchasing/core/Store;->AMAZON_APP_STORE:Lcom/unity3d/services/purchasing/core/Store;

    .line 7
    new-instance v5, Lcom/unity3d/services/purchasing/core/Store;

    const-string v7, "CLOUD_MOOLAH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/unity3d/services/purchasing/core/Store;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/services/purchasing/core/Store;->CLOUD_MOOLAH:Lcom/unity3d/services/purchasing/core/Store;

    .line 8
    new-instance v7, Lcom/unity3d/services/purchasing/core/Store;

    const-string v9, "SAMSUNG_APPS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/unity3d/services/purchasing/core/Store;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/services/purchasing/core/Store;->SAMSUNG_APPS:Lcom/unity3d/services/purchasing/core/Store;

    .line 9
    new-instance v9, Lcom/unity3d/services/purchasing/core/Store;

    const-string v11, "XIAOMI_MI_PAY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/unity3d/services/purchasing/core/Store;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/services/purchasing/core/Store;->XIAOMI_MI_PAY:Lcom/unity3d/services/purchasing/core/Store;

    .line 10
    new-instance v11, Lcom/unity3d/services/purchasing/core/Store;

    const-string v13, "MAC_APP_STORE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/unity3d/services/purchasing/core/Store;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/unity3d/services/purchasing/core/Store;->MAC_APP_STORE:Lcom/unity3d/services/purchasing/core/Store;

    .line 11
    new-instance v13, Lcom/unity3d/services/purchasing/core/Store;

    const-string v15, "APPLE_APP_STORE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/unity3d/services/purchasing/core/Store;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/unity3d/services/purchasing/core/Store;->APPLE_APP_STORE:Lcom/unity3d/services/purchasing/core/Store;

    .line 12
    new-instance v15, Lcom/unity3d/services/purchasing/core/Store;

    const-string v14, "WIN_RT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/unity3d/services/purchasing/core/Store;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/unity3d/services/purchasing/core/Store;->WIN_RT:Lcom/unity3d/services/purchasing/core/Store;

    .line 13
    new-instance v14, Lcom/unity3d/services/purchasing/core/Store;

    const-string v12, "TIZEN_STORE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/unity3d/services/purchasing/core/Store;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/unity3d/services/purchasing/core/Store;->TIZEN_STORE:Lcom/unity3d/services/purchasing/core/Store;

    .line 14
    new-instance v12, Lcom/unity3d/services/purchasing/core/Store;

    const-string v10, "FACEBOOK_STORE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/unity3d/services/purchasing/core/Store;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/unity3d/services/purchasing/core/Store;->FACEBOOK_STORE:Lcom/unity3d/services/purchasing/core/Store;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/unity3d/services/purchasing/core/Store;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    .line 3
    sput-object v10, Lcom/unity3d/services/purchasing/core/Store;->$VALUES:[Lcom/unity3d/services/purchasing/core/Store;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/purchasing/core/Store;
    .locals 1

    .line 3
    const-class v0, Lcom/unity3d/services/purchasing/core/Store;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/purchasing/core/Store;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/purchasing/core/Store;
    .locals 1

    .line 3
    sget-object v0, Lcom/unity3d/services/purchasing/core/Store;->$VALUES:[Lcom/unity3d/services/purchasing/core/Store;

    invoke-virtual {v0}, [Lcom/unity3d/services/purchasing/core/Store;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/purchasing/core/Store;

    return-object v0
.end method
