.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
.super Ljava/lang/Object;
.source "GF2mField.java"


# instance fields
.field private degree:I

.field private polynomial:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    const/16 v0, 0x20

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->getIrreduciblePolynomial(I)I

    move-result p1

    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, " Error: the degree of field is non-positive "

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, " Error: the degree of field is too large "

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->isIrreducible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    iput p2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, " Error: given polynomial is reducible"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, " Error: the degree is not correct"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    iget p1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    array-length v0, p1

    const/4 v1, 0x4

    const-string v2, "byte array is not an encoded finite field"

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->OS2IP([B)I

    move-result p1

    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->isIrreducible(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result p1

    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static polyToString(I)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, "0"

    goto :goto_2

    :cond_0
    and-int/lit8 v0, p0, 0x1

    int-to-byte v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    ushr-int/2addr p0, v1

    move v2, v1

    :goto_1
    if-eqz p0, :cond_3

    and-int/lit8 v3, p0, 0x1

    int-to-byte v3, v3

    if-ne v3, v1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "+x^"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    ushr-int/lit8 p0, p0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object p0, v0

    :goto_2
    return-object p0
.end method


# virtual methods
.method public add(II)I
    .locals 0

    xor-int/2addr p1, p2

    return p1
.end method

.method public elementToStr(I)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    if-ge v1, v2, :cond_1

    int-to-byte v2, p1

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "1"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    ushr-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    iget v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    iget p1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public exp(II)I
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-ne p1, v0, :cond_2

    return v0

    :cond_2
    if-gez p2, :cond_3

    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->inverse(I)I

    move-result p1

    neg-int p2, p2

    :cond_3
    move v1, v0

    :goto_0
    if-eqz p2, :cond_5

    and-int/lit8 v2, p2, 0x1

    if-ne v2, v0, :cond_4

    invoke-virtual {p0, v1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result v1

    :cond_4
    invoke-virtual {p0, p1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result p1

    ushr-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method public getDegree()I
    .locals 1

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    return v0
.end method

.method public getEncoded()[B
    .locals 1

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->I2OSP(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getPolynomial()I
    .locals 1

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    return v0
.end method

.method public getRandomElement(Ljava/security/SecureRandom;)I
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    shl-int/2addr v0, v1

    invoke-static {p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result p1

    return p1
.end method

.method public getRandomNonZeroElement()I
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->getRandomNonZeroElement(Ljava/security/SecureRandom;)I

    move-result v0

    return v0
.end method

.method public getRandomNonZeroElement(Ljava/security/SecureRandom;)I
    .locals 4

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    invoke-static {p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    const/high16 v3, 0x100000

    if-nez v0, :cond_0

    if-ge v2, v3, :cond_0

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    shl-int v0, v1, v0

    invoke-static {p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/RandUtils;->nextInt(Ljava/security/SecureRandom;I)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    return v0
.end method

.method public inverse(I)I
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    shl-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->exp(II)I

    move-result p1

    return p1
.end method

.method public isElementOfThisField(I)Z
    .locals 4

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    if-ltz p1, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    if-ltz p1, :cond_2

    shl-int v0, v3, v0

    if-ge p1, v0, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public mult(II)I
    .locals 1

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {p1, p2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->modMultiply(III)I

    move-result p1

    return p1
.end method

.method public sqRoot(I)I
    .locals 2

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->mult(II)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finite Field GF(2^"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->degree:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") = GF(2)[X]/<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->polyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
