.class public Lorg/apache/james/mime4j/codec/ByteQueue;
.super Ljava/lang/Object;
.source "ByteQueue.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# instance fields
.field private buf:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

.field private initialCapacity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->initialCapacity:I

    new-instance v0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-direct {v0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->buf:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->initialCapacity:I

    new-instance v0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->buf:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iput p1, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->initialCapacity:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->initialCapacity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    iget v1, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->initialCapacity:I

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->buf:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-direct {v0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->buf:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    :goto_0
    return-void
.end method

.method public count()I
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->buf:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->size()I

    move-result v0

    return v0
.end method

.method public dequeue()B
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->buf:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->remove()B

    move-result v0

    return v0
.end method

.method public enqueue(B)V
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->buf:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->add(B)Z

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/codec/ByteQueue;->buf:Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/UnboundedFifoByteBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
