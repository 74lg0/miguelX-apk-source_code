.class Lorg/simpleframework/xml/core/KeyBuilder$Key;
.super Ljava/lang/Object;
.source "KeyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/core/KeyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation


# instance fields
.field private final type:Lorg/simpleframework/xml/core/KeyBuilder$KeyType;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/KeyBuilder$KeyType;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/simpleframework/xml/core/KeyBuilder$Key;->value:Ljava/lang/String;

    iput-object p1, p0, Lorg/simpleframework/xml/core/KeyBuilder$Key;->type:Lorg/simpleframework/xml/core/KeyBuilder$KeyType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/simpleframework/xml/core/KeyBuilder$Key;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/simpleframework/xml/core/KeyBuilder$Key;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/KeyBuilder$Key;->equals(Lorg/simpleframework/xml/core/KeyBuilder$Key;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Lorg/simpleframework/xml/core/KeyBuilder$Key;)Z
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/KeyBuilder$Key;->type:Lorg/simpleframework/xml/core/KeyBuilder$KeyType;

    iget-object v1, p1, Lorg/simpleframework/xml/core/KeyBuilder$Key;->type:Lorg/simpleframework/xml/core/KeyBuilder$KeyType;

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lorg/simpleframework/xml/core/KeyBuilder$Key;->value:Ljava/lang/String;

    iget-object v0, p0, Lorg/simpleframework/xml/core/KeyBuilder$Key;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/KeyBuilder$Key;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/KeyBuilder$Key;->value:Ljava/lang/String;

    return-object v0
.end method
