.class public Ljavax/mail/MessageRemovedException;
.super Ljavax/mail/MessagingException;
.source "MessageRemovedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1b14623c881e84f2L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljavax/mail/MessagingException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 84
    invoke-direct {p0, p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
