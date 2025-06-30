.class Lcom/xbox/httpclient/HttpClientResponse;
.super Ljava/lang/Object;
.source "HttpClientResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xbox/httpclient/HttpClientResponse$NativeOutputStream;
    }
.end annotation


# instance fields
.field private final callHandle:J

.field private final response:Lokhttp3/Response;


# direct methods
.method public constructor <init>(JLokhttp3/Response;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/xbox/httpclient/HttpClientResponse;->callHandle:J

    iput-object p3, p0, Lcom/xbox/httpclient/HttpClientResponse;->response:Lokhttp3/Response;

    return-void
.end method


# virtual methods
.method public getHeaderNameAtIndex(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/xbox/httpclient/HttpClientResponse;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/xbox/httpclient/HttpClientResponse;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHeaderValueAtIndex(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/xbox/httpclient/HttpClientResponse;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/xbox/httpclient/HttpClientResponse;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNumHeaders()I
    .locals 1

    iget-object v0, p0, Lcom/xbox/httpclient/HttpClientResponse;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    move-result v0

    return v0
.end method

.method public getResponseBodyBytes()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/xbox/httpclient/HttpClientResponse;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    new-instance v1, Lcom/xbox/httpclient/HttpClientResponse$NativeOutputStream;

    iget-wide v2, p0, Lcom/xbox/httpclient/HttpClientResponse;->callHandle:J

    invoke-direct {v1, p0, v2, v3}, Lcom/xbox/httpclient/HttpClientResponse$NativeOutputStream;-><init>(Lcom/xbox/httpclient/HttpClientResponse;J)V

    invoke-static {v1}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object v1

    invoke-interface {v0, v1}, Lokio/BufferedSource;->readAll(Lokio/Sink;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xbox/httpclient/HttpClientResponse;->response:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    throw v0

    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/xbox/httpclient/HttpClientResponse;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->close()V

    return-void
.end method

.method public getResponseCode()I
    .locals 1

    iget-object v0, p0, Lcom/xbox/httpclient/HttpClientResponse;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    return v0
.end method
