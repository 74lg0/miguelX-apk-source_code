.class public Lorg/jose4j/jwt/NumericDate;
.super Ljava/lang/Object;
.source "NumericDate.java"


# static fields
.field private static final CONVERSION:J = 0x3e8L


# instance fields
.field private value:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/jose4j/jwt/NumericDate;->setValue(J)V

    return-void
.end method

.method private canConvertToMillis()Z
    .locals 8

    invoke-virtual {p0}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    cmp-long v7, v2, v0

    if-ltz v7, :cond_2

    :cond_0
    if-gez v6, :cond_1

    cmp-long v0, v2, v0

    if-gtz v0, :cond_2

    :cond_1
    if-nez v6, :cond_3

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static fromMilliseconds(J)Lorg/jose4j/jwt/NumericDate;
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    invoke-static {p0, p1}, Lorg/jose4j/jwt/NumericDate;->fromSeconds(J)Lorg/jose4j/jwt/NumericDate;

    move-result-object p0

    return-object p0
.end method

.method public static fromSeconds(J)Lorg/jose4j/jwt/NumericDate;
    .locals 1

    new-instance v0, Lorg/jose4j/jwt/NumericDate;

    invoke-direct {v0, p0, p1}, Lorg/jose4j/jwt/NumericDate;-><init>(J)V

    return-object v0
.end method

.method public static now()Lorg/jose4j/jwt/NumericDate;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/jose4j/jwt/NumericDate;->fromMilliseconds(J)Lorg/jose4j/jwt/NumericDate;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addSeconds(J)V
    .locals 2

    iget-wide v0, p0, Lorg/jose4j/jwt/NumericDate;->value:J

    invoke-static {v0, v1, p1, p2}, Lorg/jose4j/lang/Maths;->add(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/jose4j/jwt/NumericDate;->setValue(J)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/jose4j/jwt/NumericDate;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/jose4j/jwt/NumericDate;->value:J

    check-cast p1, Lorg/jose4j/jwt/NumericDate;

    iget-wide v2, p1, Lorg/jose4j/jwt/NumericDate;->value:J

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

    iget-wide v0, p0, Lorg/jose4j/jwt/NumericDate;->value:J

    return-wide v0
.end method

.method public getValueInMillis()J
    .locals 7

    invoke-virtual {p0}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    invoke-direct {p0}, Lorg/jose4j/jwt/NumericDate;->canConvertToMillis()Z

    move-result v4

    if-eqz v4, :cond_0

    return-wide v2

    :cond_0
    new-instance v4, Ljava/lang/ArithmeticException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "converting "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds to milliseconds (x1000) resulted in long integer overflow ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/jose4j/jwt/NumericDate;->value:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isAfter(Lorg/jose4j/jwt/NumericDate;)Z
    .locals 4

    iget-wide v0, p0, Lorg/jose4j/jwt/NumericDate;->value:J

    invoke-virtual {p1}, Lorg/jose4j/jwt/NumericDate;->getValue()J

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

.method public isBefore(Lorg/jose4j/jwt/NumericDate;)Z
    .locals 4

    iget-wide v0, p0, Lorg/jose4j/jwt/NumericDate;->value:J

    invoke-virtual {p1}, Lorg/jose4j/jwt/NumericDate;->getValue()J

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

.method public isOnOrAfter(Lorg/jose4j/jwt/NumericDate;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jose4j/jwt/NumericDate;->isBefore(Lorg/jose4j/jwt/NumericDate;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public setValue(J)V
    .locals 0

    iput-wide p1, p0, Lorg/jose4j/jwt/NumericDate;->value:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NumericDate{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jose4j/jwt/NumericDate;->getValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/jose4j/jwt/NumericDate;->canConvertToMillis()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/jose4j/jwt/NumericDate;->getValueInMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    const-string v3, " -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
