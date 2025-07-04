.class public Lorg/spongycastle/math/ec/MixedNafR2LMultiplier;
.super Lorg/spongycastle/math/ec/AbstractECMultiplier;
.source "MixedNafR2LMultiplier.java"


# instance fields
.field protected additionCoord:I

.field protected doublingCoord:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/math/ec/MixedNafR2LMultiplier;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/math/ec/AbstractECMultiplier;-><init>()V

    iput p1, p0, Lorg/spongycastle/math/ec/MixedNafR2LMultiplier;->additionCoord:I

    iput p2, p0, Lorg/spongycastle/math/ec/MixedNafR2LMultiplier;->doublingCoord:I

    return-void
.end method


# virtual methods
.method protected configureCurve(Lorg/spongycastle/math/ec/ECCurve;I)Lorg/spongycastle/math/ec/ECCurve;
    .locals 2

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1, p2}, Lorg/spongycastle/math/ec/ECCurve;->supportsCoordinateSystem(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->configure()Lorg/spongycastle/math/ec/ECCurve$Config;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/spongycastle/math/ec/ECCurve$Config;->setCoordinateSystem(I)Lorg/spongycastle/math/ec/ECCurve$Config;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve$Config;->create()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Coordinate system "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " not supported by this curve"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected multiplyPositive(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 8

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/math/ec/MixedNafR2LMultiplier;->additionCoord:I

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/math/ec/MixedNafR2LMultiplier;->configureCurve(Lorg/spongycastle/math/ec/ECCurve;I)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/math/ec/MixedNafR2LMultiplier;->doublingCoord:I

    invoke-virtual {p0, v0, v2}, Lorg/spongycastle/math/ec/MixedNafR2LMultiplier;->configureCurve(Lorg/spongycastle/math/ec/ECCurve;I)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-static {p2}, Lorg/spongycastle/math/ec/WNafUtil;->generateCompactNaf(Ljava/math/BigInteger;)[I

    move-result-object p2

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v2, p1}, Lorg/spongycastle/math/ec/ECCurve;->importPoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    const/4 v2, 0x0

    move-object v4, v3

    move v3, v2

    :goto_0
    array-length v5, p2

    if-ge v2, v5, :cond_1

    aget v5, p2, v2

    shr-int/lit8 v6, v5, 0x10

    const v7, 0xffff

    and-int/2addr v5, v7

    add-int/2addr v3, v5

    invoke-virtual {p1, v3}, Lorg/spongycastle/math/ec/ECPoint;->timesPow2(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/spongycastle/math/ec/ECCurve;->importPoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    if-gez v6, :cond_0

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->negate()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    :cond_0
    invoke-virtual {v4, v3}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/ECCurve;->importPoint(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method
