.class public final enum Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;
.super Ljava/lang/Enum;
.source "JsonWebKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwk/JsonWebKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OutputControlLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

.field public static final enum INCLUDE_PRIVATE:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

.field public static final enum INCLUDE_SYMMETRIC:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

.field public static final enum PUBLIC_ONLY:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    const-string v1, "INCLUDE_PRIVATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->INCLUDE_PRIVATE:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    new-instance v1, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    const-string v2, "INCLUDE_SYMMETRIC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->INCLUDE_SYMMETRIC:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    new-instance v2, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    const-string v3, "PUBLIC_ONLY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->PUBLIC_ONLY:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    filled-new-array {v0, v1, v2}, [Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    move-result-object v0

    sput-object v0, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->$VALUES:[Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;
    .locals 1

    const-class v0, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    return-object p0
.end method

.method public static values()[Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;
    .locals 1

    sget-object v0, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->$VALUES:[Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    invoke-virtual {v0}, [Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    return-object v0
.end method
