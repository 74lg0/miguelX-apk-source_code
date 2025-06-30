.class public Lorg/apache/james/mime4j/parser/MimeStreamParser;
.super Ljava/lang/Object;
.source "MimeStreamParser.java"


# instance fields
.field private contentDecoding:Z

.field private handler:Lorg/apache/james/mime4j/parser/ContentHandler;

.field private final mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/parser/MimeStreamParser;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->clone()Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct {p1}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;-><init>()V

    :goto_0
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/parser/MimeTokenStream;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->contentDecoding:Z

    return-void
.end method


# virtual methods
.method public isContentDecoding()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->contentDecoding:Z

    return v0
.end method

.method public isRaw()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->isRaw()Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->parse(Ljava/io/InputStream;)V

    :goto_0
    iget-object p1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {p1}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getState()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object p1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {p1}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    move-result-object p1

    iget-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->contentDecoding:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getDecodedInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {v1, p1, v0}, Lorg/apache/james/mime4j/parser/ContentHandler;->body(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;Ljava/io/InputStream;)V

    goto :goto_2

    :pswitch_1
    iget-object p1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {p1}, Lorg/apache/james/mime4j/parser/ContentHandler;->endBodyPart()V

    goto :goto_2

    :pswitch_2
    iget-object p1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {p1}, Lorg/apache/james/mime4j/parser/ContentHandler;->startBodyPart()V

    goto :goto_2

    :pswitch_3
    iget-object p1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/james/mime4j/parser/ContentHandler;->epilogue(Ljava/io/InputStream;)V

    goto :goto_2

    :pswitch_4
    iget-object p1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/james/mime4j/parser/ContentHandler;->preamble(Ljava/io/InputStream;)V

    goto :goto_2

    :pswitch_5
    iget-object p1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {p1}, Lorg/apache/james/mime4j/parser/ContentHandler;->endMultipart()V

    goto :goto_2

    :pswitch_6
    iget-object p1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/james/mime4j/parser/ContentHandler;->startMultipart(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    goto :goto_2

    :pswitch_7
    iget-object p1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {p1}, Lorg/apache/james/mime4j/parser/ContentHandler;->endHeader()V

    goto :goto_2

    :pswitch_8
    iget-object p1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getField()Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/james/mime4j/parser/ContentHandler;->field(Lorg/apache/james/mime4j/parser/Field;)V

    goto :goto_2

    :pswitch_9
    iget-object p1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {p1}, Lorg/apache/james/mime4j/parser/ContentHandler;->startHeader()V

    goto :goto_2

    :pswitch_a
    iget-object p1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/james/mime4j/parser/ContentHandler;->raw(Ljava/io/InputStream;)V

    goto :goto_2

    :pswitch_b
    iget-object p1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {p1}, Lorg/apache/james/mime4j/parser/ContentHandler;->endMessage()V

    goto :goto_2

    :pswitch_c
    iget-object p1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    invoke-interface {p1}, Lorg/apache/james/mime4j/parser/ContentHandler;->startMessage()V

    :goto_2
    iget-object p1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {p1}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->next()I

    goto/16 :goto_0

    :pswitch_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setContentDecoding(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->contentDecoding:Z

    return-void
.end method

.method public setContentHandler(Lorg/apache/james/mime4j/parser/ContentHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->handler:Lorg/apache/james/mime4j/parser/ContentHandler;

    return-void
.end method

.method public setRaw(Z)V
    .locals 1

    iget-object p1, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->setRecursionMode(I)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeStreamParser;->mimeTokenStream:Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->stop()V

    return-void
.end method
