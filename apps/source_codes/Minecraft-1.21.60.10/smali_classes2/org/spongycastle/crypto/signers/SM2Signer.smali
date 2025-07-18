.class public Lorg/spongycastle/crypto/signers/SM2Signer;
.super Ljava/lang/Object;
.source "SM2Signer.java"

# interfaces
.implements Lorg/spongycastle/crypto/DSA;
.implements Lorg/spongycastle/math/ec/ECConstants;


# instance fields
.field private curveLength:I

.field private ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

.field private ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

.field private final kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

.field private pubPoint:Lorg/spongycastle/math/ec/ECPoint;

.field private random:Ljava/security/SecureRandom;

.field private userID:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/spongycastle/crypto/signers/RandomDSAKCalculator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/signers/RandomDSAKCalculator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    return-void
.end method

.method private addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 2

    iget v0, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->curveLength:I

    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object p2

    const/4 v0, 0x0

    array-length v1, p2

    invoke-interface {p1, p2, v0, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method private addUserID(Lorg/spongycastle/crypto/Digest;[B)V
    .locals 2

    array-length v0, p2

    mul-int/lit8 v0, v0, 0x8

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    const/4 v0, 0x0

    array-length v1, p2

    invoke-interface {p1, p2, v0, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method private getZ(Lorg/spongycastle/crypto/Digest;)[B
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->userID:[B

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/signers/SM2Signer;->addUserID(Lorg/spongycastle/crypto/Digest;[B)V

    iget-object v0, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/signers/SM2Signer;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    iget-object v0, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getB()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/signers/SM2Signer;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    iget-object v0, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/signers/SM2Signer;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    iget-object v0, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/signers/SM2Signer;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    iget-object v0, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->pubPoint:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/signers/SM2Signer;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    iget-object v0, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->pubPoint:Lorg/spongycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/signers/SM2Signer;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method


# virtual methods
.method protected calculateE([B)Ljava/math/BigInteger;
    .locals 2

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method protected createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;
    .locals 1

    new-instance v0, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 8

    new-instance v0, Lorg/spongycastle/crypto/digests/SM3Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SM3Digest;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/signers/SM2Signer;->getZ(Lorg/spongycastle/crypto/Digest;)[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/spongycastle/crypto/digests/SM3Digest;->update([BII)V

    array-length v1, p1

    invoke-virtual {v0, p1, v3, v1}, Lorg/spongycastle/crypto/digests/SM3Digest;->update([BII)V

    invoke-virtual {v0}, Lorg/spongycastle/crypto/digests/SM3Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {v0, p1, v3}, Lorg/spongycastle/crypto/digests/SM3Digest;->doFinal([BI)I

    iget-object v0, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/signers/SM2Signer;->calculateE([B)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v1, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/signers/SM2Signer;->createBasePointMultiplier()Lorg/spongycastle/math/ec/ECMultiplier;

    move-result-object v2

    :cond_0
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v4}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->nextK()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Lorg/spongycastle/math/ec/ECMultiplier;->multiply(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lorg/spongycastle/crypto/signers/SM2Signer;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lorg/spongycastle/crypto/signers/SM2Signer;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v6, Lorg/spongycastle/crypto/signers/SM2Signer;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/math/BigInteger;

    aput-object v5, p1, v3

    const/4 v0, 0x1

    aput-object v4, p1, v0

    return-object p1
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 1

    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithID;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithID;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithID;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithID;->getID()[B

    move-result-object p2

    iput-object p2, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->userID:[B

    move-object p2, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->userID:[B

    :goto_0
    if-eqz p1, :cond_2

    instance-of p1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_1

    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/crypto/params/ECKeyParameters;

    iput-object p1, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    iget-object v0, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    goto :goto_1

    :cond_1
    check-cast p2, Lorg/spongycastle/crypto/params/ECKeyParameters;

    iput-object p2, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    iget-object p2, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->kCalculator:Lorg/spongycastle/crypto/signers/DSAKCalculator;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object p1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-interface {p2, p1, v0}, Lorg/spongycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    :goto_1
    iget-object p1, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    iget-object p2, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast p2, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->pubPoint:Lorg/spongycastle/math/ec/ECPoint;

    goto :goto_2

    :cond_2
    check-cast p2, Lorg/spongycastle/crypto/params/ECKeyParameters;

    iput-object p2, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    iget-object p1, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast p1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->pubPoint:Lorg/spongycastle/math/ec/ECPoint;

    :goto_2
    iget-object p1, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->curveLength:I

    return-void
.end method

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 6

    iget-object v0, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/crypto/signers/SM2Signer;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_3

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/spongycastle/crypto/signers/SM2Signer;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_3

    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    new-instance v3, Lorg/spongycastle/crypto/digests/SM3Digest;

    invoke-direct {v3}, Lorg/spongycastle/crypto/digests/SM3Digest;-><init>()V

    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/signers/SM2Signer;->getZ(Lorg/spongycastle/crypto/Digest;)[B

    move-result-object v4

    array-length v5, v4

    invoke-virtual {v3, v4, v2, v5}, Lorg/spongycastle/crypto/digests/SM3Digest;->update([BII)V

    array-length v4, p1

    invoke-virtual {v3, p1, v2, v4}, Lorg/spongycastle/crypto/digests/SM3Digest;->update([BII)V

    invoke-virtual {v3}, Lorg/spongycastle/crypto/digests/SM3Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {v3, p1, v2}, Lorg/spongycastle/crypto/digests/SM3Digest;->doFinal([BI)I

    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/signers/SM2Signer;->calculateE([B)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/crypto/signers/SM2Signer;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    iget-object v2, p0, Lorg/spongycastle/crypto/signers/SM2Signer;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2, p3}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p3

    invoke-virtual {v1, v3}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p3

    invoke-virtual {p3}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p3

    invoke-virtual {p3}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p3

    invoke-virtual {p3}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v2
.end method
