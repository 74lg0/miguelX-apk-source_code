.class public Lorg/spongycastle/pqc/math/ntru/euclid/IntEuclidean;
.super Ljava/lang/Object;
.source "IntEuclidean.java"


# instance fields
.field public gcd:I

.field public x:I

.field public y:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculate(II)Lorg/spongycastle/pqc/math/ntru/euclid/IntEuclidean;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    move v3, v2

    move v1, v0

    move v6, p1

    move p1, p0

    move p0, v6

    :goto_0
    if-eqz p0, :cond_0

    div-int v4, p1, p0

    rem-int/2addr p1, p0

    mul-int v5, v4, v1

    sub-int/2addr v3, v5

    mul-int/2addr v4, v2

    sub-int/2addr v0, v4

    move v6, p1

    move p1, p0

    move p0, v6

    move v7, v2

    move v2, v0

    move v0, v7

    move v8, v3

    move v3, v1

    move v1, v8

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/spongycastle/pqc/math/ntru/euclid/IntEuclidean;

    invoke-direct {p0}, Lorg/spongycastle/pqc/math/ntru/euclid/IntEuclidean;-><init>()V

    iput v3, p0, Lorg/spongycastle/pqc/math/ntru/euclid/IntEuclidean;->x:I

    iput v0, p0, Lorg/spongycastle/pqc/math/ntru/euclid/IntEuclidean;->y:I

    iput p1, p0, Lorg/spongycastle/pqc/math/ntru/euclid/IntEuclidean;->gcd:I

    return-object p0
.end method
