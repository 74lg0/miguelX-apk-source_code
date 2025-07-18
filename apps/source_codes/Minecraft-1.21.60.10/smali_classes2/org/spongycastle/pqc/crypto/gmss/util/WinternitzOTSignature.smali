.class public Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;
.super Ljava/lang/Object;
.source "WinternitzOTSignature.java"


# instance fields
.field private checksumsize:I

.field private gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private keysize:I

.field private mdsize:I

.field private messDigestOTS:Lorg/spongycastle/crypto/Digest;

.field private messagesize:I

.field private privateKeyOTS:[[B

.field private w:I


# direct methods
.method public constructor <init>([BLorg/spongycastle/crypto/Digest;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    new-instance p2, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-direct {p2, v0}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result p2

    iput p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    shl-int/lit8 p2, p2, 0x3

    int-to-double v0, p2

    int-to-double v2, p3

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    iput p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    shl-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getLog(I)I

    move-result p2

    iput p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    iget p3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    int-to-double v0, p2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    add-int/2addr p3, p2

    iput p3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    iget p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    filled-new-array {p3, p2}, [I

    move-result-object p2

    sget-object p3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p3, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[B

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    iget p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    new-array p3, p2, [B

    const/4 v0, 0x0

    invoke-static {p1, v0, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget p1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    if-ge v0, p1, :cond_0

    iget-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    iget-object p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {p2, p3}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object p2

    aput-object p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getLog(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    :goto_0
    if-ge v1, p1, :cond_0

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getPrivateKey()[[B
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    return-object v0
.end method

.method public getPublicKey()[B
    .locals 9

    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v0, v1

    new-array v2, v0, [B

    new-array v1, v1, [B

    const/4 v1, 0x1

    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v1, v3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v6, v6, v4

    array-length v7, v6

    invoke-interface {v5, v6, v3, v7}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v5, v5, [B

    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v6, v5, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    const/4 v6, 0x2

    :goto_1
    if-ge v6, v1, :cond_0

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    array-length v8, v5

    invoke-interface {v7, v5, v3, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v5, v5, [B

    iget-object v7, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v7, v5, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    iget v6, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v7, v6, v4

    invoke-static {v5, v3, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1, v2, v3, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1, v0, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method public getSignature([B)[B
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    iget v3, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    new-array v3, v3, [B

    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    array-length v4, v1

    const/4 v5, 0x0

    invoke-interface {v3, v1, v5, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    iget-object v1, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v3, v1, [B

    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, v3, v5}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    iget v4, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    const/16 v6, 0x8

    rem-int v7, v6, v4

    const/4 v8, 0x1

    if-nez v7, :cond_4

    div-int/2addr v6, v4

    shl-int v4, v8, v4

    sub-int/2addr v4, v8

    iget v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    new-array v7, v7, [B

    move v8, v5

    move v9, v8

    move v10, v9

    :goto_0
    if-ge v8, v1, :cond_2

    move v11, v5

    :goto_1
    if-ge v11, v6, :cond_1

    aget-byte v12, v3, v8

    and-int/2addr v12, v4

    add-int/2addr v9, v12

    iget-object v13, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v13, v13, v10

    iget v14, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v13, v5, v7, v5, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    if-lez v12, :cond_0

    iget-object v13, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    array-length v14, v7

    invoke-interface {v13, v7, v5, v14}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v7}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v7, v7, [B

    iget-object v13, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v13, v7, v5}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    :cond_0
    iget v12, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v13, v10, v12

    invoke-static {v7, v5, v2, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v12, v3, v8

    iget v13, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v3, v8

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    iget v1, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    iget v3, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v1, v3

    sub-int/2addr v1, v9

    move v3, v5

    :goto_3
    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    if-ge v3, v6, :cond_15

    and-int v6, v1, v4

    iget-object v8, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v8, v8, v10

    iget v9, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v8, v5, v7, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    if-lez v6, :cond_3

    iget-object v8, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    array-length v9, v7

    invoke-interface {v8, v7, v5, v9}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v7}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v7, v7, [B

    iget-object v8, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v8, v7, v5}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_3
    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v8, v10, v6

    invoke-static {v7, v5, v2, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v1, v6

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v3, v6

    goto :goto_3

    :cond_4
    if-ge v4, v6, :cond_d

    iget v1, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    div-int v7, v1, v4

    shl-int v4, v8, v4

    sub-int/2addr v4, v8

    new-array v1, v1, [B

    move v11, v5

    move v12, v11

    move v13, v12

    move v14, v13

    :goto_5
    if-ge v11, v7, :cond_8

    move v15, v5

    const-wide/16 v16, 0x0

    :goto_6
    iget v9, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    if-ge v15, v9, :cond_5

    aget-byte v9, v3, v12

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v10, v15, 0x3

    shl-int/2addr v9, v10

    int-to-long v9, v9

    xor-long v16, v16, v9

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_5
    move v9, v5

    :goto_7
    if-ge v9, v6, :cond_7

    move v10, v7

    int-to-long v6, v4

    and-long v6, v16, v6

    long-to-int v6, v6

    add-int/2addr v14, v6

    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v7, v7, v13

    iget v15, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v7, v5, v1, v5, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_8
    if-lez v6, :cond_6

    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    array-length v15, v1

    invoke-interface {v7, v1, v5, v15}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    iget-object v1, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v7, v1, v5}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v6, v6, -0x1

    goto :goto_8

    :cond_6
    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v7, v13, v6

    invoke-static {v1, v5, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-long v16, v16, v6

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, 0x1

    move v7, v10

    const/16 v6, 0x8

    goto :goto_7

    :cond_7
    move v10, v7

    add-int/lit8 v11, v11, 0x1

    const/16 v6, 0x8

    goto :goto_5

    :cond_8
    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    iget v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    rem-int/2addr v6, v7

    move v7, v5

    const-wide/16 v9, 0x0

    :goto_9
    if-ge v7, v6, :cond_9

    aget-byte v11, v3, v12

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v15, v7, 0x3

    shl-int/2addr v11, v15

    move/from16 p1, v6

    int-to-long v5, v11

    xor-long/2addr v9, v5

    add-int/2addr v12, v8

    add-int/lit8 v7, v7, 0x1

    move/from16 v6, p1

    const/4 v5, 0x0

    goto :goto_9

    :cond_9
    move/from16 p1, v6

    shl-int/lit8 v3, p1, 0x3

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v3, :cond_b

    int-to-long v6, v4

    and-long/2addr v6, v9

    long-to-int v6, v6

    add-int/2addr v14, v6

    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v7, v7, v13

    iget v8, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    const/4 v11, 0x0

    invoke-static {v7, v11, v1, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_b
    if-lez v6, :cond_a

    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    array-length v8, v1

    invoke-interface {v7, v1, v11, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    iget-object v1, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v7, v1, v11}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v6, v6, -0x1

    goto :goto_b

    :cond_a
    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v7, v13, v6

    invoke-static {v1, v11, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-long/2addr v9, v6

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v5, v6

    goto :goto_a

    :cond_b
    iget v3, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    iget v5, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v3, v5

    sub-int/2addr v3, v14

    const/4 v5, 0x0

    :goto_c
    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    if-ge v5, v6, :cond_15

    and-int v6, v3, v4

    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v7, v7, v13

    iget v8, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    const/4 v9, 0x0

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_d
    if-lez v6, :cond_c

    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    array-length v8, v1

    invoke-interface {v7, v1, v9, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    iget-object v1, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v7, v1, v9}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v6, v6, -0x1

    goto :goto_d

    :cond_c
    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v7, v13, v6

    invoke-static {v1, v9, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v3, v6

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v5, v6

    goto :goto_c

    :cond_d
    const/16 v1, 0x39

    if-ge v4, v1, :cond_15

    iget v1, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    shl-int/lit8 v5, v1, 0x3

    sub-int/2addr v5, v4

    shl-int v4, v8, v4

    sub-int/2addr v4, v8

    new-array v1, v1, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_e
    if-gt v7, v5, :cond_10

    ushr-int/lit8 v12, v7, 0x3

    rem-int/lit8 v13, v7, 0x8

    iget v14, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    add-int/2addr v7, v14

    add-int/lit8 v14, v7, 0x7

    ushr-int/lit8 v14, v14, 0x3

    const/16 v16, 0x0

    const-wide/16 v18, 0x0

    :goto_f
    if-ge v12, v14, :cond_e

    aget-byte v15, v3, v12

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v20, v16, 0x3

    shl-int v15, v15, v20

    int-to-long v9, v15

    xor-long v18, v18, v9

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    :cond_e
    ushr-long v9, v18, v13

    int-to-long v12, v4

    and-long/2addr v9, v12

    int-to-long v12, v6

    add-long/2addr v12, v9

    long-to-int v6, v12

    iget-object v12, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v12, v12, v11

    iget v13, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    const/4 v14, 0x0

    invoke-static {v12, v14, v1, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_10
    const-wide/16 v12, 0x0

    cmp-long v15, v9, v12

    if-lez v15, :cond_f

    iget-object v12, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    array-length v13, v1

    invoke-interface {v12, v1, v14, v13}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    iget-object v1, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    iget-object v12, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v12, v1, v14}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v12, 0x1

    sub-long/2addr v9, v12

    goto :goto_10

    :cond_f
    iget v9, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v10, v11, v9

    invoke-static {v1, v14, v2, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_10
    ushr-int/lit8 v5, v7, 0x3

    iget v9, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    if-ge v5, v9, :cond_13

    const/16 v9, 0x8

    rem-int/2addr v7, v9

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    :goto_11
    iget v10, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    if-ge v5, v10, :cond_11

    aget-byte v10, v3, v5

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v14, v9, 0x3

    shl-int/2addr v10, v14

    int-to-long v14, v10

    xor-long/2addr v12, v14

    add-int/2addr v9, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_11
    ushr-long v7, v12, v7

    int-to-long v12, v4

    and-long/2addr v7, v12

    int-to-long v5, v6

    add-long/2addr v5, v7

    long-to-int v6, v5

    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v3, v3, v11

    const/4 v5, 0x0

    invoke-static {v3, v5, v1, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_12
    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-lez v3, :cond_12

    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    array-length v9, v1

    invoke-interface {v3, v1, v5, v9}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    iget-object v1, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3, v1, v5}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    goto :goto_12

    :cond_12
    iget v3, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v7, v11, v3

    invoke-static {v1, v5, v2, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v11, v11, 0x1

    :cond_13
    iget v3, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    iget v5, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v3, v5

    sub-int/2addr v3, v6

    move v5, v11

    const/4 v11, 0x0

    :goto_13
    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    if-ge v11, v6, :cond_15

    and-int v6, v3, v4

    int-to-long v6, v6

    iget-object v8, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v8, v8, v5

    iget v9, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    const/4 v10, 0x0

    invoke-static {v8, v10, v1, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-wide/16 v8, 0x0

    :goto_14
    cmp-long v12, v6, v8

    if-lez v12, :cond_14

    iget-object v12, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    array-length v13, v1

    invoke-interface {v12, v1, v10, v13}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    iget-object v1, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    iget-object v12, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v12, v1, v10}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v12, 0x1

    sub-long/2addr v6, v12

    goto :goto_14

    :cond_14
    const-wide/16 v12, 0x1

    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v7, v5, v6

    invoke-static {v1, v10, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v11, v6

    goto :goto_13

    :cond_15
    return-object v2
.end method
