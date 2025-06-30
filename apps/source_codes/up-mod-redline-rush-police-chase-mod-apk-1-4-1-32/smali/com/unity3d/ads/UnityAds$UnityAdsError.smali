.class public final enum Lcom/unity3d/ads/UnityAds$UnityAdsError;
.super Ljava/lang/Enum;
.source "UnityAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/UnityAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnityAdsError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unity3d/ads/UnityAds$UnityAdsError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum AD_BLOCKER_DETECTED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum DEVICE_ID_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum FILE_IO_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum INITIALIZE_FAILED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum INIT_SANITY_CHECK_FAIL:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum NOT_INITIALIZED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum SHOW_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum VIDEO_PLAYER_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 58
    new-instance v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "NOT_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->NOT_INITIALIZED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 59
    new-instance v1, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v3, "INITIALIZE_FAILED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INITIALIZE_FAILED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 60
    new-instance v3, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v5, "INVALID_ARGUMENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 61
    new-instance v5, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v7, "VIDEO_PLAYER_ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/unity3d/ads/UnityAds$UnityAdsError;->VIDEO_PLAYER_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 62
    new-instance v7, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v9, "INIT_SANITY_CHECK_FAIL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INIT_SANITY_CHECK_FAIL:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 63
    new-instance v9, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v11, "AD_BLOCKER_DETECTED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/unity3d/ads/UnityAds$UnityAdsError;->AD_BLOCKER_DETECTED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 64
    new-instance v11, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v13, "FILE_IO_ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/unity3d/ads/UnityAds$UnityAdsError;->FILE_IO_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 65
    new-instance v13, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v15, "DEVICE_ID_ERROR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/unity3d/ads/UnityAds$UnityAdsError;->DEVICE_ID_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 66
    new-instance v15, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v14, "SHOW_ERROR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/unity3d/ads/UnityAds$UnityAdsError;->SHOW_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 67
    new-instance v14, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v12, "INTERNAL_ERROR"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/unity3d/ads/UnityAds$UnityAdsError;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 57
    sput-object v12, Lcom/unity3d/ads/UnityAds$UnityAdsError;->$VALUES:[Lcom/unity3d/ads/UnityAds$UnityAdsError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$UnityAdsError;
    .locals 1

    .line 57
    const-class v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    return-object p0
.end method

.method public static values()[Lcom/unity3d/ads/UnityAds$UnityAdsError;
    .locals 1

    .line 57
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->$VALUES:[Lcom/unity3d/ads/UnityAds$UnityAdsError;

    invoke-virtual {v0}, [Lcom/unity3d/ads/UnityAds$UnityAdsError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/UnityAds$UnityAdsError;

    return-object v0
.end method
