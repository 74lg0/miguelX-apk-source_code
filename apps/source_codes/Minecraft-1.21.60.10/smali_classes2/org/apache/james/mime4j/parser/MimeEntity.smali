.class public Lorg/apache/james/mime4j/parser/MimeEntity;
.super Lorg/apache/james/mime4j/parser/AbstractEntity;
.source "MimeEntity.java"


# static fields
.field private static final T_IN_BODYPART:I = -0x2

.field private static final T_IN_MESSAGE:I = -0x3


# instance fields
.field private dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

.field private final inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

.field private final lineSource:Lorg/apache/james/mime4j/io/LineNumberSource;

.field private mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

.field private recursionMode:I

.field private skipHeader:Z

.field private tmpbuf:[B


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/io/LineNumberSource;Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Lorg/apache/james/mime4j/descriptor/BodyDescriptor;II)V
    .locals 7

    new-instance v6, Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct {v6}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/james/mime4j/parser/MimeEntity;-><init>(Lorg/apache/james/mime4j/io/LineNumberSource;Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Lorg/apache/james/mime4j/descriptor/BodyDescriptor;IILorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/io/LineNumberSource;Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Lorg/apache/james/mime4j/descriptor/BodyDescriptor;IILorg/apache/james/mime4j/parser/MimeEntityConfig;)V
    .locals 0

    invoke-direct {p0, p3, p4, p5, p6}, Lorg/apache/james/mime4j/parser/AbstractEntity;-><init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;IILorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    iput-object p1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->lineSource:Lorg/apache/james/mime4j/io/LineNumberSource;

    iput-object p2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    new-instance p1, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    invoke-virtual {p6}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result p3

    invoke-direct {p1, p2, p3}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;-><init>(Ljava/io/InputStream;I)V

    iput-object p1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->skipHeader:Z

    return-void
.end method

.method private advanceToBoundary()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->eof()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->tmpbuf:[B

    if-nez v0, :cond_0

    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->tmpbuf:[B

    :cond_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->getLimitedContentStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->tmpbuf:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private clearMimeStream()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    new-instance v0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    return-void
.end method

.method private createMimeStream()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    invoke-interface {v0}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->getBoundary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    const/16 v2, 0x1000

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    if-eqz v2, :cond_1

    new-instance v2, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    new-instance v3, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v4, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    iget-object v5, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v5

    invoke-direct {v3, v4, v1, v5}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;-><init>(Ljava/io/InputStream;II)V

    invoke-direct {v2, v3, v0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;-><init>(Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v2, v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->ensureCapacity(I)V

    new-instance v1, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-direct {v1, v2, v0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;-><init>(Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/james/mime4j/MimeException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getLimitedContentStream()Ljava/io/InputStream;
    .locals 4

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxContentLen()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    new-instance v2, Lorg/apache/james/mime4j/io/LimitedInputStream;

    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/james/mime4j/io/LimitedInputStream;-><init>(Ljava/io/InputStream;J)V

    return-object v2

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    return-object v0
.end method

.method private nextMessage()Lorg/apache/james/mime4j/parser/EntityStateMachine;
    .locals 9

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    invoke-interface {v0}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isBase64Encoding(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "base64 encoded message/rfc822 detected"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/james/mime4j/codec/Base64InputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isQuotedPrintableEncoded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "quoted-printable encoded message/rfc822 detected"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    new-instance v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    :goto_0
    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->recursionMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    new-instance v1, Lorg/apache/james/mime4j/parser/RawEntity;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/parser/RawEntity;-><init>(Ljava/io/InputStream;)V

    return-object v1

    :cond_2
    new-instance v1, Lorg/apache/james/mime4j/parser/MimeEntity;

    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->lineSource:Lorg/apache/james/mime4j/io/LineNumberSource;

    new-instance v4, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v2

    const/16 v5, 0x1000

    invoke-direct {v4, v0, v5, v2}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;-><init>(Ljava/io/InputStream;II)V

    iget-object v5, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lorg/apache/james/mime4j/parser/MimeEntity;-><init>(Lorg/apache/james/mime4j/io/LineNumberSource;Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Lorg/apache/james/mime4j/descriptor/BodyDescriptor;IILorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->recursionMode:I

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/parser/MimeEntity;->setRecursionMode(I)V

    return-object v1
.end method

.method private nextMimeEntity()Lorg/apache/james/mime4j/parser/EntityStateMachine;
    .locals 9

    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->recursionMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/apache/james/mime4j/parser/RawEntity;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/parser/RawEntity;-><init>(Ljava/io/InputStream;)V

    return-object v0

    :cond_0
    new-instance v4, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v1

    const/16 v2, 0x1000

    invoke-direct {v4, v0, v2, v1}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;-><init>(Ljava/io/InputStream;II)V

    new-instance v0, Lorg/apache/james/mime4j/parser/MimeEntity;

    iget-object v3, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->lineSource:Lorg/apache/james/mime4j/io/LineNumberSource;

    iget-object v5, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    const/16 v6, 0xa

    const/16 v7, 0xb

    iget-object v8, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lorg/apache/james/mime4j/parser/MimeEntity;-><init>(Lorg/apache/james/mime4j/io/LineNumberSource;Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Lorg/apache/james/mime4j/descriptor/BodyDescriptor;IILorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->recursionMode:I

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/parser/MimeEntity;->setRecursionMode(I)V

    return-object v0
.end method


# virtual methods
.method public advance()Lorg/apache/james/mime4j/parser/EntityStateMachine;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_c

    const/4 v2, -0x2

    if-eq v0, v2, :cond_9

    const/4 v3, 0x5

    const/4 v4, 0x3

    if-eqz v0, :cond_7

    const/16 v5, 0xc

    if-eq v0, v5, :cond_c

    const/4 v6, 0x7

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->endState:I

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    invoke-static {v2}, Lorg/apache/james/mime4j/parser/MimeEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput v4, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto/16 :goto_1

    :pswitch_1
    iput v6, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto/16 :goto_1

    :pswitch_2
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->advanceToBoundary()V

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->isLastPart()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->clearMimeStream()V

    iput v6, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto/16 :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->clearMimeStream()V

    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->createMimeStream()V

    iput v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->nextMimeEntity()Lorg/apache/james/mime4j/parser/EntityStateMachine;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->advanceToBoundary()V

    iput v6, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto/16 :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->createMimeStream()V

    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    invoke-interface {v0}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->recursionMode:I

    if-ne v2, v4, :cond_3

    iput v5, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto/16 :goto_1

    :cond_3
    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isMultipart(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x6

    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->clearMimeStream()V

    goto :goto_1

    :cond_4
    iget v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->recursionMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isMessage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->nextMessage()Lorg/apache/james/mime4j/parser/EntityStateMachine;

    move-result-object v0

    return-object v0

    :cond_5
    iput v5, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->parseField()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v3, 0x4

    :cond_6
    iput v3, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto :goto_1

    :cond_7
    iget-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->skipHeader:Z

    if-eqz v0, :cond_8

    iput v3, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto :goto_1

    :cond_8
    iput v4, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->advanceToBoundary()V

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->eof()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->isLastPart()Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lorg/apache/james/mime4j/parser/Event;->MIME_BODY_PREMATURE_END:Lorg/apache/james/mime4j/parser/Event;

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/parser/MimeEntity;->monitor(Lorg/apache/james/mime4j/parser/Event;)V

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->mimeStream:Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/MimeBoundaryInputStream;->isLastPart()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->clearMimeStream()V

    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->createMimeStream()V

    iput v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->nextMimeEntity()Lorg/apache/james/mime4j/parser/EntityStateMachine;

    move-result-object v0

    return-object v0

    :cond_b
    :goto_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->clearMimeStream()V

    const/16 v0, 0x9

    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    goto :goto_1

    :cond_c
    :pswitch_6
    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->endState:I

    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    :goto_1
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getContentStream()Ljava/io/InputStream;
    .locals 3

    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    invoke-static {v2}, Lorg/apache/james/mime4j/parser/MimeEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/MimeEntity;->getLimitedContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected getDataStream()Lorg/apache/james/mime4j/io/LineReaderInputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->dataStream:Lorg/apache/james/mime4j/io/LineReaderInputStreamAdaptor;

    return-object v0
.end method

.method protected getLineNumber()I
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->lineSource:Lorg/apache/james/mime4j/io/LineNumberSource;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-interface {v0}, Lorg/apache/james/mime4j/io/LineNumberSource;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getRecursionMode()I
    .locals 1

    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->recursionMode:I

    return v0
.end method

.method public setRecursionMode(I)V
    .locals 0

    iput p1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->recursionMode:I

    return-void
.end method

.method public skipHeader(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->skipHeader:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    new-instance v1, Lorg/apache/james/mime4j/parser/RawField;

    const/16 v2, 0xc

    invoke-direct {v1, p1, v2}, Lorg/apache/james/mime4j/parser/RawField;-><init>(Lorg/apache/james/mime4j/util/ByteSequence;I)V

    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->addField(Lorg/apache/james/mime4j/parser/Field;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntity;->state:I

    invoke-static {v1}, Lorg/apache/james/mime4j/parser/MimeEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
