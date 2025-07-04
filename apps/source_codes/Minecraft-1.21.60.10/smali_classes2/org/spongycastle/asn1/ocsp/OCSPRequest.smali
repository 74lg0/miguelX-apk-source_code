.class public Lorg/spongycastle/asn1/ocsp/OCSPRequest;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "OCSPRequest.java"


# instance fields
.field optionalSignature:Lorg/spongycastle/asn1/ocsp/Signature;

.field tbsRequest:Lorg/spongycastle/asn1/ocsp/TBSRequest;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ocsp/TBSRequest;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/TBSRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ocsp/OCSPRequest;->tbsRequest:Lorg/spongycastle/asn1/ocsp/TBSRequest;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {p1, v0}, Lorg/spongycastle/asn1/ocsp/Signature;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ocsp/Signature;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/ocsp/OCSPRequest;->optionalSignature:Lorg/spongycastle/asn1/ocsp/Signature;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ocsp/TBSRequest;Lorg/spongycastle/asn1/ocsp/Signature;)V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/ocsp/OCSPRequest;->tbsRequest:Lorg/spongycastle/asn1/ocsp/TBSRequest;

    iput-object p2, p0, Lorg/spongycastle/asn1/ocsp/OCSPRequest;->optionalSignature:Lorg/spongycastle/asn1/ocsp/Signature;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/OCSPRequest;
    .locals 1

    instance-of v0, p0, Lorg/spongycastle/asn1/ocsp/OCSPRequest;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/asn1/ocsp/OCSPRequest;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/ocsp/OCSPRequest;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ocsp/OCSPRequest;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ocsp/OCSPRequest;
    .locals 0

    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/ocsp/OCSPRequest;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/OCSPRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getOptionalSignature()Lorg/spongycastle/asn1/ocsp/Signature;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/OCSPRequest;->optionalSignature:Lorg/spongycastle/asn1/ocsp/Signature;

    return-object v0
.end method

.method public getTbsRequest()Lorg/spongycastle/asn1/ocsp/TBSRequest;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/OCSPRequest;->tbsRequest:Lorg/spongycastle/asn1/ocsp/TBSRequest;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/OCSPRequest;->tbsRequest:Lorg/spongycastle/asn1/ocsp/TBSRequest;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/OCSPRequest;->optionalSignature:Lorg/spongycastle/asn1/ocsp/Signature;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/asn1/ocsp/OCSPRequest;->optionalSignature:Lorg/spongycastle/asn1/ocsp/Signature;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
