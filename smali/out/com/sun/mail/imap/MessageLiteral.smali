.class Lcom/sun/mail/imap/MessageLiteral;
.super Ljava/lang/Object;
.source "IMAPFolder.java"

# interfaces
.implements Lcom/sun/mail/iap/Literal;


# instance fields
.field private buf:[B

.field private msg:Ljavax/mail/Message;

.field private msgSize:I


# direct methods
.method public constructor <init>(Ljavax/mail/Message;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 4070
    iput v0, p0, Lcom/sun/mail/imap/MessageLiteral;->msgSize:I

    .line 4075
    iput-object p1, p0, Lcom/sun/mail/imap/MessageLiteral;->msg:Ljavax/mail/Message;

    .line 4077
    new-instance v0, Lcom/sun/mail/imap/LengthCounter;

    invoke-direct {v0, p2}, Lcom/sun/mail/imap/LengthCounter;-><init>(I)V

    .line 4078
    new-instance p2, Lcom/sun/mail/util/CRLFOutputStream;

    invoke-direct {p2, v0}, Lcom/sun/mail/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4079
    invoke-virtual {p1, p2}, Ljavax/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 4080
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 4081
    invoke-virtual {v0}, Lcom/sun/mail/imap/LengthCounter;->getSize()I

    move-result p1

    iput p1, p0, Lcom/sun/mail/imap/MessageLiteral;->msgSize:I

    .line 4082
    invoke-virtual {v0}, Lcom/sun/mail/imap/LengthCounter;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/imap/MessageLiteral;->buf:[B

    return-void
.end method


# virtual methods
.method public size()I
    .registers 2

    .line 4087
    iget v0, p0, Lcom/sun/mail/imap/MessageLiteral;->msgSize:I

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4094
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/MessageLiteral;->buf:[B

    if-eqz v0, :cond_b

    .line 4095
    iget v1, p0, Lcom/sun/mail/imap/MessageLiteral;->msgSize:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_15

    .line 4097
    :cond_b
    new-instance v0, Lcom/sun/mail/util/CRLFOutputStream;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4098
    iget-object p1, p0, Lcom/sun/mail/imap/MessageLiteral;->msg:Ljavax/mail/Message;

    invoke-virtual {p1, v0}, Ljavax/mail/Message;->writeTo(Ljava/io/OutputStream;)V
    :try_end_15
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception p1

    .line 4102
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MessagingException while appending message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
