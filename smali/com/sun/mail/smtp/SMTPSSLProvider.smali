.class public Lcom/sun/mail/smtp/SMTPSSLProvider;
.super Ljavax/mail/Provider;
.source "SMTPSSLProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 51
    sget-object v1, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    const-string v2, "smtps"

    const-class v0, Lcom/sun/mail/smtp/SMTPSSLTransport;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Oracle"

    const/4 v5, 0x0

    move-object v0, p0

    .line 51
    invoke-direct/range {v0 .. v5}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
