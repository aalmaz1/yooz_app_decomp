.class public Lcom/sun/mail/imap/IMAPSSLProvider;
.super Ljavax/mail/Provider;
.source "IMAPSSLProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 50
    sget-object v1, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    const-string v2, "imaps"

    const-class v0, Lcom/sun/mail/imap/IMAPSSLStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Oracle"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
