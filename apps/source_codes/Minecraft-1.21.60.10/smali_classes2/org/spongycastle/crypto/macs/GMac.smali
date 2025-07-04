.class public Lorg/spongycastle/crypto/macs/GMac;
.super Ljava/lang/Object;
.source "GMac.java"

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# instance fields
.field private final cipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

.field private final macSizeBits:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/modes/GCMBlockCipher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/macs/GMac;->cipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    const/16 p1, 0x80

    iput p1, p0, Lorg/spongycastle/crypto/macs/GMac;->macSizeBits:I

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/modes/GCMBlockCipher;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/crypto/macs/GMac;->cipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    iput p2, p0, Lorg/spongycastle/crypto/macs/GMac;->macSizeBits:I

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GMac;->cipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->doFinal([BI)I

    move-result p1
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/InvalidCipherTextException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GMac;->cipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-GMAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    iget v0, p0, Lorg/spongycastle/crypto/macs/GMac;->macSizeBits:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/GMac;->cipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    new-instance v2, Lorg/spongycastle/crypto/params/AEADParameters;

    iget v3, p0, Lorg/spongycastle/crypto/macs/GMac;->macSizeBits:I

    invoke-direct {v2, p1, v3, v0}, Lorg/spongycastle/crypto/params/AEADParameters;-><init>(Lorg/spongycastle/crypto/params/KeyParameter;I[B)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GMAC requires ParametersWithIV"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GMac;->cipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GMac;->cipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->processAADByte(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/spongycastle/crypto/macs/GMac;->cipher:Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;->processAADBytes([BII)V

    return-void
.end method
