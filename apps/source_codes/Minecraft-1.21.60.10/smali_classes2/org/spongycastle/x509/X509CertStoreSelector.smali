.class public Lorg/spongycastle/x509/X509CertStoreSelector;
.super Ljava/security/cert/X509CertSelector;
.source "X509CertStoreSelector.java"

# interfaces
.implements Lorg/spongycastle/util/Selector;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/cert/X509CertSelector;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/security/cert/X509CertSelector;)Lorg/spongycastle/x509/X509CertStoreSelector;
    .locals 3

    if-eqz p0, :cond_0

    new-instance v0, Lorg/spongycastle/x509/X509CertStoreSelector;

    invoke-direct {v0}, Lorg/spongycastle/x509/X509CertStoreSelector;-><init>()V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getAuthorityKeyIdentifier()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/X509CertStoreSelector;->setAuthorityKeyIdentifier([B)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getBasicConstraints()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/X509CertStoreSelector;->setBasicConstraints(I)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/X509CertStoreSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getCertificateValid()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/X509CertStoreSelector;->setCertificateValid(Ljava/util/Date;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getMatchAllSubjectAltNames()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/X509CertStoreSelector;->setMatchAllSubjectAltNames(Z)V

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getPathToNames()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/X509CertStoreSelector;->setPathToNames(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getExtendedKeyUsage()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/X509CertStoreSelector;->setExtendedKeyUsage(Ljava/util/Set;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getNameConstraints()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/X509CertStoreSelector;->setNameConstraints([B)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getPolicy()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/X509CertStoreSelector;->setPolicy(Ljava/util/Set;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectPublicKeyAlgID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/X509CertStoreSelector;->setSubjectPublicKeyAlgID(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/X509CertStoreSelector;->setSubjectAlternativeNames(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/X509CertStoreSelector;->setIssuer(Ljavax/security/auth/x500/X500Principal;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getKeyUsage()[Z

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/X509CertStoreSelector;->setKeyUsage([Z)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getPrivateKeyValid()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/X509CertStoreSelector;->setPrivateKeyValid(Ljava/util/Date;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/X509CertStoreSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/X509CertStoreSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectKeyIdentifier()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/x509/X509CertStoreSelector;->setSubjectKeyIdentifier([B)V

    invoke-virtual {p0}, Ljava/security/cert/X509CertSelector;->getSubjectPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/spongycastle/x509/X509CertStoreSelector;->setSubjectPublicKey(Ljava/security/PublicKey;)V

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error in passed in selector: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot create from null selector"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/x509/X509CertStoreSelector;

    return-object v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/security/cert/X509Certificate;

    invoke-super {p0, p1}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result p1

    return p1
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/spongycastle/x509/X509CertStoreSelector;->match(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
