.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;
.super Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;
.source "GF2nONBField.java"


# static fields
.field private static final MAXLONG:I = 0x40


# instance fields
.field private mBit:I

.field private mLength:I

.field mMult:[[I

.field private mType:I


# direct methods
.method public constructor <init>(ILjava/security/SecureRandom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;-><init>(Ljava/security/SecureRandom;)V

    const/4 p2, 0x3

    if-lt p1, p2, :cond_3

    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    iget p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    const/16 v0, 0x40

    div-int/2addr p1, v0

    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mLength:I

    iget p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    and-int/lit8 p1, p1, 0x3f

    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mBit:I

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mBit:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mLength:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mLength:I

    :goto_0
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->computeType()V

    iget p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    if-ge p1, p2, :cond_2

    iget p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    const/4 p2, 0x2

    filled-new-array {p1, p2}, [I

    move-result-object p1

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    const/4 p1, 0x0

    move p2, p1

    :goto_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    aget-object v0, v0, p2

    const/4 v2, -0x1

    aput v2, v0, p1

    aput v2, v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->computeMultMatrix()V

    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->computeFieldPolynomial()V

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->fields:Ljava/util/Vector;

    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->matrices:Ljava/util/Vector;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\nThe type of this field is "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "k must be at least 3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private computeMultMatrix()V
    .locals 11

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    and-int/lit8 v1, v0, 0x7

    if-eqz v1, :cond_e

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    mul-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v2, v0, [I

    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    const/4 v4, 0x2

    if-ne v3, v1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->elementOfOrder(II)I

    move-result v3

    :goto_0
    const/4 v5, 0x0

    move v7, v1

    move v6, v5

    :goto_1
    iget v8, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    if-ge v6, v8, :cond_5

    move v8, v5

    move v9, v7

    :goto_2
    iget v10, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v8, v10, :cond_3

    aput v8, v2, v9

    shl-int/2addr v9, v1

    rem-int/2addr v9, v0

    if-gez v9, :cond_2

    add-int/2addr v9, v0

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    mul-int/2addr v7, v3

    rem-int/2addr v7, v0

    if-gez v7, :cond_4

    add-int/2addr v7, v0

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, -0x1

    if-ne v8, v1, :cond_a

    move v4, v1

    :goto_3
    add-int/lit8 v6, v0, -0x1

    if-ge v4, v6, :cond_7

    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v7, v4, 0x1

    aget v8, v2, v7

    aget-object v6, v6, v8

    aget v8, v6, v5

    if-ne v8, v3, :cond_6

    sub-int v4, v0, v4

    aget v4, v2, v4

    aput v4, v6, v5

    goto :goto_4

    :cond_6
    sub-int v4, v0, v4

    aget v4, v2, v4

    aput v4, v6, v1

    :goto_4
    move v4, v7

    goto :goto_3

    :cond_7
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    shr-int/2addr v0, v1

    move v2, v1

    :goto_5
    if-gt v2, v0, :cond_c

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v6, v2, -0x1

    aget-object v7, v4, v6

    aget v8, v7, v5

    if-ne v8, v3, :cond_8

    add-int v8, v0, v2

    sub-int/2addr v8, v1

    aput v8, v7, v5

    goto :goto_6

    :cond_8
    add-int v8, v0, v2

    sub-int/2addr v8, v1

    aput v8, v7, v1

    :goto_6
    add-int v7, v0, v2

    sub-int/2addr v7, v1

    aget-object v4, v4, v7

    aget v7, v4, v5

    if-ne v7, v3, :cond_9

    aput v6, v4, v5

    goto :goto_7

    :cond_9
    aput v6, v4, v1

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    if-ne v8, v4, :cond_d

    move v4, v1

    :goto_8
    add-int/lit8 v6, v0, -0x1

    if-ge v4, v6, :cond_c

    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mMult:[[I

    add-int/lit8 v7, v4, 0x1

    aget v8, v2, v7

    aget-object v6, v6, v8

    aget v8, v6, v5

    if-ne v8, v3, :cond_b

    sub-int v4, v0, v4

    aget v4, v2, v4

    aput v4, v6, v5

    goto :goto_9

    :cond_b
    sub-int v4, v0, v4

    aget v4, v2, v4

    aput v4, v6, v1

    :goto_9
    move v4, v7

    goto :goto_8

    :cond_c
    return-void

    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "only type 1 or type 2 implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bisher nur fuer Gausssche Normalbasen implementiert"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private computeType()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-eq v1, v0, :cond_1

    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    mul-int/2addr v3, v4

    add-int/2addr v3, v0

    invoke-static {v3}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->isPrime(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->order(II)I

    move-result v1

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    mul-int/2addr v2, v3

    div-int/2addr v2, v1

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    invoke-static {v2, v1}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->gcd(II)I

    move-result v1

    :cond_0
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    if-ne v1, v0, :cond_2

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    shl-int/2addr v1, v0

    add-int/2addr v1, v0

    invoke-static {v1}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->isPrime(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2, v1}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->order(II)I

    move-result v1

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    shl-int/2addr v2, v0

    div-int/2addr v2, v1

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    invoke-static {v2, v1}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->gcd(II)I

    move-result v1

    if-ne v1, v0, :cond_2

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The extension degree is divisible by 8!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private elementOfOrder(II)I
    .locals 4

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    add-int/lit8 v2, p2, -0x1

    rem-int/2addr v1, v2

    if-gez v1, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    invoke-static {v1, p2}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->order(II)I

    move-result v2

    :goto_1
    rem-int v3, v2, p1

    if-nez v3, :cond_4

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    div-int/2addr p1, v2

    const/4 p2, 0x2

    move v0, v1

    :goto_2
    if-gt p2, p1, :cond_3

    mul-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    return v0

    :cond_4
    :goto_3
    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    add-int/lit8 v2, p2, -0x1

    rem-int/2addr v1, v2

    if-gez v1, :cond_4

    add-int/2addr v1, v2

    goto :goto_3

    :cond_5
    invoke-static {v1, p2}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->order(II)I

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method protected computeCOBMatrix(Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;)V
    .locals 8

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    iget v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    new-array v0, v0, [Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v2, v3, :cond_0

    new-instance v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    invoke-direct {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getRandomRoot(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->isZero()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    new-array v3, v3, [Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v2, v3, v1

    const/4 v2, 0x1

    move v4, v2

    :goto_1
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v4, v5, :cond_1

    add-int/lit8 v5, v4, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->square()Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_2
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v4, v5, :cond_4

    move v5, v1

    :goto_3
    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v5, v6, :cond_3

    aget-object v6, v3, v4

    invoke-virtual {v6, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->testBit(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    sub-int/2addr v6, v5

    sub-int/2addr v6, v2

    aget-object v6, v0, v6

    iget v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    sub-int/2addr v7, v4

    sub-int/2addr v7, v2

    invoke-virtual {v6, v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->fields:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->matrices:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->fields:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->matrices:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->invertMatrix([Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)[Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GF2nField.computeCOBMatrix: B1 has a different degree and thus cannot be coverted to!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected computeFieldPolynomial()V
    .locals 6

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    add-int/2addr v2, v1

    const-string v1, "ALL"

    invoke-direct {v0, v2, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    add-int/2addr v2, v1

    const-string v3, "ONE"

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    new-instance v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    add-int/2addr v3, v1

    const-string v4, "X"

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    move v5, v1

    move-object v1, v0

    move-object v0, v2

    move v2, v5

    :goto_0
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v2, v3, :cond_1

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeft()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    :cond_2
    :goto_1
    return-void
.end method

.method getONBBit()I
    .locals 1

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mBit:I

    return v0
.end method

.method getONBLength()I
    .locals 1

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mLength:I

    return v0
.end method

.method protected getRandomRoot(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    .locals 5

    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v0, p1, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;)V

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result p1

    :goto_0
    const/4 v1, 0x1

    if-le p1, v1, :cond_3

    :cond_0
    new-instance p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->random:Ljava/security/SecureRandom;

    invoke-direct {p1, p0, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;Ljava/security/SecureRandom;)V

    new-instance v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    const/4 v3, 0x2

    invoke-static {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->ZERO(Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(ILorg/spongycastle/pqc/math/linearalgebra/GF2nElement;)V

    invoke-virtual {v2, v1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->set(ILorg/spongycastle/pqc/math/linearalgebra/GF2nElement;)V

    new-instance p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {p1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    move v3, v1

    :goto_1
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    sub-int/2addr v4, v1

    if-gt v3, v4, :cond_1

    invoke-virtual {p1, p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->multiplyAndReduce(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->add(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->gcd(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v2

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v3

    if-eqz v2, :cond_0

    if-eq v2, v3, :cond_0

    shl-int/lit8 v1, v2, 0x1

    if-le v1, v3, :cond_2

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->quotient(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object p1

    move-object v0, p1

    goto :goto_2

    :cond_2
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    :goto_2
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->at(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    move-result-object p1

    return-object p1
.end method

.method invMatrix([[I)[[I
    .locals 5

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v1, v0, :cond_2

    move v0, v1

    :goto_2
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    if-ge v0, v2, :cond_1

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;->mDegree:I

    sub-int/2addr v2, v4

    sub-int/2addr v2, v1

    aget-object v2, p1, v2

    aget-object v3, p1, v1

    aget v3, v3, v1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    move-object v0, p1

    check-cast v0, [[I

    return-object p1
.end method
