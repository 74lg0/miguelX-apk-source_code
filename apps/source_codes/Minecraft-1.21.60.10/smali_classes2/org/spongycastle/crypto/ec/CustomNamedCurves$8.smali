.class final Lorg/spongycastle/crypto/ec/CustomNamedCurves$8;
.super Lorg/spongycastle/asn1/x9/X9ECParametersHolder;
.source "CustomNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/ec/CustomNamedCurves;
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
    .locals 14

    const/4 v5, 0x0

    new-instance v0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;

    new-instance v7, Ljava/math/BigInteger;

    const-string v1, "fe0e87005b4e83761908c5131d552a850b3f58b749c37cf5b84d6768"

    const/16 v2, 0x10

    invoke-direct {v7, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ljava/math/BigInteger;

    const-string v1, "60dcd2104c4cbc0be6eeefc2bdd610739ec34e317f9b33046c9e4788"

    invoke-direct {v8, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x2

    new-array v9, v1, [Ljava/math/BigInteger;

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "6b8cf07d4ca75c88957d9d670591"

    invoke-direct {v3, v4, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v6, 0x0

    aput-object v3, v9, v6

    new-instance v3, Ljava/math/BigInteger;

    const-string v10, "-b8adf1378a6eb73409fa6c9c637d"

    invoke-direct {v3, v10, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v10, 0x1

    aput-object v3, v9, v10

    new-array v1, v1, [Ljava/math/BigInteger;

    new-instance v3, Ljava/math/BigInteger;

    const-string v11, "1243ae1b4d71613bc9f780a03690e"

    invoke-direct {v3, v11, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v3, v1, v6

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v4, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v3, v1, v10

    new-instance v11, Ljava/math/BigInteger;

    const-string v3, "6b8cf07d4ca75c88957d9d67059037a4"

    invoke-direct {v11, v3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v12, Ljava/math/BigInteger;

    const-string v3, "b8adf1378a6eb73409fa6c9c637ba7f5"

    invoke-direct {v12, v3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v13, 0xf0

    move-object v6, v0

    move-object v10, v1

    invoke-direct/range {v6 .. v13}, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    new-instance v1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Curve;

    invoke-direct {v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Curve;-><init>()V

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->access$100(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;)Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/asn1/x9/X9ECPoint;

    const-string v0, "04A1455B334DF099DF30FC28A169A467E9E47075A90F7E650EB6B7A45C7E089FED7FBA344282CAFBD6F7E319F7C0B0BD59E2CA4BDB556D61A5"

    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;[B)V

    new-instance v6, Lorg/spongycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v6
.end method
