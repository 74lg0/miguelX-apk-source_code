.class public final enum Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;
.super Ljava/lang/Enum;
.source "BackgroundThreadWaitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WaitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

.field public static final enum ApplicationBar:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

.field public static final enum ListLayout:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

.field public static final enum ListScroll:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

.field public static final enum Navigation:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

.field public static final enum PivotScroll:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    const-string v1, "Navigation"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->Navigation:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    new-instance v1, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    const-string v2, "ApplicationBar"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->ApplicationBar:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    new-instance v2, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    const-string v3, "ListScroll"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->ListScroll:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    new-instance v3, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    const-string v4, "ListLayout"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->ListLayout:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    new-instance v4, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    const-string v5, "PivotScroll"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->PivotScroll:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->$VALUES:[Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;
    .locals 1

    const-class v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->$VALUES:[Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    return-object v0
.end method
