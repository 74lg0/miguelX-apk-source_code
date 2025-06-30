.class public abstract Lorg/jose4j/jwk/JsonWebKey;
.super Ljava/lang/Object;
.source "JsonWebKey.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwk/JsonWebKey$Factory;,
        Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;
    }
.end annotation


# static fields
.field public static final ALGORITHM_PARAMETER:Ljava/lang/String; = "alg"

.field public static final KEY_ID_PARAMETER:Ljava/lang/String; = "kid"

.field public static final KEY_OPERATIONS:Ljava/lang/String; = "key_ops"

.field public static final KEY_TYPE_PARAMETER:Ljava/lang/String; = "kty"

.field public static final USE_PARAMETER:Ljava/lang/String; = "use"


# instance fields
.field private algorithm:Ljava/lang/String;

.field protected key:Ljava/security/Key;

.field private keyId:Ljava/lang/String;

.field private keyOps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected otherParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private use:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/security/Key;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jose4j/jwk/JsonWebKey;->otherParameters:Ljava/util/Map;

    iput-object p1, p0, Lorg/jose4j/jwk/JsonWebKey;->key:Ljava/security/Key;

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jose4j/jwk/JsonWebKey;->otherParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v0, "kty"

    const-string v1, "use"

    const-string v2, "kid"

    const-string v3, "alg"

    const-string v4, "key_ops"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jose4j/jwk/JsonWebKey;->removeFromOtherParams([Ljava/lang/String;)V

    invoke-static {p1, v1}, Lorg/jose4j/jwk/JsonWebKey;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jose4j/jwk/JsonWebKey;->setUse(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lorg/jose4j/jwk/JsonWebKey;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jose4j/jwk/JsonWebKey;->setKeyId(Ljava/lang/String;)V

    invoke-static {p1, v3}, Lorg/jose4j/jwk/JsonWebKey;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jose4j/jwk/JsonWebKey;->setAlgorithm(Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, v4}, Lorg/jose4j/lang/JsonHelp;->getStringArray(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwk/JsonWebKey;->keyOps:Ljava/util/List;

    :cond_0
    return-void
.end method

.method protected static getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/jose4j/lang/JsonHelp;->getStringChecked(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static getString(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/jose4j/jwk/JsonWebKey;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/jose4j/lang/JoseException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Missing required \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' parameter."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method protected static getStringRequired(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/jose4j/jwk/JsonWebKey;->getString(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public calculateBase64urlEncodedThumbprint(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jose4j/jwk/JsonWebKey;->calculateThumbprint(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/jose4j/base64url/Base64Url;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public calculateThumbprint(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p1}, Lorg/jose4j/lang/HashUtil;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jose4j/jwk/JsonWebKey;->produceThumbprintHashInput()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jose4j/lang/StringUtil;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    return-object p1
.end method

.method protected abstract fillTypeSpecificParams(Ljava/util/Map;Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;",
            ")V"
        }
    .end annotation
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwk/JsonWebKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/security/Key;
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwk/JsonWebKey;->key:Ljava/security/Key;

    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwk/JsonWebKey;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyOps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jose4j/jwk/JsonWebKey;->keyOps:Ljava/util/List;

    return-object v0
.end method

.method public abstract getKeyType()Ljava/lang/String;
.end method

.method public getOtherParameterValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jose4j/jwk/JsonWebKey;->otherParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/jose4j/jwk/JsonWebKey;->key:Ljava/security/Key;

    check-cast v0, Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwk/JsonWebKey;->use:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract produceThumbprintHashInput()Ljava/lang/String;
.end method

.method protected putIfNotNull(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected varargs removeFromOtherParams([Ljava/lang/String;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/jose4j/jwk/JsonWebKey;->otherParameters:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jose4j/jwk/JsonWebKey;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jose4j/jwk/JsonWebKey;->keyId:Ljava/lang/String;

    return-void
.end method

.method public setKeyOps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/jose4j/jwk/JsonWebKey;->keyOps:Ljava/util/List;

    return-void
.end method

.method public setOtherParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwk/JsonWebKey;->otherParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUse(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jose4j/jwk/JsonWebKey;->use:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->INCLUDE_SYMMETRIC:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    invoke-virtual {p0, v0}, Lorg/jose4j/jwk/JsonWebKey;->toJson(Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson(Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jose4j/jwk/JsonWebKey;->toParams(Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lorg/jose4j/json/JsonUtil;->toJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toParams(Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "kty"

    invoke-virtual {p0}, Lorg/jose4j/jwk/JsonWebKey;->getKeyType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "kid"

    invoke-virtual {p0}, Lorg/jose4j/jwk/JsonWebKey;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/jose4j/jwk/JsonWebKey;->putIfNotNull(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v1, "use"

    invoke-virtual {p0}, Lorg/jose4j/jwk/JsonWebKey;->getUse()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/jose4j/jwk/JsonWebKey;->putIfNotNull(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v1, "key_ops"

    iget-object v2, p0, Lorg/jose4j/jwk/JsonWebKey;->keyOps:Ljava/util/List;

    invoke-virtual {p0, v1, v2, v0}, Lorg/jose4j/jwk/JsonWebKey;->putIfNotNull(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    const-string v1, "alg"

    invoke-virtual {p0}, Lorg/jose4j/jwk/JsonWebKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/jose4j/jwk/JsonWebKey;->putIfNotNull(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    invoke-virtual {p0, v0, p1}, Lorg/jose4j/jwk/JsonWebKey;->fillTypeSpecificParams(Ljava/util/Map;Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)V

    iget-object p1, p0, Lorg/jose4j/jwk/JsonWebKey;->otherParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->PUBLIC_ONLY:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    invoke-virtual {p0, v1}, Lorg/jose4j/jwk/JsonWebKey;->toParams(Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
