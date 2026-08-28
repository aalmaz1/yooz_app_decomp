.class public Lcom/sun/mail/smtp/SMTPTransport;
.super Ljavax/mail/Transport;
.source "SMTPTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/smtp/SMTPTransport$ChunkedOutputStream;,
        Lcom/sun/mail/smtp/SMTPTransport$BDATOutputStream;,
        Lcom/sun/mail/smtp/SMTPTransport$OAuth2Authenticator;,
        Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;,
        Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;,
        Lcom/sun/mail/smtp/SMTPTransport$PlainAuthenticator;,
        Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;,
        Lcom/sun/mail/smtp/SMTPTransport$Authenticator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CRLF:[B

.field private static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static final UNKNOWN_SA:[Ljava/lang/String;

.field private static hexchar:[C

.field private static final ignoreList:[Ljava/lang/String;


# instance fields
.field private addresses:[Ljavax/mail/Address;

.field private allowutf8:Z

.field private authenticators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sun/mail/smtp/SMTPTransport$Authenticator;",
            ">;"
        }
    .end annotation
.end field

.field private authorizationID:Ljava/lang/String;

.field private chunkSize:I

.field private dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

.field private debugpassword:Z

.field private debugusername:Z

.field private defaultAuthenticationMechanisms:Ljava/lang/String;

.field private defaultPort:I

.field private enableSASL:Z

.field private exception:Ljavax/mail/MessagingException;

.field private extMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field private invalidAddr:[Ljavax/mail/Address;

.field private isSSL:Z

.field private lastReturnCode:I

.field private lastServerResponse:Ljava/lang/String;

.field private lineInputStream:Lcom/sun/mail/util/LineInputStream;

.field private localHostName:Ljava/lang/String;

.field private logger:Lcom/sun/mail/util/MailLogger;

.field private message:Ljavax/mail/internet/MimeMessage;

.field private name:Ljava/lang/String;

.field private noauthdebug:Z

.field private noopStrict:Z

.field private notificationDone:Z

.field private ntlmDomain:Ljava/lang/String;

.field private quitWait:Z

.field private reportSuccess:Z

.field private requireStartTLS:Z

.field private saslAuthenticator:Lcom/sun/mail/smtp/SaslAuthenticator;

.field private saslMechanisms:[Ljava/lang/String;

.field private saslRealm:Ljava/lang/String;

.field private sendPartiallyFailed:Z

.field private serverInput:Ljava/io/BufferedInputStream;

.field private serverOutput:Ljava/io/OutputStream;

.field private serverSocket:Ljava/net/Socket;

.field private traceInput:Lcom/sun/mail/util/TraceInputStream;

.field private traceLogger:Lcom/sun/mail/util/MailLogger;

.field private traceOutput:Lcom/sun/mail/util/TraceOutputStream;

.field private useCanonicalHostName:Z

.field private useRset:Z

.field private useStartTLS:Z

.field private validSentAddr:[Ljavax/mail/Address;

.field private validUnsentAddr:[Ljavax/mail/Address;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "Bcc"

    const-string v1, "Content-Length"

    .line 157
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->ignoreList:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 158
    fill-array-data v0, :array_22

    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->CRLF:[B

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 160
    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->UNKNOWN_SA:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 2588
    fill-array-data v0, :array_28

    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->hexchar:[C

    return-void

    nop

    :array_22
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_28
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .registers 5

    const-string v0, "smtp"

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;Z)V

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;Z)V
    .registers 13

    .line 183
    invoke-direct {p0, p1, p2}, Ljavax/mail/Transport;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    const-string v0, "smtp"

    .line 101
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    const/16 v0, 0x19

    .line 102
    iput v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    const/4 v1, 0x0

    .line 103
    iput-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    .line 112
    iput-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    .line 121
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->authenticators:Ljava/util/Map;

    .line 125
    iput-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    const-string v2, "UNKNOWN"

    .line 127
    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    .line 128
    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->authorizationID:Ljava/lang/String;

    .line 129
    iput-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->enableSASL:Z

    .line 130
    iput-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->useCanonicalHostName:Z

    .line 131
    sget-object v3, Lcom/sun/mail/smtp/SMTPTransport;->UNKNOWN_SA:[Ljava/lang/String;

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslMechanisms:[Ljava/lang/String;

    .line 133
    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->ntlmDomain:Ljava/lang/String;

    const/4 v2, 0x1

    .line 139
    iput-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->noopStrict:Z

    .line 150
    iput-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->noauthdebug:Z

    .line 184
    invoke-virtual {p1}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v3

    .line 186
    new-instance v4, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 187
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v6

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object p1

    const-string v7, "DEBUG SMTP"

    invoke-direct {v4, v5, v7, v6, p1}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V

    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string p1, "protocol"

    const/4 v5, 0x0

    .line 188
    invoke-virtual {v4, p1, v5}, Lcom/sun/mail/util/MailLogger;->getSubLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/util/MailLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceLogger:Lcom/sun/mail/util/MailLogger;

    const-string p1, "mail.debug.auth"

    .line 189
    invoke-static {v3, p1, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->noauthdebug:Z

    const-string p1, "mail.debug.auth.username"

    .line 191
    invoke-static {v3, p1, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->debugusername:Z

    const-string p1, "mail.debug.auth.password"

    .line 193
    invoke-static {v3, p1, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->debugpassword:Z

    if-eqz p2, :cond_6f

    .line 196
    invoke-virtual {p2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object p3

    .line 197
    :cond_6f
    iput-object p3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    const-string p1, "mail."

    if-nez p4, :cond_8c

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, ".ssl.enable"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p4

    :cond_8c
    if-eqz p4, :cond_93

    const/16 p2, 0x1d1

    .line 202
    iput p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    goto :goto_95

    .line 204
    :cond_93
    iput v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    .line 205
    :goto_95
    iput-boolean p4, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    .line 209
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, ".quitwait"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    .line 213
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, ".reportsuccess"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z

    .line 217
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, ".starttls.enable"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z

    .line 221
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, ".starttls.required"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->requireStartTLS:Z

    .line 226
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, ".userset"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z

    .line 230
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, ".noop.strict"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->noopStrict:Z

    .line 234
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, ".sasl.enable"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->enableSASL:Z

    if-eqz p2, :cond_14f

    .line 237
    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string p4, "enable SASL"

    invoke-virtual {p2, p4}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 238
    :cond_14f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, ".sasl.usecanonicalhostname"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->useCanonicalHostName:Z

    if-eqz p2, :cond_171

    .line 241
    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string p4, "use canonical host name"

    invoke-virtual {p2, p4}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    :cond_171
    const-string p2, "mail.mime.allowutf8"

    .line 243
    invoke-static {v3, p2, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->allowutf8:Z

    if-eqz p2, :cond_182

    .line 246
    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string p4, "allow UTF-8"

    invoke-virtual {p2, p4}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 248
    :cond_182
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".chunksize"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-static {v3, p1, p2}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->chunkSize:I

    if-lez p1, :cond_1be

    .line 250
    iget-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object p2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p1, p2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_1be

    .line 251
    iget-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "chunk size "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/sun/mail/smtp/SMTPTransport;->chunkSize:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    :cond_1be
    const/4 p1, 0x5

    new-array p2, p1, [Lcom/sun/mail/smtp/SMTPTransport$Authenticator;

    .line 254
    new-instance p3, Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;

    invoke-direct {p3, p0}, Lcom/sun/mail/smtp/SMTPTransport$LoginAuthenticator;-><init>(Lcom/sun/mail/smtp/SMTPTransport;)V

    aput-object p3, p2, v1

    new-instance p3, Lcom/sun/mail/smtp/SMTPTransport$PlainAuthenticator;

    invoke-direct {p3, p0}, Lcom/sun/mail/smtp/SMTPTransport$PlainAuthenticator;-><init>(Lcom/sun/mail/smtp/SMTPTransport;)V

    aput-object p3, p2, v2

    new-instance p3, Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;

    invoke-direct {p3, p0}, Lcom/sun/mail/smtp/SMTPTransport$DigestMD5Authenticator;-><init>(Lcom/sun/mail/smtp/SMTPTransport;)V

    const/4 p4, 0x2

    aput-object p3, p2, p4

    new-instance p3, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;

    invoke-direct {p3, p0}, Lcom/sun/mail/smtp/SMTPTransport$NtlmAuthenticator;-><init>(Lcom/sun/mail/smtp/SMTPTransport;)V

    const/4 p4, 0x3

    aput-object p3, p2, p4

    new-instance p3, Lcom/sun/mail/smtp/SMTPTransport$OAuth2Authenticator;

    invoke-direct {p3, p0}, Lcom/sun/mail/smtp/SMTPTransport$OAuth2Authenticator;-><init>(Lcom/sun/mail/smtp/SMTPTransport;)V

    const/4 p4, 0x4

    aput-object p3, p2, p4

    .line 261
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1ec
    if-ge v1, p1, :cond_20d

    .line 263
    iget-object p4, p0, Lcom/sun/mail/smtp/SMTPTransport;->authenticators:Ljava/util/Map;

    aget-object v0, p2, v1

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->getMechanism()Ljava/lang/String;

    move-result-object v0

    aget-object v2, p2, v1

    invoke-interface {p4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    aget-object p4, p2, v1

    invoke-virtual {p4}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->getMechanism()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const/16 v0, 0x20

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1ec

    .line 266
    :cond_20d
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultAuthenticationMechanisms:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sun/mail/smtp/SMTPTransport;)Z
    .registers 1

    .line 99
    iget-boolean p0, p0, Lcom/sun/mail/smtp/SMTPTransport;->noauthdebug:Z

    return p0
.end method

.method static synthetic access$100(Lcom/sun/mail/smtp/SMTPTransport;)Z
    .registers 1

    .line 99
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->isTracing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/sun/mail/smtp/SMTPTransport;)Lcom/sun/mail/util/MailLogger;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sun/mail/smtp/SMTPTransport;)V
    .registers 1

    .line 99
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->suspendTracing()V

    return-void
.end method

.method static synthetic access$400(Lcom/sun/mail/smtp/SMTPTransport;)V
    .registers 1

    .line 99
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->resumeTracing()V

    return-void
.end method

.method static synthetic access$500(Lcom/sun/mail/smtp/SMTPTransport;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    return-void
.end method

.method static synthetic access$600(Lcom/sun/mail/smtp/SMTPTransport;)Ljavax/mail/Session;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sun/mail/smtp/SMTPTransport;)Ljava/lang/String;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sun/mail/smtp/SMTPTransport;)Ljava/lang/String;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    return-object p0
.end method

.method private addressesFailed()V
    .registers 7

    .line 1383
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    if-eqz v0, :cond_25

    .line 1384
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    .line 1385
    array-length v3, v0

    array-length v1, v1

    add-int/2addr v3, v1

    new-array v1, v3, [Ljavax/mail/Address;

    .line 1387
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1389
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    array-length v3, v3

    array-length v5, v0

    invoke-static {v0, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1391
    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1392
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    goto :goto_25

    .line 1394
    :cond_21
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1395
    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    :cond_25
    :goto_25
    return-void
.end method

.method private authenticate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 809
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".auth.mechanisms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    .line 811
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultAuthenticationMechanisms:Ljava/lang/String;

    .line 813
    :cond_21
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getAuthorizationId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_28

    move-object v1, p1

    .line 816
    :cond_28
    iget-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->enableSASL:Z

    const/4 v9, 0x1

    if-eqz v3, :cond_5a

    .line 817
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "Authenticate with SASL"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 819
    :try_start_34
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getSASLMechanisms()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getSASLRealm()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    move-object v6, v1

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/sun/mail/smtp/SMTPTransport;->sasllogin([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    return v9

    .line 823
    :cond_47
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "SASL authentication failed"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_34 .. :try_end_4e} :catch_50

    const/4 p1, 0x0

    return p1

    :catch_50
    move-exception v3

    .line 827
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "SASL support failed"

    invoke-virtual {v4, v5, v6, v3}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 832
    :cond_5a
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 833
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Attempt to authenticate using mechanisms: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 841
    :cond_78
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 842
    :cond_7d
    :goto_7d
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_125

    .line 843
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 844
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 845
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->authenticators:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;

    if-nez v5, :cond_a1

    .line 847
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "no authenticator for mechanism {0}"

    invoke-virtual {v5, v6, v7, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7d

    .line 851
    :cond_a1
    invoke-virtual {p0, v4}, Lcom/sun/mail/smtp/SMTPTransport;->supportsAuthentication(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b1

    .line 852
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "mechanism {0} not supported by server"

    invoke-virtual {v5, v6, v7, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7d

    .line 860
    :cond_b1
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultAuthenticationMechanisms:Ljava/lang/String;

    if-ne v0, v6, :cond_115

    .line 861
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".auth."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 862
    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".disable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 863
    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    .line 864
    invoke-virtual {v7}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v7

    .line 865
    invoke-virtual {v5}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->enabled()Z

    move-result v8

    xor-int/2addr v8, v9

    .line 863
    invoke-static {v7, v6, v8}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_115

    .line 867
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 868
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mechanism "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " disabled by property: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    goto/16 :goto_7d

    .line 875
    :cond_115
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Using mechanism {0}"

    invoke-virtual {v0, v2, v3, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 876
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    invoke-virtual {v5, v0, v1, p1, p2}, Lcom/sun/mail/smtp/SMTPTransport$Authenticator;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 880
    :cond_125
    new-instance p1, Ljavax/mail/AuthenticationFailedException;

    const-string p2, "No authentication mechanisms supported by both server and client"

    invoke-direct {p1, p2}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private closeConnection()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1424
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v1, :cond_8

    .line 1425
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_1c
    .catchall {:try_start_1 .. :try_end_8} :catchall_1a

    .line 1429
    :cond_8
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 1430
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 1431
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 1432
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 1433
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1434
    invoke-super {p0}, Ljavax/mail/Transport;->close()V

    :cond_19
    return-void

    :catchall_1a
    move-exception v1

    goto :goto_25

    :catch_1c
    move-exception v1

    .line 1427
    :try_start_1d
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Server Close Failed"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_1a

    .line 1429
    :goto_25
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 1430
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 1431
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 1432
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 1433
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1434
    invoke-super {p0}, Ljavax/mail/Transport;->close()V

    .line 1435
    :cond_36
    throw v1
.end method

.method private convertTo8Bit(Ljavax/mail/internet/MimePart;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "text/*"

    .line 1566
    invoke-interface {p1, v1}, Ljavax/mail/internet/MimePart;->isMimeType(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4d

    .line 1567
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_73

    const-string v3, "quoted-printable"

    .line 1568
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    const-string v3, "base64"

    .line 1569
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1e} :catch_73
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1e} :catch_73

    if-eqz v1, :cond_73

    .line 1572
    :cond_20
    :try_start_20
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_45

    .line 1573
    :try_start_24
    invoke-direct {p0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->is8Bit(Ljava/io/InputStream;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1583
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContent()Ljava/lang/Object;

    move-result-object v3

    .line 1584
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 1583
    invoke-interface {p1, v3, v4}, Ljavax/mail/internet/MimePart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Content-Transfer-Encoding"

    const-string v4, "8bit"

    .line 1585
    invoke-interface {p1, v3, v4}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_24 .. :try_end_3c} :catchall_43

    move v0, v2

    :cond_3d
    if-eqz v1, :cond_73

    .line 1591
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_73
    .catch Ljavax/mail/MessagingException; {:try_start_3f .. :try_end_42} :catch_73

    goto :goto_73

    :catchall_43
    move-exception p1

    goto :goto_47

    :catchall_45
    move-exception p1

    const/4 v1, 0x0

    :goto_47
    if-eqz v1, :cond_4c

    :try_start_49
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4c
    .catch Ljavax/mail/MessagingException; {:try_start_49 .. :try_end_4c} :catch_73

    .line 1596
    :catch_4c
    :cond_4c
    :try_start_4c
    throw p1

    :cond_4d
    const-string v1, "multipart/*"

    .line 1598
    invoke-interface {p1, v1}, Ljavax/mail/internet/MimePart;->isMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 1599
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/mail/internet/MimeMultipart;

    .line 1600
    invoke-virtual {p1}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v1
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_5f} :catch_73
    .catch Ljavax/mail/MessagingException; {:try_start_4c .. :try_end_5f} :catch_73

    move v3, v0

    :goto_60
    if-ge v0, v1, :cond_72

    .line 1602
    :try_start_62
    invoke-virtual {p1, v0}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v4

    check-cast v4, Ljavax/mail/internet/MimePart;

    invoke-direct {p0, v4}, Lcom/sun/mail/smtp/SMTPTransport;->convertTo8Bit(Ljavax/mail/internet/MimePart;)Z

    move-result v4
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_6c} :catch_72
    .catch Ljavax/mail/MessagingException; {:try_start_62 .. :try_end_6c} :catch_72

    if-eqz v4, :cond_6f

    move v3, v2

    :cond_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    :catch_72
    :cond_72
    move v0, v3

    :catch_73
    :cond_73
    :goto_73
    return v0
.end method

.method private expandGroups()V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    .line 1517
    :goto_3
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    array-length v4, v3

    if-ge v2, v4, :cond_49

    .line 1518
    aget-object v3, v3, v2

    check-cast v3, Ljavax/mail/internet/InternetAddress;

    .line 1519
    invoke-virtual {v3}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_41

    if-nez v0, :cond_26

    .line 1522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    :goto_1a
    if-ge v4, v2, :cond_26

    .line 1524
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    aget-object v5, v5, v4

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_26
    const/4 v4, 0x1

    .line 1528
    :try_start_27
    invoke-virtual {v3, v4}, Ljavax/mail/internet/InternetAddress;->getGroup(Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v4

    if-eqz v4, :cond_39

    move v5, v1

    .line 1530
    :goto_2e
    array-length v6, v4

    if-ge v5, v6, :cond_46

    .line 1531
    aget-object v6, v4, v5

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 1533
    :cond_39
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljavax/mail/internet/ParseException; {:try_start_27 .. :try_end_3c} :catch_3d

    goto :goto_46

    .line 1536
    :catch_3d
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_41
    if-eqz v0, :cond_46

    .line 1541
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_46
    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_49
    if-eqz v0, :cond_56

    .line 1547
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/mail/internet/InternetAddress;

    .line 1548
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1549
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    :cond_56
    return-void
.end method

.method private initStreams()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2261
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "mail.debug.quote"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    .line 2264
    new-instance v1, Lcom/sun/mail/util/TraceInputStream;

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 2265
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceLogger:Lcom/sun/mail/util/MailLogger;

    invoke-direct {v1, v2, v3}, Lcom/sun/mail/util/TraceInputStream;-><init>(Ljava/io/InputStream;Lcom/sun/mail/util/MailLogger;)V

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    .line 2266
    invoke-virtual {v1, v0}, Lcom/sun/mail/util/TraceInputStream;->setQuote(Z)V

    .line 2268
    new-instance v1, Lcom/sun/mail/util/TraceOutputStream;

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 2269
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceLogger:Lcom/sun/mail/util/MailLogger;

    invoke-direct {v1, v2, v3}, Lcom/sun/mail/util/TraceOutputStream;-><init>(Ljava/io/OutputStream;Lcom/sun/mail/util/MailLogger;)V

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    .line 2270
    invoke-virtual {v1, v0}, Lcom/sun/mail/util/TraceOutputStream;->setQuote(Z)V

    .line 2272
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 2274
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 2276
    new-instance v0, Lcom/sun/mail/util/LineInputStream;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    return-void
.end method

.method private is8Bit(Ljava/io/InputStream;)Z
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1626
    :cond_3
    :goto_3
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_7} :catch_2f

    if-ltz v3, :cond_25

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xd

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1e

    const/16 v4, 0xa

    if-ne v3, v4, :cond_15

    goto :goto_1e

    :cond_15
    if-nez v3, :cond_18

    return v0

    :cond_18
    add-int/2addr v2, v5

    const/16 v4, 0x3e6

    if-le v2, v4, :cond_1f

    return v0

    :cond_1e
    :goto_1e
    move v2, v0

    :cond_1f
    const/16 v4, 0x7f

    if-le v3, v4, :cond_3

    move v1, v5

    goto :goto_3

    :cond_25
    if-eqz v1, :cond_2e

    .line 1644
    iget-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v0, "found an 8bit part"

    invoke-virtual {p1, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    :cond_2e
    return v1

    :catch_2f
    return v0
.end method

.method private isNotLastLine(Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_14

    .line 2515
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_14

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method private isTracing()Z
    .registers 3

    .line 2283
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method private issueSendCommand(Ljava/lang/String;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2332
    invoke-virtual {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 2337
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v2

    if-eq v2, p2, :cond_7b

    .line 2340
    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    const/4 v0, 0x0

    if-nez p2, :cond_10

    move v1, v0

    goto :goto_11

    :cond_10
    array-length v1, p2

    .line 2341
    :goto_11
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    if-nez v3, :cond_17

    move v3, v0

    goto :goto_18

    :cond_17
    array-length v3, v3

    :goto_18
    add-int v4, v1, v3

    .line 2342
    new-array v4, v4, [Ljavax/mail/Address;

    if-lez v1, :cond_21

    .line 2344
    invoke-static {p2, v0, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_21
    if-lez v3, :cond_28

    .line 2346
    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    invoke-static {p2, v0, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_28
    const/4 p2, 0x0

    .line 2347
    iput-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 2348
    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 2349
    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_57

    .line 2350
    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "got response code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", with response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2352
    :cond_57
    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2353
    iget v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 2354
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v1, :cond_65

    const-string v1, "RSET"

    const/4 v3, -0x1

    .line 2355
    invoke-virtual {p0, v1, v3}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    .line 2356
    :cond_65
    iput-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2357
    iput v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 2358
    new-instance p2, Lcom/sun/mail/smtp/SMTPSendFailedException;

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/sun/mail/smtp/SMTPSendFailedException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw p2

    :cond_7b
    return-void
.end method

.method private normalizeAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "<"

    .line 2520
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, ">"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 2521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_21
    return-object p1
.end method

.method private openServer()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, ", port: "

    const-string v1, "got bad greeting from host \""

    const-string v2, "Got bad greeting from SMTP host: "

    const-string v3, "protocol started to host \""

    const-string v4, "starting protocol to host \""

    const-string v5, "UNKNOWN"

    .line 2222
    iput-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    const/4 v5, -0x1

    .line 2224
    :try_start_f
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getPort()I

    move-result v5

    .line 2225
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    .line 2226
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 2227
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\", port "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2230
    :cond_49
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->initStreams()V

    .line 2233
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v4
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_50} :catch_e0

    const/16 v6, 0xdc

    const-string v7, "\", port: "

    if-eq v4, v6, :cond_b9

    .line 2234
    :try_start_56
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    const/4 v3, 0x0

    .line 2235
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 2236
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 2237
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 2238
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 2239
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_6c} :catch_e0

    const-string v6, ", response: "

    if-eqz v3, :cond_94

    .line 2240
    :try_start_70
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2243
    :cond_94
    new-instance v1, Ljavax/mail/MessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2248
    :cond_b9
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_df

    .line 2249
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_df} :catch_e0

    :cond_df
    return-void

    :catch_e0
    move-exception v1

    .line 2253
    new-instance v2, Ljavax/mail/MessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not start protocol to SMTP host: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method private openServer(Ljava/lang/String;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, ", port: "

    const-string v1, "could not connect to host \""

    const-string v2, "Could not connect to SMTP host: "

    const-string v3, "connected to host \""

    const-string v4, "mail."

    .line 2168
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 2169
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "trying to connect to host \""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\", port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isSSL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2173
    :cond_3e
    :try_start_3e
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v5}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v5

    .line 2175
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-boolean v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    invoke-static {p1, p2, v5, v4, v6}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object v4

    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 2180
    invoke-virtual {v4}, Ljava/net/Socket;->getPort()I

    move-result p2

    .line 2182
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    .line 2184
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->initStreams()V

    .line 2187
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v4
    :try_end_68
    .catch Ljava/net/UnknownHostException; {:try_start_3e .. :try_end_68} :catch_115
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_3e .. :try_end_68} :catch_10e
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_68} :catch_f2

    const/16 v5, 0xdc

    const-string v6, "\", port: "

    if-eq v4, v5, :cond_cd

    .line 2188
    :try_start_6e
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    const/4 v3, 0x0

    .line 2189
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 2190
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 2191
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 2192
    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 2193
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3
    :try_end_84
    .catch Ljava/net/UnknownHostException; {:try_start_6e .. :try_end_84} :catch_115
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_6e .. :try_end_84} :catch_10e
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_84} :catch_f2

    const-string v5, ", response: "

    if-eqz v3, :cond_aa

    .line 2194
    :try_start_88
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 2197
    :cond_aa
    new-instance v1, Ljavax/mail/MessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2202
    :cond_cd
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 2203
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_f1
    .catch Ljava/net/UnknownHostException; {:try_start_88 .. :try_end_f1} :catch_115
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_88 .. :try_end_f1} :catch_10e
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_f1} :catch_f2

    :cond_f1
    return-void

    :catch_f2
    move-exception v1

    .line 2211
    new-instance v3, Ljavax/mail/MessagingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    :catch_10e
    move-exception p1

    .line 2209
    new-instance p2, Lcom/sun/mail/util/MailConnectException;

    invoke-direct {p2, p1}, Lcom/sun/mail/util/MailConnectException;-><init>(Lcom/sun/mail/util/SocketConnectException;)V

    throw p2

    :catch_115
    move-exception p2

    .line 2207
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown SMTP host: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private resumeTracing()V
    .registers 3

    .line 2301
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2302
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    .line 2303
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

    :cond_15
    return-void
.end method

.method private sasllogin([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1155
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useCanonicalHostName:Z

    if-eqz v0, :cond_f

    .line 1156
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 1158
    :cond_f
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    .line 1159
    :goto_11
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslAuthenticator:Lcom/sun/mail/smtp/SaslAuthenticator;

    const/4 v2, 0x0

    if-nez v1, :cond_65

    :try_start_16
    const-string v1, "com.sun.mail.smtp.SMTPSaslAuthenticator"

    .line 1161
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/Class;

    .line 1163
    const-class v5, Lcom/sun/mail/smtp/SMTPTransport;

    aput-object v5, v4, v2

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Ljava/util/Properties;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-class v5, Lcom/sun/mail/util/MailLogger;

    const/4 v8, 0x3

    aput-object v5, v4, v8

    const-class v5, Ljava/lang/String;

    const/4 v9, 0x4

    aput-object v5, v4, v9

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    .line 1170
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    .line 1174
    invoke-virtual {v4}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    aput-object v4, v3, v8

    aput-object v0, v3, v9

    .line 1170
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/smtp/SaslAuthenticator;

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslAuthenticator:Lcom/sun/mail/smtp/SaslAuthenticator;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_59} :catch_5a

    goto :goto_65

    :catch_5a
    move-exception p1

    .line 1179
    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object p3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string p4, "Can\'t load SASL authenticator"

    invoke-virtual {p2, p3, p4, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :cond_65
    :goto_65
    if-eqz p1, :cond_83

    .line 1187
    array-length v0, p1

    if-lez v0, :cond_83

    .line 1189
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1190
    :goto_70
    array-length v1, p1

    if-ge v2, v1, :cond_a9

    .line 1191
    aget-object v1, p1, v2

    invoke-virtual {p0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->supportsAuthentication(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 1192
    aget-object v1, p1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_70

    .line 1195
    :cond_83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1196
    iget-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    if-eqz p1, :cond_a9

    const-string v1, "AUTH"

    .line 1197
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_a9

    .line 1199
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1200
    :goto_9b
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_a9

    .line 1201
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    .line 1205
    :cond_a9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [Ljava/lang/String;

    .line 1207
    :try_start_b6
    iget-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->noauthdebug:Z

    if-eqz p1, :cond_ca

    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->isTracing()Z

    move-result p1

    if-eqz p1, :cond_ca

    .line 1208
    iget-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v0, "SASL AUTH command trace suppressed"

    invoke-virtual {p1, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1209
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->suspendTracing()V

    .line 1211
    :cond_ca
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslAuthenticator:Lcom/sun/mail/smtp/SaslAuthenticator;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sun/mail/smtp/SaslAuthenticator;->authenticate([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_d4
    .catchall {:try_start_b6 .. :try_end_d4} :catchall_d8

    .line 1213
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->resumeTracing()V

    return p1

    :catchall_d8
    move-exception p1

    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->resumeTracing()V

    .line 1214
    throw p1
.end method

.method private sendCommand([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2411
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 2412
    iget-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    sget-object v0, Lcom/sun/mail/smtp/SMTPTransport;->CRLF:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 2413
    iget-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p1

    .line 2415
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Can\'t send command to SMTP host"

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private sendMessageEnd()V
    .registers 1

    return-void
.end method

.method private sendMessageStart(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private suspendTracing()V
    .registers 3

    .line 2291
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceLogger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2292
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceInput:Lcom/sun/mail/util/TraceInputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    .line 2293
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->traceOutput:Lcom/sun/mail/util/TraceOutputStream;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

    :cond_15
    return-void
.end method

.method private toBytes(Ljava/lang/String;)[B
    .registers 3

    .line 2669
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->allowutf8:Z

    if-eqz v0, :cond_b

    .line 2670
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1

    .line 2673
    :cond_b
    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private tracePassword(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2660
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->debugpassword:Z

    if-eqz v0, :cond_5

    goto :goto_c

    :cond_5
    if-nez p1, :cond_a

    const-string p1, "<null>"

    goto :goto_c

    :cond_a
    const-string p1, "<non-null>"

    :goto_c
    return-object p1
.end method

.method private traceUser(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2656
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->debugusername:Z

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string p1, "<user name suppressed>"

    :goto_7
    return-object p1
.end method

.method protected static xtext(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 2615
    invoke-static {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->xtext(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static xtext(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9

    if-eqz p1, :cond_9

    .line 2630
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_d

    .line 2632
    :cond_9
    invoke-static {p0}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_d
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    .line 2633
    :goto_10
    array-length v4, v0

    if-ge v3, v4, :cond_79

    .line 2634
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    if-nez p1, :cond_34

    const/16 v5, 0x80

    if-ge v4, v5, :cond_1f

    goto :goto_34

    .line 2636
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Non-ASCII character in SMTP submitter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    :goto_34
    const/16 v5, 0x21

    const/16 v6, 0x2b

    if-lt v4, v5, :cond_4b

    const/16 v5, 0x7e

    if-gt v4, v5, :cond_4b

    if-eq v4, v6, :cond_4b

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_45

    goto :goto_4b

    :cond_45
    if-eqz v2, :cond_76

    .line 2649
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_76

    :cond_4b
    :goto_4b
    if-nez v2, :cond_5f

    .line 2641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2642
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2644
    :cond_5f
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2645
    sget-object v5, Lcom/sun/mail/smtp/SMTPTransport;->hexchar:[C

    and-int/lit16 v6, v4, 0xf0

    shr-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2646
    sget-object v5, Lcom/sun/mail/smtp/SMTPTransport;->hexchar:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_76
    :goto_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_79
    if-eqz v2, :cond_7f

    .line 2652
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_7f
    return-object p0
.end method


# virtual methods
.method protected bdat()Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2122
    new-instance v0, Lcom/sun/mail/smtp/SMTPTransport$BDATOutputStream;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    iget v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->chunkSize:I

    invoke-direct {v0, p0, v1, v2}, Lcom/sun/mail/smtp/SMTPTransport$BDATOutputStream;-><init>(Lcom/sun/mail/smtp/SMTPTransport;Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    return-object v0
.end method

.method protected checkConnected()V
    .registers 3

    .line 2509
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2510
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "QUIT failed with "

    monitor-enter p0

    .line 1405
    :try_start_3
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_49

    if-nez v1, :cond_b

    .line 1406
    monitor-exit p0

    return-void

    .line 1408
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v1, :cond_3f

    const-string v1, "QUIT"

    .line 1409
    invoke-virtual {p0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 1410
    iget-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    if-eqz v1, :cond_3f

    .line 1411
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v1

    const/16 v2, 0xdd

    if-eq v1, v2, :cond_3f

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3f

    .line 1412
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 1413
    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1414
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_b .. :try_end_3f} :catchall_44

    .line 1418
    :cond_3f
    :try_start_3f
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_49

    .line 1420
    monitor-exit p0

    return-void

    :catchall_44
    move-exception v0

    .line 1418
    :try_start_45
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    .line 1419
    throw v0
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(Ljava/net/Socket;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 331
    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 332
    invoke-super {p0}, Ljavax/mail/Transport;->connect()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 333
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected data()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "DATA"

    const/16 v1, 0x162

    .line 2095
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueSendCommand(Ljava/lang/String;I)V

    .line 2096
    new-instance v0, Lcom/sun/mail/smtp/SMTPOutputStream;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lcom/sun/mail/smtp/SMTPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    return-object v0
.end method

.method protected ehlo(Ljava/lang/String;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    if-eqz p1, :cond_12

    .line 1695
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EHLO "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_14

    :cond_12
    const-string p1, "EHLO"

    .line 1698
    :goto_14
    invoke-virtual {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 1699
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result p1

    const/16 v0, 0xfa

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_9e

    .line 1702
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/StringReader;

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1705
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    move v4, v1

    .line 1708
    :goto_35
    :try_start_35
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9e

    if-eqz v4, :cond_3f

    move v4, v2

    goto :goto_35

    .line 1713
    :cond_3f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-ge v6, v7, :cond_47

    goto :goto_35

    :cond_47
    const/4 v6, 0x4

    .line 1715
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    .line 1716
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const-string v7, ""

    if-lez v6, :cond_60

    add-int/lit8 v7, v6, 0x1

    .line 1719
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1720
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1722
    :cond_60
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v8}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_92

    .line 1723
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found extension \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\", arg \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1725
    :cond_92
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_9d} :catch_9e

    goto :goto_35

    :catch_9e
    :cond_9e
    if-ne p1, v0, :cond_a1

    goto :goto_a2

    :cond_a1
    move v1, v2

    :goto_a2
    return v1
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1651
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_3
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_3} :catch_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 1655
    :catch_3
    invoke-super {p0}, Ljavax/mail/Transport;->finalize()V

    goto :goto_c

    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljavax/mail/Transport;->finalize()V

    .line 1656
    throw v0

    :goto_c
    return-void
.end method

.method protected finishBdat()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2135
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPOutputStream;->ensureAtBOL()V

    .line 2136
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPOutputStream;->close()V

    return-void
.end method

.method protected finishData()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2109
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPOutputStream;->ensureAtBOL()V

    const-string v0, "."

    const/16 v1, 0xfa

    .line 2110
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueSendCommand(Ljava/lang/String;I)V

    return-void
.end method

.method public declared-synchronized getAuthorizationId()Ljava/lang/String;
    .registers 4

    const-string v0, "mail."

    monitor-enter p0

    .line 343
    :try_start_3
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->authorizationID:Ljava/lang/String;

    const-string v2, "UNKNOWN"

    if-ne v1, v2, :cond_26

    .line 344
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".sasl.authorizationid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-virtual {v1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->authorizationID:Ljava/lang/String;

    .line 347
    :cond_26
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->authorizationID:Ljava/lang/String;
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2a

    monitor-exit p0

    return-object v0

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExtensionParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 2553
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_12

    :cond_6
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 2554
    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_12
    return-object p1
.end method

.method public declared-synchronized getLastReturnCode()I
    .registers 2

    monitor-enter p0

    .line 663
    :try_start_1
    iget v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastServerResponse()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 652
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalHost()Ljava/lang/String;
    .registers 7

    const-string v0, "["

    const-string v1, "["

    const-string v2, "mail."

    const-string v3, "mail."

    monitor-enter p0

    .line 278
    :try_start_9
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_30

    .line 279
    :cond_13
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".localhost"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-virtual {v4, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    .line 281
    :cond_30
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_57

    .line 282
    :cond_3a
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".localaddress"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-virtual {v3, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_57
    .catchall {:try_start_9 .. :try_end_57} :catchall_c5

    .line 285
    :cond_57
    :try_start_57
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v2, :cond_61

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_86

    .line 286
    :cond_61
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v2

    .line 287
    invoke-virtual {v2}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-nez v3, :cond_86

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_86
    .catch Ljava/net/UnknownHostException; {:try_start_57 .. :try_end_86} :catch_86
    .catchall {:try_start_57 .. :try_end_86} :catchall_c5

    .line 297
    :catch_86
    :cond_86
    :try_start_86
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v1, :cond_90

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_c1

    .line 298
    :cond_90
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v1, :cond_c1

    invoke-virtual {v1}, Ljava/net/Socket;->isBound()Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 299
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 300
    invoke-virtual {v1}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-nez v2, :cond_c1

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    .line 307
    :cond_c1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_c3
    .catchall {:try_start_86 .. :try_end_c3} :catchall_c5

    monitor-exit p0

    return-object v0

    :catchall_c5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNTLMDomain()Ljava/lang/String;
    .registers 4

    const-string v0, "mail."

    monitor-enter p0

    .line 489
    :try_start_3
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->ntlmDomain:Ljava/lang/String;

    const-string v2, "UNKNOWN"

    if-ne v1, v2, :cond_26

    .line 490
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".auth.ntlm.domain"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-virtual {v1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->ntlmDomain:Ljava/lang/String;

    .line 493
    :cond_26
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->ntlmDomain:Ljava/lang/String;
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2a

    monitor-exit p0

    return-object v0

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNoopStrict()Z
    .registers 2

    monitor-enter p0

    .line 625
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->noopStrict:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReportSuccess()Z
    .registers 2

    monitor-enter p0

    .line 522
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequireStartTLS()Z
    .registers 2

    monitor-enter p0

    .line 568
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->requireStartTLS:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSASLEnabled()Z
    .registers 2

    monitor-enter p0

    .line 370
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->enableSASL:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSASLMechanisms()[Ljava/lang/String;
    .registers 6

    const-string v0, "SASL mechanisms allowed: "

    const-string v1, "mail."

    monitor-enter p0

    .line 445
    :try_start_5
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslMechanisms:[Ljava/lang/String;

    sget-object v3, Lcom/sun/mail/smtp/SMTPTransport;->UNKNOWN_SA:[Ljava/lang/String;

    if-ne v2, v3, :cond_76

    .line 446
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 447
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".sasl.mechanisms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6b

    .line 448
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6b

    .line 449
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 450
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 451
    :cond_50
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v3, " ,"

    invoke-direct {v0, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_57
    :goto_57
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 453
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 454
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_57

    .line 455
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 458
    :cond_6b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslMechanisms:[Ljava/lang/String;

    .line 459
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 461
    :cond_76
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslMechanisms:[Ljava/lang/String;
    :try_end_78
    .catchall {:try_start_5 .. :try_end_78} :catchall_85

    if-nez v0, :cond_7d

    .line 462
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 463
    :cond_7d
    :try_start_7d
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_83
    .catchall {:try_start_7d .. :try_end_83} :catchall_85

    monitor-exit p0

    return-object v0

    :catchall_85
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSASLRealm()Ljava/lang/String;
    .registers 5

    const-string v0, "mail."

    const-string v1, "mail."

    monitor-enter p0

    .line 392
    :try_start_5
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    const-string v3, "UNKNOWN"

    if-ne v2, v3, :cond_47

    .line 393
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".sasl.realm"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    if-nez v1, :cond_47

    .line 395
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".saslrealm"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    .line 397
    :cond_47
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_4b

    monitor-exit p0

    return-object v0

    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStartTLS()Z
    .registers 2

    monitor-enter p0

    .line 546
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseCanonicalHostName()Z
    .registers 2

    monitor-enter p0

    .line 420
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useCanonicalHostName:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseRset()Z
    .registers 2

    monitor-enter p0

    .line 601
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected helo(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/16 v0, 0xfa

    if-eqz p1, :cond_17

    .line 1678
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HELO "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    goto :goto_1c

    :cond_17
    const-string p1, "HELO"

    .line 1680
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    :goto_1c
    return-void
.end method

.method public declared-synchronized isConnected()Z
    .registers 4

    monitor-enter p0

    .line 1444
    :try_start_1
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_39

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1446
    monitor-exit p0

    return v1

    .line 1451
    :cond_a
    :try_start_a
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z

    if-eqz v0, :cond_14

    const-string v0, "RSET"

    .line 1452
    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    goto :goto_19

    :cond_14
    const-string v0, "NOOP"

    .line 1454
    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 1455
    :goto_19
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0

    if-ltz v0, :cond_2f

    .line 1474
    iget-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->noopStrict:Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_21} :catch_34
    .catchall {:try_start_a .. :try_end_21} :catchall_39

    if-eqz v2, :cond_28

    const/16 v2, 0xfa

    if-ne v0, v2, :cond_2f

    goto :goto_2c

    :cond_28
    const/16 v2, 0x1a5

    if-eq v0, v2, :cond_2f

    .line 1475
    :goto_2c
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 1478
    :cond_2f
    :try_start_2f
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_32
    .catch Ljavax/mail/MessagingException; {:try_start_2f .. :try_end_32} :catch_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_34
    .catchall {:try_start_2f .. :try_end_32} :catchall_39

    .line 1482
    :catch_32
    monitor-exit p0

    return v1

    .line 1486
    :catch_34
    :try_start_34
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_37
    .catch Ljavax/mail/MessagingException; {:try_start_34 .. :try_end_37} :catch_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_39

    .line 1490
    :catch_37
    monitor-exit p0

    return v1

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSSL()Z
    .registers 2

    monitor-enter p0

    .line 589
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized issueCommand(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2318
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 2322
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result p1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_16

    if-ne p1, p2, :cond_e

    goto :goto_16

    .line 2324
    :cond_e
    new-instance p1, Ljavax/mail/MessagingException;

    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 2325
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected mailFrom()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1749
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v1, v0, Lcom/sun/mail/smtp/SMTPMessage;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 1750
    check-cast v0, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPMessage;->getEnvelopeFrom()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, v2

    :goto_f
    const-string v1, "mail."

    if-eqz v0, :cond_19

    .line 1751
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_34

    .line 1752
    :cond_19
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".from"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_34
    const/4 v3, 0x0

    if-eqz v0, :cond_3d

    .line 1753
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_5b

    .line 1756
    :cond_3d
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v0

    if-eqz v0, :cond_4d

    array-length v4, v0

    if-lez v4, :cond_4d

    .line 1758
    aget-object v0, v0, v3

    goto :goto_53

    .line 1760
    :cond_4d
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    :goto_53
    if-eqz v0, :cond_1d0

    .line 1763
    check-cast v0, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1769
    :cond_5b
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MAIL FROM:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->normalizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1771
    iget-boolean v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->allowutf8:Z

    const-string v6, "SMTPUTF8"

    if-eqz v5, :cond_8d

    invoke-virtual {p0, v6}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 1772
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SMTPUTF8"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_8d
    const-string v5, "DSN"

    .line 1775
    invoke-virtual {p0, v5}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d9

    .line 1777
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v7, v5, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v7, :cond_a2

    .line 1778
    check-cast v5, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v5}, Lcom/sun/mail/smtp/SMTPMessage;->getDSNRet()Ljava/lang/String;

    move-result-object v5

    goto :goto_a3

    :cond_a2
    move-object v5, v2

    :goto_a3
    if-nez v5, :cond_c0

    .line 1780
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".dsn.ret"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_c0
    if-eqz v5, :cond_d9

    .line 1783
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " RET="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_d9
    const-string v5, "AUTH"

    .line 1791
    invoke-virtual {p0, v5}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_156

    .line 1793
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v7, v5, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v7, :cond_ee

    .line 1794
    check-cast v5, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v5}, Lcom/sun/mail/smtp/SMTPMessage;->getSubmitter()Ljava/lang/String;

    move-result-object v5

    goto :goto_ef

    :cond_ee
    move-object v5, v2

    :goto_ef
    if-nez v5, :cond_10c

    .line 1796
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".submitter"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_10c
    if-eqz v5, :cond_156

    .line 1800
    :try_start_10e
    iget-boolean v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->allowutf8:Z

    if-eqz v7, :cond_119

    .line 1801
    invoke-virtual {p0, v6}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_119

    const/4 v3, 0x1

    .line 1800
    :cond_119
    invoke-static {v5, v3}, Lcom/sun/mail/smtp/SMTPTransport;->xtext(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 1802
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AUTH="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_134
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10e .. :try_end_134} :catch_135

    goto :goto_156

    :catch_135
    move-exception v3

    .line 1804
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_156

    .line 1805
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ignoring invalid submitter: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5, v3}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1815
    :cond_156
    :goto_156
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v5, v3, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v5, :cond_162

    .line 1816
    check-cast v3, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/smtp/SMTPMessage;->getMailExtension()Ljava/lang/String;

    move-result-object v2

    :cond_162
    if-nez v2, :cond_17f

    .line 1818
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".mailextension"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_17f
    if-eqz v2, :cond_19e

    .line 1819
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_19e

    .line 1820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_19e
    const/16 v1, 0xfa

    .line 1823
    :try_start_1a0
    invoke-direct {p0, v4, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueSendCommand(Ljava/lang/String;I)V
    :try_end_1a3
    .catch Lcom/sun/mail/smtp/SMTPSendFailedException; {:try_start_1a0 .. :try_end_1a3} :catch_1a4

    return-void

    :catch_1a4
    move-exception v1

    .line 1825
    invoke-virtual {v1}, Lcom/sun/mail/smtp/SMTPSendFailedException;->getReturnCode()I

    move-result v2

    const/16 v3, 0x1f5

    if-eq v2, v3, :cond_1be

    const/16 v3, 0x1f7

    if-eq v2, v3, :cond_1be

    const/16 v3, 0x229

    if-eq v2, v3, :cond_1be

    const/16 v3, 0x226

    if-eq v2, v3, :cond_1be

    const/16 v3, 0x227

    if-eq v2, v3, :cond_1be

    goto :goto_1cf

    .line 1830
    :cond_1be
    :try_start_1be
    new-instance v3, Lcom/sun/mail/smtp/SMTPSenderFailedException;

    new-instance v5, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v5, v0}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 1832
    invoke-virtual {v1}, Lcom/sun/mail/smtp/SMTPSendFailedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v5, v4, v2, v0}, Lcom/sun/mail/smtp/SMTPSenderFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    .line 1830
    invoke-virtual {v1, v3}, Lcom/sun/mail/smtp/SMTPSendFailedException;->setNextException(Ljava/lang/Exception;)Z
    :try_end_1cf
    .catch Ljavax/mail/internet/AddressException; {:try_start_1be .. :try_end_1cf} :catch_1cf

    .line 1840
    :catch_1cf
    :goto_1cf
    throw v1

    .line 1765
    :cond_1d0
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "can\'t determine local email address"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V
    .registers 7

    .line 1505
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->notificationDone:Z

    if-nez v0, :cond_a

    .line 1506
    invoke-super/range {p0 .. p5}, Ljavax/mail/Transport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    const/4 p1, 0x1

    .line 1508
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->notificationDone:Z

    :cond_a
    return-void
.end method

.method protected declared-synchronized protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "protocolConnect login, host="

    const-string v1, "useEhlo "

    const-string v2, "mail."

    const-string v3, "protocolConnect returning false, host="

    const-string v4, "mail."

    const-string v5, "mail."

    monitor-enter p0

    .line 688
    :try_start_d
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v6}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v6

    .line 691
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".auth"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v6, v5, v7}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_74

    if-eqz p3, :cond_33

    if-nez p4, :cond_74

    .line 701
    :cond_33
    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_72

    .line 702
    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v0, "need username and password for authentication"

    invoke-virtual {p2, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 703
    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", user="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 705
    invoke-direct {p0, p3}, Lcom/sun/mail/smtp/SMTPTransport;->traceUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ", password="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 706
    invoke-direct {p0, p4}, Lcom/sun/mail/smtp/SMTPTransport;->tracePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 703
    invoke-virtual {p2, p1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_d .. :try_end_72} :catchall_1ae

    .line 708
    :cond_72
    monitor-exit p0

    return v7

    .line 712
    :cond_74
    :try_start_74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".ehlo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v6, v3, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v3

    .line 714
    iget-object v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_b4

    .line 715
    iget-object v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", useAuth "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    :cond_b4
    const/4 v1, -0x1

    if-ne p2, v1, :cond_d0

    .line 722
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ".port"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2, v1}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result p2

    :cond_d0
    if-ne p2, v1, :cond_d4

    .line 725
    iget p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    :cond_d4
    if-eqz p1, :cond_dc

    .line 727
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_de

    :cond_dc
    const-string p1, "localhost"
    :try_end_de
    .catchall {:try_start_74 .. :try_end_de} :catchall_1ae

    .line 737
    :cond_de
    :try_start_de
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v1, :cond_e6

    .line 738
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->openServer()V

    goto :goto_e9

    .line 740
    :cond_e6
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/smtp/SMTPTransport;->openServer(Ljava/lang/String;I)V

    :goto_e9
    if-eqz v3, :cond_f3

    .line 744
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/mail/smtp/SMTPTransport;->ehlo(Ljava/lang/String;)Z

    move-result v7

    :cond_f3
    if-nez v7, :cond_fc

    .line 746
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/mail/smtp/SMTPTransport;->helo(Ljava/lang/String;)V

    .line 748
    :cond_fc
    iget-boolean p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z

    if-nez p2, :cond_104

    iget-boolean p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->requireStartTLS:Z

    if-eqz p2, :cond_129

    .line 749
    :cond_104
    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    instance-of p2, p2, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_112

    .line 750
    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "STARTTLS requested but already using SSL"

    invoke-virtual {p2, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    goto :goto_129

    :cond_112
    const-string p2, "STARTTLS"

    .line 751
    invoke-virtual {p0, p2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_125

    .line 752
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->startTLS()V

    .line 759
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/mail/smtp/SMTPTransport;->ehlo(Ljava/lang/String;)Z

    goto :goto_129

    .line 760
    :cond_125
    iget-boolean p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->requireStartTLS:Z

    if-nez p2, :cond_19a

    .line 768
    :cond_129
    :goto_129
    iget-boolean p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->allowutf8:Z

    if-eqz p2, :cond_13e

    const-string p2, "SMTPUTF8"

    invoke-virtual {p0, p2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_13e

    .line 769
    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "mail.mime.allowutf8 set but server doesn\'t advertise SMTPUTF8 support"

    invoke-virtual {p2, v1, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_13e
    if-nez v5, :cond_144

    if-eqz p3, :cond_155

    if-eqz p4, :cond_155

    :cond_144
    const-string p2, "AUTH"

    .line 773
    invoke-virtual {p0, p2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_157

    const-string p2, "AUTH=LOGIN"

    .line 774
    invoke-virtual {p0, p2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result p2
    :try_end_152
    .catchall {:try_start_de .. :try_end_152} :catchall_1a9

    if-eqz p2, :cond_155

    goto :goto_157

    .line 786
    :cond_155
    monitor-exit p0

    return v4

    .line 775
    :cond_157
    :goto_157
    :try_start_157
    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_18f

    .line 776
    iget-object p2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", user="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 778
    invoke-direct {p0, p3}, Lcom/sun/mail/smtp/SMTPTransport;->traceUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", password="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 779
    invoke-direct {p0, p4}, Lcom/sun/mail/smtp/SMTPTransport;->tracePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 776
    invoke-virtual {p2, p1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 780
    :cond_18f
    invoke-direct {p0, p3, p4}, Lcom/sun/mail/smtp/SMTPTransport;->authenticate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_193
    .catchall {:try_start_157 .. :try_end_193} :catchall_1a9

    if-nez p1, :cond_198

    .line 793
    :try_start_195
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_198
    .catch Ljavax/mail/MessagingException; {:try_start_195 .. :try_end_198} :catch_198
    .catchall {:try_start_195 .. :try_end_198} :catchall_1ae

    .line 781
    :catch_198
    :cond_198
    monitor-exit p0

    return p1

    .line 761
    :cond_19a
    :try_start_19a
    iget-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string p2, "STARTTLS required but not supported"

    invoke-virtual {p1, p2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 762
    new-instance p1, Ljavax/mail/MessagingException;

    const-string p2, "STARTTLS is required but host does not support STARTTLS"

    invoke-direct {p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1a9
    .catchall {:try_start_19a .. :try_end_1a9} :catchall_1a9

    :catchall_1a9
    move-exception p1

    .line 793
    :try_start_1aa
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_1ad
    .catch Ljavax/mail/MessagingException; {:try_start_1aa .. :try_end_1ad} :catch_1ad
    .catchall {:try_start_1aa .. :try_end_1ad} :catchall_1ae

    .line 798
    :catch_1ad
    :try_start_1ad
    throw p1
    :try_end_1ae
    .catchall {:try_start_1ad .. :try_end_1ae} :catchall_1ae

    :catchall_1ae
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected rcptTo()V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v7, p0

    .line 1867
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1868
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1869
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 1874
    iput-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iput-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iput-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1876
    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v5, v4, Lcom/sun/mail/smtp/SMTPMessage;

    const/4 v6, 0x0

    if-eqz v5, :cond_26

    .line 1877
    check-cast v4, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v4}, Lcom/sun/mail/smtp/SMTPMessage;->getSendPartial()Z

    move-result v4

    goto :goto_27

    :cond_26
    move v4, v6

    :goto_27
    const-string v5, "mail."

    if-nez v4, :cond_4a

    .line 1879
    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v4}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".sendpartial"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v6}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v4

    :cond_4a
    if-eqz v4, :cond_53

    .line 1882
    iget-object v8, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v9, "sendPartial set"

    invoke-virtual {v8, v9}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    :cond_53
    const-string v8, "DSN"

    .line 1886
    invoke-virtual {v7, v8}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 1887
    iget-object v8, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v10, v8, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v10, :cond_68

    .line 1888
    check-cast v8, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v8}, Lcom/sun/mail/smtp/SMTPMessage;->getDSNNotify()Ljava/lang/String;

    move-result-object v8

    goto :goto_69

    :cond_68
    move-object v8, v3

    :goto_69
    if-nez v8, :cond_86

    .line 1890
    iget-object v8, v7, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ".dsn.notify"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_86
    if-eqz v8, :cond_8b

    const/4 v5, 0x1

    goto :goto_8c

    :cond_8a
    move-object v8, v3

    :cond_8b
    move v5, v6

    :goto_8c
    move-object v12, v3

    move v3, v6

    move v10, v3

    .line 1897
    :goto_8f
    iget-object v11, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    array-length v13, v11

    const/4 v14, -0x1

    const-string v15, "RSET"

    if-ge v3, v13, :cond_194

    .line 1900
    aget-object v11, v11, v3

    check-cast v11, Ljavax/mail/internet/InternetAddress;

    .line 1901
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v6, "RCPT TO:"

    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lcom/sun/mail/smtp/SMTPTransport;->normalizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_cb

    .line 1903
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, " NOTIFY="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1905
    :cond_cb
    invoke-virtual {v7, v6}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 1907
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v13

    const/16 v9, 0xfa

    if-eq v13, v9, :cond_179

    const/16 v9, 0xfb

    if-eq v13, v9, :cond_179

    const/16 v9, 0x1f5

    if-eq v13, v9, :cond_165

    const/16 v9, 0x1f7

    if-eq v13, v9, :cond_165

    packed-switch v13, :pswitch_data_306

    packed-switch v13, :pswitch_data_310

    const/16 v9, 0x190

    if-lt v13, v9, :cond_f4

    const/16 v9, 0x1f3

    if-gt v13, v9, :cond_f4

    .line 1958
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ff

    :cond_f4
    const/16 v9, 0x1f4

    if-lt v13, v9, :cond_112

    const/16 v9, 0x257

    if-gt v13, v9, :cond_112

    .line 1961
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_ff
    if-nez v4, :cond_102

    const/4 v10, 0x1

    .line 1979
    :cond_102
    new-instance v9, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    iget-object v14, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v9, v11, v6, v13, v14}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    if-nez v12, :cond_10d

    goto/16 :goto_18a

    .line 1984
    :cond_10d
    invoke-virtual {v12, v9}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    goto/16 :goto_18f

    .line 1964
    :cond_112
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_13c

    .line 1965
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "got response code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", with response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1967
    :cond_13c
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1968
    iget v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1969
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v2, :cond_147

    .line 1970
    invoke-virtual {v7, v15, v14}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    .line 1971
    :cond_147
    iput-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1972
    iput v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1973
    new-instance v1, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    invoke-direct {v1, v11, v6, v13, v0}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    throw v1

    :pswitch_151
    if-nez v4, :cond_154

    const/4 v10, 0x1

    .line 1944
    :cond_154
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1946
    new-instance v9, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    iget-object v14, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v9, v11, v6, v13, v14}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    if-nez v12, :cond_161

    goto :goto_18a

    .line 1951
    :cond_161
    invoke-virtual {v12, v9}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    goto :goto_18f

    :cond_165
    :pswitch_165
    if-nez v4, :cond_168

    const/4 v10, 0x1

    .line 1930
    :cond_168
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1932
    new-instance v9, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    iget-object v14, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v9, v11, v6, v13, v14}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    if-nez v12, :cond_175

    goto :goto_18a

    .line 1937
    :cond_175
    invoke-virtual {v12, v9}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    goto :goto_18f

    .line 1910
    :cond_179
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1911
    iget-boolean v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z

    if-nez v9, :cond_181

    goto :goto_18f

    .line 1918
    :cond_181
    new-instance v9, Lcom/sun/mail/smtp/SMTPAddressSucceededException;

    iget-object v14, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v9, v11, v6, v13, v14}, Lcom/sun/mail/smtp/SMTPAddressSucceededException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    if-nez v12, :cond_18c

    :goto_18a
    move-object v12, v9

    goto :goto_18f

    .line 1923
    :cond_18c
    invoke-virtual {v12, v9}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    :goto_18f
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x0

    goto/16 :goto_8f

    :cond_194
    if-eqz v4, :cond_19d

    .line 1991
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_19d

    const/4 v10, 0x1

    :cond_19d
    if-eqz v10, :cond_1e6

    .line 1997
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/mail/Address;

    iput-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    .line 1998
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2001
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    new-array v2, v2, [Ljavax/mail/Address;

    iput-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2003
    :goto_1b9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1cf

    .line 2004
    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/mail/Address;

    aput-object v6, v4, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_1b9

    :cond_1cf
    const/4 v0, 0x0

    .line 2005
    :goto_1d0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_224

    .line 2006
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/mail/Address;

    aput-object v5, v2, v3

    add-int/lit8 v0, v0, 0x1

    move v3, v4

    goto :goto_1d0

    .line 2007
    :cond_1e6
    iget-boolean v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z

    if-nez v3, :cond_1fe

    if-eqz v4, :cond_1f9

    .line 2008
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1fe

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1f9

    goto :goto_1fe

    .line 2026
    :cond_1f9
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    iput-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    goto :goto_224

    :cond_1fe
    :goto_1fe
    const/4 v3, 0x1

    .line 2011
    iput-boolean v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    .line 2012
    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    .line 2015
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/mail/Address;

    iput-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    .line 2016
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2019
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljavax/mail/Address;

    iput-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 2020
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2023
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/mail/Address;

    iput-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 2024
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2031
    :cond_224
    :goto_224
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2b7

    .line 2032
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    const-string v1, "  "

    if-eqz v0, :cond_25d

    array-length v0, v0

    if-lez v0, :cond_25d

    .line 2033
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "Verified Addresses"

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2034
    :goto_23f
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    array-length v2, v2

    if-ge v0, v2, :cond_25d

    .line 2035
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_23f

    .line 2038
    :cond_25d
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    if-eqz v0, :cond_28a

    array-length v0, v0

    if-lez v0, :cond_28a

    .line 2039
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "Valid Unsent Addresses"

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2040
    :goto_26c
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    array-length v2, v2

    if-ge v0, v2, :cond_28a

    .line 2041
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_26c

    .line 2044
    :cond_28a
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    if-eqz v0, :cond_2b7

    array-length v0, v0

    if-lez v0, :cond_2b7

    .line 2045
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "Invalid Addresses"

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 2046
    :goto_299
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    array-length v0, v0

    if-ge v6, v0, :cond_2b7

    .line 2047
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_299

    :cond_2b7
    if-eqz v10, :cond_304

    .line 2054
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "Sending failed because of invalid destination addresses"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 2056
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 2061
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2062
    iget v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 2064
    :try_start_2d2
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v0, :cond_2d9

    .line 2065
    invoke-virtual {v7, v15, v14}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V
    :try_end_2d9
    .catch Ljavax/mail/MessagingException; {:try_start_2d2 .. :try_end_2d9} :catch_2e0
    .catchall {:try_start_2d2 .. :try_end_2d9} :catchall_2de

    .line 2075
    :cond_2d9
    :goto_2d9
    iput-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2076
    iput v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    goto :goto_2f0

    :catchall_2de
    move-exception v0

    goto :goto_2ff

    .line 2069
    :catch_2e0
    :try_start_2e0
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->close()V
    :try_end_2e3
    .catch Ljavax/mail/MessagingException; {:try_start_2e0 .. :try_end_2e3} :catch_2e4
    .catchall {:try_start_2e0 .. :try_end_2e3} :catchall_2de

    goto :goto_2d9

    :catch_2e4
    move-exception v0

    move-object v3, v0

    .line 2072
    :try_start_2e6
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "close failed"

    invoke-virtual {v0, v4, v5, v3}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2ef
    .catchall {:try_start_2e6 .. :try_end_2ef} :catchall_2de

    goto :goto_2d9

    .line 2079
    :goto_2f0
    new-instance v0, Ljavax/mail/SendFailedException;

    const-string v11, "Invalid Addresses"

    iget-object v13, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v14, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v15, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v0

    .line 2075
    :goto_2ff
    iput-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2076
    iput v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 2077
    throw v0

    :cond_304
    return-void

    nop

    :pswitch_data_306
    .packed-switch 0x1c2
        :pswitch_151
        :pswitch_151
        :pswitch_151
    .end packed-switch

    :pswitch_data_310
    .packed-switch 0x226
        :pswitch_165
        :pswitch_165
        :pswitch_151
        :pswitch_165
    .end packed-switch
.end method

.method protected readServerResponse()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "close failed"

    .line 2432
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_9
    const/4 v2, 0x0

    .line 2440
    :try_start_a
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v3}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    if-nez v3, :cond_2d

    .line 2442
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2443
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1f

    const-string v0, "[EOF]"

    .line 2445
    :cond_1f
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2446
    iput v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 2447
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "EOF: {0}"

    invoke-virtual {v1, v3, v5, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return v4

    .line 2450
    :cond_2d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    .line 2451
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2452
    invoke-direct {p0, v3}, Lcom/sun/mail/smtp/SMTPTransport;->isNotLastLine(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 2454
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_3f} :catch_79

    .line 2469
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x3

    if-lt v3, v5, :cond_68

    .line 2471
    :try_start_46
    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_4e} :catch_5c
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_46 .. :try_end_4e} :catch_4f

    goto :goto_69

    .line 2482
    :catch_4f
    :try_start_4f
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->close()V
    :try_end_52
    .catch Ljavax/mail/MessagingException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_68

    :catch_53
    move-exception v2

    .line 2485
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v5, v0, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_68

    .line 2474
    :catch_5c
    :try_start_5c
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->close()V
    :try_end_5f
    .catch Ljavax/mail/MessagingException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_68

    :catch_60
    move-exception v2

    .line 2477
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v5, v0, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_68
    :goto_68
    move v0, v4

    :goto_69
    if-ne v0, v4, :cond_74

    .line 2493
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "bad server response: {0}"

    invoke-virtual {v2, v3, v4, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2495
    :cond_74
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2496
    iput v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    return v0

    :catch_79
    move-exception v0

    .line 2456
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "exception reading response"

    invoke-virtual {v1, v3, v4, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, ""

    .line 2458
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 2459
    iput v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 2460
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Exception reading response"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected sendCommand(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2402
    invoke-direct {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->toBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand([B)V

    return-void
.end method

.method public declared-synchronized sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljavax/mail/SendFailedException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    monitor-enter p0

    if-eqz v0, :cond_e

    .line 1256
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_e
    const-string v2, ""

    :goto_10
    invoke-direct {v7, v2}, Lcom/sun/mail/smtp/SMTPTransport;->sendMessageStart(Ljava/lang/String;)V

    .line 1257
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->checkConnected()V

    .line 1261
    instance-of v2, v0, Ljavax/mail/internet/MimeMessage;

    if-eqz v2, :cond_1b9

    const/4 v8, 0x0

    move v2, v8

    .line 1265
    :goto_1c
    array-length v3, v1

    if-ge v2, v3, :cond_43

    .line 1266
    aget-object v3, v1, v2

    instance-of v3, v3, Ljavax/mail/internet/InternetAddress;

    if-eqz v3, :cond_28

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 1267
    :cond_28
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not an InternetAddress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1271
    :cond_43
    array-length v2, v1

    if-eqz v2, :cond_1b1

    .line 1274
    move-object v2, v0

    check-cast v2, Ljavax/mail/internet/MimeMessage;

    iput-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 1275
    iput-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    .line 1276
    iput-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1277
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->expandGroups()V

    .line 1280
    instance-of v1, v0, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v1, :cond_5d

    .line 1281
    check-cast v0, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPMessage;->getAllow8bitMIME()Z

    move-result v0

    goto :goto_5e

    :cond_5d
    move v0, v8

    :goto_5e
    if-nez v0, :cond_85

    .line 1283
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".allow8bitmime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    .line 1285
    :cond_85
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 1286
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use8bit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    :cond_a7
    if-eqz v0, :cond_be

    const-string v0, "8BITMIME"

    .line 1287
    invoke-virtual {v7, v0}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1288
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-direct {v7, v0}, Lcom/sun/mail/smtp/SMTPTransport;->convertTo8Bit(Ljavax/mail/internet/MimePart;)Z

    move-result v0
    :try_end_b7
    .catchall {:try_start_9 .. :try_end_b7} :catchall_1c8

    if-eqz v0, :cond_be

    .line 1292
    :try_start_b9
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->saveChanges()V
    :try_end_be
    .catch Ljavax/mail/MessagingException; {:try_start_b9 .. :try_end_be} :catch_be
    .catchall {:try_start_b9 .. :try_end_be} :catchall_1c8

    :catch_be
    :cond_be
    const/4 v9, 0x0

    .line 1300
    :try_start_bf
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->mailFrom()V

    .line 1301
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->rcptTo()V

    .line 1302
    iget v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->chunkSize:I

    if-lez v0, :cond_e0

    const-string v0, "CHUNKING"

    invoke-virtual {v7, v0}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 1312
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->bdat()Ljava/io/OutputStream;

    move-result-object v1

    sget-object v2, Lcom/sun/mail/smtp/SMTPTransport;->ignoreList:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 1313
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->finishBdat()V

    goto :goto_ee

    .line 1315
    :cond_e0
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->data()Ljava/io/OutputStream;

    move-result-object v1

    sget-object v2, Lcom/sun/mail/smtp/SMTPTransport;->ignoreList:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 1316
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->finishData()V

    .line 1318
    :goto_ee
    iget-boolean v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    if-nez v0, :cond_11c

    .line 1332
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "message successfully delivered to mail server"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1333
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V
    :try_end_107
    .catch Ljavax/mail/MessagingException; {:try_start_bf .. :try_end_107} :catch_172
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_107} :catch_14c
    .catchall {:try_start_bf .. :try_end_107} :catchall_14a

    .line 1369
    :try_start_107
    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1370
    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    .line 1371
    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 1372
    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    .line 1373
    iput-boolean v8, v7, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    .line 1374
    iput-boolean v8, v7, Lcom/sun/mail/smtp/SMTPTransport;->notificationDone:Z

    .line 1376
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->sendMessageEnd()V
    :try_end_11a
    .catchall {:try_start_107 .. :try_end_11a} :catchall_1c8

    .line 1377
    monitor-exit p0

    return-void

    .line 1321
    :cond_11c
    :try_start_11c
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "Sending partially failed because of invalid destination addresses"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 1323
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 1328
    new-instance v0, Lcom/sun/mail/smtp/SMTPSendFailedException;

    const-string v11, "."

    iget v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    iget-object v13, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iget-object v14, v7, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    iget-object v15, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    move-object v10, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-direct/range {v10 .. v17}, Lcom/sun/mail/smtp/SMTPSendFailedException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v0
    :try_end_14a
    .catch Ljavax/mail/MessagingException; {:try_start_11c .. :try_end_14a} :catch_172
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_14a} :catch_14c
    .catchall {:try_start_11c .. :try_end_14a} :catchall_14a

    :catchall_14a
    move-exception v0

    goto :goto_1a0

    :catch_14c
    move-exception v0

    .line 1354
    :try_start_14d
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "IOException while sending, closing"

    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_156
    .catchall {:try_start_14d .. :try_end_156} :catchall_14a

    .line 1358
    :try_start_156
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_159
    .catch Ljavax/mail/MessagingException; {:try_start_156 .. :try_end_159} :catch_159
    .catchall {:try_start_156 .. :try_end_159} :catchall_14a

    .line 1360
    :catch_159
    :try_start_159
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->addressesFailed()V

    const/4 v2, 0x2

    .line 1361
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 1365
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "IOException while sending message"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_172
    move-exception v0

    .line 1337
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "MessagingException while sending"

    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1339
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getNextException()Ljava/lang/Exception;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_18e

    .line 1342
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "nested IOException, closing"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_18b
    .catchall {:try_start_159 .. :try_end_18b} :catchall_14a

    .line 1344
    :try_start_18b
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_18e
    .catch Ljavax/mail/MessagingException; {:try_start_18b .. :try_end_18e} :catch_18e
    .catchall {:try_start_18b .. :try_end_18e} :catchall_14a

    .line 1347
    :catch_18e
    :cond_18e
    :try_start_18e
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->addressesFailed()V

    const/4 v2, 0x2

    .line 1348
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 1352
    throw v0
    :try_end_1a0
    .catchall {:try_start_18e .. :try_end_1a0} :catchall_14a

    .line 1369
    :goto_1a0
    :try_start_1a0
    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1370
    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    .line 1371
    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 1372
    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    .line 1373
    iput-boolean v8, v7, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    .line 1374
    iput-boolean v8, v7, Lcom/sun/mail/smtp/SMTPTransport;->notificationDone:Z

    .line 1375
    throw v0

    .line 1272
    :cond_1b1
    new-instance v0, Ljavax/mail/SendFailedException;

    const-string v1, "No recipient addresses"

    invoke-direct {v0, v1}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1262
    :cond_1b9
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "Can only send RFC822 msgs"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1263
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "SMTP can only send RFC822 messages"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1c8
    .catchall {:try_start_1a0 .. :try_end_1c8} :catchall_1c8

    :catchall_1c8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAuthorizationID(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 359
    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->authorizationID:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 360
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLocalHost(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 317
    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 318
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNTLMDomain(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 505
    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->ntlmDomain:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 506
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNoopStrict(Z)V
    .registers 2

    monitor-enter p0

    .line 637
    :try_start_1
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->noopStrict:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 638
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setReportSuccess(Z)V
    .registers 2

    monitor-enter p0

    .line 534
    :try_start_1
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 535
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRequireStartTLS(Z)V
    .registers 2

    monitor-enter p0

    .line 579
    :try_start_1
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->requireStartTLS:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 580
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSASLEnabled(Z)V
    .registers 2

    monitor-enter p0

    .line 381
    :try_start_1
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->enableSASL:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 382
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSASLMechanisms([Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    if-eqz p1, :cond_9

    .line 477
    :try_start_3
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 478
    :cond_9
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslMechanisms:[Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 479
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSASLRealm(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 409
    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 410
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStartTLS(Z)V
    .registers 2

    monitor-enter p0

    .line 557
    :try_start_1
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 558
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUseCanonicalHostName(Z)V
    .registers 2

    monitor-enter p0

    .line 432
    :try_start_1
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->useCanonicalHostName:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 433
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUseRset(Z)V
    .registers 2

    monitor-enter p0

    .line 613
    :try_start_1
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 614
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized simpleCommand(Ljava/lang/String;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2374
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 2375
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return p1

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected simpleCommand([B)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2389
    invoke-direct {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand([B)V

    .line 2390
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result p1

    return p1
.end method

.method protected startTLS()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "mail."

    const-string v1, "STARTTLS"

    const/16 v2, 0xdc

    .line 2147
    invoke-virtual {p0, v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    .line 2150
    :try_start_9
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->host:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    .line 2151
    invoke-virtual {v3}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2150
    invoke-static {v1, v2, v3, v0}, Lcom/sun/mail/util/SocketFetcher;->startTLS(Ljava/net/Socket;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 2152
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->initStreams()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception v0

    .line 2154
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    .line 2155
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Could not convert socket to TLS"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected supportsAuthentication(Ljava/lang/String;)Z
    .registers 6

    .line 2569
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string v2, "AUTH"

    .line 2571
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_11

    return v1

    .line 2574
    :cond_11
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 2575
    :cond_16
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_28

    .line 2576
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 2577
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    return v3

    :cond_28
    const-string v0, "LOGIN"

    .line 2581
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_40

    const-string p1, "AUTH=LOGIN"

    invoke-virtual {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 2582
    iget-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v0, "use AUTH=LOGIN hack"

    invoke-virtual {p1, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    return v3

    :cond_40
    return v1
.end method

.method public supportsExtension(Ljava/lang/String;)Z
    .registers 4

    .line 2539
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    if-eqz v0, :cond_12

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 2540
    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method
