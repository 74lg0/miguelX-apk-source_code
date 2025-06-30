.class public Lorg/jose4j/jwe/ContentEncryptionParts;
.super Ljava/lang/Object;
.source "ContentEncryptionParts.java"


# instance fields
.field private authenticationTag:[B

.field private ciphertext:[B

.field private iv:[B


# direct methods
.method public constructor <init>([B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jose4j/jwe/ContentEncryptionParts;->iv:[B

    iput-object p2, p0, Lorg/jose4j/jwe/ContentEncryptionParts;->ciphertext:[B

    iput-object p3, p0, Lorg/jose4j/jwe/ContentEncryptionParts;->authenticationTag:[B

    return-void
.end method


# virtual methods
.method public getAuthenticationTag()[B
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwe/ContentEncryptionParts;->authenticationTag:[B

    return-object v0
.end method

.method public getCiphertext()[B
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwe/ContentEncryptionParts;->ciphertext:[B

    return-object v0
.end method

.method public getIv()[B
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwe/ContentEncryptionParts;->iv:[B

    return-object v0
.end method
