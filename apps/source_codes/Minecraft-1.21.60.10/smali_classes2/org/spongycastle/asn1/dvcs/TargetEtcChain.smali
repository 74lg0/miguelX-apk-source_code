.class public Lorg/spongycastle/asn1/dvcs/TargetEtcChain;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "TargetEtcChain.java"


# instance fields
.field private chain:Lorg/spongycastle/asn1/ASN1Sequence;

.field private pathProcInput:Lorg/spongycastle/asn1/dvcs/PathProcInput;

.field private target:Lorg/spongycastle/asn1/dvcs/CertEtcToken;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->target:Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v1, v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->extractPathProcInput(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->extractPathProcInput(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/dvcs/CertEtcToken;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;-><init>(Lorg/spongycastle/asn1/dvcs/CertEtcToken;[Lorg/spongycastle/asn1/dvcs/CertEtcToken;Lorg/spongycastle/asn1/dvcs/PathProcInput;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/dvcs/CertEtcToken;Lorg/spongycastle/asn1/dvcs/PathProcInput;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;-><init>(Lorg/spongycastle/asn1/dvcs/CertEtcToken;[Lorg/spongycastle/asn1/dvcs/CertEtcToken;Lorg/spongycastle/asn1/dvcs/PathProcInput;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/dvcs/CertEtcToken;[Lorg/spongycastle/asn1/dvcs/CertEtcToken;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;-><init>(Lorg/spongycastle/asn1/dvcs/CertEtcToken;[Lorg/spongycastle/asn1/dvcs/CertEtcToken;Lorg/spongycastle/asn1/dvcs/PathProcInput;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/dvcs/CertEtcToken;[Lorg/spongycastle/asn1/dvcs/CertEtcToken;Lorg/spongycastle/asn1/dvcs/PathProcInput;)V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->target:Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    if-eqz p2, :cond_0

    new-instance p1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {p1, p2}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/spongycastle/asn1/ASN1Sequence;

    :cond_0
    iput-object p3, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/spongycastle/asn1/dvcs/PathProcInput;

    return-void
.end method

.method public static arrayFromSequence(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/dvcs/TargetEtcChain;
    .locals 4

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v1, v0, [Lorg/spongycastle/asn1/dvcs/TargetEtcChain;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/TargetEtcChain;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private extractPathProcInput(Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 3

    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/spongycastle/asn1/dvcs/PathProcInput;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/dvcs/PathProcInput;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/spongycastle/asn1/dvcs/PathProcInput;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown tag encountered: "

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

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/TargetEtcChain;
    .locals 1

    instance-of v0, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/dvcs/TargetEtcChain;
    .locals 0

    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/dvcs/TargetEtcChain;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getChain()[Lorg/spongycastle/asn1/dvcs/CertEtcToken;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/spongycastle/asn1/dvcs/CertEtcToken;->arrayFromSequence(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPathProcInput()Lorg/spongycastle/asn1/dvcs/PathProcInput;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/spongycastle/asn1/dvcs/PathProcInput;

    return-object v0
.end method

.method public getTarget()Lorg/spongycastle/asn1/dvcs/CertEtcToken;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->target:Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->target:Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/spongycastle/asn1/dvcs/PathProcInput;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/spongycastle/asn1/dvcs/PathProcInput;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "TargetEtcChain {\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "target: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->target:Lorg/spongycastle/asn1/dvcs/CertEtcToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/spongycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "chain: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->chain:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/spongycastle/asn1/dvcs/PathProcInput;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "pathProcInput: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/spongycastle/asn1/dvcs/TargetEtcChain;->pathProcInput:Lorg/spongycastle/asn1/dvcs/PathProcInput;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
