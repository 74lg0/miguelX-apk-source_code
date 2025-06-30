.class public Lcom/mojang/minecraftpe/SentryEndpointConfig;
.super Ljava/lang/Object;
.source "SentryEndpointConfig.java"


# instance fields
.field public projectId:Ljava/lang/String;

.field public publicKey:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mojang/minecraftpe/SentryEndpointConfig;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/mojang/minecraftpe/SentryEndpointConfig;->projectId:Ljava/lang/String;

    iput-object p3, p0, Lcom/mojang/minecraftpe/SentryEndpointConfig;->publicKey:Ljava/lang/String;

    return-void
.end method
