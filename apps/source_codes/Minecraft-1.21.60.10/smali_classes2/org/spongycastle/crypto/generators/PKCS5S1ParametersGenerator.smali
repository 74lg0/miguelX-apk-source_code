.class public Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;
.super Lorg/spongycastle/crypto/PBEParametersGenerator;
.source "PKCS5S1ParametersGenerator.java"


# instance fields
.field private digest:Lorg/spongycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/crypto/PBEParametersGenerator;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    return-void
.end method

.method private generateDerivedKey()[B
    .locals 6

    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v3, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->password:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->password:[B

    array-length v4, v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    iget-object v3, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->salt:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->salt:[B

    array-length v4, v4

    invoke-interface {v2, v3, v5, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v2, v1, v5}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    const/4 v2, 0x1

    :goto_0
    iget v3, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->iterationCount:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3, v1, v5, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    iget-object v3, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3, v1, v5}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lorg/spongycastle/crypto/CipherParameters;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->generateDerivedParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    return-object p1
.end method

.method public generateDerivedParameters(I)Lorg/spongycastle/crypto/CipherParameters;
    .locals 3

    div-int/lit8 p1, p1, 0x8

    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->generateDerivedKey()[B

    move-result-object v0

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t generate a derived key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " bytes long."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateDerivedParameters(II)Lorg/spongycastle/crypto/CipherParameters;
    .locals 4

    div-int/lit8 p1, p1, 0x8

    div-int/lit8 p2, p2, 0x8

    add-int v0, p1, p2

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/PKCS5S1ParametersGenerator;->generateDerivedKey()[B

    move-result-object v0

    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[BII)V

    return-object v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t generate a derived key "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " bytes long."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
