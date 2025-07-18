.class public Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;
.super Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;
.source "CipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi$PKCS1v1_5Padding;,
        Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi$NoPadding;
    }
.end annotation


# instance fields
.field private cipher:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

.field private engineParams:Ljava/security/AlgorithmParameters;

.field private paramSpec:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1

    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;-><init>()V

    new-instance v0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->cipher:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    return-void
.end method

.method private getOutput()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const-string v0, "unable to decrypt block"

    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->cipher:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->doFinal()[B

    move-result-object v0
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Lorg/spongycastle/jcajce/provider/util/BadBlockException;

    invoke-direct {v2, v0, v1}, Lorg/spongycastle/jcajce/provider/util/BadBlockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi$1;-><init>(Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;Ljava/lang/String;Lorg/spongycastle/crypto/InvalidCipherTextException;)V

    throw v2
.end method

.method private initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/jcajce/provider/util/DigestFactory;->getDigest(Ljava/lang/String;)Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    new-instance v2, Lorg/spongycastle/crypto/encodings/OAEPEncoding;

    new-instance v3, Lorg/spongycastle/crypto/engines/ElGamalEngine;

    invoke-direct {v3}, Lorg/spongycastle/crypto/engines/ElGamalEngine;-><init>()V

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v4

    check-cast v4, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v4}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;[B)V

    invoke-direct {v0, v2}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->cipher:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-void

    :cond_0
    new-instance p1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no match on OAEP constructor for digest algorithm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->cipher:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->getOutput()[B

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    array-length p3, p1

    if-eq p2, p3, :cond_0

    add-int p3, p5, p2

    aget-byte v0, p1, p2

    aput-byte v0, p4, p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    array-length p1, p1

    return p1
.end method

.method protected engineDoFinal([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->cipher:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->getOutput()[B

    move-result-object p1

    return-object p1
.end method

.method protected engineGetBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->cipher:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    return v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 1

    instance-of v0, p1, Lorg/spongycastle/jce/interfaces/ElGamalKey;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/spongycastle/jce/interfaces/ElGamalKey;

    invoke-interface {p1}, Lorg/spongycastle/jce/interfaces/ElGamalKey;->getParameters()Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Ljavax/crypto/interfaces/DHKey;

    if-eqz v0, :cond_1

    check-cast p1, Ljavax/crypto/interfaces/DHKey;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not an ElGamal key!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineGetOutputSize(I)I
    .locals 0

    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->cipher:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->getOutputBlockSize()I

    move-result p1

    return p1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "OAEP"

    invoke-virtual {p0, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "can\'t handle parameters in ElGamal"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-nez p3, :cond_6

    instance-of p3, p2, Lorg/spongycastle/jce/interfaces/ElGamalPublicKey;

    if-eqz p3, :cond_0

    check-cast p2, Ljava/security/PublicKey;

    invoke-static {p2}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/ElGamalUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p2

    goto :goto_0

    :cond_0
    instance-of p3, p2, Lorg/spongycastle/jce/interfaces/ElGamalPrivateKey;

    if-eqz p3, :cond_5

    check-cast p2, Ljava/security/PrivateKey;

    invoke-static {p2}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/ElGamalUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p2

    :goto_0
    if-eqz p4, :cond_1

    new-instance p3, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-direct {p3, p2, p4}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object p2, p3

    :cond_1
    const/4 p3, 0x1

    if-eq p1, p3, :cond_4

    const/4 p4, 0x2

    if-eq p1, p4, :cond_3

    const/4 p4, 0x3

    if-eq p1, p4, :cond_4

    const/4 p3, 0x4

    if-ne p1, p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/security/InvalidParameterException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "unknown opmode "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " passed to ElGamal"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->cipher:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->cipher:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-virtual {p1, p3, p2}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    :goto_2
    return-void

    :cond_5
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "unknown key type passed to ElGamal"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown parameter type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ECB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t support mode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    new-instance v0, Lorg/spongycastle/crypto/engines/ElGamalEngine;

    invoke-direct {v0}, Lorg/spongycastle/crypto/engines/ElGamalEngine;-><init>()V

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->cipher:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    goto/16 :goto_0

    :cond_0
    const-string v1, "PKCS1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    new-instance v0, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;

    new-instance v1, Lorg/spongycastle/crypto/engines/ElGamalEngine;

    invoke-direct {v1}, Lorg/spongycastle/crypto/engines/ElGamalEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->cipher:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    goto/16 :goto_0

    :cond_1
    const-string v1, "ISO9796-1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    new-instance v0, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;

    new-instance v1, Lorg/spongycastle/crypto/engines/ElGamalEngine;

    invoke-direct {v1}, Lorg/spongycastle/crypto/engines/ElGamalEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/encodings/ISO9796d1Encoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->cipher:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    goto/16 :goto_0

    :cond_2
    const-string v1, "OAEPPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p1, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "OAEPWITHMD5ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "MGF1"

    if-eqz v1, :cond_4

    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "MD5"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {p1, v1, v2, v0, v3}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_0

    :cond_4
    const-string v1, "OAEPWITHSHA1ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object p1, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_0

    :cond_5
    const-string v1, "OAEPWITHSHA224ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA-224"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {p1, v1, v2, v0, v3}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_0

    :cond_6
    const-string v1, "OAEPWITHSHA256ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v1, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v3, "SHA-256"

    invoke-direct {p1, v3, v2, v0, v1}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_0

    :cond_7
    const-string v1, "OAEPWITHSHA384ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA384:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v1, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v3, "SHA-384"

    invoke-direct {p1, v3, v2, v0, v1}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto :goto_0

    :cond_8
    const-string v1, "OAEPWITHSHA512ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v1, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v3, "SHA-512"

    invoke-direct {p1, v3, v2, v0, v1}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->initFromSpec(Ljavax/crypto/spec/OAEPParameterSpec;)V

    :goto_0
    return-void

    :cond_9
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " unavailable with ElGamal."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII[BI)I
    .locals 0

    iget-object p4, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->cipher:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-virtual {p4, p1, p2, p3}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    const/4 p1, 0x0

    return p1
.end method

.method protected engineUpdate([BII)[B
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->cipher:Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    const/4 p1, 0x0

    return-object p1
.end method
