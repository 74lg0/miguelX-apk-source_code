.class public Lorg/spongycastle/asn1/BERTaggedObject;
.super Lorg/spongycastle/asn1/ASN1TaggedObject;
.source "BERTaggedObject.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2

    new-instance v0, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {v0}, Lorg/spongycastle/asn1/BERSequence;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public constructor <init>(ILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/asn1/ASN1TaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public constructor <init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/asn1/ASN1TaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    return-void
.end method


# virtual methods
.method encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa0

    iget v1, p0, Lorg/spongycastle/asn1/BERTaggedObject;->tagNo:I

    invoke-virtual {p1, v0, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeTag(II)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    iget-boolean v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->empty:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->explicit:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/spongycastle/asn1/BEROctetString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/spongycastle/asn1/BEROctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    new-instance v1, Lorg/spongycastle/asn1/BEROctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/BEROctetString;-><init>([B)V

    invoke-virtual {v1}, Lorg/spongycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/spongycastle/asn1/ASN1Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not implemented: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/BERTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/spongycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    return-void
.end method

.method encodedLength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->empty:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v0

    iget-boolean v1, p0, Lorg/spongycastle/asn1/BERTaggedObject;->explicit:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/spongycastle/asn1/BERTaggedObject;->tagNo:I

    invoke-static {v1}, Lorg/spongycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v1

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v2

    add-int/2addr v1, v2

    :goto_0
    add-int/2addr v1, v0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/spongycastle/asn1/BERTaggedObject;->tagNo:I

    invoke-static {v1}, Lorg/spongycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->tagNo:I

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateTagLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isConstructed()Z
    .locals 2

    iget-boolean v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->empty:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->explicit:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/BERTaggedObject;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->toDERObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Primitive;->isConstructed()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method
