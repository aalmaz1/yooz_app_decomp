.class public Lcn/baos/watch/sdk/old/mail/MailInfo;
.super Ljava/lang/Object;
.source "MailInfo.java"


# instance fields
.field private attachFileNames:[Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private fromAddress:Ljava/lang/String;

.field private mailServerHost:Ljava/lang/String;

.field private mailServerPort:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private subject:Ljava/lang/String;

.field private toAddress:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private validate:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcn/baos/watch/sdk/old/mail/MailInfo;->validate:Z

    return-void
.end method


# virtual methods
.method public getAttachFileNames()[Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcn/baos/watch/sdk/old/mail/MailInfo;->attachFileNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lcn/baos/watch/sdk/old/mail/MailInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getFromAddress()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcn/baos/watch/sdk/old/mail/MailInfo;->fromAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMailServerHost()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcn/baos/watch/sdk/old/mail/MailInfo;->mailServerHost:Ljava/lang/String;

    return-object v0
.end method

.method public getMailServerPort()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcn/baos/watch/sdk/old/mail/MailInfo;->mailServerPort:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcn/baos/watch/sdk/old/mail/MailInfo;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/Properties;
    .registers 5

    .line 22
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "mail.smtp.host"

    .line 23
    iget-object v2, p0, Lcn/baos/watch/sdk/old/mail/MailInfo;->mailServerHost:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mail.smtp.port"

    .line 24
    iget-object v2, p0, Lcn/baos/watch/sdk/old/mail/MailInfo;->mailServerPort:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-boolean v1, p0, Lcn/baos/watch/sdk/old/mail/MailInfo;->validate:Z

    const-string v2, "false"

    if-eqz v1, :cond_1c

    const-string v1, "true"

    goto :goto_1d

    :cond_1c
    move-object v1, v2

    :goto_1d
    const-string v3, "mail.smtp.auth"

    invoke-virtual {v0, v3, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mail.smtp.socketFactory.class"

    const-string v3, "javax.net.ssl.SSLSocketFactory"

    .line 26
    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mail.smtp.socketFactory.fallback"

    .line 27
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcn/baos/watch/sdk/old/mail/MailInfo;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcn/baos/watch/sdk/old/mail/MailInfo;->toAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcn/baos/watch/sdk/old/mail/MailInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public isValidate()Z
    .registers 2

    .line 48
    iget-boolean v0, p0, Lcn/baos/watch/sdk/old/mail/MailInfo;->validate:Z

    return v0
.end method

.method public setAttachFileNames([Ljava/lang/String;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcn/baos/watch/sdk/old/mail/MailInfo;->attachFileNames:[Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcn/baos/watch/sdk/old/mail/MailInfo;->content:Ljava/lang/String;

    return-void
.end method

.method public setFromAddress(Ljava/lang/String;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcn/baos/watch/sdk/old/mail/MailInfo;->fromAddress:Ljava/lang/String;

    return-void
.end method

.method public setMailServerHost(Ljava/lang/String;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcn/baos/watch/sdk/old/mail/MailInfo;->mailServerHost:Ljava/lang/String;

    return-void
.end method

.method public setMailServerPort(Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcn/baos/watch/sdk/old/mail/MailInfo;->mailServerPort:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcn/baos/watch/sdk/old/mail/MailInfo;->password:Ljava/lang/String;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcn/baos/watch/sdk/old/mail/MailInfo;->subject:Ljava/lang/String;

    return-void
.end method

.method public setToAddress(Ljava/lang/String;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcn/baos/watch/sdk/old/mail/MailInfo;->toAddress:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcn/baos/watch/sdk/old/mail/MailInfo;->userName:Ljava/lang/String;

    return-void
.end method

.method public setValidate(Z)V
    .registers 2

    .line 52
    iput-boolean p1, p0, Lcn/baos/watch/sdk/old/mail/MailInfo;->validate:Z

    return-void
.end method
