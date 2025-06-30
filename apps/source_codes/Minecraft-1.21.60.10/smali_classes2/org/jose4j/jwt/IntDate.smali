.class public Lorg/jose4j/jwt/IntDate;
.super Ljava/lang/Object;
.source "IntDate.java"


# static fields
.field private static final CONVERSION:J = 0x3e8L


# instance fields
.field private value:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/jose4j/jwt/IntDate;->value:J

    return-void
.end method

.method public static fromMillis(J)Lorg/jose4j/jwt/IntDate;
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    invoke-static {p0, p1}, Lorg/jose4j/jwt/IntDate;->fromSeconds(J)Lorg/jose4j/jwt/IntDate;

    move-result-object p0

    return-object p0
.end method

.method public static fromSeconds(J)Lorg/jose4j/jwt/IntDate;
    .locals 1

    new-instance v0, Lorg/jose4j/jwt/IntDate;

    invoke-direct {v0, p0, p1}, Lorg/jose4j/jwt/IntDate;-><init>(J)V

    return-object v0
.end method

.method public static now()Lorg/jose4j/jwt/IntDate;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jose4j/jwt/IntDate;->fromMillis(J)Lorg/jose4j/jwt/IntDate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addSeconds(I)V
    .locals 2

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/jose4j/jwt/IntDate;->addSeconds(J)V

    return-void
.end method

.method public addSeconds(J)V
    .locals 2

    iget-wide v0, p0, Lorg/jose4j/jwt/IntDate;->value:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/jose4j/jwt/IntDate;->value:J

    return-void
.end method

.method public after(Lorg/jose4j/jwt/IntDate;)Z
    .locals 4

    iget-wide v0, p0, Lorg/jose4j/jwt/IntDate;->value:J

    invoke-virtual {p1}, Lorg/jose4j/jwt/IntDate;->getValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public before(Lorg/jose4j/jwt/IntDate;)Z
    .locals 4

    iget-wide v0, p0, Lorg/jose4j/jwt/IntDate;->value:J

    invoke-virtual {p1}, Lorg/jose4j/jwt/IntDate;->getValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/jose4j/jwt/IntDate;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/jose4j/jwt/IntDate;->value:J

    check-cast p1, Lorg/jose4j/jwt/IntDate;

    iget-wide v2, p1, Lorg/jose4j/jwt/IntDate;->value:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getValue()J
    .locals 2

    iget-wide v0, p0, Lorg/jose4j/jwt/IntDate;->value:J

    return-wide v0
.end method

.method public getValueInMillis()J
    .locals 4

    invoke-virtual {p0}, Lorg/jose4j/jwt/IntDate;->getValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/jose4j/jwt/IntDate;->value:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IntDate{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jose4j/jwt/IntDate;->getValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/jose4j/jwt/IntDate;->getValueInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
