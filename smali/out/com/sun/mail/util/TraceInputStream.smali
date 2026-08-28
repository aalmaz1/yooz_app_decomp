.class public Lcom/sun/mail/util/TraceInputStream;
.super Ljava/io/FilterInputStream;
.source "TraceInputStream.java"


# instance fields
.field private quote:Z

.field private trace:Z

.field private traceOut:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/sun/mail/util/MailLogger;)V
    .registers 3

    .line 68
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/sun/mail/util/TraceInputStream;->trace:Z

    .line 57
    iput-boolean p1, p0, Lcom/sun/mail/util/TraceInputStream;->quote:Z

    .line 69
    sget-object p1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p2, p1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/mail/util/TraceInputStream;->trace:Z

    .line 70
    new-instance p1, Lcom/sun/mail/util/LogOutputStream;

    invoke-direct {p1, p2}, Lcom/sun/mail/util/LogOutputStream;-><init>(Lcom/sun/mail/util/MailLogger;)V

    iput-object p1, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3

    .line 81
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/sun/mail/util/TraceInputStream;->trace:Z

    .line 57
    iput-boolean p1, p0, Lcom/sun/mail/util/TraceInputStream;->quote:Z

    .line 82
    iput-object p2, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    return-void
.end method

.method private final writeByte(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x7f

    if-le p1, v0, :cond_16

    .line 143
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 144
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 p1, p1, 0x7f

    :cond_16
    const/16 v0, 0xd

    const/16 v1, 0x5c

    if-ne p1, v0, :cond_29

    .line 148
    iget-object p1, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 149
    iget-object p1, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v0, 0x72

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_68

    :cond_29
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3f

    .line 151
    iget-object p1, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 152
    iget-object p1, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v1, 0x6e

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 153
    iget-object p1, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_68

    :cond_3f
    const/16 v0, 0x9

    if-ne p1, v0, :cond_50

    .line 155
    iget-object p1, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 156
    iget-object p1, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v0, 0x74

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_68

    :cond_50
    const/16 v0, 0x20

    if-ge p1, v0, :cond_63

    .line 158
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 159
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    add-int/lit8 p1, p1, 0x40

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_68

    .line 161
    :cond_63
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    :goto_68
    return-void
.end method


# virtual methods
.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 109
    iget-boolean v1, p0, Lcom/sun/mail/util/TraceInputStream;->trace:Z

    if-eqz v1, :cond_1a

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 110
    iget-boolean v1, p0, Lcom/sun/mail/util/TraceInputStream;->quote:Z

    if-eqz v1, :cond_15

    .line 111
    invoke-direct {p0, v0}, Lcom/sun/mail/util/TraceInputStream;->writeByte(I)V

    goto :goto_1a

    .line 113
    :cond_15
    iget-object v1, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_1a
    :goto_1a
    return v0
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    .line 127
    iget-boolean v0, p0, Lcom/sun/mail/util/TraceInputStream;->trace:Z

    if-eqz v0, :cond_23

    const/4 v0, -0x1

    if-eq p3, v0, :cond_23

    .line 128
    iget-boolean v0, p0, Lcom/sun/mail/util/TraceInputStream;->quote:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    :goto_12
    if-ge v0, p3, :cond_23

    add-int v1, p2, v0

    .line 130
    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lcom/sun/mail/util/TraceInputStream;->writeByte(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 132
    :cond_1e
    iget-object v0, p0, Lcom/sun/mail/util/TraceInputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_23
    return p3
.end method

.method public setQuote(Z)V
    .registers 2

    .line 98
    iput-boolean p1, p0, Lcom/sun/mail/util/TraceInputStream;->quote:Z

    return-void
.end method

.method public setTrace(Z)V
    .registers 2

    .line 90
    iput-boolean p1, p0, Lcom/sun/mail/util/TraceInputStream;->trace:Z

    return-void
.end method
