.class public Lorg/spongycastle/jcajce/provider/asymmetric/DSA$Mappings;
.super Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "DSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/asymmetric/DSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 14

    const-string v0, "AlgorithmParameters.DSA"

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.dsa.AlgorithmParametersSpi"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AlgorithmParameterGenerator.DSA"

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.dsa.AlgorithmParameterGeneratorSpi"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.DSA"

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.dsa.KeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyFactory.DSA"

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.dsa.KeyFactorySpi"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.DSA"

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$stdDSA"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.NONEWITHDSA"

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$noneDSA"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.RAWDSA"

    const-string v1, "NONEWITHDSA"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.DETDSA"

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.SHA1WITHDETDSA"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.SHA224WITHDETDSA"

    const-string v2, "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA224"

    invoke-interface {p1, v0, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.SHA256WITHDETDSA"

    const-string v3, "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA256"

    invoke-interface {p1, v0, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.SHA384WITHDETDSA"

    const-string v4, "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA384"

    invoke-interface {p1, v0, v4}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.SHA512WITHDETDSA"

    const-string v5, "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSA512"

    invoke-interface {p1, v0, v5}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.DDSA"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.SHA1WITHDDSA"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.SHA224WITHDDSA"

    invoke-interface {p1, v0, v2}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.SHA256WITHDDSA"

    invoke-interface {p1, v0, v3}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.SHA384WITHDDSA"

    invoke-interface {p1, v0, v4}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.SHA512WITHDDSA"

    invoke-interface {p1, v0, v5}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.SHA3-224WITHDDSA"

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSASha3_224"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.SHA3-256WITHDDSA"

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSASha3_256"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.SHA3-384WITHDDSA"

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSASha3_384"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.SHA3-512WITHDDSA"

    const-string v1, "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$detDSASha3_512"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SHA224"

    const-string v5, "DSA"

    const-string v6, "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa224"

    sget-object v7, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/spongycastle/jcajce/provider/asymmetric/DSA$Mappings;->addSignatureAlgorithm(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v10, "SHA256"

    const-string v11, "DSA"

    const-string v12, "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa256"

    sget-object v13, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v8, p0

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Lorg/spongycastle/jcajce/provider/asymmetric/DSA$Mappings;->addSignatureAlgorithm(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "SHA384"

    const-string v3, "DSA"

    const-string v4, "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa384"

    sget-object v5, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/jcajce/provider/asymmetric/DSA$Mappings;->addSignatureAlgorithm(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v8, "SHA512"

    const-string v9, "DSA"

    const-string v10, "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsa512"

    sget-object v11, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lorg/spongycastle/jcajce/provider/asymmetric/DSA$Mappings;->addSignatureAlgorithm(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "SHA3-224"

    const-string v3, "DSA"

    const-string v4, "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsaSha3_224"

    sget-object v5, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/jcajce/provider/asymmetric/DSA$Mappings;->addSignatureAlgorithm(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v8, "SHA3-256"

    const-string v9, "DSA"

    const-string v10, "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsaSha3_256"

    sget-object v11, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v6 .. v11}, Lorg/spongycastle/jcajce/provider/asymmetric/DSA$Mappings;->addSignatureAlgorithm(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v2, "SHA3-384"

    const-string v3, "DSA"

    const-string v4, "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsaSha3_384"

    sget-object v5, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/jcajce/provider/asymmetric/DSA$Mappings;->addSignatureAlgorithm(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v8, "SHA3-512"

    const-string v9, "DSA"

    const-string v10, "org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner$dsaSha3_512"

    sget-object v11, Lorg/spongycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v6 .. v11}, Lorg/spongycastle/jcajce/provider/asymmetric/DSA$Mappings;->addSignatureAlgorithm(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "Alg.Alias.Signature.SHA/DSA"

    const-string v1, "DSA"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA1withDSA"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA1WITHDSA"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10040.4.1"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10040.4.3"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.DSAwithSHA1"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.DSAWITHSHA1"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.SHA1WithDSA"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.DSAWithSHA1"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.Signature.1.2.840.10040.4.3"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/KeyFactorySpi;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/KeyFactorySpi;-><init>()V

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->dsaOids:[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Alg.Alias.Signature."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->dsaOids:[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->dsaOids:[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    aget-object v3, v3, v2

    invoke-virtual {p0, p1, v3, v1, v0}, Lorg/spongycastle/jcajce/provider/asymmetric/DSA$Mappings;->registerOid(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/spongycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v3, Lorg/spongycastle/jcajce/provider/asymmetric/dsa/DSAUtil;->dsaOids:[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    aget-object v3, v3, v2

    invoke-virtual {p0, p1, v3, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/DSA$Mappings;->registerOidAlgorithmParameterGenerator(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
