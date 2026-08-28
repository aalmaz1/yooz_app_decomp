.class public Lcn/baos/watch/sdk/code/mail/MyAuthenticator;
.super Ljavax/mail/Authenticator;
.source "MyAuthenticator.java"


# instance fields
.field password:Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljavax/mail/Authenticator;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcn/baos/watch/sdk/code/mail/MyAuthenticator;->userName:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcn/baos/watch/sdk/code/mail/MyAuthenticator;->password:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljavax/mail/Authenticator;-><init>()V

    .line 14
    iput-object p1, p0, Lcn/baos/watch/sdk/code/mail/MyAuthenticator;->userName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcn/baos/watch/sdk/code/mail/MyAuthenticator;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;
    .registers 4

    .line 19
    new-instance v0, Ljavax/mail/PasswordAuthentication;

    iget-object v1, p0, Lcn/baos/watch/sdk/code/mail/MyAuthenticator;->userName:Ljava/lang/String;

    iget-object v2, p0, Lcn/baos/watch/sdk/code/mail/MyAuthenticator;->password:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
