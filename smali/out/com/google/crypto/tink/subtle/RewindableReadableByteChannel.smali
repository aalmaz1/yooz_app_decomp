.class public final Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;
.super Ljava/lang/Object;
.source "RewindableReadableByteChannel.java"

# interfaces
.implements Ljava/nio/channels/ReadableByteChannel;


# instance fields
.field final baseChannel:Ljava/nio/channels/ReadableByteChannel;

.field buffer:Ljava/nio/ByteBuffer;

.field canRewind:Z

.field directRead:Z


# direct methods
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseChannel"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->baseChannel:Ljava/nio/channels/ReadableByteChannel;

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->canRewind:Z

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->directRead:Z

    return-void
.end method

.method private declared-synchronized setBufferLimit(I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newLimit"
        }
    .end annotation

    monitor-enter p0

    .line 86
    :try_start_1
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_2e

    .line 87
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 88
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 89
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 91
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 93
    iput-object v1, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    .line 95
    :cond_2e
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 96
    monitor-exit p0

    return-void

    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 166
    :try_start_2
    iput-boolean v0, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->canRewind:Z

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->directRead:Z

    .line 168
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->baseChannel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    .line 169
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disableRewinding()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 65
    :try_start_2
    iput-boolean v0, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->canRewind:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 66
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOpen()Z
    .registers 2

    monitor-enter p0

    .line 173
    :try_start_1
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->baseChannel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read(Ljava/nio/ByteBuffer;)I
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dst"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 100
    :try_start_1
    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->directRead:Z

    if-eqz v0, :cond_d

    .line 101
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->baseChannel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c9

    monitor-exit p0

    return p1

    .line 103
    :cond_d
    :try_start_d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_c9

    if-nez v0, :cond_16

    .line 105
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 107
    :cond_16
    :try_start_16
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    if-nez v1, :cond_43

    .line 108
    iget-boolean v1, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->canRewind:Z

    if-nez v1, :cond_29

    .line 109
    iput-boolean v2, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->directRead:Z

    .line 110
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->baseChannel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_c9

    monitor-exit p0

    return p1

    .line 112
    :cond_29
    :try_start_29
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    .line 113
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->baseChannel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v1, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v0, :cond_41

    .line 117
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_c9

    .line 119
    :cond_41
    monitor-exit p0

    return v0

    .line 122
    :cond_43
    :try_start_43
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v3, 0x0

    if-lt v1, v0, :cond_76

    .line 128
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 129
    iget-object v4, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 130
    iget-object v4, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 131
    iget-object p1, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 132
    iget-boolean p1, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->canRewind:Z

    if-nez p1, :cond_74

    iget-object p1, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_74

    .line 133
    iput-object v3, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    .line 134
    iput-boolean v2, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->directRead:Z
    :try_end_74
    .catchall {:try_start_43 .. :try_end_74} :catchall_c9

    .line 136
    :cond_74
    monitor-exit p0

    return v0

    .line 138
    :cond_76
    :try_start_76
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    sub-int/2addr v0, v1

    .line 142
    iget-object v4, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 143
    iget-object v5, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    add-int/2addr v0, v5

    .line 146
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->setBufferLimit(I)V

    .line 147
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 148
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->baseChannel:Ljava/nio/channels/ReadableByteChannel;

    iget-object v5, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v5}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 150
    iget-object v5, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 151
    iget-object v5, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 152
    iget-object v5, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_a9
    .catchall {:try_start_76 .. :try_end_a9} :catchall_c9

    if-nez v1, :cond_b0

    if-gez v0, :cond_b0

    .line 154
    monitor-exit p0

    const/4 p1, -0x1

    return p1

    .line 156
    :cond_b0
    :try_start_b0
    iget-object p1, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    sub-int/2addr p1, v4

    .line 157
    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->canRewind:Z

    if-nez v0, :cond_c7

    iget-object v0, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_c7

    .line 158
    iput-object v3, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    .line 159
    iput-boolean v2, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->directRead:Z
    :try_end_c7
    .catchall {:try_start_b0 .. :try_end_c7} :catchall_c9

    .line 161
    :cond_c7
    monitor-exit p0

    return p1

    :catchall_c9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rewind()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 72
    :try_start_1
    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->canRewind:Z

    if-eqz v0, :cond_f

    .line 75
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_17

    .line 78
    :cond_d
    monitor-exit p0

    return-void

    .line 73
    :cond_f
    :try_start_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot rewind anymore."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method
