.class public Lorg/spongycastle/crypto/tls/TlsClientProtocol;
.super Lorg/spongycastle/crypto/tls/TlsProtocol;
.source "TlsClientProtocol.java"


# instance fields
.field protected authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

.field protected certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

.field protected certificateStatus:Lorg/spongycastle/crypto/tls/CertificateStatus;

.field protected keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

.field protected selectedSessionID:[B

.field protected tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

.field tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/tls/TlsProtocol;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateStatus:Lorg/spongycastle/crypto/tls/CertificateStatus;

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/tls/TlsProtocol;-><init>(Ljava/security/SecureRandom;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateStatus:Lorg/spongycastle/crypto/tls/CertificateStatus;

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    return-void
.end method


# virtual methods
.method protected cleanupHandshake()V
    .locals 1

    invoke-super {p0}, Lorg/spongycastle/crypto/tls/TlsProtocol;->cleanupHandshake()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateStatus:Lorg/spongycastle/crypto/tls/CertificateStatus;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    return-void
.end method

.method public connect(Lorg/spongycastle/crypto/tls/TlsClient;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    if-nez v0, :cond_1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    new-instance v0, Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/SecurityParameters;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    const/4 v1, 0x1

    iput v1, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->entity:I

    new-instance v0, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->secureRandom:Ljava/security/SecureRandom;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/tls/SecurityParameters;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsClient;->shouldUseGMTUnixTime()Z

    move-result v2

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->getNonceRandomGenerator()Lorg/spongycastle/crypto/prng/RandomGenerator;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->createRandomBlock(ZLorg/spongycastle/crypto/prng/RandomGenerator;)[B

    move-result-object v2

    iput-object v2, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-interface {v0, v2}, Lorg/spongycastle/crypto/tls/TlsClient;->init(Lorg/spongycastle/crypto/tls/TlsClientContext;)V

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v0, v2}, Lorg/spongycastle/crypto/tls/RecordStream;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsClient;->getSessionToResume()Lorg/spongycastle/crypto/tls/TlsSession;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsSession;->isResumable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsSession;->exportSessionParameters()Lorg/spongycastle/crypto/tls/SessionParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendClientHelloMessage()V

    iput-short v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->blockForHandshake()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\'connect\' can only be called once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'tlsClient\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getContext()Lorg/spongycastle/crypto/tls/TlsContext;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    return-object v0
.end method

.method getContextAdmin()Lorg/spongycastle/crypto/tls/AbstractTlsContext;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    return-object v0
.end method

.method protected getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    return-object v0
.end method

.method protected handleHandshakeMessage(SLjava/io/ByteArrayInputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    const/16 v1, 0xf

    const/16 v2, 0x14

    const/16 v3, 0xd

    const/4 v4, 0x2

    const/16 v5, 0xa

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_0

    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-ne p1, v4, :cond_0

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->processFinishedMessage(Ljava/io/ByteArrayInputStream;)V

    iput-short v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendFinishedMessage()V

    iput-short v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->completeHandshake()V

    return-void

    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1
    if-eqz p1, :cond_23

    const/4 v0, 0x0

    if-eq p1, v4, :cond_20

    const/16 v6, 0xe

    const/4 v7, 0x4

    if-eq p1, v7, :cond_1d

    if-eq p1, v2, :cond_19

    const/16 v1, 0x16

    const/4 v2, 0x5

    if-eq p1, v1, :cond_16

    const/16 v1, 0x17

    if-eq p1, v1, :cond_14

    const/4 v1, 0x6

    const/4 v6, 0x3

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :pswitch_0
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    packed-switch p1, :pswitch_data_1

    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :pswitch_1
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    :pswitch_2
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    :pswitch_3
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    :pswitch_4
    invoke-static {p2}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    const/16 p1, 0x8

    iput-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p1

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->sealHashAlgorithms()V

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsClient;->getClientSupplementalData()Ljava/util/Vector;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendSupplementalDataMessage(Ljava/util/Vector;)V

    :cond_2
    const/16 p1, 0x9

    iput-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    move-object p1, v0

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    invoke-interface {p2, p1}, Lorg/spongycastle/crypto/tls/TlsAuthentication;->getClientCredentials(Lorg/spongycastle/crypto/tls/CertificateRequest;)Lorg/spongycastle/crypto/tls/TlsCredentials;

    move-result-object p1

    if-nez p1, :cond_4

    iget-object p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p2}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    sget-object p2, Lorg/spongycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendCertificateMessage(Lorg/spongycastle/crypto/tls/Certificate;)V

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p2, p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processClientCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendCertificateMessage(Lorg/spongycastle/crypto/tls/Certificate;)V

    :goto_0
    iput-short v5, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendClientKeyExchangeMessage()V

    const/16 p2, 0xb

    iput-short p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/TlsContext;

    move-result-object p2

    invoke-static {p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/TlsContext;

    move-result-object p2

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-static {p2, v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->establishMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsKeyExchange;)V

    :cond_5
    iget-object p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/tls/RecordStream;->prepareToFinish()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p2

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/TlsContext;

    move-result-object v2

    invoke-static {v2, p2, v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getCurrentPRFHash(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsHandshakeHash;[B)[B

    move-result-object v0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->sessionHash:[B

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isSSL(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/TlsContext;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->establishMasterSecret(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsKeyExchange;)V

    :cond_6
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsPeer;->getCompression()Lorg/spongycastle/crypto/tls/TlsCompression;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v2

    invoke-interface {v2}, Lorg/spongycastle/crypto/tls/TlsPeer;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/tls/RecordStream;->setPendingConnectionState(Lorg/spongycastle/crypto/tls/TlsCompression;Lorg/spongycastle/crypto/tls/TlsCipher;)V

    if-eqz p1, :cond_8

    instance-of v0, p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    if-eqz v0, :cond_8

    check-cast p1, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getSignatureAndHashAlgorithm(Lorg/spongycastle/crypto/tls/TlsContext;Lorg/spongycastle/crypto/tls/TlsSignerCredentials;)Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getSessionHash()[B

    move-result-object p2

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;->getHash()S

    move-result v1

    invoke-interface {p2, v1}, Lorg/spongycastle/crypto/tls/TlsHandshakeHash;->getFinalHash(S)[B

    move-result-object p2

    :goto_1
    invoke-interface {p1, p2}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object p1

    new-instance p2, Lorg/spongycastle/crypto/tls/DigitallySigned;

    invoke-direct {p2, v0, p1}, Lorg/spongycastle/crypto/tls/DigitallySigned;-><init>(Lorg/spongycastle/crypto/tls/SignatureAndHashAlgorithm;[B)V

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendCertificateVerifyMessage(Lorg/spongycastle/crypto/tls/DigitallySigned;)V

    const/16 p1, 0xc

    iput-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    :cond_8
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendChangeCipherSpecMessage()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendFinishedMessage()V

    iput-short v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_6

    :pswitch_5
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-eq p1, v7, :cond_a

    if-eq p1, v2, :cond_a

    if-ne p1, v1, :cond_9

    goto :goto_2

    :cond_9
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_a
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    :goto_2
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/TlsContext;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/spongycastle/crypto/tls/CertificateRequest;->parse(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-static {p2}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    iget-object p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-interface {p1, p2}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/spongycastle/crypto/tls/CertificateRequest;)V

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/RecordStream;->getHandshakeHash()Lorg/spongycastle/crypto/tls/TlsHandshakeHash;

    move-result-object p1

    iget-object p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/tls/CertificateRequest;->getSupportedSignatureAlgorithms()Ljava/util/Vector;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->trackHashAlgorithms(Lorg/spongycastle/crypto/tls/TlsHandshakeHash;Ljava/util/Vector;)V

    const/4 p1, 0x7

    iput-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_6

    :cond_b
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 p2, 0x28

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :pswitch_6
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-eq p1, v4, :cond_d

    if-eq p1, v6, :cond_e

    if-eq p1, v7, :cond_f

    if-ne p1, v2, :cond_c

    goto :goto_3

    :cond_c
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_d
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    :cond_e
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerCredentials()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    :cond_f
    :goto_3
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {p1, p2}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processServerKeyExchange(Ljava/io/InputStream;)V

    invoke-static {p2}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iput-short v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_6

    :pswitch_7
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-eq p1, v4, :cond_11

    if-ne p1, v6, :cond_10

    goto :goto_4

    :cond_10
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_11
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    :goto_4
    invoke-static {p2}, Lorg/spongycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-static {p2}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    if-eqz p1, :cond_12

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/Certificate;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    :cond_12
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->allowCertificateStatus:Z

    :cond_13
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    iget-object p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-interface {p1, p2}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsClient;->getAuthentication()Lorg/spongycastle/crypto/tls/TlsAuthentication;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    iget-object p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->peerCertificate:Lorg/spongycastle/crypto/tls/Certificate;

    invoke-interface {p1, p2}, Lorg/spongycastle/crypto/tls/TlsAuthentication;->notifyServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    iput-short v7, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_6

    :cond_14
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-ne p1, v4, :cond_15

    invoke-static {p2}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->readSupplementalDataMessage(Ljava/io/ByteArrayInputStream;)Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->handleSupplementalData(Ljava/util/Vector;)V

    goto/16 :goto_6

    :cond_15
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_16
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-ne p1, v7, :cond_18

    iget-boolean p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->allowCertificateStatus:Z

    if-eqz p1, :cond_17

    invoke-static {p2}, Lorg/spongycastle/crypto/tls/CertificateStatus;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/CertificateStatus;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->certificateStatus:Lorg/spongycastle/crypto/tls/CertificateStatus;

    invoke-static {p2}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iput-short v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto/16 :goto_6

    :cond_17
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_18
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_19
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-eq p1, v3, :cond_1b

    if-ne p1, v6, :cond_1a

    goto :goto_5

    :cond_1a
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1b
    iget-boolean p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->expectSessionTicket:Z

    if-nez p1, :cond_1c

    :goto_5
    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->processFinishedMessage(Ljava/io/ByteArrayInputStream;)V

    iput-short v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->completeHandshake()V

    goto/16 :goto_6

    :cond_1c
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1d
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    if-ne p1, v3, :cond_1f

    iget-boolean p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->expectSessionTicket:Z

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->invalidateSession()V

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->receiveNewSessionTicketMessage(Ljava/io/ByteArrayInputStream;)V

    iput-short v6, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    goto :goto_6

    :cond_1e
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_1f
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_20
    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    const/4 v1, 0x1

    if-ne p1, v1, :cond_22

    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->receiveServerHelloMessage(Ljava/io/ByteArrayInputStream;)V

    iput-short v4, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/RecordStream;->notifyHelloComplete()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->applyMaxFragmentLengthExtension()V

    iget-boolean p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-eqz p1, :cond_21

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/tls/SessionParameters;->getMasterSecret()[B

    move-result-object p2

    invoke-static {p2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    iput-object p2, p1, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object p2

    invoke-interface {p2}, Lorg/spongycastle/crypto/tls/TlsPeer;->getCompression()Lorg/spongycastle/crypto/tls/TlsCompression;

    move-result-object p2

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getPeer()Lorg/spongycastle/crypto/tls/TlsPeer;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsPeer;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/spongycastle/crypto/tls/RecordStream;->setPendingConnectionState(Lorg/spongycastle/crypto/tls/TlsCompression;Lorg/spongycastle/crypto/tls/TlsCipher;)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sendChangeCipherSpecMessage()V

    goto :goto_6

    :cond_21
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->invalidateSession()V

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    array-length p1, p1

    if-lez p1, :cond_24

    new-instance p1, Lorg/spongycastle/crypto/tls/TlsSessionImpl;

    iget-object p2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    invoke-direct {p1, p2, v0}, Lorg/spongycastle/crypto/tls/TlsSessionImpl;-><init>([BLorg/spongycastle/crypto/tls/SessionParameters;)V

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    goto :goto_6

    :cond_22
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_23
    invoke-static {p2}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    const/16 p2, 0x10

    if-ne p1, p2, :cond_24

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->refuseRenegotiation()V

    :cond_24
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method protected handleSupplementalData(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/tls/TlsClient;->processServerSupplementalData(Ljava/util/Vector;)V

    const/4 p1, 0x3

    iput-short p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->connection_state:S

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsClient;->getKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/TlsContext;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->init(Lorg/spongycastle/crypto/tls/TlsContext;)V

    return-void
.end method

.method protected receiveNewSessionTicketMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/NewSessionTicket;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/NewSessionTicket;

    move-result-object v0

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/tls/TlsClient;->notifyNewSessionTicket(Lorg/spongycastle/crypto/tls/NewSessionTicket;)V

    return-void
.end method

.method protected receiveServerHelloMessage(Ljava/io/ByteArrayInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v1

    const/16 v2, 0x2f

    if-nez v1, :cond_13

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/RecordStream;->getReadVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->equals(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/TlsContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsContext;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isEqualOrEarlierVersionOf(Lorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v1, v0}, Lorg/spongycastle/crypto/tls/RecordStream;->setWriteVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContextAdmin()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->setServerVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v1, v0}, Lorg/spongycastle/crypto/tls/TlsClient;->notifyServerVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    const/16 v1, 0x20

    invoke-static {v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object v3

    iput-object v3, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    array-length v3, v0

    if-gt v3, v1, :cond_10

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v1, v0}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySessionID([B)V

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->selectedSessionID:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    invoke-interface {v4}, Lorg/spongycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v4

    invoke-static {v0, v4}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    invoke-static {v4, v0}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v4

    if-eqz v4, :cond_f

    if-eqz v0, :cond_f

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/CipherSuite;->isSCSV(I)Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/TlsContext;

    move-result-object v4

    invoke-interface {v4}, Lorg/spongycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->isValidCipherSuiteForVersion(ILorg/spongycastle/crypto/tls/ProtocolVersion;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v4, v0}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySelectedCipherSuite(I)V

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v4

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    invoke-static {v5, v4}, Lorg/spongycastle/util/Arrays;->contains([SS)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v5, v4}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySelectedCompressionMethod(S)V

    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    sget-object v6, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v6, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    goto :goto_1

    :cond_2
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x6e

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_3
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    sget-object v5, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {p1, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p1

    if-eqz p1, :cond_5

    iput-boolean v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->secure_renegotiation:Z

    sget-object v5, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->createRenegotiationInfo([B)[B

    move-result-object v5

    invoke-static {p1, v5}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v0, 0x28

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_5
    :goto_2
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    iget-boolean v5, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->secure_renegotiation:Z

    invoke-interface {p1, v5}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySecureRenegotiation(Z)V

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->serverExtensions:Ljava/util/Hashtable;

    iget-boolean v6, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-eqz v6, :cond_7

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/SessionParameters;->getCipherSuite()I

    move-result p1

    if-ne v0, p1, :cond_6

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/SessionParameters;->getCompressionAlgorithm()S

    move-result p1

    if-ne v4, p1, :cond_6

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/tls/SessionParameters;->readServerExtensions()Ljava/util/Hashtable;

    move-result-object v5

    const/4 p1, 0x0

    goto :goto_3

    :cond_6
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_7
    :goto_3
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput v0, v6, Lorg/spongycastle/crypto/tls/SecurityParameters;->cipherSuite:I

    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput-short v4, v6, Lorg/spongycastle/crypto/tls/SecurityParameters;->compressionAlgorithm:S

    if-eqz v5, :cond_c

    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->hasEncryptThenMACExtension(Ljava/util/Hashtable;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isBlockCipherSuite(I)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_9
    :goto_4
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iput-boolean v4, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->encryptThenMAC:Z

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->hasExtendedMasterSecretExtension(Ljava/util/Hashtable;)Z

    move-result v4

    iput-boolean v4, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->extendedMasterSecret:Z

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p0, p1, v5, v2}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->processMaxFragmentLengthExtension(Ljava/util/Hashtable;Ljava/util/Hashtable;S)S

    move-result v4

    iput-short v4, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->maxFragmentLength:S

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->hasTruncatedHMacExtension(Ljava/util/Hashtable;)Z

    move-result v4

    iput-boolean v4, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->truncatedHMac:Z

    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-nez v0, :cond_a

    sget-object v0, Lorg/spongycastle/crypto/tls/TlsExtensionsUtils;->EXT_status_request:Ljava/lang/Integer;

    invoke-static {v5, v0, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    goto :goto_5

    :cond_a
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->allowCertificateStatus:Z

    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->resumedSession:Z

    if-nez v0, :cond_b

    sget-object v0, Lorg/spongycastle/crypto/tls/TlsProtocol;->EXT_SessionTicket:Ljava/lang/Integer;

    invoke-static {v5, v0, v2}, Lorg/spongycastle/crypto/tls/TlsUtils;->hasExpectedEmptyExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;S)Z

    move-result v0

    if-eqz v0, :cond_b

    move v1, v3

    :cond_b
    iput-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->expectSessionTicket:Z

    :cond_c
    if-eqz p1, :cond_d

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {p1, v5}, Lorg/spongycastle/crypto/tls/TlsClient;->processServerExtensions(Ljava/util/Hashtable;)V

    :cond_d
    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContext()Lorg/spongycastle/crypto/tls/TlsContext;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getCipherSuite()I

    move-result v1

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getPRFAlgorithm(Lorg/spongycastle/crypto/tls/TlsContext;I)I

    move-result v0

    iput v0, p1, Lorg/spongycastle/crypto/tls/SecurityParameters;->prfAlgorithm:I

    iget-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    const/16 v0, 0xc

    iput v0, p1, Lorg/spongycastle/crypto/tls/SecurityParameters;->verifyDataLength:I

    return-void

    :cond_e
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_f
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_10
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_11
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_12
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    :cond_13
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v2}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method protected sendCertificateVerifyMessage(Lorg/spongycastle/crypto/tls/DigitallySigned;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/tls/DigitallySigned;->encode(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method

.method protected sendClientHelloMessage()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->recordStream:Lorg/spongycastle/crypto/tls/RecordStream;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsClient;->getClientHelloRecordLayerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/RecordStream;->setWriteVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v0}, Lorg/spongycastle/crypto/tls/TlsClient;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->isDTLS()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->getContextAdmin()Lorg/spongycastle/crypto/tls/AbstractTlsContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/spongycastle/crypto/tls/AbstractTlsContext;->setClientVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    sget-object v1, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsSession:Lorg/spongycastle/crypto/tls/TlsSession;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsSession;->getSessionID()[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/16 v3, 0x20

    if-le v2, v3, :cond_1

    :cond_0
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    :cond_1
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v2}, Lorg/spongycastle/crypto/tls/TlsClient;->isFallback()Z

    move-result v2

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v3}, Lorg/spongycastle/crypto/tls/TlsClient;->getCipherSuites()[I

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v3}, Lorg/spongycastle/crypto/tls/TlsClient;->getCompressionMethods()[S

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    array-length v3, v1

    if-lez v3, :cond_3

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/SessionParameters;->getCipherSuite()I

    move-result v4

    invoke-static {v3, v4}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->sessionParameters:Lorg/spongycastle/crypto/tls/SessionParameters;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/SessionParameters;->getCompressionAlgorithm()S

    move-result v4

    invoke-static {v3, v4}, Lorg/spongycastle/util/Arrays;->contains([SS)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsUtils;->EMPTY_BYTES:[B

    :cond_3
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v3}, Lorg/spongycastle/crypto/tls/TlsClient;->getClientExtensions()Ljava/util/Hashtable;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    new-instance v3, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    invoke-static {v0, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/SecurityParameters;->getClientRandom()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->write([B)V

    invoke-static {v1, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    sget-object v1, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->getExtensionData(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    const/16 v5, 0xff

    invoke-static {v1, v5}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    invoke-static {v0, v5}, Lorg/spongycastle/util/Arrays;->append([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    :cond_5
    if-eqz v2, :cond_6

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    const/16 v1, 0x5600

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->contains([II)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->append([II)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    :cond_6
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCipherSuites:[I

    invoke-static {v0, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16ArrayWithUint16Length([ILjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->offeredCompressionMethods:[S

    invoke-static {v0, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8ArrayWithUint8Length([SLjava/io/OutputStream;)V

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->clientExtensions:Ljava/util/Hashtable;

    invoke-static {v3, v0}, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->writeExtensions(Ljava/io/OutputStream;Ljava/util/Hashtable;)V

    :cond_7
    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void

    :cond_8
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method protected sendClientKeyExchangeMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocol;S)V

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsClientProtocol;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v1, v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->generateClientKeyExchange(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsProtocol$HandshakeMessage;->writeToRecordStream()V

    return-void
.end method
