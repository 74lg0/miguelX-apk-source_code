.class public Lorg/spongycastle/asn1/cmc/TaggedAttribute;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "TaggedAttribute.java"


# instance fields
.field private final attrType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private final attrValues:Lorg/spongycastle/asn1/ASN1Set;

.field private final bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cmc/BodyPartID;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/BodyPartID;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/TaggedAttribute;->bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmc/TaggedAttribute;->attrType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/TaggedAttribute;->attrValues:Lorg/spongycastle/asn1/ASN1Set;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cmc/BodyPartID;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Set;)V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/cmc/TaggedAttribute;->bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

    iput-object p2, p0, Lorg/spongycastle/asn1/cmc/TaggedAttribute;->attrType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object p3, p0, Lorg/spongycastle/asn1/cmc/TaggedAttribute;->attrValues:Lorg/spongycastle/asn1/ASN1Set;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmc/TaggedAttribute;
    .locals 1

    instance-of v0, p0, Lorg/spongycastle/asn1/cmc/TaggedAttribute;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/asn1/cmc/TaggedAttribute;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/cmc/TaggedAttribute;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/cmc/TaggedAttribute;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAttrType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/TaggedAttribute;->attrType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getAttrValues()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/TaggedAttribute;->attrValues:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getBodyPartID()Lorg/spongycastle/asn1/cmc/BodyPartID;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/cmc/TaggedAttribute;->bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/spongycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/spongycastle/asn1/cmc/TaggedAttribute;->bodyPartID:Lorg/spongycastle/asn1/cmc/BodyPartID;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/spongycastle/asn1/cmc/TaggedAttribute;->attrType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/spongycastle/asn1/cmc/TaggedAttribute;->attrValues:Lorg/spongycastle/asn1/ASN1Set;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
