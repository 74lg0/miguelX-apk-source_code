.class public Lcom/microsoft/xal/crypto/Ecdsa;
.super Ljava/lang/Object;
.source "Ecdsa.java"


# static fields
.field private static final ANDROID_KEY_STORE:Ljava/lang/String; = "AndroidKeyStore"

.field private static final ECDSA_SIGNATURE_NAME:Ljava/lang/String; = "NONEwithECDSA"

.field private static final EC_ALGORITHM_NAME:Ljava/lang/String; = "secp256r1"

.field private static final KEY_ALIAS_PREFIX:Ljava/lang/String; = "xal_"


# instance fields
.field private keyPair:Ljava/security/KeyPair;

.field private uniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBase64StringFromBytes([B)Ljava/lang/String;
    .locals 3

    array-length v0, p0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBytesFromBase64String(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static getKeyAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "xal_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static restoreKeyAndId(Landroid/content/Context;)Lcom/microsoft/xal/crypto/Ecdsa;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const-string v0, "com.microsoft.xal.crypto"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "id"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const-string v1, "public"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "private"

    invoke-interface {p0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, ""

    invoke-interface {p0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/microsoft/xal/crypto/Ecdsa;->getBytesFromBase64String(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v3}, Lcom/microsoft/xal/crypto/Ecdsa;->getBytesFromBase64String(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "ECDSA"

    const-string v3, "SC"

    invoke-static {v2, v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    new-instance v2, Lcom/microsoft/xal/crypto/Ecdsa;

    invoke-direct {v2}, Lcom/microsoft/xal/crypto/Ecdsa;-><init>()V

    iput-object v0, v2, Lcom/microsoft/xal/crypto/Ecdsa;->uniqueId:Ljava/lang/String;

    new-instance v0, Ljava/security/KeyPair;

    invoke-direct {v0, p0, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    iput-object v0, v2, Lcom/microsoft/xal/crypto/Ecdsa;->keyPair:Ljava/security/KeyPair;

    return-object v2

    :cond_2
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object v2

    :cond_3
    :goto_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object v2
.end method

.method private toP1363SignedBuffer([B)[B
    .locals 5

    const/4 v0, 0x3

    aget-byte v0, p1, v0

    const/4 v1, 0x4

    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, p1, v1, v0, v4}, Lcom/microsoft/xal/crypto/Ecdsa;->writeAdjustedHalfOfAsn1ToP1363([BIILjava/io/ByteArrayOutputStream;)V

    invoke-direct {p0, p1, v3, v2, v4}, Lcom/microsoft/xal/crypto/Ecdsa;->writeAdjustedHalfOfAsn1ToP1363([BIILjava/io/ByteArrayOutputStream;)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private writeAdjustedHalfOfAsn1ToP1363([BIILjava/io/ByteArrayOutputStream;)V
    .locals 3

    const/16 v0, 0x20

    if-le p3, v0, :cond_0

    sub-int/2addr p3, v0

    add-int/2addr p2, p3

    invoke-virtual {p4, p1, p2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    if-ge p3, v0, :cond_1

    rsub-int/lit8 v0, p3, 0x20

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p4, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p4, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public generateKey(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const-string v0, "ECDSA"

    const-string v1, "SC"

    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    const-string v2, "secp256r1"

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    iput-object p1, p0, Lcom/microsoft/xal/crypto/Ecdsa;->uniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xal/crypto/Ecdsa;->keyPair:Ljava/security/KeyPair;

    return-void
.end method

.method public getPublicKey()Lcom/microsoft/xal/crypto/EccPubKey;
    .locals 2

    new-instance v0, Lcom/microsoft/xal/crypto/EccPubKey;

    iget-object v1, p0, Lcom/microsoft/xal/crypto/Ecdsa;->keyPair:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    invoke-direct {v0, v1}, Lcom/microsoft/xal/crypto/EccPubKey;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xal/crypto/Ecdsa;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public hashAndSign([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    new-instance v0, Lcom/microsoft/xal/crypto/ShaHasher;

    invoke-direct {v0}, Lcom/microsoft/xal/crypto/ShaHasher;-><init>()V

    invoke-virtual {v0, p1}, Lcom/microsoft/xal/crypto/ShaHasher;->AddBytes([B)V

    invoke-virtual {v0}, Lcom/microsoft/xal/crypto/ShaHasher;->SignHash()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/xal/crypto/Ecdsa;->sign([B)[B

    move-result-object p1

    return-object p1
.end method

.method public sign([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    const-string v0, "NONEwithECDSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xal/crypto/Ecdsa;->keyPair:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/microsoft/xal/crypto/Ecdsa;->toP1363SignedBuffer([B)[B

    move-result-object p1

    return-object p1
.end method

.method public storeKeyPairAndId(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "com.microsoft.xal.crypto"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "id"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p2, p0, Lcom/microsoft/xal/crypto/Ecdsa;->keyPair:Ljava/security/KeyPair;

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p2

    invoke-interface {p2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/xal/crypto/Ecdsa;->getBase64StringFromBytes([B)Ljava/lang/String;

    move-result-object p2

    const-string v0, "public"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p2, p0, Lcom/microsoft/xal/crypto/Ecdsa;->keyPair:Ljava/security/KeyPair;

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p2

    invoke-interface {p2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/xal/crypto/Ecdsa;->getBase64StringFromBytes([B)Ljava/lang/String;

    move-result-object p2

    const-string v0, "private"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method
