.class public abstract Lorg/apache/james/mime4j/storage/AbstractStorageProvider;
.super Ljava/lang/Object;
.source "AbstractStorageProvider.java"

# interfaces
.implements Lorg/apache/james/mime4j/storage/StorageProvider;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final store(Ljava/io/InputStream;)Lorg/apache/james/mime4j/storage/Storage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/james/mime4j/storage/AbstractStorageProvider;->createStorageOutputStream()Lorg/apache/james/mime4j/storage/StorageOutputStream;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/james/mime4j/codec/CodecUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->toStorage()Lorg/apache/james/mime4j/storage/Storage;

    move-result-object p1

    return-object p1
.end method
