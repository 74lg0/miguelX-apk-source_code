.class public Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;
.super Lorg/spongycastle/crypto/tls/AbstractTlsAgreementCredentials;
.source "DefaultTlsAgreementCredentials.java"


# instance fields
.field protected basicAgreement:Lorg/spongycastle/crypto/BasicAgreement;

.field protected certificate:Lorg/spongycastle/crypto/tls/Certificate;

.field protected privateKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

.field protected truncateAgreement:Z


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/Certificate;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 2

    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/AbstractTlsAgreementCredentials;-><init>()V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;

    invoke-direct {v0}, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;->basicAgreement:Lorg/spongycastle/crypto/BasicAgreement;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;->truncateAgreement:Z

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/spongycastle/crypto/agreement/ECDHBasicAgreement;

    invoke-direct {v0}, Lorg/spongycastle/crypto/agreement/ECDHBasicAgreement;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;->basicAgreement:Lorg/spongycastle/crypto/BasicAgreement;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;->truncateAgreement:Z

    :goto_0
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;->certificate:Lorg/spongycastle/crypto/tls/Certificate;

    iput-object p2, p0, Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;->privateKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'privateKey\' type not supported: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'privateKey\' must be private"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'privateKey\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'certificate\' cannot be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'certificate\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public generateAgreement(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;->basicAgreement:Lorg/spongycastle/crypto/BasicAgreement;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;->privateKey:Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/BasicAgreement;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;->basicAgreement:Lorg/spongycastle/crypto/BasicAgreement;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/BasicAgreement;->calculateAgreement(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object p1

    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;->truncateAgreement:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;->basicAgreement:Lorg/spongycastle/crypto/BasicAgreement;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BasicAgreement;->getFieldSize()I

    move-result v0

    invoke-static {v0, p1}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object p1

    return-object p1
.end method

.method public getCertificate()Lorg/spongycastle/crypto/tls/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsAgreementCredentials;->certificate:Lorg/spongycastle/crypto/tls/Certificate;

    return-object v0
.end method
