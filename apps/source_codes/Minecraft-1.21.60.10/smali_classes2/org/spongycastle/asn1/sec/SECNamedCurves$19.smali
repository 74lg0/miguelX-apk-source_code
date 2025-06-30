.class final Lorg/spongycastle/asn1/sec/SECNamedCurves$19;
.super Lorg/spongycastle/asn1/x9/X9ECParametersHolder;
.source "SECNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/asn1/sec/SECNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createParameters()Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 13

    const/16 v1, 0x83

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/16 v4, 0x8

    const-string v0, "03E5A88919D7CAFCBF415F07C2176573B2"

    invoke-static {v0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    const-string v0, "04B8266A46C55657AC734CE38F018F2192"

    invoke-static {v0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    const-string v0, "985BD3ADBAD4D696E676875615175A21B43A97E3"

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v12

    const-string v0, "0400000000000000016954A233049BA98F"

    invoke-static {v0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v10

    const-wide/16 v7, 0x2

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    new-instance v9, Lorg/spongycastle/math/ec/ECCurve$F2m;

    move-object v0, v9

    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v9}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->access$100(Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v8

    new-instance v9, Lorg/spongycastle/asn1/x9/X9ECPoint;

    const-string v0, "040356DCD8F2F95031AD652D23951BB366A80648F06D867940A5366D9E265DE9EB240F"

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v9, v8, v0}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;[B)V

    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
