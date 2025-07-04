.class public Lorg/spongycastle/crypto/prng/DigestRandomGenerator;
.super Ljava/lang/Object;
.source "DigestRandomGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/prng/RandomGenerator;


# static fields
.field private static CYCLE_COUNT:J = 0xaL


# instance fields
.field private digest:Lorg/spongycastle/crypto/Digest;

.field private seed:[B

.field private seedCounter:J

.field private state:[B

.field private stateCounter:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->seedCounter:J

    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->state:[B

    iput-wide v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->stateCounter:J

    return-void
.end method

.method private cycleSeed()V
    .locals 4

    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    iget-wide v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->seedCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->seedCounter:J

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestAddCounter(J)V

    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestDoFinal([B)V

    return-void
.end method

.method private digestAddCounter(J)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    long-to-int v3, p1

    int-to-byte v3, v3

    invoke-interface {v2, v3}, Lorg/spongycastle/crypto/Digest;->update(B)V

    ushr-long/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private digestDoFinal([B)V
    .locals 2

    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    return-void
.end method

.method private digestUpdate([B)V
    .locals 3

    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method private generateState()V
    .locals 4

    iget-wide v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->stateCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->stateCounter:J

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestAddCounter(J)V

    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->state:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    iget-object v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->state:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestDoFinal([B)V

    iget-wide v0, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->stateCounter:J

    sget-wide v2, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->CYCLE_COUNT:J

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->cycleSeed()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addSeedMaterial(J)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestAddCounter(J)V

    iget-object p1, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    iget-object p1, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestDoFinal([B)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addSeedMaterial([B)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    iget-object p1, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestUpdate([B)V

    iget-object p1, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->seed:[B

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->digestDoFinal([B)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public nextBytes([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->nextBytes([BII)V

    return-void
.end method

.method public nextBytes([BII)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->generateState()V

    add-int/2addr p3, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eq p2, p3, :cond_1

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->state:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->generateState()V

    move v1, v0

    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/prng/DigestRandomGenerator;->state:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    aput-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    move v1, v3

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
