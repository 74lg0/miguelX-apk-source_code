.class public Lorg/jose4j/lang/ByteUtil;
.super Ljava/lang/Object;
.source "ByteUtil.java"


# static fields
.field public static final EMPTY_BYTES:[B

.field private static final MAX_BYTE_LENGTH:I = 0xfffffff


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/jose4j/lang/ByteUtil;->EMPTY_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitLength(I)I
    .locals 3

    const v0, 0xfffffff

    if-gt p0, v0, :cond_0

    if-ltz p0, :cond_0

    mul-int/lit8 p0, p0, 0x8

    return p0

    :cond_0
    new-instance v0, Lorg/jose4j/lang/UncheckedJoseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid byte length ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ") for converting to bit length"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/jose4j/lang/UncheckedJoseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bitLength([B)I
    .locals 0

    array-length p0, p0

    invoke-static {p0}, Lorg/jose4j/lang/ByteUtil;->bitLength(I)I

    move-result p0

    return p0
.end method

.method public static byteLength(I)I
    .locals 0

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static varargs concat([[B)[B
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IOEx from ByteArrayOutputStream?!"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static convertSignedTwosCompToUnsigned([B)[I
    .locals 3

    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    invoke-static {v2}, Lorg/jose4j/lang/ByteUtil;->getInt(B)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static convertUnsignedToSignedTwosComp([I)[B
    .locals 3

    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget v2, p0, v1

    invoke-static {v2}, Lorg/jose4j/lang/ByteUtil;->getByte(I)B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getByte(I)B
    .locals 3

    invoke-static {p0}, Lorg/jose4j/lang/ByteUtil;->getBytes(I)[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-byte v1, v0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    aget-byte v1, v0, v1

    if-nez v1, :cond_0

    const/4 p0, 0x3

    aget-byte p0, v0, p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Integer value ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ") too large to stuff into one byte."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBytes(I)[B
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static getBytes(J)[B
    .locals 1

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static getInt(B)I
    .locals 0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    not-int p0, p0

    rsub-int p0, p0, 0x100

    :goto_0
    return p0
.end method

.method public static leftHalf([B)[B
    .locals 2

    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/jose4j/lang/ByteUtil;->subArray([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static randomBytes(I)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jose4j/lang/ByteUtil;->randomBytes(ILjava/security/SecureRandom;)[B

    move-result-object p0

    return-object p0
.end method

.method public static randomBytes(ILjava/security/SecureRandom;)[B
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Ljava/security/SecureRandom;

    invoke-direct {p1}, Ljava/security/SecureRandom;-><init>()V

    :cond_0
    new-array p0, p0, [B

    invoke-virtual {p1, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method

.method public static rightHalf([B)[B
    .locals 1

    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0, v0}, Lorg/jose4j/lang/ByteUtil;->subArray([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static secureEquals([B[B)Z
    .locals 7

    if-nez p0, :cond_0

    sget-object p0, Lorg/jose4j/lang/ByteUtil;->EMPTY_BYTES:[B

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Lorg/jose4j/lang/ByteUtil;->EMPTY_BYTES:[B

    :cond_1
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    array-length v1, p0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    aget-byte v5, p0, v3

    aget-byte v6, p1, v3

    xor-int/2addr v5, v6

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    if-ne v0, v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public static subArray([BII)[B
    .locals 2

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static toDebugString([B)Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/jose4j/base64url/Base64Url;

    invoke-direct {v0}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    invoke-virtual {v0, p0}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lorg/jose4j/lang/ByteUtil;->convertSignedTwosCompToUnsigned([B)[I

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bytes/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p0, p0

    invoke-static {p0}, Lorg/jose4j/lang/ByteUtil;->bitLength(I)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "bits) | base64url encoded: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
