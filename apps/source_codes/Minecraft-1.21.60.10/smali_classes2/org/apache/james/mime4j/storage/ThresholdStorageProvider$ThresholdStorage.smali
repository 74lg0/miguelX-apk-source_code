.class final Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;
.super Ljava/lang/Object;
.source "ThresholdStorageProvider.java"

# interfaces
.implements Lorg/apache/james/mime4j/storage/Storage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThresholdStorage"
.end annotation


# instance fields
.field private head:[B

.field private final headLen:I

.field private tail:Lorg/apache/james/mime4j/storage/Storage;


# direct methods
.method public constructor <init>([BILorg/apache/james/mime4j/storage/Storage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->head:[B

    iput p2, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->headLen:I

    iput-object p3, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->tail:Lorg/apache/james/mime4j/storage/Storage;

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 2

    iget-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->head:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->head:[B

    iget-object v1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->tail:Lorg/apache/james/mime4j/storage/Storage;

    invoke-interface {v1}, Lorg/apache/james/mime4j/storage/Storage;->delete()V

    iput-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->tail:Lorg/apache/james/mime4j/storage/Storage;

    :cond_0
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->head:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->head:[B

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->headLen:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    iget-object v1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;->tail:Lorg/apache/james/mime4j/storage/Storage;

    invoke-interface {v1}, Lorg/apache/james/mime4j/storage/Storage;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/SequenceInputStream;

    invoke-direct {v2, v0, v1}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "storage has been deleted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
