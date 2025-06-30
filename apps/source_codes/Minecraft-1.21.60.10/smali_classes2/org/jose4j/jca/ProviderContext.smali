.class public Lorg/jose4j/jca/ProviderContext;
.super Ljava/lang/Object;
.source "ProviderContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jca/ProviderContext$SignatureAlgorithmOverride;,
        Lorg/jose4j/jca/ProviderContext$Context;
    }
.end annotation


# instance fields
.field private generalProviderContext:Lorg/jose4j/jca/ProviderContext$Context;

.field private secureRandom:Ljava/security/SecureRandom;

.field private suppliedKeyProviderContext:Lorg/jose4j/jca/ProviderContext$Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jose4j/jca/ProviderContext$Context;

    invoke-direct {v0, p0}, Lorg/jose4j/jca/ProviderContext$Context;-><init>(Lorg/jose4j/jca/ProviderContext;)V

    iput-object v0, p0, Lorg/jose4j/jca/ProviderContext;->suppliedKeyProviderContext:Lorg/jose4j/jca/ProviderContext$Context;

    new-instance v0, Lorg/jose4j/jca/ProviderContext$Context;

    invoke-direct {v0, p0}, Lorg/jose4j/jca/ProviderContext$Context;-><init>(Lorg/jose4j/jca/ProviderContext;)V

    iput-object v0, p0, Lorg/jose4j/jca/ProviderContext;->generalProviderContext:Lorg/jose4j/jca/ProviderContext$Context;

    return-void
.end method


# virtual methods
.method public getGeneralProviderContext()Lorg/jose4j/jca/ProviderContext$Context;
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jca/ProviderContext;->generalProviderContext:Lorg/jose4j/jca/ProviderContext$Context;

    return-object v0
.end method

.method public getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jca/ProviderContext;->secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public getSuppliedKeyProviderContext()Lorg/jose4j/jca/ProviderContext$Context;
    .locals 1

    iget-object v0, p0, Lorg/jose4j/jca/ProviderContext;->suppliedKeyProviderContext:Lorg/jose4j/jca/ProviderContext$Context;

    return-object v0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)V
    .locals 0

    iput-object p1, p0, Lorg/jose4j/jca/ProviderContext;->secureRandom:Ljava/security/SecureRandom;

    return-void
.end method
