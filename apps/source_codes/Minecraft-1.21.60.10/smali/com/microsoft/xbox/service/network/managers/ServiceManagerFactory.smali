.class public Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;
.super Ljava/lang/Object;
.source "ServiceManagerFactory.java"


# static fields
.field private static instance:Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;


# instance fields
.field private slsServiceManager:Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    invoke-direct {v0}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->instance:Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;
    .locals 1

    sget-object v0, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->instance:Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    return-object v0
.end method


# virtual methods
.method public getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->slsServiceManager:Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;

    invoke-direct {v0}, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->slsServiceManager:Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->slsServiceManager:Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    return-object v0
.end method
