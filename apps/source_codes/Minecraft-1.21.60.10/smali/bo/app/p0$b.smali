.class public final enum Lbo/app/p0$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbo/app/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbo/app/p0$b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lbo/app/p0$b;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "ADD_PENDING_BRAZE_EVENT",
        "ADD_BRAZE_EVENT",
        "FLUSH_PENDING_BRAZE_EVENTS",
        "ADD_REQUEST",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final enum b:Lbo/app/p0$b;

.field public static final enum c:Lbo/app/p0$b;

.field public static final enum d:Lbo/app/p0$b;

.field public static final enum e:Lbo/app/p0$b;

.field private static final synthetic f:[Lbo/app/p0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lbo/app/p0$b;

    const-string v1, "ADD_PENDING_BRAZE_EVENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbo/app/p0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbo/app/p0$b;->b:Lbo/app/p0$b;

    new-instance v0, Lbo/app/p0$b;

    const-string v1, "ADD_BRAZE_EVENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lbo/app/p0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbo/app/p0$b;->c:Lbo/app/p0$b;

    new-instance v0, Lbo/app/p0$b;

    const-string v1, "FLUSH_PENDING_BRAZE_EVENTS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lbo/app/p0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbo/app/p0$b;->d:Lbo/app/p0$b;

    new-instance v0, Lbo/app/p0$b;

    const-string v1, "ADD_REQUEST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lbo/app/p0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbo/app/p0$b;->e:Lbo/app/p0$b;

    invoke-static {}, Lbo/app/p0$b;->a()[Lbo/app/p0$b;

    move-result-object v0

    sput-object v0, Lbo/app/p0$b;->f:[Lbo/app/p0$b;

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

.method private static final synthetic a()[Lbo/app/p0$b;
    .locals 4

    sget-object v0, Lbo/app/p0$b;->b:Lbo/app/p0$b;

    sget-object v1, Lbo/app/p0$b;->c:Lbo/app/p0$b;

    sget-object v2, Lbo/app/p0$b;->d:Lbo/app/p0$b;

    sget-object v3, Lbo/app/p0$b;->e:Lbo/app/p0$b;

    filled-new-array {v0, v1, v2, v3}, [Lbo/app/p0$b;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lbo/app/p0$b;
    .locals 1

    const-class v0, Lbo/app/p0$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbo/app/p0$b;

    return-object p0
.end method

.method public static values()[Lbo/app/p0$b;
    .locals 1

    sget-object v0, Lbo/app/p0$b;->f:[Lbo/app/p0$b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbo/app/p0$b;

    return-object v0
.end method
