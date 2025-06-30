.class public Lcom/microsoft/xbox/service/network/managers/ServiceCommon;
.super Ljava/lang/Object;
.source "ServiceCommon.java"


# static fields
.field public static final MaxBIErrorParamLength:I = 0x800


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddWebHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    invoke-interface {p0, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static ParseHttpResponseForStatus(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->ParseHttpResponseForStatus(Ljava/lang/String;ILjava/lang/String;Ljava/io/InputStream;)V

    return-void
.end method

.method private static ParseHttpResponseForStatus(Ljava/lang/String;ILjava/lang/String;Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/16 p0, 0xc8

    const/16 p2, 0x190

    if-lt p1, p0, :cond_0

    if-ge p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_8

    const/4 p0, -0x1

    if-eq p1, p0, :cond_7

    const/16 p0, 0x191

    if-eq p1, p0, :cond_6

    const/16 p0, 0x193

    if-eq p1, p0, :cond_6

    if-ne p1, p2, :cond_2

    if-nez p3, :cond_1

    new-instance p0, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 p1, 0xf

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw p0

    :cond_1
    new-instance p0, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v1, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p3}, Lcom/microsoft/xbox/toolkit/StreamUtil;->ReadAsString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw p0

    :cond_2
    const/16 p0, 0x1f4

    if-eq p1, p0, :cond_5

    const/16 p0, 0x1f7

    if-eq p1, p0, :cond_4

    const/16 p0, 0x194

    if-ne p1, p0, :cond_3

    new-instance p0, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 p1, 0x15

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw p0

    :cond_3
    new-instance p0, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 p1, 0x4

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw p0

    :cond_4
    new-instance p0, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 p1, 0x12

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw p0

    :cond_5
    new-instance p0, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 p1, 0xd

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw p0

    :cond_6
    new-instance p0, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 p1, 0x3fc

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw p0

    :cond_7
    new-instance p0, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 p1, 0x3

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw p0

    :cond_8
    return-void
.end method

.method public static delete(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->deleteWithStatus(Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    const/16 p1, 0xc8

    if-eq p0, p1, :cond_1

    const/16 p1, 0xcc

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static delete(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->delete(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->delete(Ljava/lang/String;Ljava/util/List;[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v0, 0x5

    invoke-direct {p1, v0, v1, p0}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/Throwable;)V

    throw p1
.end method

.method public static delete(Ljava/lang/String;Ljava/util/List;[B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;[B)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/UrlUtil;->getEncodedUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/microsoft/xbox/toolkit/TimeMonitor;

    invoke-direct {v1}, Lcom/microsoft/xbox/toolkit/TimeMonitor;-><init>()V

    new-instance v1, Lcom/microsoft/xbox/service/network/managers/HttpDeleteWithRequestBody;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/service/network/managers/HttpDeleteWithRequestBody;-><init>(Ljava/net/URI;)V

    if-eqz p2, :cond_0

    array-length p0, p2

    if-lez p0, :cond_0

    :try_start_0
    new-instance p0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {p0, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, p0}, Lcom/microsoft/xbox/service/network/managers/HttpDeleteWithRequestBody;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v0, 0x5

    invoke-direct {p1, v0, v1, p0}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    const/4 p0, 0x0

    invoke-static {v1, v0, p1, p0, p0}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->excuteHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/List;ZI)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    move-result-object p1

    iget p2, p1, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusCode:I

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_1

    iget p2, p1, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusCode:I

    const/16 v0, 0xcc

    if-ne p2, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    :cond_2
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->close()V

    return p0
.end method

.method public static deleteWithStatus(Ljava/lang/String;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/UrlUtil;->getEncodedUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/microsoft/xbox/toolkit/TimeMonitor;

    invoke-direct {v1}, Lcom/microsoft/xbox/toolkit/TimeMonitor;-><init>()V

    new-instance v1, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/net/URI;)V

    const/4 p0, 0x0

    invoke-static {v1, v0, p1, p0, p0}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->excuteHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/List;ZI)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    move-result-object p0

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->close()V

    iget p0, p0, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusCode:I

    return p0
.end method

.method private static excuteHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/List;ZI)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;ZI)",
            "Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->excuteHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/List;ZIZ)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    move-result-object p0

    return-object p0
.end method

.method private static excuteHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/List;ZIZ)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;ZIZ)",
            "Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    invoke-static {p0, p2}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->AddWebHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/List;)V

    new-instance p2, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    invoke-direct {p2}, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;-><init>()V

    sget-object p2, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->networkOperationsFactory:Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;

    invoke-virtual {p2, p4}, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->getHttpClient(I)Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;

    move-result-object p2

    const/4 p4, 0x1

    invoke-virtual {p2, p0, p4}, Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;->getHttpStatusAndStreamInternal(Lorg/apache/http/client/methods/HttpUriRequest;Z)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    move-result-object p2

    if-nez p5, :cond_0

    :try_start_0
    iget p4, p2, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusCode:I

    iget-object p5, p2, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusLine:Ljava/lang/String;

    invoke-static {p1, p4, p5}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->ParseHttpResponseForStatus(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget p4, p2, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusCode:I

    iget-object p5, p2, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusLine:Ljava/lang/String;

    iget-object v0, p2, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->stream:Ljava/io/InputStream;

    invoke-static {p1, p4, p5, v0}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->ParseHttpResponseForStatus(Ljava/lang/String;ILjava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object p0, p2, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->stream:Ljava/io/InputStream;

    if-nez p0, :cond_2

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 p1, 0x7

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(J)V

    throw p0

    :cond_2
    :goto_1
    return-object p2

    :catch_0
    move-exception p1

    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    new-instance p4, Lcom/google/gson/JsonObject;

    invoke-direct {p4}, Lcom/google/gson/JsonObject;-><init>()V

    const/4 p5, 0x0

    if-nez p2, :cond_3

    move v0, p5

    goto :goto_2

    :cond_3
    iget v0, p2, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusCode:I

    :goto_2
    if-eqz p0, :cond_4

    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    :cond_4
    const-string v1, ""

    const/16 v2, 0x800

    if-eqz p2, :cond_5

    iget-object v3, p2, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusLine:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p2, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusLine:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object p2, p2, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusLine:Ljava/lang/String;

    if-le v3, v2, :cond_6

    invoke-virtual {p2, p5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_5
    move-object p2, v1

    :cond_6
    :goto_3
    if-eqz p0, :cond_7

    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    if-le p0, v2, :cond_8

    invoke-virtual {v1, p5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_8
    const-string p0, "Request"

    invoke-virtual {p3, p0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "code"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p0, p5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string p0, "description"

    invoke-virtual {p4, p0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Response"

    invoke-virtual {p3, p0, p4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    throw p1
.end method

.method public static getStreamAndStatus(Ljava/lang/String;Ljava/util/List;)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->getStreamAndStatus(Ljava/lang/String;Ljava/util/List;ZI)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->redirectUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->redirectUrl:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->getStreamAndStatus(Ljava/lang/String;Ljava/util/List;)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static getStreamAndStatus(Ljava/lang/String;Ljava/util/List;ZI)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;ZI)",
            "Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->getStreamAndStatus(Ljava/lang/String;Ljava/util/List;ZIZ)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    move-result-object p0

    return-object p0
.end method

.method private static getStreamAndStatus(Ljava/lang/String;Ljava/util/List;ZIZ)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;ZIZ)",
            "Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/UrlUtil;->getEncodedUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance p2, Ljava/net/URI;

    invoke-direct {p2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p2

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    const/4 v3, 0x1

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->excuteHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/List;ZIZ)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    move-result-object p0

    return-object p0
.end method

.method public static postStreamWithStatus(Ljava/lang/String;Ljava/util/List;[B)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;[B)",
            "Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/UrlUtil;->getEncodedUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    if-eqz p2, :cond_0

    array-length p0, p2

    if-lez p0, :cond_0

    :try_start_0
    new-instance p0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {p0, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, p0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v0, 0x5

    invoke-direct {p1, v0, v1, p0}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    const/4 p0, 0x0

    invoke-static {v1, v0, p1, p0, p0}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->excuteHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/List;ZI)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    move-result-object p0

    return-object p0
.end method

.method public static postStringWithStatus(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->postStreamWithStatus(Ljava/lang/String;Ljava/util/List;[B)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v0, 0x5

    invoke-direct {p1, v0, v1, p0}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/Throwable;)V

    throw p1
.end method

.method public static putStreamWithStatus(Ljava/lang/String;Ljava/util/List;[B)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;[B)",
            "Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/UrlUtil;->getEncodedUri(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/net/URI;)V

    if-eqz p2, :cond_0

    array-length p0, p2

    if-lez p0, :cond_0

    :try_start_0
    new-instance p0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {p0, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, p0}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v0, 0x5

    invoke-direct {p1, v0, v1, p0}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    const/4 p0, 0x0

    invoke-static {v1, v0, p1, p0, p0}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->excuteHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Ljava/util/List;ZI)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    move-result-object p0

    return-object p0
.end method

.method public static putStringWithStatus(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/microsoft/xbox/service/network/managers/ServiceCommon;->putStreamWithStatus(Ljava/lang/String;Ljava/util/List;[B)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v0, 0x5

    invoke-direct {p1, v0, v1, p0}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/Throwable;)V

    throw p1
.end method
