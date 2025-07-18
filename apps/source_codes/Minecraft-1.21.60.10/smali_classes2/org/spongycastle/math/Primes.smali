.class public abstract Lorg/spongycastle/math/Primes;
.super Ljava/lang/Object;
.source "Primes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/math/Primes$STOutput;,
        Lorg/spongycastle/math/Primes$MROutput;
    }
.end annotation


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field public static final SMALL_FACTOR_LIMIT:I = 0xd3

.field private static final THREE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/math/Primes;->THREE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' must be non-null and >= 2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enhancedMRProbablePrimeTest(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Lorg/spongycastle/math/Primes$MROutput;
    .locals 11

    const-string v0, "candidate"

    invoke-static {p0, v0}, Lorg/spongycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    if-lt p2, v0, :cond_c

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lorg/spongycastle/math/Primes$MROutput;->access$000()Lorg/spongycastle/math/Primes$MROutput;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p0, Lorg/spongycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {p0}, Lorg/spongycastle/math/Primes$MROutput;->access$100(Ljava/math/BigInteger;)Lorg/spongycastle/math/Primes$MROutput;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object v2, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    move v6, v1

    :goto_0
    if-ge v6, p2, :cond_b

    sget-object v7, Lorg/spongycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {v7, v3, p1}, Lorg/spongycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    sget-object v9, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-lez v10, :cond_2

    invoke-static {v8}, Lorg/spongycastle/math/Primes$MROutput;->access$100(Ljava/math/BigInteger;)Lorg/spongycastle/math/Primes$MROutput;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v7, v5, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_4

    :cond_3
    move v8, v0

    :goto_1
    if-ge v8, v4, :cond_6

    sget-object v9, Lorg/spongycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v7, v9, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v8, v0

    goto :goto_2

    :cond_4
    sget-object v10, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move v8, v1

    goto :goto_2

    :cond_5
    add-int/lit8 v8, v8, 0x1

    move-object v7, v9

    goto :goto_1

    :cond_6
    move v8, v1

    move-object v9, v7

    :goto_2
    if-nez v8, :cond_a

    sget-object p1, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v9, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    sget-object p2, Lorg/spongycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v9, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_3

    :cond_7
    move-object v7, v9

    :cond_8
    :goto_3
    invoke-virtual {v7, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-lez p1, :cond_9

    invoke-static {p0}, Lorg/spongycastle/math/Primes$MROutput;->access$100(Ljava/math/BigInteger;)Lorg/spongycastle/math/Primes$MROutput;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-static {}, Lorg/spongycastle/math/Primes$MROutput;->access$200()Lorg/spongycastle/math/Primes$MROutput;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_b
    invoke-static {}, Lorg/spongycastle/math/Primes$MROutput;->access$000()Lorg/spongycastle/math/Primes$MROutput;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'iterations\' must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'random\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static extract32([B)I
    .locals 5

    const/4 v0, 0x4

    array-length v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    array-length v3, p0

    add-int/lit8 v4, v1, 0x1

    sub-int/2addr v3, v4

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v1, v1, 0x8

    shl-int v1, v3, v1

    or-int/2addr v2, v1

    move v1, v4

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static generateSTRandomPrime(Lorg/spongycastle/crypto/Digest;I[B)Lorg/spongycastle/math/Primes$STOutput;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/spongycastle/math/Primes;->implSTRandomPrime(Lorg/spongycastle/crypto/Digest;I[B)Lorg/spongycastle/math/Primes$STOutput;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'inputSeed\' cannot be null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'length\' must be >= 2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'hash\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hasAnySmallFactors(Ljava/math/BigInteger;)Z
    .locals 1

    const-string v0, "candidate"

    invoke-static {p0, v0}, Lorg/spongycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    invoke-static {p0}, Lorg/spongycastle/math/Primes;->implHasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result p0

    return p0
.end method

.method private static hash(Lorg/spongycastle/crypto/Digest;[B[BI)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-interface {p0, p1, v0, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    invoke-interface {p0, p2, p3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    return-void
.end method

.method private static hashGen(Lorg/spongycastle/crypto/Digest;[BI)Ljava/math/BigInteger;
    .locals 5

    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    mul-int v1, p2, v0

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, p2, :cond_0

    sub-int/2addr v1, v0

    invoke-static {p0, p1, v2, v1}, Lorg/spongycastle/math/Primes;->hash(Lorg/spongycastle/crypto/Digest;[B[BI)V

    invoke-static {p1, v4}, Lorg/spongycastle/math/Primes;->inc([BI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method private static implHasAnySmallFactors(Ljava/math/BigInteger;)Z
    .locals 3

    const v0, 0xd4c2086

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x5

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x7

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0xb

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0xd

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x11

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x13

    if-eqz v1, :cond_a

    rem-int/lit8 v0, v0, 0x17

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const v0, 0x37ed0ed

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit8 v1, v0, 0x1d

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x1f

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x25

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x29

    if-eqz v1, :cond_a

    rem-int/lit8 v0, v0, 0x2b

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const v0, 0x23cd611f

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit8 v1, v0, 0x2f

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x35

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x3b

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x3d

    if-eqz v1, :cond_a

    rem-int/lit8 v0, v0, 0x43

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const v0, 0x20691a3

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit8 v1, v0, 0x47

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x49

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x4f

    if-eqz v1, :cond_a

    rem-int/lit8 v0, v0, 0x53

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const v0, 0x55a60cb

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit8 v1, v0, 0x59

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x61

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x65

    if-eqz v1, :cond_a

    rem-int/lit8 v0, v0, 0x67

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const v0, 0x9f9f361

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit8 v1, v0, 0x6b

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x6d

    if-eqz v1, :cond_a

    rem-int/lit8 v1, v0, 0x71

    if-eqz v1, :cond_a

    rem-int/lit8 v0, v0, 0x7f

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const v0, 0x1627b25d

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit16 v1, v0, 0x83

    if-eqz v1, :cond_a

    rem-int/lit16 v1, v0, 0x89

    if-eqz v1, :cond_a

    rem-int/lit16 v1, v0, 0x8b

    if-eqz v1, :cond_a

    rem-int/lit16 v0, v0, 0x95

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const v0, 0x2676ed77

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit16 v1, v0, 0x97

    if-eqz v1, :cond_a

    rem-int/lit16 v1, v0, 0x9d

    if-eqz v1, :cond_a

    rem-int/lit16 v1, v0, 0xa3

    if-eqz v1, :cond_a

    rem-int/lit16 v0, v0, 0xa7

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const v0, 0x3fcf739d

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit16 v1, v0, 0xad

    if-eqz v1, :cond_a

    rem-int/lit16 v1, v0, 0xb3

    if-eqz v1, :cond_a

    rem-int/lit16 v1, v0, 0xb5

    if-eqz v1, :cond_a

    rem-int/lit16 v0, v0, 0xbf

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const v0, 0x5f281a99

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    rem-int/lit16 v0, p0, 0xc1

    if-eqz v0, :cond_a

    rem-int/lit16 v0, p0, 0xc5

    if-eqz v0, :cond_a

    rem-int/lit16 v0, p0, 0xc7

    if-eqz v0, :cond_a

    rem-int/lit16 p0, p0, 0xd3

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_a
    :goto_0
    return v2
.end method

.method private static implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z
    .locals 3

    invoke-virtual {p4, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    sget-object p4, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, p4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_4

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_1

    :cond_0
    move p4, v0

    :goto_0
    const/4 v1, 0x0

    if-ge p4, p3, :cond_3

    sget-object v2, Lorg/spongycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p2, v2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    :goto_1
    return v0
.end method

.method private static implSTRandomPrime(Lorg/spongycastle/crypto/Digest;I[B)Lorg/spongycastle/math/Primes$STOutput;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {p0 .. p0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    const/16 v4, 0x21

    const-string v5, "Too many iterations in Shawe-Taylor Random_Prime Routine"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v1, v4, :cond_2

    new-array v4, v3, [B

    new-array v3, v3, [B

    move v9, v7

    :goto_0
    invoke-static {v0, v2, v4, v7}, Lorg/spongycastle/math/Primes;->hash(Lorg/spongycastle/crypto/Digest;[B[BI)V

    invoke-static {v2, v8}, Lorg/spongycastle/math/Primes;->inc([BI)V

    invoke-static {v0, v2, v3, v7}, Lorg/spongycastle/math/Primes;->hash(Lorg/spongycastle/crypto/Digest;[B[BI)V

    invoke-static {v2, v8}, Lorg/spongycastle/math/Primes;->inc([BI)V

    invoke-static {v4}, Lorg/spongycastle/math/Primes;->extract32([B)I

    move-result v10

    invoke-static {v3}, Lorg/spongycastle/math/Primes;->extract32([B)I

    move-result v11

    xor-int/2addr v10, v11

    rsub-int/lit8 v11, v1, 0x20

    const/4 v12, -0x1

    ushr-int v11, v12, v11

    and-int/2addr v10, v11

    add-int/lit8 v11, v1, -0x1

    shl-int v11, v8, v11

    or-int/2addr v11, v8

    or-int/2addr v10, v11

    add-int/2addr v9, v8

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    invoke-static {v10, v11}, Lorg/spongycastle/math/Primes;->isPrime32(J)Z

    move-result v12

    if-eqz v12, :cond_0

    new-instance v0, Lorg/spongycastle/math/Primes$STOutput;

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, v2, v9, v6}, Lorg/spongycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BILorg/spongycastle/math/Primes$1;)V

    return-object v0

    :cond_0
    mul-int/lit8 v10, v1, 0x4

    if-gt v9, v10, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v4, v1, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-static {v0, v4, v2}, Lorg/spongycastle/math/Primes;->implSTRandomPrime(Lorg/spongycastle/crypto/Digest;I[B)Lorg/spongycastle/math/Primes$STOutput;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/Primes$STOutput;->getPrime()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2}, Lorg/spongycastle/math/Primes$STOutput;->getPrimeSeed()[B

    move-result-object v9

    invoke-virtual {v2}, Lorg/spongycastle/math/Primes$STOutput;->getPrimeGenCounter()I

    move-result v2

    mul-int/lit8 v3, v3, 0x8

    add-int/lit8 v10, v1, -0x1

    div-int v3, v10, v3

    add-int/2addr v3, v8

    invoke-static {v0, v9, v3}, Lorg/spongycastle/math/Primes;->hashGen(Lorg/spongycastle/crypto/Digest;[BI)Ljava/math/BigInteger;

    move-result-object v11

    sget-object v12, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    move v14, v2

    move v15, v7

    :goto_1
    invoke-virtual {v12}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    if-le v7, v1, :cond_3

    sget-object v7, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    :cond_3
    add-int/2addr v14, v8

    invoke-static {v12}, Lorg/spongycastle/math/Primes;->implHasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v0, v9, v3}, Lorg/spongycastle/math/Primes;->hashGen(Lorg/spongycastle/crypto/Digest;[BI)Ljava/math/BigInteger;

    move-result-object v7

    sget-object v8, Lorg/spongycastle/math/Primes;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v12, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    sget-object v8, Lorg/spongycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    move-object/from16 p2, v7

    int-to-long v6, v15

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    move-object/from16 v7, p2

    invoke-virtual {v7, v6, v12}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    sget-object v11, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v7, v4, v12}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v0, Lorg/spongycastle/math/Primes$STOutput;

    const/4 v7, 0x0

    invoke-direct {v0, v12, v9, v14, v7}, Lorg/spongycastle/math/Primes$STOutput;-><init>(Ljava/math/BigInteger;[BILorg/spongycastle/math/Primes$1;)V

    return-object v0

    :cond_4
    const/4 v7, 0x0

    move-object v11, v6

    const/4 v15, 0x0

    goto :goto_2

    :cond_5
    move-object v7, v6

    invoke-static {v9, v3}, Lorg/spongycastle/math/Primes;->inc([BI)V

    :goto_2
    mul-int/lit8 v6, v1, 0x4

    add-int/2addr v6, v2

    if-ge v14, v6, :cond_6

    add-int/lit8 v15, v15, 0x2

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    move-object v6, v7

    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static inc([BI)V
    .locals 2

    array-length v0, p0

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    add-int/2addr p1, v1

    int-to-byte v1, p1

    aput-byte v1, p0, v0

    ushr-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static isMRProbablePrime(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z
    .locals 8

    const-string v0, "candidate"

    invoke-static {p0, v0}, Lorg/spongycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-lt p2, v0, :cond_4

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    sget-object v2, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    move v6, v1

    :goto_0
    if-ge v6, p2, :cond_3

    sget-object v7, Lorg/spongycastle/math/Primes;->TWO:Ljava/math/BigInteger;

    invoke-static {v7, v3, p1}, Lorg/spongycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {p0, v2, v5, v4, v7}, Lorg/spongycastle/math/Primes;->implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z

    move-result v7

    if-nez v7, :cond_2

    return v1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'iterations\' must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'random\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 3

    const-string v0, "candidate"

    invoke-static {p0, v0}, Lorg/spongycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    const-string v0, "base"

    invoke-static {p1, v0}, Lorg/spongycastle/math/Primes;->checkCandidate(Ljava/math/BigInteger;Ljava/lang/String;)V

    sget-object v0, Lorg/spongycastle/math/Primes;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {p0, v0, v2, v1, p1}, Lorg/spongycastle/math/Primes;->implMRProbablePrimeToBase(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'base\' must be < (\'candidate\' - 1)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static isPrime32(J)Z
    .locals 13

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    const-wide/16 v0, 0x5

    cmp-long v4, p0, v0

    const-wide/16 v5, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-gtz v4, :cond_2

    const-wide/16 v0, 0x2

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    cmp-long p0, p0, v5

    if-eqz p0, :cond_0

    if-nez v4, :cond_1

    :cond_0
    move v7, v8

    :cond_1
    return v7

    :cond_2
    const-wide/16 v9, 0x1

    and-long/2addr v9, p0

    cmp-long v4, v9, v2

    if-eqz v4, :cond_8

    rem-long v4, p0, v5

    cmp-long v4, v4, v2

    if-eqz v4, :cond_8

    rem-long v0, p0, v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    move-wide v5, v2

    move v4, v8

    :goto_0
    const-wide/16 v9, 0x1e

    if-ge v4, v0, :cond_6

    aget-wide v11, v1, v4

    add-long/2addr v11, v5

    rem-long v11, p0, v11

    cmp-long v11, v11, v2

    if-nez v11, :cond_5

    cmp-long p0, p0, v9

    if-gez p0, :cond_4

    move v7, v8

    :cond_4
    return v7

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    add-long/2addr v5, v9

    mul-long v9, v5, v5

    cmp-long v4, v9, p0

    if-ltz v4, :cond_7

    return v8

    :cond_7
    move v4, v7

    goto :goto_0

    :cond_8
    :goto_1
    return v7

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Size limit exceeded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :array_0
    .array-data 8
        0x1
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
        0x1d
    .end array-data
.end method
