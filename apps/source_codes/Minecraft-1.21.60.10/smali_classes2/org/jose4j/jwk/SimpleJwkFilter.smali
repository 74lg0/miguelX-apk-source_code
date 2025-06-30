.class public Lorg/jose4j/jwk/SimpleJwkFilter;
.super Ljava/lang/Object;
.source "SimpleJwkFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;,
        Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;
    }
.end annotation


# static fields
.field private static final EMPTY:[Ljava/lang/String;

.field public static OMITTED_OKAY:Z = true

.field public static VALUE_REQUIRED:Z


# instance fields
.field private alg:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

.field private allowThumbsFallbackDeriveFromX5c:Z

.field private crv:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

.field private keyOps:Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;

.field private kid:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

.field private kty:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

.field private use:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

.field private x5t:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

.field private x5tS256:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/jose4j/jwk/SimpleJwkFilter;->EMPTY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/util/Collection;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jose4j/jwk/JsonWebKey;

    iget-object v2, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->kid:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    invoke-virtual {v1}, Lorg/jose4j/jwk/JsonWebKey;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/jose4j/jwk/SimpleJwkFilter;->isMatch(Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->kty:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    invoke-virtual {v1}, Lorg/jose4j/jwk/JsonWebKey;->getKeyType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/jose4j/jwk/SimpleJwkFilter;->isMatch(Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    iget-object v3, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->use:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    invoke-virtual {v1}, Lorg/jose4j/jwk/JsonWebKey;->getUse()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/jose4j/jwk/SimpleJwkFilter;->isMatch(Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    iget-object v3, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->alg:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    invoke-virtual {v1}, Lorg/jose4j/jwk/JsonWebKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/jose4j/jwk/SimpleJwkFilter;->isMatch(Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    iget-boolean v3, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->allowThumbsFallbackDeriveFromX5c:Z

    invoke-virtual {p0, v1, v3}, Lorg/jose4j/jwk/SimpleJwkFilter;->getThumbs(Lorg/jose4j/jwk/JsonWebKey;Z)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->x5t:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    const/4 v5, 0x0

    aget-object v6, v3, v5

    invoke-virtual {p0, v4, v6}, Lorg/jose4j/jwk/SimpleJwkFilter;->isMatch(Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    iget-object v4, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->x5tS256:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-virtual {p0, v4, v3}, Lorg/jose4j/jwk/SimpleJwkFilter;->isMatch(Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    iget-object v3, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->crv:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    invoke-virtual {p0, v1}, Lorg/jose4j/jwk/SimpleJwkFilter;->getCrv(Lorg/jose4j/jwk/JsonWebKey;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/jose4j/jwk/SimpleJwkFilter;->isMatch(Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    iget-object v3, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->keyOps:Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lorg/jose4j/jwk/JsonWebKey;->getKeyOps()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;->meetsCriteria(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v5, v6

    :cond_2
    and-int/2addr v2, v5

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method getCrv(Lorg/jose4j/jwk/JsonWebKey;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;

    invoke-virtual {p1}, Lorg/jose4j/jwk/EllipticCurveJsonWebKey;->getCurveName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method getThumbs(Lorg/jose4j/jwk/JsonWebKey;Z)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->x5t:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->x5tS256:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    if-nez v0, :cond_0

    sget-object p1, Lorg/jose4j/jwk/SimpleJwkFilter;->EMPTY:[Ljava/lang/String;

    return-object p1

    :cond_0
    instance-of v0, p1, Lorg/jose4j/jwk/PublicJsonWebKey;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/jose4j/jwk/PublicJsonWebKey;

    invoke-virtual {p1, p2}, Lorg/jose4j/jwk/PublicJsonWebKey;->getX509CertificateSha1Thumbprint(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2}, Lorg/jose4j/jwk/PublicJsonWebKey;->getX509CertificateSha256Thumbprint(Z)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lorg/jose4j/jwk/SimpleJwkFilter;->EMPTY:[Ljava/lang/String;

    return-object p1
.end method

.method isMatch(Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;->meetsCriteria(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public setAlg(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;-><init>(Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V

    iput-object v0, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->alg:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    return-void
.end method

.method public setAllowFallbackDeriveFromX5cForX5Thumbs(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->allowThumbsFallbackDeriveFromX5c:Z

    return-void
.end method

.method public setCrv(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;-><init>(Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V

    iput-object v0, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->crv:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    return-void
.end method

.method public setKeyOperations([Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;-><init>([Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V

    iput-object v0, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->keyOps:Lorg/jose4j/jwk/SimpleJwkFilter$KeyOpsCriteria;

    return-void
.end method

.method public setKid(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;-><init>(Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V

    iput-object v0, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->kid:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    return-void
.end method

.method public setKty(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;-><init>(Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V

    iput-object v0, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->kty:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    return-void
.end method

.method public setUse(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;-><init>(Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V

    iput-object v0, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->use:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    return-void
.end method

.method public setX5t(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;-><init>(Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V

    iput-object v0, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->x5t:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    return-void
.end method

.method public setX5tS256(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;-><init>(Ljava/lang/String;ZLorg/jose4j/jwk/SimpleJwkFilter$1;)V

    iput-object v0, p0, Lorg/jose4j/jwk/SimpleJwkFilter;->x5tS256:Lorg/jose4j/jwk/SimpleJwkFilter$Criteria;

    return-void
.end method
