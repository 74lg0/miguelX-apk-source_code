.class Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$RecordLayerBuffer;
.super Ljava/io/ByteArrayOutputStream;
.source "DTLSReliableHandshake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/tls/DTLSReliableHandshake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecordLayerBuffer"
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method sendToRecordLayer(Lorg/spongycastle/crypto/tls/DTLSRecordLayer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$RecordLayerBuffer;->buf:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$RecordLayerBuffer;->count:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/spongycastle/crypto/tls/DTLSRecordLayer;->send([BII)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/DTLSReliableHandshake$RecordLayerBuffer;->buf:[B

    return-void
.end method
