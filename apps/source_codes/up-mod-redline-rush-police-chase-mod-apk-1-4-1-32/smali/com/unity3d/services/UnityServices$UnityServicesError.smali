.class public final enum Lcom/unity3d/services/UnityServices$UnityServicesError;
.super Ljava/lang/Enum;
.source "UnityServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/UnityServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnityServicesError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/services/UnityServices$UnityServicesError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/services/UnityServices$UnityServicesError;

.field public static final enum INIT_SANITY_CHECK_FAIL:Lcom/unity3d/services/UnityServices$UnityServicesError;

.field public static final enum INVALID_ARGUMENT:Lcom/unity3d/services/UnityServices$UnityServicesError;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Lcom/unity3d/services/UnityServices$UnityServicesError;

    const-string v1, "INVALID_ARGUMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/services/UnityServices$UnityServicesError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/services/UnityServices$UnityServicesError;->INVALID_ARGUMENT:Lcom/unity3d/services/UnityServices$UnityServicesError;

    .line 18
    new-instance v1, Lcom/unity3d/services/UnityServices$UnityServicesError;

    const-string v3, "INIT_SANITY_CHECK_FAIL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/services/UnityServices$UnityServicesError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/services/UnityServices$UnityServicesError;->INIT_SANITY_CHECK_FAIL:Lcom/unity3d/services/UnityServices$UnityServicesError;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/unity3d/services/UnityServices$UnityServicesError;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 16
    sput-object v3, Lcom/unity3d/services/UnityServices$UnityServicesError;->$VALUES:[Lcom/unity3d/services/UnityServices$UnityServicesError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/services/UnityServices$UnityServicesError;
    .locals 1

    .line 16
    const-class v0, Lcom/unity3d/services/UnityServices$UnityServicesError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/services/UnityServices$UnityServicesError;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/services/UnityServices$UnityServicesError;
    .locals 1

    .line 16
    sget-object v0, Lcom/unity3d/services/UnityServices$UnityServicesError;->$VALUES:[Lcom/unity3d/services/UnityServices$UnityServicesError;

    invoke-virtual {v0}, [Lcom/unity3d/services/UnityServices$UnityServicesError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/services/UnityServices$UnityServicesError;

    return-object v0
.end method
