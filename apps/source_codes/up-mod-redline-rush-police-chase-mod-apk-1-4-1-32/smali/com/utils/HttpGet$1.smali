.class Lcom/utils/HttpGet$1;
.super Ljava/lang/Object;
.source "HttpGet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/utils/HttpGet;->download(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/utils/HttpGet;

.field final synthetic val$_id:I

.field final synthetic val$_link:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/utils/HttpGet;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$_id",
            "val$_link"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/utils/HttpGet$1;->this$0:Lcom/utils/HttpGet;

    iput-object p2, p0, Lcom/utils/HttpGet$1;->val$_link:Ljava/lang/String;

    iput p3, p0, Lcom/utils/HttpGet$1;->val$_id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "IOException ex4 - "

    const-string v1, "IOException ex3 - "

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 52
    :try_start_0
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/utils/HttpGet$1;->val$_link:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 54
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLength()I

    move-result v6

    if-gez v6, :cond_0

    .line 57
    iget-object v6, p0, Lcom/utils/HttpGet$1;->this$0:Lcom/utils/HttpGet;

    const-string v7, "Could not get the size"

    invoke-static {v6, v7}, Lcom/utils/HttpGet;->access$000(Lcom/utils/HttpGet;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v7, p0, Lcom/utils/HttpGet$1;->this$0:Lcom/utils/HttpGet;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/utils/HttpGet;->access$000(Lcom/utils/HttpGet;Ljava/lang/String;)V

    .line 62
    :goto_0
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 63
    :try_start_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v7, 0x400

    :try_start_2
    new-array v8, v7, [B

    .line 67
    :goto_1
    invoke-virtual {v6, v8, v4, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 68
    invoke-virtual {v5, v8, v4, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 77
    :cond_1
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    .line 79
    iget-object v7, p0, Lcom/utils/HttpGet$1;->this$0:Lcom/utils/HttpGet;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/utils/HttpGet;->access$000(Lcom/utils/HttpGet;Ljava/lang/String;)V

    .line 84
    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/utils/HttpGet$1;->this$0:Lcom/utils/HttpGet;

    iget v6, p0, Lcom/utils/HttpGet$1;->val$_id:I

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v1, v6, v7}, Lcom/utils/HttpGet;->access$100(Lcom/utils/HttpGet;I[B)V

    .line 85
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_8

    :catch_1
    move-exception v1

    .line 87
    iget-object v5, p0, Lcom/utils/HttpGet$1;->this$0:Lcom/utils/HttpGet;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/utils/HttpGet;->access$000(Lcom/utils/HttpGet;Ljava/lang/String;)V

    goto/16 :goto_8

    :catchall_0
    move-exception v2

    move-object v3, v6

    move-object v6, v5

    goto/16 :goto_9

    :catch_2
    move-exception v7

    move-object v11, v6

    move-object v6, v5

    move-object v5, v7

    move-object v7, v11

    goto :goto_4

    :catch_3
    move-exception v7

    move-object v11, v6

    move-object v6, v5

    move-object v5, v7

    move-object v7, v11

    goto/16 :goto_6

    :catchall_1
    move-exception v2

    move-object v11, v6

    move-object v6, v3

    move-object v3, v11

    goto/16 :goto_9

    :catch_4
    move-exception v5

    move-object v7, v6

    move-object v6, v3

    goto :goto_4

    :catch_5
    move-exception v5

    move-object v7, v6

    move-object v6, v3

    goto :goto_6

    :catchall_2
    move-exception v2

    move-object v6, v3

    goto/16 :goto_9

    :catch_6
    move-exception v5

    move-object v6, v3

    move-object v7, v6

    .line 73
    :goto_4
    :try_start_5
    iget-object v8, p0, Lcom/utils/HttpGet$1;->this$0:Lcom/utils/HttpGet;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException ex2 - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/utils/HttpGet;->access$000(Lcom/utils/HttpGet;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v7, :cond_2

    .line 77
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_5

    :catch_7
    move-exception v5

    .line 79
    iget-object v7, p0, Lcom/utils/HttpGet$1;->this$0:Lcom/utils/HttpGet;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/utils/HttpGet;->access$000(Lcom/utils/HttpGet;Ljava/lang/String;)V

    :cond_2
    :goto_5
    if-eqz v6, :cond_4

    .line 84
    :try_start_7
    iget-object v1, p0, Lcom/utils/HttpGet$1;->this$0:Lcom/utils/HttpGet;

    iget v5, p0, Lcom/utils/HttpGet$1;->val$_id:I

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v1, v5, v7}, Lcom/utils/HttpGet;->access$100(Lcom/utils/HttpGet;I[B)V

    .line 85
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_8

    :catch_8
    move-exception v1

    .line 87
    iget-object v5, p0, Lcom/utils/HttpGet$1;->this$0:Lcom/utils/HttpGet;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_3

    :catch_9
    move-exception v5

    move-object v6, v3

    move-object v7, v6

    .line 71
    :goto_6
    :try_start_8
    iget-object v8, p0, Lcom/utils/HttpGet$1;->this$0:Lcom/utils/HttpGet;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MalformedURLException ex - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/utils/HttpGet;->access$000(Lcom/utils/HttpGet;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v7, :cond_3

    .line 77
    :try_start_9
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_7

    :catch_a
    move-exception v5

    .line 79
    iget-object v7, p0, Lcom/utils/HttpGet$1;->this$0:Lcom/utils/HttpGet;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/utils/HttpGet;->access$000(Lcom/utils/HttpGet;Ljava/lang/String;)V

    :cond_3
    :goto_7
    if-eqz v6, :cond_4

    .line 84
    :try_start_a
    iget-object v1, p0, Lcom/utils/HttpGet$1;->this$0:Lcom/utils/HttpGet;

    iget v5, p0, Lcom/utils/HttpGet$1;->val$_id:I

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-static {v1, v5, v7}, Lcom/utils/HttpGet;->access$100(Lcom/utils/HttpGet;I[B)V

    .line 85
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    goto :goto_8

    :catch_b
    move-exception v1

    .line 87
    iget-object v5, p0, Lcom/utils/HttpGet$1;->this$0:Lcom/utils/HttpGet;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_8
    if-nez v2, :cond_5

    .line 91
    iget-object v0, p0, Lcom/utils/HttpGet$1;->this$0:Lcom/utils/HttpGet;

    invoke-static {v0, v4, v3}, Lcom/utils/HttpGet;->access$100(Lcom/utils/HttpGet;I[B)V

    :cond_5
    return-void

    :catchall_3
    move-exception v2

    move-object v3, v7

    :goto_9
    if-eqz v3, :cond_6

    .line 77
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    goto :goto_a

    :catch_c
    move-exception v3

    .line 79
    iget-object v4, p0, Lcom/utils/HttpGet$1;->this$0:Lcom/utils/HttpGet;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/utils/HttpGet;->access$000(Lcom/utils/HttpGet;Ljava/lang/String;)V

    :cond_6
    :goto_a
    if-eqz v6, :cond_7

    .line 84
    :try_start_c
    iget-object v1, p0, Lcom/utils/HttpGet$1;->this$0:Lcom/utils/HttpGet;

    iget v3, p0, Lcom/utils/HttpGet$1;->val$_id:I

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/utils/HttpGet;->access$100(Lcom/utils/HttpGet;I[B)V

    .line 85
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    goto :goto_b

    :catch_d
    move-exception v1

    .line 87
    iget-object v3, p0, Lcom/utils/HttpGet$1;->this$0:Lcom/utils/HttpGet;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/utils/HttpGet;->access$000(Lcom/utils/HttpGet;Ljava/lang/String;)V

    .line 88
    :cond_7
    :goto_b
    goto :goto_d

    :goto_c
    throw v2

    :goto_d
    goto :goto_c
.end method
