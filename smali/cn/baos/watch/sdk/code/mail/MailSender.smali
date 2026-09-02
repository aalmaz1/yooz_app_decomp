.class public Lcn/baos/watch/sdk/code/mail/MailSender;
.super Ljava/lang/Object;
.source "MailSender.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createAttachmentMail(Lcn/baos/watch/sdk/code/mail/MailInfo;Ljava/io/File;)Ljavax/mail/Message;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 140
    invoke-virtual {p1}, Lcn/baos/watch/sdk/code/mail/MailInfo;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 141
    new-instance v1, Lcn/baos/watch/sdk/code/mail/MailSender$1;

    invoke-direct {v1, p0, p1}, Lcn/baos/watch/sdk/code/mail/MailSender$1;-><init>(Lcn/baos/watch/sdk/code/mail/MailSender;Lcn/baos/watch/sdk/code/mail/MailInfo;)V

    invoke-static {v0, v1}, Ljavax/mail/Session;->getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v0

    .line 148
    new-instance v1, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v1, v0}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 151
    new-instance v0, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/code/mail/MailInfo;->getFromAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v1, v0}, Ljavax/mail/internet/MimeMessage;->setFrom(Ljavax/mail/Address;)V

    .line 155
    new-instance v0, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/code/mail/MailInfo;->getToAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 157
    sget-object v2, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v1, v2, v0}, Ljavax/mail/internet/MimeMessage;->setRecipient(Ljavax/mail/Message$RecipientType;Ljavax/mail/Address;)V

    .line 159
    invoke-virtual {p1}, Lcn/baos/watch/sdk/code/mail/MailInfo;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 163
    invoke-virtual {p1}, Lcn/baos/watch/sdk/code/mail/MailInfo;->getContent()Ljava/lang/String;

    move-result-object p1

    const-string v2, "text/html;charset=UTF-8"

    invoke-virtual {v0, p1, v2}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    new-instance p1, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {p1}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 167
    invoke-virtual {p1, v0}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 169
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 171
    new-instance v2, Ljavax/activation/FileDataSource;

    invoke-direct {v2, p2}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V

    .line 172
    new-instance p2, Ljavax/activation/DataHandler;

    invoke-direct {p2, v2}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    .line 173
    invoke-virtual {v0, p2}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 174
    invoke-virtual {p2}, Ljavax/activation/DataHandler;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1, v0}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    const-string p2, "mixed"

    .line 176
    invoke-virtual {p1, p2}, Ljavax/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1, p1}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    .line 178
    invoke-virtual {v1}, Ljavax/mail/internet/MimeMessage;->saveChanges()V

    return-object v1
.end method

.method public static sendHtmlMail(Lcn/baos/watch/sdk/code/mail/MailInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lcn/baos/watch/sdk/code/mail/MailInfo;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcn/baos/watch/sdk/code/mail/MailInfo;->isValidate()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 89
    new-instance v1, Lcn/baos/watch/sdk/code/mail/MyAuthenticator;

    invoke-virtual {p0}, Lcn/baos/watch/sdk/code/mail/MailInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcn/baos/watch/sdk/code/mail/MailInfo;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/baos/watch/sdk/code/mail/MyAuthenticator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 92
    :goto_19
    invoke-static {v0, v1}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v0

    .line 94
    new-instance v1, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v1, v0}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 96
    new-instance v0, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p0}, Lcn/baos/watch/sdk/code/mail/MailInfo;->getFromAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1, v0}, Ljavax/mail/Message;->setFrom(Ljavax/mail/Address;)V

    .line 100
    new-instance v0, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p0}, Lcn/baos/watch/sdk/code/mail/MailInfo;->getToAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 102
    sget-object v2, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v1, v2, v0}, Ljavax/mail/Message;->setRecipient(Ljavax/mail/Message$RecipientType;Ljavax/mail/Address;)V

    .line 104
    invoke-virtual {p0}, Lcn/baos/watch/sdk/code/mail/MailInfo;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/mail/Message;->setSubject(Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljavax/mail/Message;->setSentDate(Ljava/util/Date;)V

    .line 108
    new-instance v0, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 110
    new-instance v2, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v2}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 112
    invoke-virtual {p0}, Lcn/baos/watch/sdk/code/mail/MailInfo;->getContent()Ljava/lang/String;

    move-result-object p0

    const-string v3, "text/html; charset=utf-8"

    invoke-virtual {v2, p0, v3}, Ljavax/mail/BodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, v2}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 115
    invoke-virtual {v1, v0}, Ljavax/mail/Message;->setContent(Ljavax/mail/Multipart;)V

    .line 117
    invoke-static {v1}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V

    return-void
.end method


# virtual methods
.method public sendFileMail(Lcn/baos/watch/sdk/code/mail/MailInfo;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Lcn/baos/watch/sdk/code/mail/MailSender;->createAttachmentMail(Lcn/baos/watch/sdk/code/mail/MailInfo;Ljava/io/File;)Ljavax/mail/Message;

    move-result-object p1

    .line 129
    invoke-static {p1}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V

    return-void
.end method

.method public sendTextMail(Lcn/baos/watch/sdk/code/mail/MailInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Lcn/baos/watch/sdk/code/mail/MailInfo;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lcn/baos/watch/sdk/code/mail/MailInfo;->isValidate()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 41
    new-instance v1, Lcn/baos/watch/sdk/code/mail/MyAuthenticator;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/code/mail/MailInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcn/baos/watch/sdk/code/mail/MailInfo;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/baos/watch/sdk/code/mail/MyAuthenticator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 44
    :goto_19
    invoke-static {v0, v1}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v0

    .line 54
    new-instance v1, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v1, v0}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 56
    new-instance v0, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/code/mail/MailInfo;->getFromAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1, v0}, Ljavax/mail/Message;->setFrom(Ljavax/mail/Address;)V

    .line 60
    new-instance v0, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/code/mail/MailInfo;->getToAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 61
    sget-object v2, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v1, v2, v0}, Ljavax/mail/Message;->setRecipient(Ljavax/mail/Message$RecipientType;Ljavax/mail/Address;)V

    .line 63
    invoke-virtual {p1}, Lcn/baos/watch/sdk/code/mail/MailInfo;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/mail/Message;->setSubject(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljavax/mail/Message;->setSentDate(Ljava/util/Date;)V

    .line 68
    invoke-virtual {p1}, Lcn/baos/watch/sdk/code/mail/MailInfo;->getContent()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {v1, p1}, Ljavax/mail/Message;->setText(Ljava/lang/String;)V

    .line 72
    :try_start_52
    invoke-static {v1}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5a
    return-void
.end method
