.class public Lorg/spongycastle/asn1/x509/ObjectDigestInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ObjectDigestInfo.java"


# static fields
.field public static final otherObjectDigest:I = 0x2

.field public static final publicKey:I = 0x0

.field public static final publicKeyCert:I = 0x1


# instance fields
.field digestAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field digestedObjectType:Lorg/spongycastle/asn1/ASN1Enumerated;

.field objectDigest:Lorg/spongycastle/asn1/DERBitString;

.field otherObjectTypeID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(ILorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 1

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/spongycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1Enumerated;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->digestedObjectType:Lorg/spongycastle/asn1/ASN1Enumerated;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    :cond_0
    iput-object p3, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->digestAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    new-instance p1, Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {p1, p4}, Lorg/spongycastle/asn1/DERBitString;-><init>([B)V

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->objectDigest:Lorg/spongycastle/asn1/DERBitString;

    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Enumerated;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->digestedObjectType:Lorg/spongycastle/asn1/ASN1Enumerated;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->digestAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->objectDigest:Lorg/spongycastle/asn1/DERBitString;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad sequence size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/ObjectDigestInfo;
    .locals 1

    instance-of v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/ObjectDigestInfo;
    .locals 0

    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDigestAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->digestAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getDigestedObjectType()Lorg/spongycastle/asn1/ASN1Enumerated;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->digestedObjectType:Lorg/spongycastle/asn1/ASN1Enumerated;

    return-object v0
.end method

.method public getObjectDigest()Lorg/spongycastle/asn1/DERBitString;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->objectDigest:Lorg/spongycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getOtherObjectTypeID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->digestedObjectType:Lorg/spongycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->digestAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->objectDigest:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
