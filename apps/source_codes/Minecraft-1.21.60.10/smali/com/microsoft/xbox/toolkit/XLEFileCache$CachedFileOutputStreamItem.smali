.class Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;
.super Ljava/io/FileOutputStream;
.source "XLEFileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/XLEFileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachedFileOutputStreamItem"
.end annotation


# instance fields
.field private destFile:Ljava/io/File;

.field private mDigest:Ljava/security/MessageDigest;

.field private startDigest:Z

.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/XLEFileCache;

.field private writeMd5Finished:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/XLEFileCache;Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->this$0:Lcom/microsoft/xbox/toolkit/XLEFileCache;

    invoke-direct {p0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->mDigest:Ljava/security/MessageDigest;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->startDigest:Z

    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->writeMd5Finished:Z

    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->destFile:Ljava/io/File;

    :try_start_0
    const-string p1, "MD5"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->write([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p2}, Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;->getKeyString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p2, p1

    invoke-direct {p0, p2}, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->writeInt(I)V

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->write([B)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->startDigest:Z

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "File digest failed!"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final writeInt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->write(I)V

    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->write(I)V

    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->write(I)V

    ushr-int/lit8 p1, p1, 0x0

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->write(I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->writeMd5Finished:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->writeMd5Finished:Z

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->destFile:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->startDigest:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    :cond_0
    return-void
.end method
