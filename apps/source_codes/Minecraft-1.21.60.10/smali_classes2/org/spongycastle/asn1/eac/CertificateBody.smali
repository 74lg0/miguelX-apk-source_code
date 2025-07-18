.class public Lorg/spongycastle/asn1/eac/CertificateBody;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CertificateBody.java"


# static fields
.field private static final CAR:I = 0x2

.field private static final CEfD:I = 0x20

.field private static final CExD:I = 0x40

.field private static final CHA:I = 0x10

.field private static final CHR:I = 0x8

.field private static final CPI:I = 0x1

.field private static final PK:I = 0x4

.field public static final profileType:I = 0x7f

.field public static final requestType:I = 0xd


# instance fields
.field private certificateEffectiveDate:Lorg/spongycastle/asn1/DERApplicationSpecific;

.field private certificateExpirationDate:Lorg/spongycastle/asn1/DERApplicationSpecific;

.field private certificateHolderAuthorization:Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;

.field private certificateHolderReference:Lorg/spongycastle/asn1/DERApplicationSpecific;

.field private certificateProfileIdentifier:Lorg/spongycastle/asn1/DERApplicationSpecific;

.field private certificateType:I

.field private certificationAuthorityReference:Lorg/spongycastle/asn1/DERApplicationSpecific;

.field private publicKey:Lorg/spongycastle/asn1/eac/PublicKeyDataObject;

.field seq:Lorg/spongycastle/asn1/ASN1InputStream;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1ApplicationSpecific;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateType:I

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/eac/CertificateBody;->setIso7816CertificateBody(Lorg/spongycastle/asn1/ASN1ApplicationSpecific;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/DERApplicationSpecific;Lorg/spongycastle/asn1/eac/CertificationAuthorityReference;Lorg/spongycastle/asn1/eac/PublicKeyDataObject;Lorg/spongycastle/asn1/eac/CertificateHolderReference;Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;Lorg/spongycastle/asn1/eac/PackedDate;Lorg/spongycastle/asn1/eac/PackedDate;)V
    .locals 2

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateType:I

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/eac/CertificateBody;->setCertificateProfileIdentifier(Lorg/spongycastle/asn1/DERApplicationSpecific;)V

    new-instance p1, Lorg/spongycastle/asn1/DERApplicationSpecific;

    const/4 v1, 0x2

    invoke-virtual {p2}, Lorg/spongycastle/asn1/eac/CertificationAuthorityReference;->getEncoded()[B

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(I[B)V

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/eac/CertificateBody;->setCertificationAuthorityReference(Lorg/spongycastle/asn1/DERApplicationSpecific;)V

    invoke-direct {p0, p3}, Lorg/spongycastle/asn1/eac/CertificateBody;->setPublicKey(Lorg/spongycastle/asn1/eac/PublicKeyDataObject;)V

    new-instance p1, Lorg/spongycastle/asn1/DERApplicationSpecific;

    const/16 p2, 0x20

    invoke-virtual {p4}, Lorg/spongycastle/asn1/eac/CertificateHolderReference;->getEncoded()[B

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(I[B)V

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/eac/CertificateBody;->setCertificateHolderReference(Lorg/spongycastle/asn1/DERApplicationSpecific;)V

    invoke-direct {p0, p5}, Lorg/spongycastle/asn1/eac/CertificateBody;->setCertificateHolderAuthorization(Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;)V

    :try_start_0
    new-instance p1, Lorg/spongycastle/asn1/DERApplicationSpecific;

    new-instance p2, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {p6}, Lorg/spongycastle/asn1/eac/PackedDate;->getEncoding()[B

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    const/16 p3, 0x25

    invoke-direct {p1, v0, p3, p2}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/eac/CertificateBody;->setCertificateEffectiveDate(Lorg/spongycastle/asn1/DERApplicationSpecific;)V

    new-instance p1, Lorg/spongycastle/asn1/DERApplicationSpecific;

    new-instance p2, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {p7}, Lorg/spongycastle/asn1/eac/PackedDate;->getEncoding()[B

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    const/16 p3, 0x24

    invoke-direct {p1, v0, p3, p2}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/eac/CertificateBody;->setCertificateExpirationDate(Lorg/spongycastle/asn1/DERApplicationSpecific;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "unable to encode dates: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/eac/CertificateBody;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lorg/spongycastle/asn1/eac/CertificateBody;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/asn1/eac/CertificateBody;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ApplicationSpecific;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/eac/CertificateBody;-><init>(Lorg/spongycastle/asn1/ASN1ApplicationSpecific;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private profileToASN1Object()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateProfileIdentifier:Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificationAuthorityReference:Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/DERApplicationSpecific;

    const/16 v2, 0x49

    iget-object v3, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->publicKey:Lorg/spongycastle/asn1/eac/PublicKeyDataObject;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateHolderReference:Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateHolderAuthorization:Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateEffectiveDate:Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateExpirationDate:Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/DERApplicationSpecific;

    const/16 v2, 0x4e

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ILorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method private requestToASN1Object()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateProfileIdentifier:Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/DERApplicationSpecific;

    const/16 v2, 0x49

    iget-object v3, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->publicKey:Lorg/spongycastle/asn1/eac/PublicKeyDataObject;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateHolderReference:Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/DERApplicationSpecific;

    const/16 v2, 0x4e

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ILorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method private setCertificateEffectiveDate(Lorg/spongycastle/asn1/DERApplicationSpecific;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateEffectiveDate:Lorg/spongycastle/asn1/DERApplicationSpecific;

    iget p1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateType:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateType:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not an Iso7816Tags.APPLICATION_EFFECTIVE_DATE tag :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/spongycastle/asn1/eac/EACTags;->encodeTag(Lorg/spongycastle/asn1/ASN1ApplicationSpecific;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setCertificateExpirationDate(Lorg/spongycastle/asn1/DERApplicationSpecific;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateExpirationDate:Lorg/spongycastle/asn1/DERApplicationSpecific;

    iget p1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateType:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateType:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not an Iso7816Tags.APPLICATION_EXPIRATION_DATE tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setCertificateHolderAuthorization(Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;)V
    .locals 0

    iput-object p1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateHolderAuthorization:Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;

    iget p1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateType:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateType:I

    return-void
.end method

.method private setCertificateHolderReference(Lorg/spongycastle/asn1/DERApplicationSpecific;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateHolderReference:Lorg/spongycastle/asn1/DERApplicationSpecific;

    iget p1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateType:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateType:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not an Iso7816Tags.CARDHOLDER_NAME tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setCertificateProfileIdentifier(Lorg/spongycastle/asn1/DERApplicationSpecific;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateProfileIdentifier:Lorg/spongycastle/asn1/DERApplicationSpecific;

    iget p1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateType:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateType:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not an Iso7816Tags.INTERCHANGE_PROFILE tag :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/spongycastle/asn1/eac/EACTags;->encodeTag(Lorg/spongycastle/asn1/ASN1ApplicationSpecific;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setCertificationAuthorityReference(Lorg/spongycastle/asn1/DERApplicationSpecific;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificationAuthorityReference:Lorg/spongycastle/asn1/DERApplicationSpecific;

    iget p1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateType:I

    or-int/2addr p1, v1

    iput p1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateType:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not an Iso7816Tags.ISSUER_IDENTIFICATION_NUMBER tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setIso7816CertificateBody(Lorg/spongycastle/asn1/ASN1ApplicationSpecific;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->getApplicationTag()I

    move-result v0

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_9

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1ApplicationSpecific;->getContents()[B

    move-result-object v0

    new-instance v1, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    :goto_0
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-eqz v0, :cond_8

    instance-of v2, v0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    if-eqz v2, :cond_7

    check-cast v0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/16 v3, 0x20

    if-eq v2, v3, :cond_5

    const/16 v3, 0x29

    if-eq v2, v3, :cond_4

    const/16 v3, 0x49

    if-eq v2, v3, :cond_3

    const/16 v3, 0x4c

    if-eq v2, v3, :cond_2

    const/16 v3, 0x24

    if-eq v2, v3, :cond_1

    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/eac/CertificateBody;->setCertificateEffectiveDate(Lorg/spongycastle/asn1/DERApplicationSpecific;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateType:I

    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a valid iso7816 DERApplicationSpecific tag "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getApplicationTag()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/eac/CertificateBody;->setCertificateExpirationDate(Lorg/spongycastle/asn1/DERApplicationSpecific;)V

    goto :goto_0

    :cond_2
    new-instance v2, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;

    invoke-direct {v2, v0}, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;-><init>(Lorg/spongycastle/asn1/DERApplicationSpecific;)V

    invoke-direct {p0, v2}, Lorg/spongycastle/asn1/eac/CertificateBody;->setCertificateHolderAuthorization(Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getObject(I)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/eac/PublicKeyDataObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/eac/PublicKeyDataObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/eac/CertificateBody;->setPublicKey(Lorg/spongycastle/asn1/eac/PublicKeyDataObject;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/eac/CertificateBody;->setCertificateProfileIdentifier(Lorg/spongycastle/asn1/DERApplicationSpecific;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/eac/CertificateBody;->setCertificateHolderReference(Lorg/spongycastle/asn1/DERApplicationSpecific;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/eac/CertificateBody;->setCertificationAuthorityReference(Lorg/spongycastle/asn1/DERApplicationSpecific;)V

    goto :goto_0

    :cond_7
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not a valid iso7816 content : not a DERApplicationSpecific Object :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/spongycastle/asn1/eac/EACTags;->encodeTag(Lorg/spongycastle/asn1/ASN1ApplicationSpecific;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1InputStream;->close()V

    return-void

    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Bad tag : not an iso7816 CERTIFICATE_CONTENT_TEMPLATE"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setPublicKey(Lorg/spongycastle/asn1/eac/PublicKeyDataObject;)V
    .locals 0

    invoke-static {p1}, Lorg/spongycastle/asn1/eac/PublicKeyDataObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/eac/PublicKeyDataObject;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->publicKey:Lorg/spongycastle/asn1/eac/PublicKeyDataObject;

    iget p1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateType:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateType:I

    return-void
.end method


# virtual methods
.method public getCertificateEffectiveDate()Lorg/spongycastle/asn1/eac/PackedDate;
    .locals 2

    iget v0, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateType:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/spongycastle/asn1/eac/PackedDate;

    iget-object v1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateEffectiveDate:Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getContents()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/eac/PackedDate;-><init>([B)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCertificateExpirationDate()Lorg/spongycastle/asn1/eac/PackedDate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateType:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/spongycastle/asn1/eac/PackedDate;

    iget-object v1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateExpirationDate:Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getContents()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/eac/PackedDate;-><init>([B)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "certificate Expiration Date not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCertificateHolderAuthorization()Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateType:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateHolderAuthorization:Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Certificate Holder Authorisation not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCertificateHolderReference()Lorg/spongycastle/asn1/eac/CertificateHolderReference;
    .locals 2

    new-instance v0, Lorg/spongycastle/asn1/eac/CertificateHolderReference;

    iget-object v1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateHolderReference:Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getContents()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/eac/CertificateHolderReference;-><init>([B)V

    return-object v0
.end method

.method public getCertificateProfileIdentifier()Lorg/spongycastle/asn1/DERApplicationSpecific;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateProfileIdentifier:Lorg/spongycastle/asn1/DERApplicationSpecific;

    return-object v0
.end method

.method public getCertificateType()I
    .locals 1

    iget v0, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateType:I

    return v0
.end method

.method public getCertificationAuthorityReference()Lorg/spongycastle/asn1/eac/CertificationAuthorityReference;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateType:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/spongycastle/asn1/eac/CertificationAuthorityReference;

    iget-object v1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificationAuthorityReference:Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/DERApplicationSpecific;->getContents()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/eac/CertificationAuthorityReference;-><init>([B)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Certification authority reference not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPublicKey()Lorg/spongycastle/asn1/eac/PublicKeyDataObject;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->publicKey:Lorg/spongycastle/asn1/eac/PublicKeyDataObject;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lorg/spongycastle/asn1/eac/CertificateBody;->certificateType:I

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lorg/spongycastle/asn1/eac/CertificateBody;->profileToASN1Object()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lorg/spongycastle/asn1/eac/CertificateBody;->requestToASN1Object()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method
