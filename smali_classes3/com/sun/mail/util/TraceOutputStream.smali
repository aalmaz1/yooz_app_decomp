.class public Lcom/sun/mail/util/TraceOutputStream;
.super Ljava/io/FilterOutputStream;
.source "TraceOutputStream.java"


# instance fields
.field private quote:Z

.field private trace:Z

.field private traceOut:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/sun/mail/util/MailLogger;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/sun/mail/util/TraceOutputStream;->trace:Z

    .line 57
    iput-boolean p1, p0, Lcom/sun/mail/util/TraceOutputStream;->quote:Z

    .line 69
    sget-object p1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p2, p1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/mail/util/TraceOutputStream;->trace:Z

    .line 70
    new-instance p1, Lcom/sun/mail/util/LogOutputStream;

    invoke-direct {p1, p2}, Lcom/sun/mail/util/LogOutputStream;-><init>(Lcom/sun/mail/util/MailLogger;)V

    iput-object p1, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/sun/mail/util/TraceOutputStream;->trace:Z

    .line 57
    iput-boolean p1, p0, Lcom/sun/mail/util/TraceOutputStream;->quote:Z

    .line 82
    iput-object p2, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    return-void
.end method

.method private final writeByte(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x7f

    if-le p1, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 150
    iget-object v0, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 p1, p1, 0x7f

    :cond_0
    const/16 v0, 0xd

    const/16 v1, 0x5c

    if-ne p1, v0, :cond_1

    .line 154
    iget-object p1, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 155
    iget-object p1, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v0, 0x72

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 157
    iget-object p1, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 158
    iget-object p1, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v1, 0x6e

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 159
    iget-object p1, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    .line 161
    iget-object p1, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 162
    iget-object p1, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v0, 0x74

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x20

    if-ge p1, v0, :cond_4

    .line 164
    iget-object v0, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 165
    iget-object v0, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    add-int/lit8 p1, p1, 0x40

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public setQuote(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/sun/mail/util/TraceOutputStream;->quote:Z

    return-void
.end method

.method public setTrace(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/sun/mail/util/TraceOutputStream;->trace:Z

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-boolean v0, p0, Lcom/sun/mail/util/TraceOutputStream;->trace:Z

    if-eqz v0, :cond_1

    .line 113
    iget-boolean v0, p0, Lcom/sun/mail/util/TraceOutputStream;->quote:Z

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0, p1}, Lcom/sun/mail/util/TraceOutputStream;->writeByte(I)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 118
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/util/TraceOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-boolean v0, p0, Lcom/sun/mail/util/TraceOutputStream;->trace:Z

    if-eqz v0, :cond_1

    .line 134
    iget-boolean v0, p0, Lcom/sun/mail/util/TraceOutputStream;->quote:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    .line 136
    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lcom/sun/mail/util/TraceOutputStream;->writeByte(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/TraceOutputStream;->traceOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/util/TraceOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
