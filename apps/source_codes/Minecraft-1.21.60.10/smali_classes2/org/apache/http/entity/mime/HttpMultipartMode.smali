.class public final enum Lorg/apache/http/entity/mime/HttpMultipartMode;
.super Ljava/lang/Enum;
.source "HttpMultipartMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/http/entity/mime/HttpMultipartMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/http/entity/mime/HttpMultipartMode;

.field public static final enum BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

.field public static final enum STRICT:Lorg/apache/http/entity/mime/HttpMultipartMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/http/entity/mime/HttpMultipartMode;

    const-string v1, "STRICT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/http/entity/mime/HttpMultipartMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/http/entity/mime/HttpMultipartMode;->STRICT:Lorg/apache/http/entity/mime/HttpMultipartMode;

    new-instance v1, Lorg/apache/http/entity/mime/HttpMultipartMode;

    const-string v2, "BROWSER_COMPATIBLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/http/entity/mime/HttpMultipartMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    filled-new-array {v0, v1}, [Lorg/apache/http/entity/mime/HttpMultipartMode;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/mime/HttpMultipartMode;->$VALUES:[Lorg/apache/http/entity/mime/HttpMultipartMode;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/entity/mime/HttpMultipartMode;
    .locals 1

    const-class v0, Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/http/entity/mime/HttpMultipartMode;

    return-object p0
.end method

.method public static values()[Lorg/apache/http/entity/mime/HttpMultipartMode;
    .locals 1

    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipartMode;->$VALUES:[Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-virtual {v0}, [Lorg/apache/http/entity/mime/HttpMultipartMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/entity/mime/HttpMultipartMode;

    return-object v0
.end method
