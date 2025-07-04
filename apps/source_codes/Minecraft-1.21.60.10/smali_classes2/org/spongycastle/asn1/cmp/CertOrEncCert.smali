.class public Lorg/spongycastle/asn1/cmp/CertOrEncCert;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CertOrEncCert.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field private certificate:Lorg/spongycastle/asn1/cmp/CMPCertificate;

.field private encryptedCert:Lorg/spongycastle/asn1/crmf/EncryptedValue;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1TaggedObject;)V
    .locals 3

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/cmp/CMPCertificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/CMPCertificate;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/CertOrEncCert;->certificate:Lorg/spongycastle/asn1/cmp/CMPCertificate;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/crmf/EncryptedValue;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/EncryptedValue;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/CertOrEncCert;->encryptedCert:Lorg/spongycastle/asn1/crmf/EncryptedValue;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown tag: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmp/CMPCertificate;)V
    .locals 1

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/CertOrEncCert;->certificate:Lorg/spongycastle/asn1/cmp/CMPCertificate;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'certificate\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/crmf/EncryptedValue;)V
    .locals 1

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/CertOrEncCert;->encryptedCert:Lorg/spongycastle/asn1/crmf/EncryptedValue;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'encryptedCert\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/CertOrEncCert;
    .locals 1

    instance-of v0, p0, Lorg/spongycastle/asn1/cmp/CertOrEncCert;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/asn1/cmp/CertOrEncCert;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/cmp/CertOrEncCert;

    check-cast p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cmp/CertOrEncCert;-><init>(Lorg/spongycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCertificate()Lorg/spongycastle/asn1/cmp/CMPCertificate;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertOrEncCert;->certificate:Lorg/spongycastle/asn1/cmp/CMPCertificate;

    return-object v0
.end method

.method public getEncryptedCert()Lorg/spongycastle/asn1/crmf/EncryptedValue;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertOrEncCert;->encryptedCert:Lorg/spongycastle/asn1/crmf/EncryptedValue;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/CertOrEncCert;->certificate:Lorg/spongycastle/asn1/cmp/CMPCertificate;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/asn1/cmp/CertOrEncCert;->certificate:Lorg/spongycastle/asn1/cmp/CMPCertificate;

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/CertOrEncCert;->encryptedCert:Lorg/spongycastle/asn1/crmf/EncryptedValue;

    invoke-direct {v0, v1, v1, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
