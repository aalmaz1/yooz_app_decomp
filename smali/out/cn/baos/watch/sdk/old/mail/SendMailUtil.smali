.class public Lcn/baos/watch/sdk/old/mail/SendMailUtil;
.super Ljava/lang/Object;
.source "SendMailUtil.java"


# static fields
.field private static final FROM_MAIL_ADDR:Ljava/lang/String; = "gary19890215@163.com"

.field private static final FROM_MAIL_AUTH_CODE:Ljava/lang/String; = "SGJHQBAAKECZAZGJ"

.field private static final FROM_MAIL_PORT:Ljava/lang/String; = "994"

.field private static final FROM_MAIL_SERVER:Ljava/lang/String; = "smtp.163.com"

.field private static toAddrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/baos/watch/sdk/old/mail/SendMailUtil;->toAddrList:Ljava/util/List;

    const-string v1, "changjingpei@baos.cn"

    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcn/baos/watch/sdk/old/mail/SendMailUtil;->toAddrList:Ljava/util/List;

    const-string v1, "zhoulihong@baos.cn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static creatMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/baos/watch/sdk/old/mail/MailInfo;
    .registers 6

    .line 78
    new-instance v0, Lcn/baos/watch/sdk/old/mail/MailInfo;

    invoke-direct {v0}, Lcn/baos/watch/sdk/old/mail/MailInfo;-><init>()V

    const-string v1, "smtp.163.com"

    .line 79
    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/old/mail/MailInfo;->setMailServerHost(Ljava/lang/String;)V

    const-string v1, "994"

    .line 80
    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/old/mail/MailInfo;->setMailServerPort(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 81
    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/old/mail/MailInfo;->setValidate(Z)V

    const-string v1, "gary19890215@163.com"

    .line 82
    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/old/mail/MailInfo;->setUserName(Ljava/lang/String;)V

    const-string v2, "SGJHQBAAKECZAZGJ"

    .line 83
    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/old/mail/MailInfo;->setPassword(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/old/mail/MailInfo;->setFromAddress(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/old/mail/MailInfo;->setToAddress(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/old/mail/MailInfo;->setSubject(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, p2}, Lcn/baos/watch/sdk/old/mail/MailInfo;->setContent(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$send$0(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcn/baos/watch/sdk/old/mail/SendMailCallback;)V
    .registers 7

    .line 39
    sget-object v0, Lcn/baos/watch/sdk/old/mail/SendMailUtil;->toAddrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 42
    :try_start_12
    invoke-static {v1, p0, p1}, Lcn/baos/watch/sdk/old/mail/SendMailUtil;->creatMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/baos/watch/sdk/old/mail/MailInfo;

    move-result-object v1

    .line 43
    new-instance v2, Lcn/baos/watch/sdk/old/mail/MailSender;

    invoke-direct {v2}, Lcn/baos/watch/sdk/old/mail/MailSender;-><init>()V

    .line 44
    invoke-virtual {v2, v1, p2}, Lcn/baos/watch/sdk/old/mail/MailSender;->sendFileMail(Lcn/baos/watch/sdk/old/mail/MailInfo;Ljava/io/File;)V

    if-eqz p3, :cond_6

    .line 46
    invoke-interface {p3}, Lcn/baos/watch/sdk/old/mail/SendMailCallback;->onSuccess()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_24

    goto :goto_6

    :catch_24
    move-exception p0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p3, :cond_2d

    .line 50
    invoke-interface {p3, p0}, Lcn/baos/watch/sdk/old/mail/SendMailCallback;->onFail(Ljava/lang/Exception;)V

    :cond_2d
    return-void
.end method

.method static synthetic lambda$send$1(Ljava/lang/String;Ljava/lang/String;Lcn/baos/watch/sdk/old/mail/SendMailCallback;)V
    .registers 6

    .line 59
    sget-object v0, Lcn/baos/watch/sdk/old/mail/SendMailUtil;->toAddrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    :try_start_12
    invoke-static {v1, p0, p1}, Lcn/baos/watch/sdk/old/mail/SendMailUtil;->creatMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/baos/watch/sdk/old/mail/MailInfo;

    move-result-object v1

    .line 62
    new-instance v2, Lcn/baos/watch/sdk/old/mail/MailSender;

    invoke-direct {v2}, Lcn/baos/watch/sdk/old/mail/MailSender;-><init>()V

    .line 63
    invoke-virtual {v2, v1}, Lcn/baos/watch/sdk/old/mail/MailSender;->sendTextMail(Lcn/baos/watch/sdk/old/mail/MailInfo;)V

    if-eqz p2, :cond_6

    .line 65
    invoke-interface {p2}, Lcn/baos/watch/sdk/old/mail/SendMailCallback;->onSuccess()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_24

    goto :goto_6

    :catch_24
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p2, :cond_2d

    .line 69
    invoke-interface {p2, p0}, Lcn/baos/watch/sdk/old/mail/SendMailCallback;->onFail(Ljava/lang/Exception;)V

    :cond_2d
    return-void
.end method

.method public static send(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcn/baos/watch/sdk/old/mail/SendMailCallback;)V
    .registers 6

    .line 38
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/baos/watch/sdk/old/mail/SendMailUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p0, p3}, Lcn/baos/watch/sdk/old/mail/SendMailUtil$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcn/baos/watch/sdk/old/mail/SendMailCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static send(Ljava/lang/String;Ljava/lang/String;Lcn/baos/watch/sdk/old/mail/SendMailCallback;)V
    .registers 5

    .line 58
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/baos/watch/sdk/old/mail/SendMailUtil$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcn/baos/watch/sdk/old/mail/SendMailUtil$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcn/baos/watch/sdk/old/mail/SendMailCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
