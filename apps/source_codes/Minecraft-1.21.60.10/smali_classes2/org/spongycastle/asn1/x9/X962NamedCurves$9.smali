.class final Lorg/spongycastle/asn1/x9/X962NamedCurves$9;
.super Lorg/spongycastle/asn1/x9/X9ECParametersHolder;
.source "X962NamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/asn1/x9/X962NamedCurves;
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
    .locals 12

    new-instance v9, Ljava/math/BigInteger;

    const-string v0, "03FFFFFFFFFFFFFFFFFFFDF64DE1151ADBB78F10A7"

    const/16 v1, 0x10

    invoke-direct {v9, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    new-instance v11, Lorg/spongycastle/math/ec/ECCurve$F2m;

    const/16 v2, 0xa3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x8

    new-instance v6, Ljava/math/BigInteger;

    const-string v0, "0108B39E77C4B108BED981ED0E890E117C511CF072"

    invoke-direct {v6, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v0, "0667ACEB38AF4E488C407433FFAE4F1C811638DF20"

    invoke-direct {v7, v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object v0, v11

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v6, Lorg/spongycastle/asn1/x9/X9ECParameters;

    new-instance v2, Lorg/spongycastle/asn1/x9/X9ECPoint;

    const-string v0, "030024266E4EB5106D0A964D92C4860E2671DB9B6CC5"

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v11, v0}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;[B)V

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v11

    move-object v3, v9

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v6
.end method
