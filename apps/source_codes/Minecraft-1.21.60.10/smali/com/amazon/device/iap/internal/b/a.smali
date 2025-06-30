.class public Lcom/amazon/device/iap/internal/b/a;
.super Ljava/lang/RuntimeException;
.source "ReceiptParsingException.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/amazon/device/iap/internal/b/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/device/iap/internal/b/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/device/iap/internal/b/a;->a:Ljava/lang/String;

    return-object v0
.end method
