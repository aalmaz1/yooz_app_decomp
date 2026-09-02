.class public Lcom/sun/mail/util/LogOutputStream;
.super Ljava/io/OutputStream;
.source "LogOutputStream.java"


# instance fields
.field private buf:[B

.field private lastb:I

.field protected level:Ljava/util/logging/Level;

.field protected logger:Lcom/sun/mail/util/MailLogger;

.field private pos:I


# direct methods
.method public constructor <init>(Lcom/sun/mail/util/MailLogger;)V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/sun/mail/util/LogOutputStream;->lastb:I

    const/16 v0, 0x50

    new-array v0, v0, [B

    .line 55
    iput-object v0, p0, Lcom/sun/mail/util/LogOutputStream;->buf:[B

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    .line 64
    iput-object p1, p0, Lcom/sun/mail/util/LogOutputStream;->logger:Lcom/sun/mail/util/MailLogger;

    .line 65
    sget-object p1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    iput-object p1, p0, Lcom/sun/mail/util/LogOutputStream;->level:Ljava/util/logging/Level;

    return-void
.end method

.method private expandCapacity(I)V
    .registers 6

    .line 146
    :goto_0
    iget v0, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    add-int v1, v0, p1

    iget-object v2, p0, Lcom/sun/mail/util/LogOutputStream;->buf:[B

    array-length v3, v2

    if-le v1, v3, :cond_15

    .line 147
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    const/4 v3, 0x0

    .line 148
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iput-object v1, p0, Lcom/sun/mail/util/LogOutputStream;->buf:[B

    goto :goto_0

    :cond_15
    return-void
.end method

.method private logBuf()V
    .registers 5

    .line 136
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/mail/util/LogOutputStream;->buf:[B

    iget v2, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    .line 137
    iput v3, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    .line 138
    invoke-virtual {p0, v0}, Lcom/sun/mail/util/LogOutputStream;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .registers 4

    .line 129
    iget-object v0, p0, Lcom/sun/mail/util/LogOutputStream;->logger:Lcom/sun/mail/util/MailLogger;

    iget-object v1, p0, Lcom/sun/mail/util/LogOutputStream;->level:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/sun/mail/util/LogOutputStream;->logger:Lcom/sun/mail/util/MailLogger;

    iget-object v1, p0, Lcom/sun/mail/util/LogOutputStream;->level:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/16 v0, 0xd

    if-ne p1, v0, :cond_13

    .line 74
    invoke-direct {p0}, Lcom/sun/mail/util/LogOutputStream;->logBuf()V

    goto :goto_2e

    :cond_13
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1f

    .line 76
    iget v1, p0, Lcom/sun/mail/util/LogOutputStream;->lastb:I

    if-eq v1, v0, :cond_2e

    .line 77
    invoke-direct {p0}, Lcom/sun/mail/util/LogOutputStream;->logBuf()V

    goto :goto_2e

    :cond_1f
    const/4 v0, 0x1

    .line 79
    invoke-direct {p0, v0}, Lcom/sun/mail/util/LogOutputStream;->expandCapacity(I)V

    .line 80
    iget-object v0, p0, Lcom/sun/mail/util/LogOutputStream;->buf:[B

    iget v1, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 82
    :cond_2e
    :goto_2e
    iput p1, p0, Lcom/sun/mail/util/LogOutputStream;->lastb:I

    return-void
.end method

.method public write([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 87
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/util/LogOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/sun/mail/util/LogOutputStream;->logger:Lcom/sun/mail/util/MailLogger;

    iget-object v1, p0, Lcom/sun/mail/util/LogOutputStream;->level:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    add-int/2addr p3, p2

    move v0, p2

    :goto_d
    if-ge p2, p3, :cond_50

    .line 98
    aget-byte v1, p1, p2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2c

    sub-int v1, p2, v0

    .line 99
    invoke-direct {p0, v1}, Lcom/sun/mail/util/LogOutputStream;->expandCapacity(I)V

    .line 100
    iget-object v2, p0, Lcom/sun/mail/util/LogOutputStream;->buf:[B

    iget v3, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget v0, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    .line 102
    invoke-direct {p0}, Lcom/sun/mail/util/LogOutputStream;->logBuf()V

    :cond_29
    :goto_29
    add-int/lit8 v0, p2, 0x1

    goto :goto_49

    :cond_2c
    const/16 v3, 0xa

    if-ne v1, v3, :cond_49

    .line 105
    iget v1, p0, Lcom/sun/mail/util/LogOutputStream;->lastb:I

    if-eq v1, v2, :cond_29

    sub-int v1, p2, v0

    .line 106
    invoke-direct {p0, v1}, Lcom/sun/mail/util/LogOutputStream;->expandCapacity(I)V

    .line 107
    iget-object v2, p0, Lcom/sun/mail/util/LogOutputStream;->buf:[B

    iget v3, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    iget v0, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    .line 109
    invoke-direct {p0}, Lcom/sun/mail/util/LogOutputStream;->logBuf()V

    goto :goto_29

    .line 113
    :cond_49
    :goto_49
    aget-byte v1, p1, p2

    iput v1, p0, Lcom/sun/mail/util/LogOutputStream;->lastb:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    :cond_50
    sub-int/2addr p3, v0

    if-lez p3, :cond_62

    .line 116
    invoke-direct {p0, p3}, Lcom/sun/mail/util/LogOutputStream;->expandCapacity(I)V

    .line 117
    iget-object p2, p0, Lcom/sun/mail/util/LogOutputStream;->buf:[B

    iget v1, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    invoke-static {p1, v0, p2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iget p1, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/sun/mail/util/LogOutputStream;->pos:I

    :cond_62
    return-void
.end method
