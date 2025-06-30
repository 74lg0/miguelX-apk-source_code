.class public Lorg/jose4j/jwt/consumer/JwtContext;
.super Ljava/lang/Object;
.source "JwtContext.java"


# instance fields
.field private joseObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jose4j/jwx/JsonWebStructure;",
            ">;"
        }
    .end annotation
.end field

.field private jwt:Ljava/lang/String;

.field private jwtClaims:Lorg/jose4j/jwt/JwtClaims;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jose4j/jwt/JwtClaims;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jose4j/jwt/JwtClaims;",
            "Ljava/util/List<",
            "Lorg/jose4j/jwx/JsonWebStructure;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtContext;->jwt:Ljava/lang/String;

    iput-object p2, p0, Lorg/jose4j/jwt/consumer/JwtContext;->jwtClaims:Lorg/jose4j/jwt/JwtClaims;

    iput-object p3, p0, Lorg/jose4j/jwt/consumer/JwtContext;->joseObjects:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/jose4j/jwt/JwtClaims;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/jwt/JwtClaims;",
            "Ljava/util/List<",
            "Lorg/jose4j/jwx/JsonWebStructure;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtContext;->jwtClaims:Lorg/jose4j/jwt/JwtClaims;

    iput-object p2, p0, Lorg/jose4j/jwt/consumer/JwtContext;->joseObjects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getJoseObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jose4j/jwx/JsonWebStructure;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jose4j/jwt/consumer/JwtContext;->joseObjects:Ljava/util/List;

    return-object v0
.end method

.method public getJwt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwt/consumer/JwtContext;->jwt:Ljava/lang/String;

    return-object v0
.end method

.method public getJwtClaims()Lorg/jose4j/jwt/JwtClaims;
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jwt/consumer/JwtContext;->jwtClaims:Lorg/jose4j/jwt/JwtClaims;

    return-object v0
.end method

.method setJwtClaims(Lorg/jose4j/jwt/JwtClaims;)V
    .locals 0

    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtContext;->jwtClaims:Lorg/jose4j/jwt/JwtClaims;

    return-void
.end method
