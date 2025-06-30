.class public abstract Lorg/jose4j/jwk/PublicJsonWebKey;
.super Lorg/jose4j/jwk/JsonWebKey;
.source "PublicJsonWebKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwk/PublicJsonWebKey$Factory;
    }
.end annotation


# static fields
.field public static final X509_CERTIFICATE_CHAIN_PARAMETER:Ljava/lang/String; = "x5c"

.field public static final X509_SHA256_THUMBPRINT_PARAMETER:Ljava/lang/String; = "x5t#S256"

.field public static final X509_THUMBPRINT_PARAMETER:Ljava/lang/String; = "x5t"

.field public static final X509_URL_PARAMETER:Ljava/lang/String; = "x5u"


# instance fields
.field private certificateChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field protected jcaProvider:Ljava/lang/String;

.field protected privateKey:Ljava/security/PrivateKey;

.field protected writeOutPrivateKeyToJson:Z

.field private x5t:Ljava/lang/String;

.field private x5tS256:Ljava/lang/String;

.field private x5u:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/security/PublicKey;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/jose4j/jwk/JsonWebKey;-><init>(Ljava/security/Key;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jose4j/jwk/PublicJsonWebKey;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/jose4j/jwk/JsonWebKey;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->jcaProvider:Ljava/lang/String;

    const-string v0, "x5c"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, v0}, Lorg/jose4j/lang/JsonHelp;->getStringArray(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->certificateChain:Ljava/util/List;

    invoke-static {p2}, Lorg/jose4j/keys/X509Util;->getX509Util(Ljava/lang/String;)Lorg/jose4j/keys/X509Util;

    move-result-object p2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Lorg/jose4j/keys/X509Util;->fromBase64Der(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    iget-object v3, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->certificateChain:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p2, "x5t"

    invoke-static {p1, p2}, Lorg/jose4j/jwk/PublicJsonWebKey;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->x5t:Ljava/lang/String;

    const-string v1, "x5t#S256"

    invoke-static {p1, v1}, Lorg/jose4j/jwk/PublicJsonWebKey;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->x5tS256:Ljava/lang/String;

    const-string v2, "x5u"

    invoke-static {p1, v2}, Lorg/jose4j/jwk/PublicJsonWebKey;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->x5u:Ljava/lang/String;

    filled-new-array {v0, v1, p2, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jose4j/jwk/PublicJsonWebKey;->removeFromOtherParams([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method checkForBareKeyCertMismatch()V
    .locals 4

    invoke-virtual {p0}, Lorg/jose4j/jwk/PublicJsonWebKey;->getLeafCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jose4j/jwk/PublicJsonWebKey;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The key in the first certificate MUST match the bare public key represented by other members of the JWK. Public key = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jose4j/jwk/PublicJsonWebKey;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cert = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected abstract fillPrivateTypeSpecificParams(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract fillPublicTypeSpecificParams(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method protected fillTypeSpecificParams(Ljava/util/Map;Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jose4j/jwk/PublicJsonWebKey;->fillPublicTypeSpecificParams(Ljava/util/Map;)V

    iget-object v0, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->certificateChain:Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/jose4j/keys/X509Util;

    invoke-direct {v0}, Lorg/jose4j/keys/X509Util;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->certificateChain:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->certificateChain:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v3}, Lorg/jose4j/keys/X509Util;->toBase64(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "x5c"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "x5t"

    iget-object v1, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->x5t:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lorg/jose4j/jwk/PublicJsonWebKey;->putIfNotNull(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v0, "x5t#S256"

    iget-object v1, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->x5tS256:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lorg/jose4j/jwk/PublicJsonWebKey;->putIfNotNull(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v0, "x5u"

    iget-object v1, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->x5u:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lorg/jose4j/jwk/PublicJsonWebKey;->putIfNotNull(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    iget-boolean v0, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->writeOutPrivateKeyToJson:Z

    if-nez v0, :cond_2

    sget-object v0, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->INCLUDE_PRIVATE:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    if-ne p2, v0, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lorg/jose4j/jwk/PublicJsonWebKey;->fillPrivateTypeSpecificParams(Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lorg/jose4j/jwk/PublicJsonWebKey;->getString(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jose4j/keys/BigEndianBigInteger;->fromBase64Url(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public getCertificateChain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->certificateChain:Ljava/util/List;

    return-object v0
.end method

.method public getLeafCertificate()Ljava/security/cert/X509Certificate;
    .locals 2

    iget-object v0, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->certificateChain:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->certificateChain:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->key:Ljava/security/Key;

    check-cast v0, Ljava/security/PublicKey;

    return-object v0
.end method

.method public getX509CertificateSha1Thumbprint()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jose4j/jwk/PublicJsonWebKey;->getX509CertificateSha1Thumbprint(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getX509CertificateSha1Thumbprint(Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->x5t:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/jose4j/jwk/PublicJsonWebKey;->getLeafCertificate()Ljava/security/cert/X509Certificate;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/jose4j/keys/X509Util;->x5t(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getX509CertificateSha256Thumbprint()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jose4j/jwk/PublicJsonWebKey;->getX509CertificateSha256Thumbprint(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getX509CertificateSha256Thumbprint(Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->x5tS256:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/jose4j/jwk/PublicJsonWebKey;->getLeafCertificate()Ljava/security/cert/X509Certificate;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/jose4j/keys/X509Util;->x5tS256(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getX509Url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->x5u:Ljava/lang/String;

    return-object v0
.end method

.method putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/math/BigInteger;",
            ")V"
        }
    .end annotation

    invoke-static {p3}, Lorg/jose4j/keys/BigEndianBigInteger;->toBase64Url(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/math/BigInteger;",
            "I)V"
        }
    .end annotation

    invoke-static {p3, p4}, Lorg/jose4j/keys/BigEndianBigInteger;->toBase64Url(Ljava/math/BigInteger;I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCertificateChain(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jose4j/jwk/PublicJsonWebKey;->checkForBareKeyCertMismatch()V

    iput-object p1, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->certificateChain:Ljava/util/List;

    return-void
.end method

.method public varargs setCertificateChain([Ljava/security/cert/X509Certificate;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jose4j/jwk/PublicJsonWebKey;->setCertificateChain(Ljava/util/List;)V

    return-void
.end method

.method public setPrivateKey(Ljava/security/PrivateKey;)V
    .locals 0

    iput-object p1, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->privateKey:Ljava/security/PrivateKey;

    return-void
.end method

.method public setWriteOutPrivateKeyToJson(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->writeOutPrivateKeyToJson:Z

    return-void
.end method

.method public setX509CertificateSha1Thumbprint(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->x5t:Ljava/lang/String;

    return-void
.end method

.method public setX509CertificateSha256Thumbprint(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->x5tS256:Ljava/lang/String;

    return-void
.end method

.method public setX509Url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jose4j/jwk/PublicJsonWebKey;->x5u:Ljava/lang/String;

    return-void
.end method
