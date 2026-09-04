.class Lcom/sun/mail/pop3/Protocol;
.super Ljava/lang/Object;
.source "Protocol.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final POP3_PORT:I = 0x6e

.field private static final SLOP:I = 0x80

.field private static digits:[C


# instance fields
.field private apopChallenge:Ljava/lang/String;

.field private capabilities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field private input:Ljava/io/BufferedReader;

.field private logger:Lcom/sun/mail/util/MailLogger;

.field private noauthdebug:Z

.field private output:Ljava/io/PrintWriter;

.field private pipelining:Z

.field private prefix:Ljava/lang/String;

.field private props:Ljava/util/Properties;

.field private socket:Ljava/net/Socket;

.field private traceInput:Lcom/sun/mail/util/TraceInputStream;

.field private traceLogger:Lcom/sun/mail/util/MailLogger;

.field private traceOutput:Lcom/sun/mail/util/TraceOutputStream;

.field private traceSuspended:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 344
    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/pop3/Protocol;->digits:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;ILcom/sun/mail/util/MailLogger;Ljava/util/Properties;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "connecting to host \""

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 83
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;

    const/4 v2, 0x1

    .line 86
    iput-boolean v2, p0, Lcom/sun/mail/pop3/Protocol;->noauthdebug:Z

    .line 100
    iput-object p1, p0, Lcom/sun/mail/pop3/Protocol;->host:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lcom/sun/mail/pop3/Protocol;->props:Ljava/util/Properties;

    .line 102
    iput-object p5, p0, Lcom/sun/mail/pop3/Protocol;->prefix:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "protocol"

    .line 104
    invoke-virtual {p3, v3, v1}, Lcom/sun/mail/util/MailLogger;->getSubLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/util/MailLogger;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "mail.debug.auth"

    const/4 v4, 0x0

    .line 105
    invoke-static {p4, v3, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v3

    xor-int/2addr v3, v2

    iput-boolean v3, p0, Lcom/sun/mail/pop3/Protocol;->noauthdebug:Z

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".apop.enable"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p4, v3}, Lcom/sun/mail/pop3/Protocol;->getBoolProp(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v3

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".disablecapa"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p4, v5}, Lcom/sun/mail/pop3/Protocol;->getBoolProp(Ljava/util/Properties;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, -0x1

    if-ne p2, v6, :cond_0

    const/16 p2, 0x6e

    .line 114
    :cond_0
    :try_start_0
    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p3, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 115
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\", port "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", isSSL "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 118
    :cond_1
    invoke-static {p1, p2, p4, p5, p6}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 119
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->initStreams()V

    .line 120
    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    iget-boolean p2, p1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz p2, :cond_8

    if-eqz v3, :cond_3

    .line 128
    iget-object p2, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 129
    iget-object p2, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    const/16 p6, 0x3c

    invoke-virtual {p2, p6}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    .line 130
    iget-object p6, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    const/16 v0, 0x3e

    invoke-virtual {p6, v0, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p6

    if-eq p2, v6, :cond_2

    if-eq p6, v6, :cond_2

    .line 132
    iget-object p1, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    add-int/2addr p6, v2

    invoke-virtual {p1, p2, p6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    .line 133
    :cond_2
    sget-object p1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string p2, "APOP challenge: {0}"

    iget-object p6, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, p6}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    if-nez v5, :cond_4

    .line 138
    invoke-virtual {p0}, Lcom/sun/mail/pop3/Protocol;->capa()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/mail/pop3/Protocol;->setCapabilities(Ljava/io/InputStream;)V

    :cond_4
    const-string p1, "PIPELINING"

    .line 140
    invoke-virtual {p0, p1}, Lcom/sun/mail/pop3/Protocol;->hasCapability(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".pipelining"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-static {p4, p1, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v4

    :cond_6
    :goto_0
    iput-boolean v2, p0, Lcom/sun/mail/pop3/Protocol;->pipelining:Z

    if-eqz v2, :cond_7

    const-string p1, "PIPELINING enabled"

    .line 143
    invoke-virtual {p3, p1}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    :cond_7
    return-void

    .line 126
    :cond_8
    iget-object p1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    new-instance p2, Ljava/io/IOException;

    const-string p3, "Connect failed"

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/sun/mail/pop3/Protocol;->cleanupAndThrow(Ljava/net/Socket;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catch_0
    move-exception p1

    .line 122
    iget-object p2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-static {p2, p1}, Lcom/sun/mail/pop3/Protocol;->cleanupAndThrow(Ljava/net/Socket;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private batchCommandContinue(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private batchCommandEnd()V
    .locals 0

    return-void
.end method

.method private batchCommandStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static cleanupAndThrow(Ljava/net/Socket;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1

    .line 148
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 150
    invoke-static {p0}, Lcom/sun/mail/pop3/Protocol;->isRecoverable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p1, p0}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    return-object p1

    .line 153
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 154
    instance-of p1, p0, Ljava/lang/Error;

    if-nez p1, :cond_2

    .line 157
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-eqz p1, :cond_1

    .line 158
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 160
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unexpected exception"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 155
    :cond_2
    check-cast p0, Ljava/lang/Error;

    throw p0
.end method

.method private final declared-synchronized getBoolProp(Ljava/util/Properties;Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 176
    :try_start_0
    invoke-static {p1, p2, v0}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p1

    .line 177
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ": "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getDigest(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "MD5"

    .line 334
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "iso-8859-1"

    .line 335
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    invoke-static {p1}, Lcom/sun/mail/pop3/Protocol;->toHex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    return-object v0
.end method

.method private initStreams()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->props:Ljava/util/Properties;

    const-string v1, "mail.debug.quote"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    .line 185
    new-instance v1, Lcom/sun/mail/util/TraceInputStream;

    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 186
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    invoke-direct {v1, v2, v3}, Lcom/sun/mail/util/TraceInputStream;-><init>(Ljava/io/InputStream;Lcom/sun/mail/util/MailLogger;)V

    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    .line 187
    invoke-virtual {v1, v0}, Lcom/sun/mail/util/TraceInputStream;->setQuote(Z)V

    .line 189
    new-instance v1, Lcom/sun/mail/util/TraceOutputStream;

    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 190
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    invoke-direct {v1, v2, v3}, Lcom/sun/mail/util/TraceOutputStream;-><init>(Ljava/io/OutputStream;Lcom/sun/mail/util/MailLogger;)V

    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    .line 191
    invoke-virtual {v1, v0}, Lcom/sun/mail/util/TraceOutputStream;->setQuote(Z)V

    .line 194
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    const-string v3, "iso-8859-1"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    .line 196
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-direct {v2, v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    return-void
.end method

.method private static isRecoverable(Ljava/lang/Throwable;)Z
    .locals 1

    .line 167
    instance-of v0, p0, Ljava/lang/Exception;

    if-nez v0, :cond_1

    instance-of p0, p0, Ljava/lang/LinkageError;

    if-eqz p0, :cond_0

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

.method private issueCommand(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 736
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 741
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 742
    iget-object p1, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    return-void

    .line 737
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Folder is closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 799
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->multilineCommandStart(Ljava/lang/String;)V

    .line 800
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 801
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object p1

    .line 802
    iget-boolean v0, p1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v0, :cond_0

    .line 803
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->multilineCommandEnd()V

    return-object p1

    .line 806
    :cond_0
    invoke-direct {p0, p2}, Lcom/sun/mail/pop3/Protocol;->readMultilineResponse(I)Ljava/io/InputStream;

    move-result-object p2

    iput-object p2, p1, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    .line 807
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->multilineCommandEnd()V

    return-object p1
.end method

.method private multilineCommandEnd()V
    .locals 0

    return-void
.end method

.method private multilineCommandStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private readMultilineResponse(I)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 818
    new-instance v0, Lcom/sun/mail/util/SharedByteArrayOutputStream;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/SharedByteArrayOutputStream;-><init>(I)V

    const/16 p1, 0xa

    move v1, p1

    .line 821
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v2

    if-ltz v2, :cond_2

    if-ne v1, p1, :cond_0

    const/16 v1, 0x2e

    if-ne v2, v1, :cond_0

    .line 823
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 826
    iget-object p1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {p1}, Ljava/io/BufferedReader;->read()I

    move-result v2

    goto :goto_1

    :cond_0
    move v1, v2

    .line 830
    :cond_1
    invoke-virtual {v0, v1}, Lcom/sun/mail/util/SharedByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v2, :cond_3

    .line 844
    invoke-virtual {v0}, Lcom/sun/mail/util/SharedByteArrayOutputStream;->toStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 843
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "EOF on socket"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 838
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 840
    :catch_1
    throw p1
.end method

.method private readResponse()Lcom/sun/mail/pop3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 752
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    .line 781
    new-instance v1, Lcom/sun/mail/pop3/Response;

    invoke-direct {v1}, Lcom/sun/mail/pop3/Response;-><init>()V

    const-string v2, "+OK"

    .line 782
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 783
    iput-boolean v3, v1, Lcom/sun/mail/pop3/Response;->ok:Z

    goto :goto_0

    :cond_0
    const-string v2, "-ERR"

    .line 784
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 785
    iput-boolean v2, v1, Lcom/sun/mail/pop3/Response;->ok:Z

    :goto_0
    const/16 v2, 0x20

    .line 789
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    add-int/2addr v2, v3

    .line 790
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    :cond_1
    return-object v1

    .line 787
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 778
    :cond_3
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "<EOF>"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 779
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF on socket"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 772
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 774
    :catch_1
    new-instance v1, Ljava/io/EOFException;

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    .line 761
    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 763
    :catch_3
    new-instance v1, Ljava/io/EOFException;

    invoke-virtual {v0}, Ljava/io/InterruptedIOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private resumeTracing()V
    .locals 2

    .line 869
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    .line 871
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

    :cond_0
    return-void
.end method

.method private simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 725
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->simpleCommandStart(Ljava/lang/String;)V

    .line 726
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 727
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object p1

    .line 728
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->simpleCommandEnd()V

    return-object p1
.end method

.method private simpleCommandEnd()V
    .locals 0

    return-void
.end method

.method private simpleCommandStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private suspendTracing()V
    .locals 2

    .line 859
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    .line 861
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

    :cond_0
    return-void
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 7

    .line 353
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    move v2, v1

    .line 355
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 356
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    .line 357
    sget-object v5, Lcom/sun/mail/pop3/Protocol;->digits:[C

    shr-int/lit8 v6, v3, 0x4

    aget-char v6, v5, v6

    aput-char v6, v0, v2

    add-int/lit8 v2, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 358
    aget-char v3, v5, v3

    aput-char v3, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method


# virtual methods
.method declared-synchronized capa()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "CAPA"

    const/16 v1, 0x80

    .line 715
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 716
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 717
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 718
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method close()V
    .locals 2

    const/4 v0, 0x0

    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 386
    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 387
    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    .line 388
    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 389
    throw v1

    .line 386
    :catch_0
    :goto_0
    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 387
    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    .line 388
    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    return-void
.end method

.method declared-synchronized dele(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "DELE "

    monitor-enter p0

    .line 613
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object p1

    .line 614
    iget-boolean p1, p1, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 208
    throw v0
.end method

.method declared-synchronized getCapabilities()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized hasCapability(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 253
    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 252
    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isSSL()Z
    .locals 1

    monitor-enter p0

    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected isTracing()Z
    .locals 2

    .line 851
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method declared-synchronized list(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "LIST "

    monitor-enter p0

    .line 426
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object p1

    .line 428
    iget-boolean v0, p1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 430
    :try_start_1
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object p1, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 432
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, -0x1

    .line 437
    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized list()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "LIST"

    const/16 v1, 0x80

    .line 444
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 445
    iget-object v0, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "PASS "

    const-string v1, "PASS "

    const-string v2, "APOP "

    const-string v3, "USER "

    const-string v4, "USER "

    monitor-enter p0

    .line 270
    :try_start_0
    iget-boolean v5, p0, Lcom/sun/mail/pop3/Protocol;->pipelining:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    instance-of v5, v5, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 274
    :goto_0
    :try_start_1
    iget-boolean v6, p0, Lcom/sun/mail/pop3/Protocol;->noauthdebug:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/sun/mail/pop3/Protocol;->isTracing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 275
    iget-object v6, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v7, "authentication command trace suppressed"

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->suspendTracing()V

    .line 279
    :cond_1
    iget-object v6, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 280
    invoke-direct {p0, p2}, Lcom/sun/mail/pop3/Protocol;->getDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v7

    .line 281
    :goto_1
    iget-object v8, p0, Lcom/sun/mail/pop3/Protocol;->apopChallenge:Ljava/lang/String;

    if-eqz v8, :cond_3

    if-eqz v6, :cond_3

    .line 282
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object p1

    goto/16 :goto_4

    :cond_3
    if-eqz v5, :cond_6

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 285
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->batchCommandStart(Ljava/lang/String;)V

    .line 286
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->batchCommandContinue(Ljava/lang/String;)V

    .line 289
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 290
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object p1

    .line 291
    iget-boolean p2, p1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez p2, :cond_5

    .line 292
    iget-object p2, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz p2, :cond_4

    iget-object p1, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string p1, "USER command failed"

    .line 293
    :goto_2
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    .line 294
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->batchCommandEnd()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->resumeTracing()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 295
    monitor-exit p0

    return-object p1

    .line 297
    :cond_5
    :try_start_3
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object p1

    .line 298
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->batchCommandEnd()V

    goto :goto_4

    .line 300
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object p1

    .line 301
    iget-boolean v1, p1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v1, :cond_8

    .line 302
    iget-object p2, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz p2, :cond_7

    iget-object p1, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    goto :goto_3

    :cond_7
    const-string p1, "USER command failed"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 313
    :goto_3
    :try_start_4
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->resumeTracing()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 302
    monitor-exit p0

    return-object p1

    .line 303
    :cond_8
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object p1

    .line 305
    :goto_4
    iget-boolean p2, p0, Lcom/sun/mail/pop3/Protocol;->noauthdebug:Z

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lcom/sun/mail/pop3/Protocol;->isTracing()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 306
    iget-object p2, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v1, "authentication command {0}"

    iget-boolean v2, p1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v2, :cond_9

    const-string v2, "succeeded"

    goto :goto_5

    :cond_9
    const-string v2, "failed"

    :goto_5
    invoke-virtual {p2, v0, v1, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    :cond_a
    iget-boolean p2, p1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez p2, :cond_c

    .line 309
    iget-object p2, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    if-eqz p2, :cond_b

    iget-object p1, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    goto :goto_6

    :cond_b
    const-string p1, "login failed"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 313
    :goto_6
    :try_start_6
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->resumeTracing()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 309
    monitor-exit p0

    return-object p1

    .line 313
    :cond_c
    :try_start_7
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->resumeTracing()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 310
    monitor-exit p0

    return-object v7

    :catchall_0
    move-exception p1

    .line 313
    :try_start_8
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->resumeTracing()V

    .line 314
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized noop()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "NOOP"

    .line 661
    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 662
    iget-boolean v0, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized quit()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "QUIT"

    .line 369
    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 370
    iget-boolean v0, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/pop3/Protocol;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 374
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 372
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/pop3/Protocol;->close()V

    .line 373
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized retr(II)Ljava/io/InputStream;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "pipeline message size "

    const-string v1, "guessing message size: "

    const-string v2, "got message size "

    const-string v3, "RETR "

    const-string v4, "LIST "

    const-string v5, "RETR "

    monitor-enter p0

    const/4 v6, 0x0

    if-nez p2, :cond_0

    .line 457
    :try_start_0
    iget-boolean v7, p0, Lcom/sun/mail/pop3/Protocol;->pipelining:Z

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    move v7, v6

    :goto_0
    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v7, :cond_6

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 460
    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->batchCommandStart(Ljava/lang/String;)V

    .line 461
    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 463
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->batchCommandContinue(Ljava/lang/String;)V

    .line 464
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 465
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object p1

    .line 466
    iget-boolean v1, p1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 469
    :try_start_1
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object p1, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 471
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt p1, v8, :cond_3

    if-gez p1, :cond_1

    goto :goto_1

    .line 476
    :cond_1
    :try_start_2
    iget-object p2, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 477
    iget-object p2, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    add-int/lit16 p1, p1, 0x80

    :catch_0
    move p2, p1

    goto :goto_2

    :cond_3
    :goto_1
    move p2, v6

    .line 483
    :catch_1
    :cond_4
    :goto_2
    :try_start_3
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object p1

    .line 484
    iget-boolean v0, p1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v0, :cond_5

    add-int/lit16 v0, p2, 0x80

    .line 485
    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->readMultilineResponse(I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    .line 486
    :cond_5
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->batchCommandEnd()V

    goto/16 :goto_5

    .line 488
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 489
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->multilineCommandStart(Ljava/lang/String;)V

    .line 490
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 491
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object p1

    .line 492
    iget-boolean v0, p1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez v0, :cond_7

    .line 493
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->multilineCommandEnd()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 494
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :cond_7
    if-gtz p2, :cond_b

    .line 504
    :try_start_4
    iget-object v0, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_b

    .line 506
    :try_start_5
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v3, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 508
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v4, "octets"

    .line 509
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 510
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-gt p2, v8, :cond_a

    if-gez p2, :cond_8

    goto :goto_3

    .line 515
    :cond_8
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 516
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_9
    add-int/lit16 p2, p2, 0x80

    goto :goto_4

    :cond_a
    :goto_3
    move p2, v6

    .line 523
    :catch_2
    :cond_b
    :goto_4
    :try_start_6
    invoke-direct {p0, p2}, Lcom/sun/mail/pop3/Protocol;->readMultilineResponse(I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    .line 524
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->multilineCommandEnd()V

    .line 526
    :goto_5
    iget-boolean v0, p1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v0, :cond_c

    if-lez p2, :cond_c

    .line 527
    iget-object p2, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 528
    iget-object p2, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 530
    :cond_c
    iget-object p1, p1, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_6
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized retr(ILjava/io/OutputStream;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "RETR "

    monitor-enter p0

    .line 538
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 539
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->multilineCommandStart(Ljava/lang/String;)V

    .line 540
    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->issueCommand(Ljava/lang/String;)V

    .line 541
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->readResponse()Lcom/sun/mail/pop3/Response;

    move-result-object p1

    .line 542
    iget-boolean p1, p1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-nez p1, :cond_0

    .line 543
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->multilineCommandEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0xa

    const/4 v0, 0x0

    move v1, p1

    .line 550
    :cond_1
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v2

    if-ltz v2, :cond_4

    if-ne v1, p1, :cond_2

    const/16 v1, 0x2e

    if-ne v2, v1, :cond_2

    .line 552
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    .line 555
    iget-object p1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    invoke-virtual {p1}, Ljava/io/BufferedReader;->read()I

    move-result v2
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    if-nez v0, :cond_1

    .line 566
    :try_start_2
    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 571
    :try_start_3
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "exception while streaming"

    invoke-virtual {v2, v3, v4, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 568
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "exception while streaming"

    invoke-virtual {v2, v3, v4, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    if-ltz v2, :cond_8

    if-eqz v0, :cond_7

    .line 591
    :try_start_4
    instance-of p1, v0, Ljava/io/IOException;

    if-nez p1, :cond_6

    .line 593
    instance-of p1, v0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_5

    goto :goto_2

    .line 594
    :cond_5
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 592
    :cond_6
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 597
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->multilineCommandEnd()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 598
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 587
    :cond_8
    :try_start_5
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "EOF on socket"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_2
    move-exception p1

    .line 582
    :try_start_6
    iget-object p2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 584
    :catch_3
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized rset()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "RSET"

    .line 669
    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 670
    iget-boolean v0, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setCapabilities(Ljava/io/InputStream;)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 216
    :try_start_0
    iput-object v0, p0, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 217
    monitor-exit p0

    return-void

    .line 220
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 223
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "us-ascii"

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    .line 230
    :catch_0
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v2, 0x20

    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v3, 0x0

    .line 234
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 235
    :goto_1
    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->capabilities:Ljava/util/Map;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 241
    :catch_1
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 243
    :catch_2
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 244
    :catch_3
    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized stat()Lcom/sun/mail/pop3/Status;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "STAT command failed: "

    monitor-enter p0

    :try_start_0
    const-string v1, "STAT"

    .line 397
    invoke-direct {p0, v1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v1

    .line 398
    new-instance v2, Lcom/sun/mail/pop3/Status;

    invoke-direct {v2}, Lcom/sun/mail/pop3/Status;-><init>()V

    .line 408
    iget-boolean v3, v1, Lcom/sun/mail/pop3/Response;->ok:Z

    if-eqz v3, :cond_1

    .line 411
    iget-object v0, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 413
    :try_start_1
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v1, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Lcom/sun/mail/pop3/Status;->total:I

    .line 415
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sun/mail/pop3/Status;->size:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    :catch_0
    :cond_0
    monitor-exit p0

    return-object v2

    .line 409
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stls()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 678
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 679
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :cond_0
    :try_start_1
    const-string v0, "STLS"

    .line 680
    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 681
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    .line 684
    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->host:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/mail/pop3/Protocol;->props:Ljava/util/Properties;

    iget-object v4, p0, Lcom/sun/mail/pop3/Protocol;->prefix:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/sun/mail/util/SocketFetcher;->startTLS(Ljava/net/Socket;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 685
    invoke-direct {p0}, Lcom/sun/mail/pop3/Protocol;->initStreams()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 688
    :try_start_3
    iget-object v2, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 690
    :try_start_4
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 691
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    .line 692
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 694
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not convert socket to TLS"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 696
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 697
    throw v1

    :catchall_0
    move-exception v0

    .line 690
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->socket:Ljava/net/Socket;

    .line 691
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->input:Ljava/io/BufferedReader;

    .line 692
    iput-object v1, p0, Lcom/sun/mail/pop3/Protocol;->output:Ljava/io/PrintWriter;

    .line 693
    throw v0

    .line 700
    :cond_1
    :goto_0
    iget-boolean v0, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized top(II)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "TOP "

    monitor-enter p0

    .line 605
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object p1

    .line 606
    iget-object p1, p1, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized uidl(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UIDL "

    monitor-enter p0

    .line 621
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/mail/pop3/Protocol;->simpleCommand(Ljava/lang/String;)Lcom/sun/mail/pop3/Response;

    move-result-object p1

    .line 622
    iget-boolean v0, p1, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 623
    monitor-exit p0

    return-object v1

    .line 624
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 626
    iget-object p1, p1, Lcom/sun/mail/pop3/Response;->data:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 628
    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized uidl([Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "UIDL"

    .line 636
    array-length v1, p1

    mul-int/lit8 v1, v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/pop3/Protocol;->multilineCommand(Ljava/lang/String;I)Lcom/sun/mail/pop3/Response;

    move-result-object v0

    .line 637
    iget-boolean v1, v0, Lcom/sun/mail/pop3/Response;->ok:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 638
    monitor-exit p0

    return v2

    .line 639
    :cond_0
    :try_start_1
    new-instance v1, Lcom/sun/mail/util/LineInputStream;

    iget-object v3, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    invoke-direct {v1, v3}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    .line 641
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    const/16 v5, 0x20

    .line 642
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lt v5, v4, :cond_1

    .line 643
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v5, v4, :cond_2

    goto :goto_0

    .line 645
    :cond_2
    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    .line 646
    array-length v6, p1

    if-gt v4, v6, :cond_1

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, 0x1

    .line 647
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 650
    :cond_3
    :try_start_2
    iget-object p1, v0, Lcom/sun/mail/pop3/Response;->bytes:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 654
    :catch_0
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
