.class public Lorg/spongycastle/asn1/util/DERDump;
.super Lorg/spongycastle/asn1/util/ASN1Dump;
.source "DERDump.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/asn1/util/ASN1Dump;-><init>()V

    return-void
.end method

.method public static dumpAsString(Lorg/spongycastle/asn1/ASN1Encodable;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    const-string v2, ""

    invoke-static {v2, v1, p0, v0}, Lorg/spongycastle/asn1/util/DERDump;->_dumpAsString(Ljava/lang/String;ZLorg/spongycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dumpAsString(Lorg/spongycastle/asn1/ASN1Primitive;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v2, p0, v0}, Lorg/spongycastle/asn1/util/DERDump;->_dumpAsString(Ljava/lang/String;ZLorg/spongycastle/asn1/ASN1Primitive;Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
