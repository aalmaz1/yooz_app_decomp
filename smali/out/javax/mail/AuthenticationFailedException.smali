.class public Ljavax/mail/AuthenticationFailedException;
.super Ljavax/mail/MessagingException;
.source "AuthenticationFailedException.java"


# static fields
.field private static final serialVersionUID:J = 0x6d438d6b238969fL


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljavax/mail/MessagingException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 82
    invoke-direct {p0, p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
