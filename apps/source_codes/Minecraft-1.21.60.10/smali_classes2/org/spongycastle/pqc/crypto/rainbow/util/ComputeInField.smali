.class public Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;
.super Ljava/lang/Object;
.source "ComputeInField.java"


# instance fields
.field private A:[[S

.field x:[S


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeZerosAbove()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    :goto_1
    if-ltz v1, :cond_2

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v3, v2, v1

    aget-short v3, v3, v0

    aget-object v2, v2, v0

    aget-short v2, v2, v0

    invoke-static {v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v2

    if-eqz v2, :cond_1

    move v4, v0

    :goto_2
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v6, v5

    mul-int/lit8 v6, v6, 0x2

    if-ge v4, v6, :cond_0

    aget-object v5, v5, v0

    aget-short v5, v5, v4

    invoke-static {v5, v2}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v5

    invoke-static {v3, v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v5

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v6, v6, v1

    aget-short v7, v6, v4

    invoke-static {v7, v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The matrix is not invertible"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private computeZerosUnder(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    :goto_2
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v4, v3

    if-ge v2, v4, :cond_3

    aget-object v4, v3, v2

    aget-short v4, v4, v0

    aget-object v3, v3, v0

    aget-short v3, v3, v0

    invoke-static {v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v3

    if-eqz v3, :cond_2

    move v5, v0

    :goto_3
    if-ge v5, p1, :cond_1

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v6, v6, v0

    aget-short v6, v6, v5

    invoke-static {v6, v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    invoke-static {v4, v6}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v6

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v7, v7, v2

    aget-short v8, v7, v5

    invoke-static {v8, v6}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v6

    aput-short v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Matrix not invertible! We have to choose another one!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private substitute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    aget-short v0, v1, v0

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->x:[S

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    array-length v2, v2

    aget-short v2, v4, v2

    invoke-static {v2, v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v0

    aput-short v0, v1, v3

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v2, v1, v0

    array-length v3, v1

    aget-short v2, v2, v3

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-le v1, v0, :cond_0

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v3, v3, v0

    aget-short v3, v3, v1

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->x:[S

    aget-short v4, v4, v1

    invoke-static {v3, v4}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v3

    invoke-static {v2, v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v1, v1, v0

    aget-short v1, v1, v0

    invoke-static {v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->x:[S

    invoke-static {v2, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v1

    aput-short v1, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not solvable equation system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The equation system is not solvable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addSquareMatrix([[S[[S)[[S
    .locals 7

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    aget-object v2, p2, v0

    array-length v2, v2

    if-ne v1, v2, :cond_2

    array-length v1, p1

    array-length v2, p1

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    move v2, v0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    move v3, v0

    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_0

    aget-object v4, v1, v2

    aget-object v5, p1, v2

    aget-short v5, v5, v3

    aget-object v6, p2, v2

    aget-short v6, v6, v3

    invoke-static {v5, v6}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v5

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Addition is not possible!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addVect([S[S)[S
    .locals 5

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    array-length v0, p1

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-short v3, p1, v2

    aget-short v4, p2, v2

    invoke-static {v3, v4}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Multiplication is not possible!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inverse([[S)[[S
    .locals 6

    :try_start_0
    array-length v0, p1

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, p1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v2, v2

    if-ne v0, v2, :cond_7

    move v0, v1

    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_2

    move v2, v1

    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v4, v4, v0

    aget-object v5, p1, v0

    aget-short v5, v5, v2

    aput-short v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    array-length v2, p1

    :goto_2
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x2

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v4, v4, v0

    aput-short v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v4, v2, v0

    array-length v2, v2

    add-int/2addr v2, v0

    aput-short v3, v4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->computeZerosUnder(Z)V

    move p1, v1

    :goto_3
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v2, v0

    if-ge p1, v2, :cond_4

    aget-object v0, v0, p1

    aget-short v0, v0, p1

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->invElem(S)S

    move-result v0

    move v2, p1

    :goto_4
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    if-ge v2, v4, :cond_3

    aget-object v3, v3, p1

    aget-short v4, v3, v2

    invoke-static {v4, v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->computeZerosAbove()V

    iget-object p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, p1

    array-length p1, p1

    filled-new-array {v0, p1}, [I

    move-result-object p1

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[S

    :goto_5
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v2, v0

    if-ge v1, v2, :cond_6

    array-length v0, v0

    :goto_6
    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_5

    aget-object v3, p1, v1

    array-length v4, v2

    sub-int v4, v0, v4

    aget-object v2, v2, v1

    aget-short v2, v2, v0

    aput-short v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    return-object p1

    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "The matrix is not invertible. Please choose another one!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    move-object v0, p1

    check-cast v0, [[S

    return-object p1
.end method

.method public multMatrix(S[[S)[[S
    .locals 6

    array-length v0, p2

    const/4 v1, 0x0

    aget-object v2, p2, v1

    array-length v2, v2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    move v2, v1

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    aget-object v4, p2, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v2

    aget-object v5, p2, v2

    aget-short v5, v5, v3

    invoke-static {p1, v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v5

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public multVect(S[S)[S
    .locals 4

    array-length v0, p2

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-short v3, p2, v2

    invoke-static {p1, v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public multVects([S[S)[[S
    .locals 7

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    array-length v0, p1

    array-length v1, p2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v2

    aget-short v5, p1, v2

    aget-short v6, p2, v3

    invoke-static {v5, v6}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v5

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Multiplication is not possible!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public multiplyMatrix([[S[S)[S
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    array-length v2, p2

    if-ne v1, v2, :cond_2

    array-length v1, p1

    new-array v1, v1, [S

    move v2, v0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    move v3, v0

    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_0

    aget-object v4, p1, v2

    aget-short v4, v4, v3

    aget-short v5, p2, v3

    invoke-static {v4, v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v4

    aget-short v5, v1, v2

    invoke-static {v5, v4}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v4

    aput-short v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Multiplication is not possible!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public multiplyMatrix([[S[[S)[[S
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    array-length v2, p2

    if-ne v1, v2, :cond_3

    array-length v1, p1

    aget-object v2, p2, v0

    array-length v2, v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    iput-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_1

    move v3, v0

    :goto_2
    aget-object v4, p2, v0

    array-length v4, v4

    if-ge v3, v4, :cond_0

    aget-object v4, p1, v1

    aget-short v4, v4, v2

    aget-object v5, p2, v2

    aget-short v5, v5, v3

    invoke-static {v4, v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v4

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v5, v5, v1

    aget-short v6, v5, v3

    invoke-static {v6, v4}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v4

    aput-short v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Multiplication is not possible!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public solveEquation([[S[S)[S
    .locals 6

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    array-length v0, p1

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    array-length v0, p1

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->x:[S

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    move v3, v0

    :goto_1
    aget-object v4, p1, v0

    array-length v4, v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v4, v4, v1

    aget-object v5, p1, v1

    aget-short v5, v5, v3

    aput-short v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_2
    array-length v1, p2

    if-ge p1, v1, :cond_3

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->A:[[S

    aget-object v1, v1, p1

    array-length v3, p2

    aget-short v4, p2, p1

    array-length v5, p2

    aget-short v5, v1, v5

    invoke-static {v4, v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v4

    aput-short v4, v1, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->computeZerosUnder(Z)V

    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->substitute()V

    iget-object p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/util/ComputeInField;->x:[S
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v2
.end method
