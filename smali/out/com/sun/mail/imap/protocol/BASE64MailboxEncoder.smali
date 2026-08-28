.class public Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;
.super Ljava/lang/Object;
.source "BASE64MailboxEncoder.java"


# static fields
.field private static final pem_array:[C


# instance fields
.field protected buffer:[B

.field protected bufsize:I

.field protected out:Ljava/io/Writer;

.field protected started:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x40

    new-array v0, v0, [C

    .line 244
    fill-array-data v0, :array_a

    sput-object v0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    return-void

    :array_a
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2cs
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 102
    iput-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    .line 104
    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z

    .line 168
    iput-object p1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 110
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 111
    array-length v1, v0

    .line 113
    new-instance v2, Ljava/io/CharArrayWriter;

    invoke-direct {v2, v1}, Ljava/io/CharArrayWriter;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    :goto_d
    if-ge v4, v1, :cond_3f

    .line 117
    aget-char v6, v0, v4

    const/16 v7, 0x20

    const/4 v8, 0x1

    if-lt v6, v7, :cond_31

    const/16 v7, 0x7e

    if-gt v6, v7, :cond_31

    if-eqz v3, :cond_1f

    .line 123
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->flush()V

    :cond_1f
    const/16 v7, 0x26

    if-ne v6, v7, :cond_2d

    .line 128
    invoke-virtual {v2, v7}, Ljava/io/CharArrayWriter;->write(I)V

    const/16 v5, 0x2d

    .line 129
    invoke-virtual {v2, v5}, Ljava/io/CharArrayWriter;->write(I)V

    move v5, v8

    goto :goto_3c

    .line 131
    :cond_2d
    invoke-virtual {v2, v6}, Ljava/io/CharArrayWriter;->write(I)V

    goto :goto_3c

    :cond_31
    if-nez v3, :cond_39

    .line 141
    new-instance v3, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;

    invoke-direct {v3, v2}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;-><init>(Ljava/io/Writer;)V

    move v5, v8

    .line 145
    :cond_39
    invoke-virtual {v3, v6}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->write(I)V

    :goto_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_3f
    if-eqz v3, :cond_44

    .line 151
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->flush()V

    :cond_44
    if-eqz v5, :cond_4a

    .line 155
    invoke-virtual {v2}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4a
    return-object p0
.end method


# virtual methods
.method protected encode()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    iget v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_24

    .line 215
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v0, v0, v2

    .line 218
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v4, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    ushr-int/lit8 v5, v0, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-char v5, v4, v5

    invoke-virtual {v3, v5}, Ljava/io/Writer;->write(I)V

    .line 219
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    shl-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x30

    add-int/2addr v0, v2

    aget-char v0, v4, v0

    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_9c

    :cond_24
    const/4 v4, 0x2

    if-ne v0, v4, :cond_56

    .line 222
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v5, v0, v2

    .line 223
    aget-byte v0, v0, v3

    .line 225
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v6, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    ushr-int/lit8 v7, v5, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-char v7, v6, v7

    invoke-virtual {v3, v7}, Ljava/io/Writer;->write(I)V

    .line 226
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    shl-int/lit8 v1, v5, 0x4

    and-int/lit8 v1, v1, 0x30

    ushr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    add-int/2addr v1, v5

    aget-char v1, v6, v1

    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(I)V

    .line 227
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    shl-int/2addr v0, v4

    and-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v2

    aget-char v0, v6, v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_9c

    .line 230
    :cond_56
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v5, v0, v2

    .line 231
    aget-byte v3, v0, v3

    .line 232
    aget-byte v0, v0, v4

    .line 233
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    sget-object v7, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->pem_array:[C

    ushr-int/lit8 v8, v5, 0x2

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, v7, v8

    invoke-virtual {v6, v8}, Ljava/io/Writer;->write(I)V

    .line 234
    iget-object v6, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    shl-int/2addr v5, v1

    and-int/lit8 v5, v5, 0x30

    ushr-int/lit8 v8, v3, 0x4

    and-int/lit8 v8, v8, 0xf

    add-int/2addr v5, v8

    aget-char v5, v7, v5

    invoke-virtual {v6, v5}, Ljava/io/Writer;->write(I)V

    .line 235
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    shl-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x3c

    ushr-int/lit8 v4, v0, 0x6

    const/4 v6, 0x3

    and-int/2addr v4, v6

    add-int/2addr v3, v4

    aget-char v3, v7, v3

    invoke-virtual {v5, v3}, Ljava/io/Writer;->write(I)V

    .line 236
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v7, v0

    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(I)V

    .line 239
    iget v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    if-ne v0, v1, :cond_9c

    .line 240
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    aget-byte v1, v0, v6

    aput-byte v1, v0, v2

    :cond_9c
    :goto_9c
    return-void
.end method

.method public flush()V
    .registers 4

    .line 196
    :try_start_0
    iget v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    const/4 v1, 0x0

    if-lez v0, :cond_a

    .line 197
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode()V

    .line 198
    iput v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    .line 202
    :cond_a
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z

    if-eqz v0, :cond_17

    .line 203
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    .line 204
    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_17

    :catch_17
    :cond_17
    return-void
.end method

.method public write(I)V
    .registers 6

    .line 174
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->started:Z

    .line 176
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->out:Ljava/io/Writer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 180
    :cond_e
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->buffer:[B

    iget v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 181
    iput v1, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    const/4 p1, 0x3

    if-lt v1, p1, :cond_2d

    .line 184
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->encode()V

    .line 185
    iget v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/sun/mail/imap/protocol/BASE64MailboxEncoder;->bufsize:I
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2d} :catch_2d

    :catch_2d
    :cond_2d
    return-void
.end method
