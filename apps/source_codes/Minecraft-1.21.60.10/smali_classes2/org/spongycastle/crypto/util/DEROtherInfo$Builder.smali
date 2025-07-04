.class public final Lorg/spongycastle/crypto/util/DEROtherInfo$Builder;
.super Ljava/lang/Object;
.source "DEROtherInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/util/DEROtherInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final algorithmID:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private final partyUVInfo:Lorg/spongycastle/asn1/ASN1OctetString;

.field private final partyVInfo:Lorg/spongycastle/asn1/ASN1OctetString;

.field private suppPrivInfo:Lorg/spongycastle/asn1/ASN1TaggedObject;

.field private suppPubInfo:Lorg/spongycastle/asn1/ASN1TaggedObject;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/util/DEROtherInfo$Builder;->algorithmID:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {p2}, Lorg/spongycastle/crypto/util/DerUtil;->getOctetString([B)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/util/DEROtherInfo$Builder;->partyUVInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-static {p3}, Lorg/spongycastle/crypto/util/DerUtil;->getOctetString([B)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/util/DEROtherInfo$Builder;->partyVInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    return-void
.end method


# virtual methods
.method public build()Lorg/spongycastle/crypto/util/DEROtherInfo;
    .locals 3

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/util/DEROtherInfo$Builder;->algorithmID:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/crypto/util/DEROtherInfo$Builder;->partyUVInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/crypto/util/DEROtherInfo$Builder;->partyVInfo:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/crypto/util/DEROtherInfo$Builder;->suppPubInfo:Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/util/DEROtherInfo$Builder;->suppPrivInfo:Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/spongycastle/crypto/util/DEROtherInfo;

    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    const/4 v0, 0x0

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/crypto/util/DEROtherInfo;-><init>(Lorg/spongycastle/asn1/DERSequence;Lorg/spongycastle/crypto/util/DEROtherInfo$1;)V

    return-object v1
.end method

.method public withSuppPrivInfo([B)Lorg/spongycastle/crypto/util/DEROtherInfo$Builder;
    .locals 3

    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/spongycastle/crypto/util/DerUtil;->getOctetString([B)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/util/DEROtherInfo$Builder;->suppPrivInfo:Lorg/spongycastle/asn1/ASN1TaggedObject;

    return-object p0
.end method

.method public withSuppPubInfo([B)Lorg/spongycastle/crypto/util/DEROtherInfo$Builder;
    .locals 2

    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    invoke-static {p1}, Lorg/spongycastle/crypto/util/DerUtil;->getOctetString([B)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-direct {v0, v1, v1, p1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/util/DEROtherInfo$Builder;->suppPubInfo:Lorg/spongycastle/asn1/ASN1TaggedObject;

    return-object p0
.end method
