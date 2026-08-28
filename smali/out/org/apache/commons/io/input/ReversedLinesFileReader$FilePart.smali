.class Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;
.super Ljava/lang/Object;
.source "ReversedLinesFileReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/ReversedLinesFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilePart"
.end annotation


# instance fields
.field private currentLastBytePos:I

.field private final data:[B

.field private leftOver:[B

.field private final no:J

.field final synthetic this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;


# direct methods
.method private constructor <init>(Lorg/apache/commons/io/input/ReversedLinesFileReader;JI[B)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-wide p2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->no:J

    const/4 v0, 0x0

    if-eqz p5, :cond_c

    .line 224
    array-length v1, p5

    goto :goto_d

    :cond_c
    move v1, v0

    :goto_d
    add-int/2addr v1, p4

    .line 225
    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->data:[B

    const-wide/16 v2, 0x1

    sub-long v2, p2, v2

    .line 226
    invoke-static {p1}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$300(Lorg/apache/commons/io/input/ReversedLinesFileReader;)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p2, p2, v4

    if-lez p2, :cond_3c

    .line 230
    invoke-static {p1}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$400(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/io/RandomAccessFile;

    move-result-object p2

    invoke-virtual {p2, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 231
    invoke-static {p1}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$400(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/io/RandomAccessFile;

    move-result-object p1

    invoke-virtual {p1, v1, v0, p4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    if-ne p1, p4, :cond_34

    goto :goto_3c

    .line 233
    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Count of requested bytes and actually read bytes don\'t match"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    :goto_3c
    if-eqz p5, :cond_42

    .line 238
    array-length p1, p5

    invoke-static {p5, v0, v1, p4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    :cond_42
    array-length p1, v1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I

    const/4 p1, 0x0

    .line 241
    iput-object p1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/io/input/ReversedLinesFileReader;JI[BLorg/apache/commons/io/input/ReversedLinesFileReader$1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;-><init>(Lorg/apache/commons/io/input/ReversedLinesFileReader;JI[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->readLine()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;)Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->rollOver()Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    move-result-object p0

    return-object p0
.end method

.method private createLeftOver()V
    .registers 5

    .line 333
    iget v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_11

    .line 336
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    .line 337
    iget-object v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->data:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_14

    :cond_11
    const/4 v0, 0x0

    .line 339
    iput-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    :goto_14
    const/4 v0, -0x1

    .line 341
    iput v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I

    return-void
.end method

.method private getNewLineMatchByteCount([BI)I
    .registers 13

    .line 352
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    invoke-static {v0}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$800(Lorg/apache/commons/io/input/ReversedLinesFileReader;)[[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_2e

    aget-object v4, v0, v3

    .line 354
    array-length v5, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v7, v6

    :goto_11
    if-ltz v5, :cond_27

    add-int v8, p2, v5

    .line 355
    array-length v9, v4

    sub-int/2addr v9, v6

    sub-int/2addr v8, v9

    if-ltz v8, :cond_22

    .line 356
    aget-byte v8, p1, v8

    aget-byte v9, v4, v5

    if-ne v8, v9, :cond_22

    move v8, v6

    goto :goto_23

    :cond_22
    move v8, v2

    :goto_23
    and-int/2addr v7, v8

    add-int/lit8 v5, v5, -0x1

    goto :goto_11

    :cond_27
    if-eqz v7, :cond_2b

    .line 359
    array-length p1, v4

    return p1

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_2e
    return v2
.end method

.method private readLine()Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    iget-wide v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->no:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 282
    :goto_d
    iget v3, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I

    :cond_f
    const/4 v4, -0x1

    const/4 v5, 0x0

    if-le v3, v4, :cond_68

    if-nez v0, :cond_21

    .line 285
    iget-object v4, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    invoke-static {v4}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$600(Lorg/apache/commons/io/input/ReversedLinesFileReader;)I

    move-result v4

    if-ge v3, v4, :cond_21

    .line 288
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->createLeftOver()V

    goto :goto_68

    .line 293
    :cond_21
    iget-object v4, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->data:[B

    invoke-direct {p0, v4, v3}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->getNewLineMatchByteCount([BI)I

    move-result v4

    if-lez v4, :cond_5c

    add-int/lit8 v6, v3, 0x1

    .line 295
    iget v7, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I

    sub-int/2addr v7, v6

    add-int/2addr v7, v2

    if-ltz v7, :cond_47

    .line 300
    new-array v2, v7, [B

    .line 301
    iget-object v8, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->data:[B

    invoke-static {v8, v6, v2, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    new-instance v1, Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    invoke-static {v6}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$500(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v1, v2, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sub-int/2addr v3, v4

    .line 305
    iput v3, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I

    goto :goto_69

    .line 298
    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected negative line length="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_5c
    iget-object v4, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    invoke-static {v4}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$700(Lorg/apache/commons/io/input/ReversedLinesFileReader;)I

    move-result v4

    sub-int/2addr v3, v4

    if-gez v3, :cond_f

    .line 314
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->createLeftOver()V

    :cond_68
    :goto_68
    move-object v1, v5

    :goto_69
    if-eqz v0, :cond_7e

    .line 320
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    if-eqz v0, :cond_7e

    .line 322
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    iget-object v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    invoke-static {v2}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$500(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 323
    iput-object v5, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    :cond_7e
    return-object v1
.end method

.method private rollOver()Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    iget v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_3d

    .line 257
    iget-wide v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->no:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_1e

    .line 258
    new-instance v4, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;

    iget-object v6, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    sub-long v7, v0, v2

    invoke-static {v6}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$300(Lorg/apache/commons/io/input/ReversedLinesFileReader;)I

    move-result v9

    iget-object v10, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;-><init>(Lorg/apache/commons/io/input/ReversedLinesFileReader;JI[B)V

    return-object v4

    .line 261
    :cond_1e
    iget-object v0, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    if-nez v0, :cond_24

    const/4 v0, 0x0

    return-object v0

    .line 262
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->leftOver:[B

    iget-object v3, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->this$0:Lorg/apache/commons/io/input/ReversedLinesFileReader;

    .line 263
    invoke-static {v3}, Lorg/apache/commons/io/input/ReversedLinesFileReader;->access$500(Lorg/apache/commons/io/input/ReversedLinesFileReader;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v2, "Unexpected leftover of the last block: leftOverOfThisFilePart="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current currentLastCharPos unexpectedly positive... last readLine() should have returned something! currentLastCharPos="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/io/input/ReversedLinesFileReader$FilePart;->currentLastBytePos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
