.class public final Lbo/app/v3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/braze/models/IPutIntoJson;
.implements Lbo/app/f2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbo/app/v3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/braze/models/IPutIntoJson<",
        "Lorg/json/JSONObject;",
        ">;",
        "Lbo/app/f2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u000eB\u0017\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0008\u0010\u0004\u001a\u00020\u0002H\u0016R\u0014\u0010\u0008\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lbo/app/v3;",
        "Lcom/braze/models/IPutIntoJson;",
        "Lorg/json/JSONObject;",
        "Lbo/app/f2;",
        "v",
        "",
        "e",
        "()Z",
        "isEmpty",
        "",
        "lastConfigUnixTimestampSeconds",
        "isFirstTimeConfigRequest",
        "<init>",
        "(JZ)V",
        "a",
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
.field public static final d:Lbo/app/v3$a;


# instance fields
.field private final b:J

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbo/app/v3$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbo/app/v3$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbo/app/v3;->d:Lbo/app/v3$a;

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lbo/app/v3;->b:J

    iput-boolean p3, p0, Lbo/app/v3;->c:Z

    return-void
.end method


# virtual methods
.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lbo/app/v3;->c:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic forJsonPut()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbo/app/v3;->v()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public v()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-wide v1, p0, Lbo/app/v3;->b:J

    const-string v3, "config_time"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method
