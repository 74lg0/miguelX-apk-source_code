.class Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;
.super Ljava/io/ByteArrayOutputStream;
.source "TlsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/tls/TlsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandshakeMessage"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/crypto/tls/TlsProtocol;


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x3c

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;SI)V

    return-void
.end method

.method constructor <init>(Lorg/spongycastle/crypto/tls/TlsProtocol;SI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->this$0:Lorg/spongycastle/crypto/tls/TlsProtocol;

    add-int/lit8 p3, p3, 0x4

    invoke-direct {p0, p3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {p2, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    iget p1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->count:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->count:I

    return-void
.end method


# virtual methods
.method writeToRecordStream()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->count:I

    add-int/lit8 v0, v0, -0x4

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint24(I)V

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->buf:[B

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->this$0:Lorg/spongycastle/crypto/tls/TlsProtocol;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->count:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsProtocol;->writeHandshakeMessage([BII)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->buf:[B

    return-void
.end method
