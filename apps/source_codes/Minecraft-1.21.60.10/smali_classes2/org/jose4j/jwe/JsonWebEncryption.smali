.class public Lorg/jose4j/jwe/JsonWebEncryption;
.super Lorg/jose4j/jwx/JsonWebStructure;
.source "JsonWebEncryption.java"


# static fields
.field public static final COMPACT_SERIALIZATION_PARTS:S = 0x5s


# instance fields
.field private base64url:Lorg/jose4j/base64url/Base64Url;

.field ciphertext:[B

.field private contentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

.field contentEncryptionKey:[B

.field private decryptingPrimitive:Lorg/jose4j/jwa/CryptoPrimitive;

.field encryptedKey:[B

.field iv:[B

.field private plaintext:[B

.field private plaintextCharEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/jose4j/jwx/JsonWebStructure;-><init>()V

    new-instance v0, Lorg/jose4j/base64url/Base64Url;

    invoke-direct {v0}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    iput-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintextCharEncoding:Ljava/lang/String;

    sget-object v0, Lorg/jose4j/jwa/AlgorithmConstraints;->NO_CONSTRAINTS:Lorg/jose4j/jwa/AlgorithmConstraints;

    iput-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->contentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    return-void
.end method

.method private checkCek(Lorg/jose4j/jwe/ContentEncryptionAlgorithm;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyByteLength()I

    move-result p2

    array-length v0, p3

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/jose4j/lang/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Lorg/jose4j/lang/ByteUtil;->bitLength([B)I

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, " bit content encryption key is not the correct size for the "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-interface {p1}, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " content encryption algorithm ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lorg/jose4j/lang/ByteUtil;->bitLength(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createDecryptingPrimitive()Lorg/jose4j/jwa/CryptoPrimitive;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKeyManagementModeAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKey()Ljava/security/Key;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->isDoKeyValidation()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getContentEncryptionAlgorithm()Lorg/jose4j/jwe/ContentEncryptionAlgorithm;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jose4j/jwe/KeyManagementAlgorithm;->validateDecryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V

    :cond_0
    iget-object v2, p0, Lorg/jose4j/jwe/JsonWebEncryption;->headers:Lorg/jose4j/jwx/Headers;

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getProviderCtx()Lorg/jose4j/jca/ProviderContext;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/jose4j/jwe/KeyManagementAlgorithm;->prepareForDecrypt(Ljava/security/Key;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwa/CryptoPrimitive;

    move-result-object v0

    return-object v0
.end method

.method private decrypt()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKeyManagementModeAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getContentEncryptionAlgorithm()Lorg/jose4j/jwe/ContentEncryptionAlgorithm;

    move-result-object v6

    invoke-interface {v6}, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;->getContentEncryptionKeyDescriptor()Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    move-result-object v7

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->checkCrit()V

    iget-object v1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->decryptingPrimitive:Lorg/jose4j/jwa/CryptoPrimitive;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->createDecryptingPrimitive()Lorg/jose4j/jwa/CryptoPrimitive;

    move-result-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncryptedKey()[B

    move-result-object v2

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v4

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getProviderCtx()Lorg/jose4j/jca/ProviderContext;

    move-result-object v5

    move-object v3, v7

    invoke-interface/range {v0 .. v5}, Lorg/jose4j/jwe/KeyManagementAlgorithm;->manageForDecrypt(Lorg/jose4j/jwa/CryptoPrimitive;[BLorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/security/Key;

    move-result-object v0

    new-instance v2, Lorg/jose4j/jwe/ContentEncryptionParts;

    iget-object v1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->iv:[B

    iget-object v3, p0, Lorg/jose4j/jwe/JsonWebEncryption;->ciphertext:[B

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getIntegrity()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lorg/jose4j/jwe/ContentEncryptionParts;-><init>([B[B[B)V

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncodedHeaderAsciiBytesForAdditionalAuthenticatedData()[B

    move-result-object v3

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    invoke-direct {p0, v6, v7, v4}, Lorg/jose4j/jwe/JsonWebEncryption;->checkCek(Lorg/jose4j/jwe/ContentEncryptionAlgorithm;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;[B)V

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v5

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getProviderCtx()Lorg/jose4j/jca/ProviderContext;

    move-result-object v0

    move-object v1, v6

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;->decrypt(Lorg/jose4j/jwe/ContentEncryptionParts;[B[BLorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->decompress(Lorg/jose4j/jwx/Headers;[B)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->setPlaintext([B)V

    return-void
.end method


# virtual methods
.method compress(Lorg/jose4j/jwx/Headers;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    const-string v0, "zip"

    invoke-virtual {p1, v0}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getInstance()Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getCompressionAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jose4j/jwa/AlgorithmFactory;->getAlgorithm(Ljava/lang/String;)Lorg/jose4j/jwa/Algorithm;

    move-result-object p1

    check-cast p1, Lorg/jose4j/zip/CompressionAlgorithm;

    invoke-interface {p1, p2}, Lorg/jose4j/zip/CompressionAlgorithm;->compress([B)[B

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method decompress(Lorg/jose4j/jwx/Headers;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    const-string v0, "zip"

    invoke-virtual {p1, v0}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getInstance()Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getCompressionAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jose4j/jwa/AlgorithmFactory;->getAlgorithm(Ljava/lang/String;)Lorg/jose4j/jwa/Algorithm;

    move-result-object p1

    check-cast p1, Lorg/jose4j/zip/CompressionAlgorithm;

    invoke-interface {p1, p2}, Lorg/jose4j/zip/CompressionAlgorithm;->decompress([B)[B

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public enableDefaultCompression()V
    .locals 1

    const-string v0, "DEF"

    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->setCompressionAlgorithmHeaderParameter(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic getAlgorithm()Lorg/jose4j/jwa/Algorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKeyManagementModeAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAlgorithmNoConstraintCheck()Lorg/jose4j/jwa/Algorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getAlgorithmNoConstraintCheck()Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithmNoConstraintCheck()Lorg/jose4j/jwe/KeyManagementAlgorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKeyManagementModeAlgorithm(Z)Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public getCompactSerialization()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKeyManagementModeAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getContentEncryptionAlgorithm()Lorg/jose4j/jwe/ContentEncryptionAlgorithm;

    move-result-object v6

    invoke-interface {v6}, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;->getContentEncryptionKeyDescriptor()Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    move-result-object v7

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKey()Ljava/security/Key;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->isDoKeyValidation()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKey()Ljava/security/Key;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Lorg/jose4j/jwe/KeyManagementAlgorithm;->validateEncryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V

    :cond_0
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v3

    iget-object v4, p0, Lorg/jose4j/jwe/JsonWebEncryption;->contentEncryptionKey:[B

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getProviderCtx()Lorg/jose4j/jca/ProviderContext;

    move-result-object v5

    move-object v2, v7

    invoke-interface/range {v0 .. v5}, Lorg/jose4j/jwe/KeyManagementAlgorithm;->manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jose4j/jwe/ContentEncryptionKeys;->getContentEncryptionKey()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jose4j/jwe/JsonWebEncryption;->setContentEncryptionKey([B)V

    invoke-virtual {v0}, Lorg/jose4j/jwe/ContentEncryptionKeys;->getEncryptedKey()[B

    move-result-object v1

    iput-object v1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->encryptedKey:[B

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncodedHeaderAsciiBytesForAdditionalAuthenticatedData()[B

    move-result-object v3

    invoke-virtual {v0}, Lorg/jose4j/jwe/ContentEncryptionKeys;->getContentEncryptionKey()[B

    move-result-object v4

    iget-object v1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintext:[B

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/jose4j/jwe/JsonWebEncryption;->compress(Lorg/jose4j/jwx/Headers;[B)[B

    move-result-object v2

    invoke-direct {p0, v6, v7, v4}, Lorg/jose4j/jwe/JsonWebEncryption;->checkCek(Lorg/jose4j/jwe/ContentEncryptionAlgorithm;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;[B)V

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v5

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getIv()[B

    move-result-object v7

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getProviderCtx()Lorg/jose4j/jca/ProviderContext;

    move-result-object v8

    move-object v1, v6

    move-object v6, v7

    move-object v7, v8

    invoke-interface/range {v1 .. v7}, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;->encrypt([B[B[BLorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionParts;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jose4j/jwe/ContentEncryptionParts;->getIv()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jose4j/jwe/JsonWebEncryption;->setIv([B)V

    invoke-virtual {v1}, Lorg/jose4j/jwe/ContentEncryptionParts;->getCiphertext()[B

    move-result-object v2

    iput-object v2, p0, Lorg/jose4j/jwe/JsonWebEncryption;->ciphertext:[B

    iget-object v2, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v1}, Lorg/jose4j/jwe/ContentEncryptionParts;->getIv()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v1}, Lorg/jose4j/jwe/ContentEncryptionParts;->getCiphertext()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v1}, Lorg/jose4j/jwe/ContentEncryptionParts;->getAuthenticationTag()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jose4j/jwe/ContentEncryptionKeys;->getEncryptedKey()[B

    move-result-object v0

    iget-object v4, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v4, v0}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncodedHeader()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4, v0, v2, v3, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jose4j/jwx/CompactSerializer;->serialize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The plaintext payload for the JWE has not been set."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCompressionAlgorithmHeaderParameter()Ljava/lang/String;
    .locals 1

    const-string v0, "zip"

    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncryptionAlgorithm()Lorg/jose4j/jwe/ContentEncryptionAlgorithm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncryptionMethodHeaderParameter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->contentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    invoke-virtual {v1, v0}, Lorg/jose4j/jwa/AlgorithmConstraints;->checkConstraint(Ljava/lang/String;)V

    invoke-static {}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getInstance()Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getJweContentEncryptionAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jose4j/jwa/AlgorithmFactory;->getAlgorithm(Ljava/lang/String;)Lorg/jose4j/jwa/Algorithm;

    move-result-object v0

    check-cast v0, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;

    return-object v0

    :cond_0
    new-instance v0, Lorg/jose4j/lang/InvalidAlgorithmException;

    const-string v1, "Content encryption header (enc) not set."

    invoke-direct {v0, v1}, Lorg/jose4j/lang/InvalidAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncryptionKey()[B
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->contentEncryptionKey:[B

    return-object v0
.end method

.method getEncodedHeaderAsciiBytesForAdditionalAuthenticatedData()[B
    .locals 1

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncodedHeader()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jose4j/lang/StringUtil;->getBytesAscii(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedKey()[B
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->encryptedKey:[B

    return-object v0
.end method

.method public getEncryptionMethodHeaderParameter()Ljava/lang/String;
    .locals 1

    const-string v0, "enc"

    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIv()[B
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->iv:[B

    return-object v0
.end method

.method public getKeyManagementModeAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKeyManagementModeAlgorithm(Z)Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method getKeyManagementModeAlgorithm(Z)Lorg/jose4j/jwe/KeyManagementAlgorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getAlgorithmHeaderValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getAlgorithmConstraints()Lorg/jose4j/jwa/AlgorithmConstraints;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/jose4j/jwa/AlgorithmConstraints;->checkConstraint(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getInstance()Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getJweKeyManagementAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/jose4j/jwa/AlgorithmFactory;->getAlgorithm(Ljava/lang/String;)Lorg/jose4j/jwa/Algorithm;

    move-result-object p1

    check-cast p1, Lorg/jose4j/jwe/KeyManagementAlgorithm;

    return-object p1

    :cond_1
    new-instance p1, Lorg/jose4j/lang/InvalidAlgorithmException;

    const-string v0, "Encryption key management algorithm header (alg) not set."

    invoke-direct {p1, v0}, Lorg/jose4j/lang/InvalidAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getPlaintextString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaintextBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintext:[B

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->decrypt()V

    :cond_0
    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintext:[B

    return-object v0
.end method

.method public getPlaintextString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getPlaintextBytes()[B

    move-result-object v0

    iget-object v1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintextCharEncoding:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jose4j/lang/StringUtil;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prepareDecryptingPrimitive()Lorg/jose4j/jwa/CryptoPrimitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->createDecryptingPrimitive()Lorg/jose4j/jwa/CryptoPrimitive;

    move-result-object v0

    iput-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->decryptingPrimitive:Lorg/jose4j/jwa/CryptoPrimitive;

    return-object v0
.end method

.method protected setCompactSerializationParts([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->setEncodedHeader(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->encryptedKey:[B

    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->setEncodedIv(Ljava/lang/String;)V

    const/4 v0, 0x3

    aget-object v0, p1, v0

    const-string v1, "Encoded JWE Ciphertext"

    invoke-virtual {p0, v0, v1}, Lorg/jose4j/jwe/JsonWebEncryption;->checkNotEmptyPart(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v1, v0}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->ciphertext:[B

    const/4 v0, 0x4

    aget-object p1, p1, v0

    const-string v0, "Encoded JWE Authentication Tag"

    invoke-virtual {p0, p1, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->checkNotEmptyPart(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v0, p1}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/JsonWebEncryption;->setIntegrity([B)V

    return-void

    :cond_0
    new-instance p1, Lorg/jose4j/lang/JoseException;

    const-string v0, "A JWE Compact Serialization must have exactly 5 parts separated by period (\'.\') characters"

    invoke-direct {p1, v0}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompressionAlgorithmHeaderParameter(Ljava/lang/String;)V
    .locals 1

    const-string v0, "zip"

    invoke-virtual {p0, v0, p1}, Lorg/jose4j/jwe/JsonWebEncryption;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContentEncryptionAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V
    .locals 0

    iput-object p1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->contentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    return-void
.end method

.method public setContentEncryptionKey([B)V
    .locals 0

    iput-object p1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->contentEncryptionKey:[B

    return-void
.end method

.method public setEncodedContentEncryptionKey(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/jose4j/base64url/Base64Url;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/JsonWebEncryption;->setContentEncryptionKey([B)V

    return-void
.end method

.method public setEncodedIv(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v0, p1}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/JsonWebEncryption;->setIv([B)V

    return-void
.end method

.method public setEncryptionMethodHeaderParameter(Ljava/lang/String;)V
    .locals 1

    const-string v0, "enc"

    invoke-virtual {p0, v0, p1}, Lorg/jose4j/jwe/JsonWebEncryption;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIv([B)V
    .locals 0

    iput-object p1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->iv:[B

    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/JsonWebEncryption;->setPlaintext(Ljava/lang/String;)V

    return-void
.end method

.method public setPlainTextCharEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintextCharEncoding:Ljava/lang/String;

    return-void
.end method

.method public setPlaintext(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintextCharEncoding:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/jose4j/lang/StringUtil;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintext:[B

    return-void
.end method

.method public setPlaintext([B)V
    .locals 0

    iput-object p1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintext:[B

    return-void
.end method
