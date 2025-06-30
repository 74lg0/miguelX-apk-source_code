.class public Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;
.super Ljava/lang/Object;
.source "XLEMemoryCacheEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private byteCount:I

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-lez p2, :cond_0

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;->data:Ljava/lang/Object;

    iput p2, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;->byteCount:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "byteCount"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "data"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getByteCount()I
    .locals 1

    iget v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;->byteCount:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;->data:Ljava/lang/Object;

    return-object v0
.end method
