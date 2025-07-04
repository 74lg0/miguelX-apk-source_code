.class public Lorg/jose4j/jwe/SimpleAeadCipher;
.super Ljava/lang/Object;
.source "SimpleAeadCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;
    }
.end annotation


# static fields
.field public static final GCM_TRANSFORMATION_NAME:Ljava/lang/String; = "AES/GCM/NoPadding"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private tagByteLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jose4j/jwe/SimpleAeadCipher;->algorithm:Ljava/lang/String;

    iput p2, p0, Lorg/jose4j/jwe/SimpleAeadCipher;->tagByteLength:I

    return-void
.end method

.method private updateAad(Ljavax/crypto/Cipher;[B)V
    .locals 1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public decrypt(Ljava/security/Key;[B[B[B[BLjava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0, p6}, Lorg/jose4j/jwe/SimpleAeadCipher;->getInitialisedCipher(Ljava/security/Key;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-virtual {p0, p3, p4, p5, p1}, Lorg/jose4j/jwe/SimpleAeadCipher;->decrypt([B[B[BLjavax/crypto/Cipher;)[B

    move-result-object p1

    return-object p1
.end method

.method public decrypt([B[B[BLjavax/crypto/Cipher;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    invoke-direct {p0, p4, p3}, Lorg/jose4j/jwe/SimpleAeadCipher;->updateAad(Ljavax/crypto/Cipher;[B)V

    const/4 p3, 0x2

    :try_start_0
    new-array p3, p3, [[B

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const/4 p1, 0x1

    aput-object p2, p3, p1

    invoke-static {p3}, Lorg/jose4j/lang/ByteUtil;->concat([[B)[B

    move-result-object p1

    invoke-virtual {p4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p2, Lorg/jose4j/lang/JoseException;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public encrypt(Ljava/security/Key;[B[B[BLjava/lang/String;)Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p5}, Lorg/jose4j/jwe/SimpleAeadCipher;->getInitialisedCipher(Ljava/security/Key;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lorg/jose4j/jwe/SimpleAeadCipher;->updateAad(Ljavax/crypto/Cipher;[B)V

    :try_start_0
    invoke-virtual {p1, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p2, Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;

    invoke-direct {p2}, Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;-><init>()V

    array-length p3, p1

    iget p4, p0, Lorg/jose4j/jwe/SimpleAeadCipher;->tagByteLength:I

    sub-int/2addr p3, p4

    const/4 p4, 0x0

    invoke-static {p1, p4, p3}, Lorg/jose4j/lang/ByteUtil;->subArray([BII)[B

    move-result-object p4

    invoke-static {p2, p4}, Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;->access$002(Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;[B)[B

    iget p4, p0, Lorg/jose4j/jwe/SimpleAeadCipher;->tagByteLength:I

    invoke-static {p1, p3, p4}, Lorg/jose4j/lang/ByteUtil;->subArray([BII)[B

    move-result-object p1

    invoke-static {p2, p1}, Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;->access$102(Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;[B)[B

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p2, Lorg/jose4j/lang/JoseException;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getInitialisedCipher(Ljava/security/Key;[BILjava/lang/String;)Ljavax/crypto/Cipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jose4j/jwe/SimpleAeadCipher;->algorithm:Ljava/lang/String;

    invoke-static {v0, p4}, Lorg/jose4j/jwe/CipherUtil;->getCipher(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p4

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    iget v1, p0, Lorg/jose4j/jwe/SimpleAeadCipher;->tagByteLength:I

    invoke-static {v1}, Lorg/jose4j/lang/ByteUtil;->bitLength(I)I

    move-result v1

    invoke-direct {v0, v1, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {p4, p3, p1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p4

    :catch_0
    move-exception p1

    new-instance p2, Lorg/jose4j/lang/JoseException;

    invoke-virtual {p1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/jose4j/lang/JoseException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Invalid key for "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lorg/jose4j/jwe/SimpleAeadCipher;->algorithm:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public isAvailable(Lorg/slf4j/Logger;IILjava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lorg/jose4j/jwe/SimpleAeadCipher;->algorithm:Ljava/lang/String;

    invoke-static {v0, p2}, Lorg/jose4j/jwe/CipherStrengthSupport;->isAvailable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    new-array v4, v0, [B

    fill-array-data v4, :array_0

    const/4 v0, 0x3

    new-array v5, v0, [B

    fill-array-data v5, :array_1

    new-array p2, p2, [B

    new-array v3, p3, [B

    :try_start_0
    new-instance v2, Lorg/jose4j/keys/AesKey;

    invoke-direct {v2, p2}, Lorg/jose4j/keys/AesKey;-><init>([B)V

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/jose4j/jwe/SimpleAeadCipher;->encrypt(Ljava/security/Key;[B[B[BLjava/lang/String;)Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p2

    const-string p3, "{} is not available ({})."

    invoke-static {p2}, Lorg/jose4j/lang/ExceptionHelp;->toStringWithCauses(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p4, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    nop

    :array_0
    .array-data 1
        0x70t
        0x6ct
        0x61t
        0x69t
        0x6et
        0x74t
        0x65t
        0x78t
        0x74t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x61t
        0x61t
        0x64t
    .end array-data
.end method
