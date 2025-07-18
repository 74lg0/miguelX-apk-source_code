.class public Lorg/spongycastle/asn1/x509/AttCertIssuer;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "AttCertIssuer.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Choice;


# instance fields
.field choiceObj:Lorg/spongycastle/asn1/ASN1Primitive;

.field obj:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x509/GeneralNames;)V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/AttCertIssuer;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {p1}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/AttCertIssuer;->choiceObj:Lorg/spongycastle/asn1/ASN1Primitive;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/V2Form;)V
    .locals 2

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/AttCertIssuer;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    new-instance p1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/AttCertIssuer;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-direct {p1, v0, v0, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Lorg/spongycastle/asn1/x509/AttCertIssuer;->choiceObj:Lorg/spongycastle/asn1/ASN1Primitive;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AttCertIssuer;
    .locals 3

    if-eqz p0, :cond_5

    instance-of v0, p0, Lorg/spongycastle/asn1/x509/AttCertIssuer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/V2Form;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/x509/AttCertIssuer;

    invoke-static {p0}, Lorg/spongycastle/asn1/x509/V2Form;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/V2Form;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/AttCertIssuer;-><init>(Lorg/spongycastle/asn1/x509/V2Form;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/GeneralNames;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/spongycastle/asn1/x509/AttCertIssuer;

    check-cast p0, Lorg/spongycastle/asn1/x509/GeneralNames;

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/AttCertIssuer;-><init>(Lorg/spongycastle/asn1/x509/GeneralNames;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_3

    new-instance v0, Lorg/spongycastle/asn1/x509/AttCertIssuer;

    check-cast p0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lorg/spongycastle/asn1/x509/V2Form;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/V2Form;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/AttCertIssuer;-><init>(Lorg/spongycastle/asn1/x509/V2Form;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_4

    new-instance v0, Lorg/spongycastle/asn1/x509/AttCertIssuer;

    invoke-static {p0}, Lorg/spongycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralNames;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/x509/AttCertIssuer;-><init>(Lorg/spongycastle/asn1/x509/GeneralNames;)V

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown object in factory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    check-cast p0, Lorg/spongycastle/asn1/x509/AttCertIssuer;

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/AttCertIssuer;
    .locals 0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AttCertIssuer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getIssuer()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttCertIssuer;->obj:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttCertIssuer;->choiceObj:Lorg/spongycastle/asn1/ASN1Primitive;

    return-object v0
.end method
