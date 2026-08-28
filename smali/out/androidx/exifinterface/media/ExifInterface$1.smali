.class Landroidx/exifinterface/media/ExifInterface$1;
.super Landroid/media/MediaDataSource;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/exifinterface/media/ExifInterface;->getHeifAttributes(Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mPosition:J

.field final synthetic this$0:Landroidx/exifinterface/media/ExifInterface;

.field final synthetic val$in:Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;


# direct methods
.method constructor <init>(Landroidx/exifinterface/media/ExifInterface;Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;)V
    .registers 3

    .line 5821
    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface$1;->this$0:Landroidx/exifinterface/media/ExifInterface;

    iput-object p2, p0, Landroidx/exifinterface/media/ExifInterface$1;->val$in:Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getSize()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public readAt(J[BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p5, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, -0x1

    if-gez v2, :cond_c

    return v3

    .line 5837
    :cond_c
    :try_start_c
    iget-wide v4, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J

    cmp-long v2, v4, p1

    if-eqz v2, :cond_2a

    cmp-long v0, v4, v0

    if-ltz v0, :cond_23

    .line 5842
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$1;->val$in:Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->available()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v4, v0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_23

    return v3

    .line 5845
    :cond_23
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$1;->val$in:Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    invoke-virtual {v0, p1, p2}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    .line 5846
    iput-wide p1, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J

    .line 5852
    :cond_2a
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface$1;->val$in:Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->available()I

    move-result p1

    if-le p5, p1, :cond_38

    .line 5853
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface$1;->val$in:Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->available()I

    move-result p5

    .line 5856
    :cond_38
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface$1;->val$in:Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    invoke-virtual {p1, p3, p4, p5}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_47

    .line 5858
    iget-wide p2, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J

    int-to-long p4, p1

    add-long/2addr p2, p4

    iput-wide p2, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_46} :catch_47

    return p1

    :catch_47
    :cond_47
    const-wide/16 p1, -0x1

    .line 5864
    iput-wide p1, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J

    return v3
.end method
