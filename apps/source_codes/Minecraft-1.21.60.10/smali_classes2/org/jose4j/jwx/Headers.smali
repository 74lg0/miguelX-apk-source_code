.class public Lorg/jose4j/jwx/Headers;
.super Ljava/lang/Object;
.source "Headers.java"


# instance fields
.field protected base64url:Lorg/jose4j/base64url/Base64Url;

.field private encodedHeader:Ljava/lang/String;

.field private header:Ljava/lang/String;

.field private headerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jose4j/base64url/Base64Url;

    invoke-direct {v0}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    iput-object v0, p0, Lorg/jose4j/jwx/Headers;->base64url:Lorg/jose4j/base64url/Base64Url;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jose4j/jwx/Headers;->headerMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getEncodedHeader()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/jose4j/jwx/Headers;->encodedHeader:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jose4j/jwx/Headers;->getFullHeaderAsJsonString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jose4j/jwx/Headers;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v1, v0}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncodeUtf8ByteRepresentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jose4j/jwx/Headers;->encodedHeader:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/jose4j/jwx/Headers;->encodedHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getFullHeaderAsJsonString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwx/Headers;->header:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jose4j/jwx/Headers;->headerMap:Ljava/util/Map;

    invoke-static {v0}, Lorg/jose4j/json/JsonUtil;->toJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jose4j/jwx/Headers;->header:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lorg/jose4j/jwx/Headers;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getJwkHeaderValue(Ljava/lang/String;)Lorg/jose4j/jwk/JsonWebKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jose4j/jwx/Headers;->getObjectHeaderValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/jose4j/jwk/JsonWebKey$Factory;->newJwk(Ljava/util/Map;)Lorg/jose4j/jwk/JsonWebKey;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getLongHeaderValue(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwx/Headers;->headerMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lorg/jose4j/lang/JsonHelp;->getLong(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getObjectHeaderValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwx/Headers;->headerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPublicJwkHeaderValue(Ljava/lang/String;Ljava/lang/String;)Lorg/jose4j/jwk/PublicJsonWebKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jose4j/jwx/Headers;->getObjectHeaderValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lorg/jose4j/jwk/PublicJsonWebKey$Factory;->newPublicJwk(Ljava/util/Map;Ljava/lang/String;)Lorg/jose4j/jwk/PublicJsonWebKey;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwx/Headers;->headerMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lorg/jose4j/lang/JsonHelp;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method setEncodedHeader(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    iput-object p1, p0, Lorg/jose4j/jwx/Headers;->encodedHeader:Ljava/lang/String;

    iget-object v0, p0, Lorg/jose4j/jwx/Headers;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v0, p1}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecodeToUtf8String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwx/Headers;->header:Ljava/lang/String;

    invoke-static {p1}, Lorg/jose4j/json/JsonUtil;->parseJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwx/Headers;->headerMap:Ljava/util/Map;

    return-void
.end method

.method public setFullHeaderAsJsonString(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jose4j/jwx/Headers;->encodedHeader:Ljava/lang/String;

    iput-object p1, p0, Lorg/jose4j/jwx/Headers;->header:Ljava/lang/String;

    invoke-static {p1}, Lorg/jose4j/json/JsonUtil;->parseJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwx/Headers;->headerMap:Ljava/util/Map;

    return-void
.end method

.method public setJwkHeaderValue(Ljava/lang/String;Lorg/jose4j/jwk/JsonWebKey;)V
    .locals 1

    sget-object v0, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->PUBLIC_ONLY:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    invoke-virtual {p2, v0}, Lorg/jose4j/jwk/JsonWebKey;->toParams(Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jose4j/jwx/Headers;->setObjectHeaderValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setObjectHeaderValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwx/Headers;->headerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/jose4j/jwx/Headers;->header:Ljava/lang/String;

    iput-object p1, p0, Lorg/jose4j/jwx/Headers;->encodedHeader:Ljava/lang/String;

    return-void
.end method

.method public setStringHeaderValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/jose4j/jwx/Headers;->setObjectHeaderValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
