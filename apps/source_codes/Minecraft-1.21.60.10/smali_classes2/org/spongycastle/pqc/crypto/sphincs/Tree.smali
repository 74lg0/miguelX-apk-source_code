.class Lorg/spongycastle/pqc/crypto/sphincs/Tree;
.super Ljava/lang/Object;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static gen_leaf_wots(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BLorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;)V
    .locals 13

    const/16 v0, 0x20

    new-array v5, v0, [B

    const/16 v0, 0x860

    new-array v9, v0, [B

    new-instance v1, Lorg/spongycastle/pqc/crypto/sphincs/Wots;

    invoke-direct {v1}, Lorg/spongycastle/pqc/crypto/sphincs/Wots;-><init>()V

    const/4 v0, 0x0

    move-object v10, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-static {p0, v5, v0, v2, v3}, Lorg/spongycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v9

    move-object/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v1 .. v8}, Lorg/spongycastle/pqc/crypto/sphincs/Wots;->wots_pkgen(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    move-object v6, p0

    move-object v7, p1

    move v8, p2

    move v10, v0

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-static/range {v6 .. v12}, Lorg/spongycastle/pqc/crypto/sphincs/Tree;->l_tree(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    return-void
.end method

.method static l_tree(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V
    .locals 14

    move-object/from16 v7, p3

    move/from16 v8, p4

    const/16 v0, 0x43

    const/4 v9, 0x0

    move v10, v0

    move v11, v9

    :goto_0
    const/4 v0, 0x7

    const/16 v12, 0x20

    if-ge v11, v0, :cond_2

    move v13, v9

    :goto_1
    ushr-int/lit8 v0, v10, 0x1

    if-ge v13, v0, :cond_0

    mul-int/lit8 v0, v13, 0x20

    add-int v2, v8, v0

    mul-int/lit8 v0, v13, 0x2

    mul-int/2addr v0, v12

    add-int v4, v8, v0

    mul-int/lit8 v0, v11, 0x2

    mul-int/2addr v0, v12

    add-int v6, p6, v0

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v10, 0x1

    if-eqz v1, :cond_1

    add-int/lit8 v10, v10, -0x1

    mul-int/2addr v10, v12

    add-int v1, v8, v10

    mul-int/lit8 v2, v0, 0x20

    add-int/2addr v2, v8

    invoke-static {v7, v1, v7, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    :cond_1
    move v10, v0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    move-object v0, p1

    move/from16 v1, p2

    invoke-static {v7, v8, p1, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static treehash(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BII[BLorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;[BI)V
    .locals 17

    new-instance v7, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;

    move-object/from16 v0, p5

    invoke-direct {v7, v0}, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>(Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    add-int/lit8 v0, p3, 0x1

    mul-int/lit8 v1, v0, 0x20

    new-array v15, v1, [B

    new-array v14, v0, [I

    iget-wide v0, v7, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const/4 v13, 0x1

    shl-int v2, v13, p3

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v12, v0

    const/16 v16, 0x0

    move/from16 v8, v16

    :goto_0
    iget-wide v0, v7, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    int-to-long v2, v12

    cmp-long v0, v0, v2

    const/16 v11, 0x20

    if-gez v0, :cond_1

    mul-int/lit8 v2, v8, 0x20

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v5, p4

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lorg/spongycastle/pqc/crypto/sphincs/Tree;->gen_leaf_wots(Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BLorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    aput v16, v14, v8

    add-int/2addr v8, v13

    move v0, v8

    :goto_1
    if-le v0, v13, :cond_0

    add-int/lit8 v1, v0, -0x1

    aget v1, v14, v1

    add-int/lit8 v2, v0, -0x2

    aget v3, v14, v2

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x2

    mul-int/2addr v1, v11

    mul-int/lit8 v3, v2, 0x20

    add-int v1, p7, v1

    move-object/from16 v8, p0

    move-object v9, v15

    move v10, v3

    move v4, v11

    move-object v11, v15

    move v5, v12

    move v12, v3

    move v3, v13

    move-object/from16 v13, p6

    move-object v6, v14

    move v14, v1

    invoke-virtual/range {v8 .. v14}, Lorg/spongycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    aget v1, v6, v2

    add-int/2addr v1, v3

    aput v1, v6, v2

    add-int/lit8 v0, v0, -0x1

    move v13, v3

    move v11, v4

    move v12, v5

    move-object v14, v6

    goto :goto_1

    :cond_0
    move v5, v12

    move v3, v13

    move-object v6, v14

    iget-wide v1, v7, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v8, 0x1

    add-long/2addr v1, v8

    iput-wide v1, v7, Lorg/spongycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    move v8, v0

    move v13, v3

    move v12, v5

    move-object v14, v6

    goto :goto_0

    :cond_1
    move v4, v11

    move/from16 v0, v16

    :goto_2
    if-ge v0, v4, :cond_2

    add-int v1, p2, v0

    aget-byte v2, v15, v0

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
