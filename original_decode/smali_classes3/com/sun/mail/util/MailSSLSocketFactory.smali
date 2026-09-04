.class public Lcom/sun/mail/util/MailSSLSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "MailSSLSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/util/MailSSLSocketFactory$MailTrustManager;
    }
.end annotation


# instance fields
.field private adapteeFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private keyManagers:[Ljavax/net/ssl/KeyManager;

.field private secureRandom:Ljava/security/SecureRandom;

.field private sslcontext:Ljavax/net/ssl/SSLContext;

.field private trustAllHosts:Z

.field private trustManagers:[Ljavax/net/ssl/TrustManager;

.field private trustedHosts:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "TLS"

    .line 94
    invoke-direct {p0, v0}, Lcom/sun/mail/util/MailSSLSocketFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustedHosts:[Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->adapteeFactory:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v1, 0x0

    .line 109
    iput-boolean v1, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustAllHosts:Z

    .line 112
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    .line 115
    iput-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->keyManagers:[Ljavax/net/ssl/KeyManager;

    const/4 p1, 0x1

    new-array p1, p1, [Ljavax/net/ssl/TrustManager;

    .line 116
    new-instance v2, Lcom/sun/mail/util/MailSSLSocketFactory$MailTrustManager;

    invoke-direct {v2, p0, v0}, Lcom/sun/mail/util/MailSSLSocketFactory$MailTrustManager;-><init>(Lcom/sun/mail/util/MailSSLSocketFactory;Lcom/sun/mail/util/MailSSLSocketFactory$1;)V

    aput-object v2, p1, v1

    iput-object p1, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustManagers:[Ljavax/net/ssl/TrustManager;

    .line 117
    iput-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->secureRandom:Ljava/security/SecureRandom;

    .line 120
    invoke-direct {p0}, Lcom/sun/mail/util/MailSSLSocketFactory;->newAdapteeFactory()V

    return-void
.end method

.method private declared-synchronized newAdapteeFactory()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    iget-object v1, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->keyManagers:[Ljavax/net/ssl/KeyManager;

    iget-object v2, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustManagers:[Ljavax/net/ssl/TrustManager;

    iget-object v3, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 136
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->adapteeFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->adapteeFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    monitor-enter p0

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->adapteeFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    monitor-enter p0

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->adapteeFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->adapteeFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->adapteeFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->adapteeFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->adapteeFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 1

    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->keyManagers:[Ljavax/net/ssl/KeyManager;

    invoke-virtual {v0}, [Ljavax/net/ssl/KeyManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/KeyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->secureRandom:Ljava/security/SecureRandom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->adapteeFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 1

    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustManagers:[Ljavax/net/ssl/TrustManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTrustedHosts()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustedHosts:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 209
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_0
    :try_start_1
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isServerTrusted(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)Z
    .locals 1

    monitor-enter p0

    .line 239
    :try_start_0
    iget-boolean p2, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustAllHosts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 240
    monitor-exit p0

    return v0

    .line 244
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustedHosts:[Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 245
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 248
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isTrustAllHosts()Z
    .locals 1

    monitor-enter p0

    .line 194
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustAllHosts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setKeyManagers([Ljavax/net/ssl/KeyManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 152
    :try_start_0
    invoke-virtual {p1}, [Ljavax/net/ssl/KeyManager;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljavax/net/ssl/KeyManager;

    iput-object p1, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->keyManagers:[Ljavax/net/ssl/KeyManager;

    .line 153
    invoke-direct {p0}, Lcom/sun/mail/util/MailSSLSocketFactory;->newAdapteeFactory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSecureRandom(Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 169
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->secureRandom:Ljava/security/SecureRandom;

    .line 170
    invoke-direct {p0}, Lcom/sun/mail/util/MailSSLSocketFactory;->newAdapteeFactory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTrustAllHosts(Z)V
    .locals 0

    monitor-enter p0

    .line 201
    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustAllHosts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTrustManagers([Ljavax/net/ssl/TrustManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 186
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustManagers:[Ljavax/net/ssl/TrustManager;

    .line 187
    invoke-direct {p0}, Lcom/sun/mail/util/MailSSLSocketFactory;->newAdapteeFactory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTrustedHosts([Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 219
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustedHosts:[Ljava/lang/String;

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/mail/util/MailSSLSocketFactory;->trustedHosts:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
