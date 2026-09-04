.class public Lcom/sun/mail/util/QPEncoderStream;
.super Ljava/io/FilterOutputStream;
.source "QPEncoderStream.java"


# static fields
.field private static final hex:[C


# instance fields
.field private bytesPerLine:I

.field private count:I

.field private gotCR:Z

.field private gotSpace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 182
    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/util/QPEncoderStream;->hex:[C

    return-void

    :array_0
    .array-data 2
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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/16 v0, 0x4c

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/QPEncoderStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    .line 55
    iput p1, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    .line 57
    iput-boolean p1, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    .line 58
    iput-boolean p1, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    add-int/lit8 p2, p2, -0x1

    .line 71
    iput p2, p0, Lcom/sun/mail/util/QPEncoderStream;->bytesPerLine:I

    return-void
.end method

.method private outputCRLF()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 177
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x0

    .line 178
    iput v0, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lcom/sun/mail/util/QPEncoderStream;->flush()V

    .line 172
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    const/4 v1, 0x1

    .line 157
    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method protected output(IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    const/16 v1, 0xd

    const/16 v2, 0x3d

    if-eqz p2, :cond_1

    .line 189
    iget p2, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    const/4 v3, 0x3

    add-int/2addr p2, v3

    iput p2, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    iget v4, p0, Lcom/sun/mail/util/QPEncoderStream;->bytesPerLine:I

    if-le p2, v4, :cond_0

    .line 190
    iget-object p2, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write(I)V

    .line 191
    iget-object p2, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 192
    iget-object p2, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 193
    iput v3, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    .line 195
    :cond_0
    iget-object p2, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write(I)V

    .line 196
    iget-object p2, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    sget-object v0, Lcom/sun/mail/util/QPEncoderStream;->hex:[C

    shr-int/lit8 v1, p1, 0x4

    aget-char v1, v0, v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 197
    iget-object p2, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    and-int/lit8 p1, p1, 0xf

    aget-char p1, v0, p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 199
    :cond_1
    iget p2, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    const/4 v3, 0x1

    add-int/2addr p2, v3

    iput p2, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    iget v4, p0, Lcom/sun/mail/util/QPEncoderStream;->bytesPerLine:I

    if-le p2, v4, :cond_2

    .line 200
    iget-object p2, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write(I)V

    .line 201
    iget-object p2, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 202
    iget-object p2, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 203
    iput v3, p0, Lcom/sun/mail/util/QPEncoderStream;->count:I

    .line 205
    :cond_2
    iget-object p2, p0, Lcom/sun/mail/util/QPEncoderStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void
.end method

.method public write(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 p1, p1, 0xff

    .line 117
    iget-boolean v0, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    const/16 v1, 0xa

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p0, v4, v3}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    goto :goto_1

    .line 120
    :cond_1
    :goto_0
    invoke-virtual {p0, v4, v5}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    .line 123
    :goto_1
    iput-boolean v3, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    :cond_2
    if-ne p1, v2, :cond_3

    .line 127
    iput-boolean v5, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    .line 128
    invoke-direct {p0}, Lcom/sun/mail/util/QPEncoderStream;->outputCRLF()V

    goto :goto_4

    :cond_3
    if-ne p1, v1, :cond_5

    .line 131
    iget-boolean p1, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    if-eqz p1, :cond_4

    goto :goto_3

    .line 136
    :cond_4
    invoke-direct {p0}, Lcom/sun/mail/util/QPEncoderStream;->outputCRLF()V

    goto :goto_3

    :cond_5
    if-ne p1, v4, :cond_6

    .line 138
    iput-boolean v5, p0, Lcom/sun/mail/util/QPEncoderStream;->gotSpace:Z

    goto :goto_3

    :cond_6
    if-lt p1, v4, :cond_8

    const/16 v0, 0x7f

    if-ge p1, v0, :cond_8

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_7

    goto :goto_2

    .line 143
    :cond_7
    invoke-virtual {p0, p1, v3}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    goto :goto_3

    .line 141
    :cond_8
    :goto_2
    invoke-virtual {p0, p1, v5}, Lcom/sun/mail/util/QPEncoderStream;->output(IZ)V

    .line 145
    :goto_3
    iput-boolean v3, p0, Lcom/sun/mail/util/QPEncoderStream;->gotCR:Z

    :goto_4
    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 106
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/util/QPEncoderStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 96
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/util/QPEncoderStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
