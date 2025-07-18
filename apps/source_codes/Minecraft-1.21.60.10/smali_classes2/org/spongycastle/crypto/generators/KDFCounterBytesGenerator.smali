.class public Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;
.super Ljava/lang/Object;
.source "KDFCounterBytesGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/MacDerivationFunction;


# static fields
.field private static final INTEGER_MAX:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# instance fields
.field private fixedInputDataCtrPrefix:[B

.field private fixedInputData_afterCtr:[B

.field private generatedBytes:I

.field private final h:I

.field private ios:[B

.field private k:[B

.field private maxSizeExcl:I

.field private final prf:Lorg/spongycastle/crypto/Mac;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->INTEGER_MAX:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Mac;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    invoke-interface {p1}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->k:[B

    return-void
.end method

.method private generateNext()V
    .locals 8

    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    iget v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    div-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->ios:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-eq v3, v1, :cond_3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    const/4 v6, 0x3

    if-eq v3, v6, :cond_1

    const/4 v7, 0x4

    if-ne v3, v7, :cond_0

    ushr-int/lit8 v3, v0, 0x18

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported size of counter i"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    array-length v3, v2

    sub-int/2addr v3, v6

    ushr-int/lit8 v6, v0, 0x10

    int-to-byte v6, v6

    aput-byte v6, v2, v3

    :cond_2
    array-length v3, v2

    sub-int/2addr v3, v5

    ushr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    :cond_3
    array-length v3, v2

    sub-int/2addr v3, v1

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->fixedInputDataCtrPrefix:[B

    array-length v2, v1

    invoke-interface {v0, v1, v4, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->ios:[B

    array-length v2, v1

    invoke-interface {v0, v1, v4, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->fixedInputData_afterCtr:[B

    array-length v2, v1

    invoke-interface {v0, v1, v4, v2}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->k:[B

    invoke-interface {v0, v1, v4}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    add-int v1, v0, p3

    if-ltz v1, :cond_2

    iget v2, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->maxSizeExcl:I

    if-ge v1, v2, :cond_2

    iget v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->generateNext()V

    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    iget v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    rem-int v2, v0, v1

    rem-int/2addr v0, v1

    sub-int/2addr v1, v0

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->k:[B

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    sub-int v1, p3, v0

    :goto_0
    add-int/2addr p2, v0

    if-lez v1, :cond_1

    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->generateNext()V

    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->k:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_1
    return p3

    :cond_2
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Current KDFCTR may only be used for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->maxSizeExcl:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " bytes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMac()Lorg/spongycastle/crypto/Mac;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/DerivationParameters;)V
    .locals 3

    instance-of v0, p1, Lorg/spongycastle/crypto/params/KDFCounterParameters;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/spongycastle/crypto/params/KDFCounterParameters;

    iget-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->prf:Lorg/spongycastle/crypto/Mac;

    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/KDFCounterParameters;->getKI()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/KDFCounterParameters;->getFixedInputDataCounterPrefix()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->fixedInputDataCtrPrefix:[B

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/KDFCounterParameters;->getFixedInputDataCounterSuffix()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->fixedInputData_afterCtr:[B

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/KDFCounterParameters;->getR()I

    move-result p1

    div-int/lit8 v0, p1, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->ios:[B

    sget-object v0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    iget v0, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->h:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    sget-object v0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->INTEGER_MAX:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->maxSizeExcl:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/spongycastle/crypto/generators/KDFCounterBytesGenerator;->generatedBytes:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong type of arguments given"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
