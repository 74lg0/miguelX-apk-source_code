.class public Lorg/spongycastle/asn1/ocsp/OCSPResponse;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "OCSPResponse.java"


# instance fields
.field responseBytes:Lorg/spongycastle/asn1/ocsp/ResponseBytes;

.field responseStatus:Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->responseStatus:Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {p1, v0}, Lorg/spongycastle/asn1/ocsp/ResponseBytes;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ocsp/ResponseBytes;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lorg/spongycastle/asn1/ocsp/ResponseBytes;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;Lorg/spongycastle/asn1/ocsp/ResponseBytes;)V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->responseStatus:Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;

    iput-object p2, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lorg/spongycastle/asn1/ocsp/ResponseBytes;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/OCSPResponse;
    .locals 1

    instance-of v0, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/ocsp/OCSPResponse;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ocsp/OCSPResponse;
    .locals 0

    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getResponseBytes()Lorg/spongycastle/asn1/ocsp/ResponseBytes;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lorg/spongycastle/asn1/ocsp/ResponseBytes;

    return-object v0
.end method

.method public getResponseStatus()Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->responseStatus:Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->responseStatus:Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lorg/spongycastle/asn1/ocsp/ResponseBytes;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lorg/spongycastle/asn1/ocsp/ResponseBytes;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
