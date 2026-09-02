.class Lcom/sun/mail/imap/LengthCounter;
.super Ljava/io/OutputStream;
.source "IMAPFolder.java"


# instance fields
.field private buf:[B

.field private maxsize:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 4118
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 4114
    iput v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 4119
    iput-object v0, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    .line 4120
    iput p1, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .registers 2

    .line 4175
    iget-object v0, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 4171
    iget v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    return v0
.end method

.method public write(I)V
    .registers 7

    .line 4125
    iget v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    add-int/lit8 v1, v0, 0x1

    .line 4126
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    if-eqz v2, :cond_31

    .line 4127
    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-le v1, v3, :cond_12

    if-ltz v3, :cond_12

    const/4 p1, 0x0

    .line 4128
    iput-object p1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    goto :goto_31

    .line 4129
    :cond_12
    array-length v3, v2

    if-le v1, v3, :cond_2e

    .line 4130
    array-length v0, v2

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    .line 4131
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4132
    iput-object v0, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    .line 4133
    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    goto :goto_31

    :cond_2e
    int-to-byte p1, p1

    .line 4135
    aput-byte p1, v2, v0

    .line 4138
    :cond_31
    :goto_31
    iput v1, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

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

    .line 4167
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/imap/LengthCounter;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 9

    if-ltz p2, :cond_45

    .line 4143
    array-length v0, p1

    if-gt p2, v0, :cond_45

    if-ltz p3, :cond_45

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_45

    if-ltz v0, :cond_45

    if-nez p3, :cond_11

    return-void

    .line 4149
    :cond_11
    iget v0, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    add-int v1, v0, p3

    .line 4150
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    if-eqz v2, :cond_42

    .line 4151
    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->maxsize:I

    if-le v1, v3, :cond_23

    if-ltz v3, :cond_23

    const/4 p1, 0x0

    .line 4152
    iput-object p1, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    goto :goto_42

    .line 4153
    :cond_23
    array-length v3, v2

    if-le v1, v3, :cond_3f

    .line 4154
    array-length v0, v2

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    .line 4155
    iget-object v2, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    iget v3, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4156
    iput-object v0, p0, Lcom/sun/mail/imap/LengthCounter;->buf:[B

    .line 4157
    iget v2, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_42

    .line 4159
    :cond_3f
    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4162
    :cond_42
    :goto_42
    iput v1, p0, Lcom/sun/mail/imap/LengthCounter;->size:I

    return-void

    .line 4145
    :cond_45
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
