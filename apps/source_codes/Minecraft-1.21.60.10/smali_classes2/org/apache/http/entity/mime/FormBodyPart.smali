.class public Lorg/apache/http/entity/mime/FormBodyPart;
.super Lorg/apache/james/mime4j/message/BodyPart;
.source "FormBodyPart.java"


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/james/mime4j/message/BodyPart;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lorg/apache/http/entity/mime/FormBodyPart;->name:Ljava/lang/String;

    new-instance p1, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {p1}, Lorg/apache/james/mime4j/message/Header;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/http/entity/mime/FormBodyPart;->setHeader(Lorg/apache/james/mime4j/message/Header;)V

    invoke-virtual {p0, p2}, Lorg/apache/http/entity/mime/FormBodyPart;->setBody(Lorg/apache/james/mime4j/message/Body;)V

    invoke-virtual {p0, p2}, Lorg/apache/http/entity/mime/FormBodyPart;->generateContentDisp(Lorg/apache/http/entity/mime/content/ContentBody;)V

    invoke-virtual {p0, p2}, Lorg/apache/http/entity/mime/FormBodyPart;->generateContentType(Lorg/apache/james/mime4j/descriptor/ContentDescriptor;)V

    invoke-virtual {p0, p2}, Lorg/apache/http/entity/mime/FormBodyPart;->generateTransferEncoding(Lorg/apache/james/mime4j/descriptor/ContentDescriptor;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Body may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Name may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/http/entity/mime/FormBodyPart;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    new-instance v1, Lorg/apache/http/entity/mime/MinimalField;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/entity/mime/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->addField(Lorg/apache/james/mime4j/parser/Field;)V

    return-void
.end method


# virtual methods
.method protected generateContentDisp(Lorg/apache/http/entity/mime/content/ContentBody;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "form-data; name=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/http/entity/mime/FormBodyPart;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/http/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "; filename=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/http/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/http/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected generateContentType(Lorg/apache/james/mime4j/descriptor/ContentDescriptor;)V
    .locals 2

    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/ContentDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/ContentDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/ContentDescriptor;->getCharset()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/ContentDescriptor;->getCharset()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/http/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected generateTransferEncoding(Lorg/apache/james/mime4j/descriptor/ContentDescriptor;)V
    .locals 1

    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/ContentDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Content-Transfer-Encoding"

    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/ContentDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/http/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/entity/mime/FormBodyPart;->name:Ljava/lang/String;

    return-object v0
.end method
