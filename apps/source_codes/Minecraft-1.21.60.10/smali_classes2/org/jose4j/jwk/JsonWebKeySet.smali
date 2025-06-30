.class public Lorg/jose4j/jwk/JsonWebKeySet;
.super Ljava/lang/Object;
.source "JsonWebKeySet.java"


# static fields
.field public static final JWK_SET_MEMBER_NAME:Ljava/lang/String; = "keys"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/jose4j/jwk/JsonWebKeySet;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/jose4j/jwk/JsonWebKeySet;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/jose4j/json/JsonUtil;->parseJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "keys"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/jose4j/jwk/JsonWebKeySet;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    :try_start_0
    invoke-static {v1}, Lorg/jose4j/jwk/JsonWebKey$Factory;->newJwk(Ljava/util/Map;)Lorg/jose4j/jwk/JsonWebKey;

    move-result-object v2

    iget-object v3, p0, Lorg/jose4j/jwk/JsonWebKeySet;->keys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lorg/jose4j/jwk/JsonWebKeySet;->log:Lorg/slf4j/Logger;

    const-string v4, "Ignoring an individual JWK in a JWKS due to a problem processing it. JWK params: {} and the full JWKS content: {}. {}"

    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lorg/jose4j/lang/JoseException;

    const-string v0, "The JSON JWKS content does not include the keys member."

    invoke-direct {p1, v0}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jose4j/jwk/JsonWebKeySet;->keys:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jose4j/jwk/JsonWebKey;

    iget-object v1, p0, Lorg/jose4j/jwk/JsonWebKeySet;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Lorg/jose4j/jwk/JsonWebKey;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jose4j/jwk/JsonWebKeySet;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public addJsonWebKey(Lorg/jose4j/jwk/JsonWebKey;)V
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwk/JsonWebKeySet;->keys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public findJsonWebKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jose4j/jwk/JsonWebKey;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jose4j/jwk/JsonWebKeySet;->findJsonWebKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jose4j/jwk/JsonWebKey;

    :goto_0
    return-object p1
.end method

.method public findJsonWebKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/jose4j/jwk/JsonWebKeySet;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jose4j/jwk/JsonWebKey;

    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lorg/jose4j/jwk/JsonWebKey;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {v2}, Lorg/jose4j/jwk/JsonWebKey;->getUse()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    and-int/2addr v3, v4

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v2}, Lorg/jose4j/jwk/JsonWebKey;->getKeyType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    and-int/2addr v3, v4

    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {v2}, Lorg/jose4j/jwk/JsonWebKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    and-int/2addr v3, v4

    :cond_4
    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public getJsonWebKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jose4j/jwk/JsonWebKeySet;->keys:Ljava/util/List;

    return-object v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->INCLUDE_SYMMETRIC:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    invoke-virtual {p0, v0}, Lorg/jose4j/jwk/JsonWebKeySet;->toJson(Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson(Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jose4j/jwk/JsonWebKeySet;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lorg/jose4j/jwk/JsonWebKeySet;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jose4j/jwk/JsonWebKey;

    invoke-virtual {v2, p1}, Lorg/jose4j/jwk/JsonWebKey;->toParams(Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "keys"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lorg/jose4j/json/JsonUtil;->toJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
