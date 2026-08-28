.class public Lcom/sun/mail/smtp/SMTPOutputStream;
.super Lcom/sun/mail/util/CRLFOutputStream;
.source "SMTPOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/sun/mail/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public ensureAtBOL()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->atBOL:Z

    if-nez v0, :cond_7

    .line 117
    invoke-super {p0}, Lcom/sun/mail/util/CRLFOutputStream;->writeln()V

    :cond_7
    return-void
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget v0, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->lastb:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_11

    iget v0, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->lastb:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_11

    iget v0, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->lastb:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    :cond_11
    const/16 v0, 0x2e

    if-ne p1, v0, :cond_1a

    .line 65
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 68
    :cond_1a
    invoke-super {p0, p1}, Lcom/sun/mail/util/CRLFOutputStream;->write(I)V

    return-void
.end method

.method public write([BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget v0, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->lastb:I

    const/4 v1, -0x1

    const/16 v2, 0xa

    if-ne v0, v1, :cond_9

    move v0, v2

    goto :goto_b

    :cond_9
    iget v0, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->lastb:I

    :goto_b
    add-int/2addr p3, p2

    move v1, v0

    move v0, p2

    :goto_e
    if-ge p2, p3, :cond_2c

    if-eq v1, v2, :cond_16

    const/16 v3, 0xd

    if-ne v1, v3, :cond_27

    .line 81
    :cond_16
    aget-byte v1, p1, p2

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_27

    sub-int v1, p2, v0

    .line 82
    invoke-super {p0, p1, v0, v1}, Lcom/sun/mail/util/CRLFOutputStream;->write([BII)V

    .line 83
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    move v0, p2

    .line 86
    :cond_27
    aget-byte v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_e

    :cond_2c
    sub-int/2addr p3, v0

    if-lez p3, :cond_32

    .line 89
    invoke-super {p0, p1, v0, p3}, Lcom/sun/mail/util/CRLFOutputStream;->write([BII)V

    :cond_32
    return-void
.end method
