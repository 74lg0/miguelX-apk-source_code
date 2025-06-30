.class Lorg/jose4j/jwk/SelectorSupport;
.super Ljava/lang/Object;
.source "SelectorSupport.java"


# static fields
.field private static final DECRYPT_OPS:[Ljava/lang/String;

.field private static final VERIFY_OPS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lorg/jose4j/jwk/KeyOperations;->VERIFY:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jose4j/jwk/SelectorSupport;->VERIFY_OPS:[Ljava/lang/String;

    sget-object v0, Lorg/jose4j/jwk/KeyOperations;->DECRYPT:Ljava/lang/String;

    sget-object v1, Lorg/jose4j/jwk/KeyOperations;->DERIVE_KEY:Ljava/lang/String;

    sget-object v2, Lorg/jose4j/jwk/KeyOperations;->UNWRAP_KEY:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jose4j/jwk/SelectorSupport;->DECRYPT_OPS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static commonFilterForInbound(Lorg/jose4j/jwx/JsonWebStructure;)Lorg/jose4j/jwk/SimpleJwkFilter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    new-instance v0, Lorg/jose4j/jwk/SimpleJwkFilter;

    invoke-direct {v0}, Lorg/jose4j/jwk/SimpleJwkFilter;-><init>()V

    invoke-virtual {p0}, Lorg/jose4j/jwx/JsonWebStructure;->getKeyIdHeaderValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-boolean v2, Lorg/jose4j/jwk/SimpleJwkFilter;->VALUE_REQUIRED:Z

    invoke-virtual {v0, v1, v2}, Lorg/jose4j/jwk/SimpleJwkFilter;->setKid(Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p0}, Lorg/jose4j/jwx/JsonWebStructure;->getX509CertSha1ThumbprintHeaderValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jose4j/jwx/JsonWebStructure;->getX509CertSha256ThumbprintHeaderValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/jose4j/jwk/SimpleJwkFilter;->setAllowFallbackDeriveFromX5cForX5Thumbs(Z)V

    if-eqz v1, :cond_1

    sget-boolean v3, Lorg/jose4j/jwk/SimpleJwkFilter;->OMITTED_OKAY:Z

    invoke-virtual {v0, v1, v3}, Lorg/jose4j/jwk/SimpleJwkFilter;->setX5t(Ljava/lang/String;Z)V

    :cond_1
    if-eqz v2, :cond_2

    sget-boolean v1, Lorg/jose4j/jwk/SimpleJwkFilter;->OMITTED_OKAY:Z

    invoke-virtual {v0, v2, v1}, Lorg/jose4j/jwk/SimpleJwkFilter;->setX5tS256(Ljava/lang/String;Z)V

    :cond_2
    invoke-virtual {p0}, Lorg/jose4j/jwx/JsonWebStructure;->getAlgorithmNoConstraintCheck()Lorg/jose4j/jwa/Algorithm;

    move-result-object p0

    invoke-interface {p0}, Lorg/jose4j/jwa/Algorithm;->getKeyType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/jose4j/jwk/SimpleJwkFilter;->setKty(Ljava/lang/String;)V

    return-object v0
.end method

.method public static filterForInboundEncrypted(Lorg/jose4j/jwe/JsonWebEncryption;)Lorg/jose4j/jwk/SimpleJwkFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    invoke-static {p0}, Lorg/jose4j/jwk/SelectorSupport;->commonFilterForInbound(Lorg/jose4j/jwx/JsonWebStructure;)Lorg/jose4j/jwk/SimpleJwkFilter;

    move-result-object p0

    const-string v0, "enc"

    sget-boolean v1, Lorg/jose4j/jwk/SimpleJwkFilter;->OMITTED_OKAY:Z

    invoke-virtual {p0, v0, v1}, Lorg/jose4j/jwk/SimpleJwkFilter;->setUse(Ljava/lang/String;Z)V

    sget-object v0, Lorg/jose4j/jwk/SelectorSupport;->DECRYPT_OPS:[Ljava/lang/String;

    sget-boolean v1, Lorg/jose4j/jwk/SimpleJwkFilter;->OMITTED_OKAY:Z

    invoke-virtual {p0, v0, v1}, Lorg/jose4j/jwk/SimpleJwkFilter;->setKeyOperations([Ljava/lang/String;Z)V

    return-object p0
.end method

.method public static filterForInboundSigned(Lorg/jose4j/jws/JsonWebSignature;)Lorg/jose4j/jwk/SimpleJwkFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    invoke-static {p0}, Lorg/jose4j/jwk/SelectorSupport;->commonFilterForInbound(Lorg/jose4j/jwx/JsonWebStructure;)Lorg/jose4j/jwk/SimpleJwkFilter;

    move-result-object p0

    const-string v0, "sig"

    sget-boolean v1, Lorg/jose4j/jwk/SimpleJwkFilter;->OMITTED_OKAY:Z

    invoke-virtual {p0, v0, v1}, Lorg/jose4j/jwk/SimpleJwkFilter;->setUse(Ljava/lang/String;Z)V

    sget-object v0, Lorg/jose4j/jwk/SelectorSupport;->VERIFY_OPS:[Ljava/lang/String;

    sget-boolean v1, Lorg/jose4j/jwk/SimpleJwkFilter;->OMITTED_OKAY:Z

    invoke-virtual {p0, v0, v1}, Lorg/jose4j/jwk/SimpleJwkFilter;->setKeyOperations([Ljava/lang/String;Z)V

    return-object p0
.end method
