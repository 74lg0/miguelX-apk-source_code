.class public final Lcom/xbox/httpclient/HttpClientWebSocket;
.super Lokhttp3/WebSocketListener;
.source "HttpClientWebSocket.java"


# static fields
.field private static final OK_CLIENT:Lokhttp3/OkHttpClient;


# instance fields
.field private final headers:Lokhttp3/Headers$Builder;

.field private final owner:J

.field private socket:Lokhttp3/WebSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v0, Lcom/xbox/httpclient/HttpClientWebSocket;->OK_CLIENT:Lokhttp3/OkHttpClient;

    return-void
.end method

.method constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object v0, p0, Lcom/xbox/httpclient/HttpClientWebSocket;->headers:Lokhttp3/Headers$Builder;

    iput-wide p1, p0, Lcom/xbox/httpclient/HttpClientWebSocket;->owner:J

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xbox/httpclient/HttpClientWebSocket;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Sec-WebSocket-Protocol"

    invoke-virtual {p0, v0, p2}, Lcom/xbox/httpclient/HttpClientWebSocket;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/xbox/httpclient/HttpClientWebSocket;->headers:Lokhttp3/Headers$Builder;

    invoke-virtual {p2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    sget-object p2, Lcom/xbox/httpclient/HttpClientWebSocket;->OK_CLIENT:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1, p0}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/xbox/httpclient/HttpClientWebSocket;->socket:Lokhttp3/WebSocket;

    return-void
.end method

.method public disconnect(I)V
    .locals 2

    iget-object v0, p0, Lcom/xbox/httpclient/HttpClientWebSocket;->socket:Lokhttp3/WebSocket;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    return-void
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/xbox/httpclient/HttpClientWebSocket;->socket:Lokhttp3/WebSocket;

    invoke-interface {v0}, Lokhttp3/WebSocket;->cancel()V

    return-void
.end method

.method public native onBinaryMessage(Ljava/nio/ByteBuffer;)V
.end method

.method public native onClose(I)V
.end method

.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/xbox/httpclient/HttpClientWebSocket;->onClose(I)V

    return-void
.end method

.method public onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public native onFailure()V
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 0

    invoke-virtual {p0}, Lcom/xbox/httpclient/HttpClientWebSocket;->onFailure()V

    return-void
.end method

.method public native onMessage(Ljava/lang/String;)V
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/xbox/httpclient/HttpClientWebSocket;->onMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
    .locals 0

    invoke-virtual {p2}, Lokio/ByteString;->size()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p1}, Lcom/xbox/httpclient/HttpClientWebSocket;->onBinaryMessage(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public native onOpen()V
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 0

    invoke-virtual {p0}, Lcom/xbox/httpclient/HttpClientWebSocket;->onOpen()V

    return-void
.end method

.method public sendBinaryMessage(Ljava/nio/ByteBuffer;)Z
    .locals 1

    iget-object v0, p0, Lcom/xbox/httpclient/HttpClientWebSocket;->socket:Lokhttp3/WebSocket;

    invoke-static {p1}, Lokio/ByteString;->of(Ljava/nio/ByteBuffer;)Lokio/ByteString;

    move-result-object p1

    invoke-interface {v0, p1}, Lokhttp3/WebSocket;->send(Lokio/ByteString;)Z

    move-result p1

    return p1
.end method

.method public sendMessage(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/xbox/httpclient/HttpClientWebSocket;->socket:Lokhttp3/WebSocket;

    invoke-interface {v0, p1}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
