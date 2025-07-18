.class public Lorg/spongycastle/asn1/dvcs/ServiceType;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ServiceType.java"


# static fields
.field public static final CCPD:Lorg/spongycastle/asn1/dvcs/ServiceType;

.field public static final CPD:Lorg/spongycastle/asn1/dvcs/ServiceType;

.field public static final VPKC:Lorg/spongycastle/asn1/dvcs/ServiceType;

.field public static final VSD:Lorg/spongycastle/asn1/dvcs/ServiceType;


# instance fields
.field private value:Lorg/spongycastle/asn1/ASN1Enumerated;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/spongycastle/asn1/dvcs/ServiceType;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/dvcs/ServiceType;-><init>(I)V

    sput-object v0, Lorg/spongycastle/asn1/dvcs/ServiceType;->CPD:Lorg/spongycastle/asn1/dvcs/ServiceType;

    new-instance v0, Lorg/spongycastle/asn1/dvcs/ServiceType;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/dvcs/ServiceType;-><init>(I)V

    sput-object v0, Lorg/spongycastle/asn1/dvcs/ServiceType;->VSD:Lorg/spongycastle/asn1/dvcs/ServiceType;

    new-instance v0, Lorg/spongycastle/asn1/dvcs/ServiceType;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/dvcs/ServiceType;-><init>(I)V

    sput-object v0, Lorg/spongycastle/asn1/dvcs/ServiceType;->VPKC:Lorg/spongycastle/asn1/dvcs/ServiceType;

    new-instance v0, Lorg/spongycastle/asn1/dvcs/ServiceType;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/dvcs/ServiceType;-><init>(I)V

    sput-object v0, Lorg/spongycastle/asn1/dvcs/ServiceType;->CCPD:Lorg/spongycastle/asn1/dvcs/ServiceType;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/spongycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1Enumerated;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/asn1/dvcs/ServiceType;->value:Lorg/spongycastle/asn1/ASN1Enumerated;

    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Enumerated;)V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/dvcs/ServiceType;->value:Lorg/spongycastle/asn1/ASN1Enumerated;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/ServiceType;
    .locals 1

    instance-of v0, p0, Lorg/spongycastle/asn1/dvcs/ServiceType;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/asn1/dvcs/ServiceType;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/dvcs/ServiceType;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Enumerated;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/dvcs/ServiceType;-><init>(Lorg/spongycastle/asn1/ASN1Enumerated;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/dvcs/ServiceType;
    .locals 0

    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Enumerated;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Enumerated;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/dvcs/ServiceType;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/ServiceType;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getValue()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/ServiceType;->value:Lorg/spongycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/ServiceType;->value:Lorg/spongycastle/asn1/ASN1Enumerated;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/ServiceType;->value:Lorg/spongycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/spongycastle/asn1/dvcs/ServiceType;->CPD:Lorg/spongycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/dvcs/ServiceType;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_0

    const-string v0, "(CPD)"

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/spongycastle/asn1/dvcs/ServiceType;->VSD:Lorg/spongycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/dvcs/ServiceType;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    const-string v0, "(VSD)"

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/spongycastle/asn1/dvcs/ServiceType;->VPKC:Lorg/spongycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/dvcs/ServiceType;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_2

    const-string v0, "(VPKC)"

    goto :goto_0

    :cond_2
    sget-object v2, Lorg/spongycastle/asn1/dvcs/ServiceType;->CCPD:Lorg/spongycastle/asn1/dvcs/ServiceType;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/dvcs/ServiceType;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_3

    const-string v0, "(CCPD)"

    goto :goto_0

    :cond_3
    const-string v0, "?"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
