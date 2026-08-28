.class final Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "ReusableBufferedOutputStream.java"


# instance fields
.field private closed:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 3

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;->closed:Z

    .line 46
    :try_start_3
    invoke-virtual {p0}, Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    const/4 v0, 0x0

    goto :goto_9

    :catchall_8
    move-exception v0

    .line 51
    :goto_9
    :try_start_9
    iget-object v1, p0, Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_f

    goto :goto_13

    :catchall_f
    move-exception v1

    if-nez v0, :cond_13

    move-object v0, v1

    :cond_13
    :goto_13
    if-eqz v0, :cond_18

    .line 58
    invoke-static {v0}, Landroidx/media3/common/util/Util;->sneakyThrow(Ljava/lang/Throwable;)V

    :cond_18
    return-void
.end method

.method public reset(Ljava/io/OutputStream;)V
    .registers 3

    .line 70
    iget-boolean v0, p0, Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;->closed:Z

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 71
    iput-object p1, p0, Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;->out:Ljava/io/OutputStream;

    const/4 p1, 0x0

    .line 72
    iput p1, p0, Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;->count:I

    .line 73
    iput-boolean p1, p0, Landroidx/media3/datasource/cache/ReusableBufferedOutputStream;->closed:Z

    return-void
.end method
