.class public Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source "KeyPairGeneratorSpi.java"


# instance fields
.field algorithm:Ljava/lang/String;

.field ecParams:Ljava/lang/Object;

.field engine:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

.field initialised:Z

.field param:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;

.field strength:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "ECGOST3410"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    new-instance v2, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v2}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    iput-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->engine:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->algorithm:Ljava/lang/String;

    const/16 v0, 0xef

    iput v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->strength:I

    iput-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->initialised:Z

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    iget-boolean v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->initialised:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->engine:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    instance-of v3, v2, Lorg/spongycastle/jce/spec/ECParameterSpec;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/spongycastle/jce/spec/ECParameterSpec;

    new-instance v3, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;

    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->algorithm:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Lorg/spongycastle/jce/spec/ECParameterSpec;)V

    new-instance v1, Ljava/security/KeyPair;

    new-instance v4, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;

    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->algorithm:Ljava/lang/String;

    invoke-direct {v4, v5, v0, v3, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;Lorg/spongycastle/jce/spec/ECParameterSpec;)V

    invoke-direct {v1, v3, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;

    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->algorithm:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;)V

    new-instance v1, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;

    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->algorithm:Ljava/lang/String;

    invoke-direct {v1, v4, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2

    :cond_1
    check-cast v2, Ljava/security/spec/ECParameterSpec;

    new-instance v3, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;

    iget-object v4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->algorithm:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPublicKeyParameters;Ljava/security/spec/ECParameterSpec;)V

    new-instance v1, Ljava/security/KeyPair;

    new-instance v4, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;

    iget-object v5, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->algorithm:Ljava/lang/String;

    invoke-direct {v4, v5, v0, v3, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;-><init>(Ljava/lang/String;Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;Ljava/security/spec/ECParameterSpec;)V

    invoke-direct {v1, v3, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EC Key Pair Generator not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    iput p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->strength:I

    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    if-eqz p1, :cond_0

    :try_start_0
    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "key size not configurable."

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "unknown key size."

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Lorg/spongycastle/jce/spec/ECParameterSpec;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/spec/ECParameterSpec;

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    new-instance p1, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v2, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p1, v2, p2}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->param:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    iget-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->engine:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-virtual {p2, p1}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    iput-boolean v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->initialised:Z

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Ljava/security/spec/ECParameterSpec;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p1

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-static {p1, v3, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lorg/spongycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    new-instance v3, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v4, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v0

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v4, p1, v2, v5, v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v3, v4, p2}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    iput-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->param:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->engine:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-virtual {p1, v3}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    iput-boolean v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->initialised:Z

    goto/16 :goto_2

    :cond_1
    instance-of v0, p1, Ljava/security/spec/ECGenParameterSpec;

    if-nez v0, :cond_5

    instance-of v3, p1, Lorg/spongycastle/jce/spec/ECNamedCurveGenParameterSpec;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    new-instance p1, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v2, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p1, v2, p2}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->param:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    iget-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->engine:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-virtual {p2, p1}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    iput-boolean v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->initialised:Z

    goto/16 :goto_2

    :cond_3
    if-nez p1, :cond_4

    sget-object p2, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {p2}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object p2

    if-nez p2, :cond_4

    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "null parameter passed but no implicitCA set"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parameter object not a ECParameterSpec: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    :goto_0
    if-eqz v0, :cond_6

    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    check-cast p1, Lorg/spongycastle/jce/spec/ECNamedCurveGenParameterSpec;

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ECNamedCurveGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v4, p1

    invoke-static {v4}, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getByName(Ljava/lang/String;)Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance v0, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v9

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lorg/spongycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->ecParams:Ljava/lang/Object;

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p1

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-static {p1, v3, v2}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->convertPoint(Lorg/spongycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    new-instance v3, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    new-instance v4, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v0

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v4, p1, v2, v5, v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v3, v4, p2}, Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/spongycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    iput-object v3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->param:Lorg/spongycastle/crypto/params/ECKeyGenerationParameters;

    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->engine:Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;

    invoke-virtual {p1, v3}, Lorg/spongycastle/crypto/generators/ECKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    iput-boolean v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ecgost/KeyPairGeneratorSpi;->initialised:Z

    :goto_2
    return-void

    :cond_7
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "unknown curve name: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
