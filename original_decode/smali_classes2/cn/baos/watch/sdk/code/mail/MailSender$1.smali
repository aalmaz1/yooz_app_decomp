.class Lcn/baos/watch/sdk/code/mail/MailSender$1;
.super Ljavax/mail/Authenticator;
.source "MailSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/code/mail/MailSender;->createAttachmentMail(Lcn/baos/watch/sdk/code/mail/MailInfo;Ljava/io/File;)Ljavax/mail/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/code/mail/MailSender;

.field final synthetic val$info:Lcn/baos/watch/sdk/code/mail/MailInfo;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/code/mail/MailSender;Lcn/baos/watch/sdk/code/mail/MailInfo;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcn/baos/watch/sdk/code/mail/MailSender$1;->this$0:Lcn/baos/watch/sdk/code/mail/MailSender;

    iput-object p2, p0, Lcn/baos/watch/sdk/code/mail/MailSender$1;->val$info:Lcn/baos/watch/sdk/code/mail/MailInfo;

    invoke-direct {p0}, Ljavax/mail/Authenticator;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;
    .locals 3

    .line 144
    new-instance v0, Ljavax/mail/PasswordAuthentication;

    iget-object v1, p0, Lcn/baos/watch/sdk/code/mail/MailSender$1;->val$info:Lcn/baos/watch/sdk/code/mail/MailInfo;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/code/mail/MailInfo;->getUserName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/baos/watch/sdk/code/mail/MailSender$1;->val$info:Lcn/baos/watch/sdk/code/mail/MailInfo;

    invoke-virtual {v2}, Lcn/baos/watch/sdk/code/mail/MailInfo;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
