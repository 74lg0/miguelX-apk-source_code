.class final enum Lorg/simpleframework/xml/stream/Formatter$Tag;
.super Ljava/lang/Enum;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/stream/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/simpleframework/xml/stream/Formatter$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/simpleframework/xml/stream/Formatter$Tag;

.field public static final enum COMMENT:Lorg/simpleframework/xml/stream/Formatter$Tag;

.field public static final enum END:Lorg/simpleframework/xml/stream/Formatter$Tag;

.field public static final enum START:Lorg/simpleframework/xml/stream/Formatter$Tag;

.field public static final enum TEXT:Lorg/simpleframework/xml/stream/Formatter$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/simpleframework/xml/stream/Formatter$Tag;

    const-string v1, "COMMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/stream/Formatter$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/simpleframework/xml/stream/Formatter$Tag;->COMMENT:Lorg/simpleframework/xml/stream/Formatter$Tag;

    new-instance v1, Lorg/simpleframework/xml/stream/Formatter$Tag;

    const-string v2, "START"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/stream/Formatter$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/simpleframework/xml/stream/Formatter$Tag;->START:Lorg/simpleframework/xml/stream/Formatter$Tag;

    new-instance v2, Lorg/simpleframework/xml/stream/Formatter$Tag;

    const-string v3, "TEXT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/simpleframework/xml/stream/Formatter$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/simpleframework/xml/stream/Formatter$Tag;->TEXT:Lorg/simpleframework/xml/stream/Formatter$Tag;

    new-instance v3, Lorg/simpleframework/xml/stream/Formatter$Tag;

    const-string v4, "END"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/simpleframework/xml/stream/Formatter$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/simpleframework/xml/stream/Formatter$Tag;->END:Lorg/simpleframework/xml/stream/Formatter$Tag;

    filled-new-array {v0, v1, v2, v3}, [Lorg/simpleframework/xml/stream/Formatter$Tag;

    move-result-object v0

    sput-object v0, Lorg/simpleframework/xml/stream/Formatter$Tag;->$VALUES:[Lorg/simpleframework/xml/stream/Formatter$Tag;

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

.method public static valueOf(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Formatter$Tag;
    .locals 1

    const-class v0, Lorg/simpleframework/xml/stream/Formatter$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/simpleframework/xml/stream/Formatter$Tag;

    return-object p0
.end method

.method public static values()[Lorg/simpleframework/xml/stream/Formatter$Tag;
    .locals 1

    sget-object v0, Lorg/simpleframework/xml/stream/Formatter$Tag;->$VALUES:[Lorg/simpleframework/xml/stream/Formatter$Tag;

    invoke-virtual {v0}, [Lorg/simpleframework/xml/stream/Formatter$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/simpleframework/xml/stream/Formatter$Tag;

    return-object v0
.end method
