.class final Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;
.super Ljava/lang/Object;
.source "ReadableByteChannelDecrypter.java"

# interfaces
.implements Ljava/nio/channels/ReadableByteChannel;


# instance fields
.field associatedData:[B

.field attemptingChannel:Ljava/nio/channels/ReadableByteChannel;

.field ciphertextChannel:Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;

.field matchingChannel:Ljava/nio/channels/ReadableByteChannel;

.field remainingPrimitives:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/google/crypto/tink/StreamingAead;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/nio/channels/ReadableByteChannel;[B)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "allPrimitives",
            "ciphertextChannel",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/StreamingAead;",
            ">;",
            "Ljava/nio/channels/ReadableByteChannel;",
            "[B)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;->attemptingChannel:Ljava/nio/channels/ReadableByteChannel;

    .line 68
    iput-object v0, p0, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;->matchingChannel:Ljava/nio/channels/ReadableByteChannel;

    .line 69
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;->remainingPrimitives:Ljava/util/Deque;

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/StreamingAead;

    .line 71
    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;->remainingPrimitives:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 73
    :cond_25
    new-instance p1, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;

    invoke-direct {p1, p2}, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    iput-object p1, p0, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;->ciphertextChannel:Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;

    .line 74
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;->associatedData:[B

    return-void
.end method

.method private declared-synchronized nextAttemptingChannel()Ljava/nio/channels/ReadableByteChannel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 79
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;->remainingPrimitives:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 80
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;->remainingPrimitives:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/StreamingAead;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_29

    .line 82
    :try_start_11
    iget-object v1, p0, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;->ciphertextChannel:Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;

    iget-object v2, p0, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;->associatedData:[B

    invoke-interface {v0, v1, v2}, Lcom/google/crypto/tink/StreamingAead;->newDecryptingChannel(Ljava/nio/channels/ReadableByteChannel;[B)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0
    :try_end_19
    .catch Ljava/security/GeneralSecurityException; {:try_start_11 .. :try_end_19} :catch_1b
    .catchall {:try_start_11 .. :try_end_19} :catchall_29

    .line 84
    monitor-exit p0

    return-object v0

    .line 87
    :catch_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;->ciphertextChannel:Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;

    invoke-virtual {v0}, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->rewind()V

    goto :goto_1

    .line 90
    :cond_21
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No matching key found for the ciphertext in the stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
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

    .line 130
    :try_start_1
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;->ciphertextChannel:Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;

    invoke-virtual {v0}, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->close()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 131
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOpen()Z
    .registers 2

    monitor-enter p0

    .line 135
    :try_start_1
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;->ciphertextChannel:Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;

    invoke-virtual {v0}, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->isOpen()Z

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
    .registers 5
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

    .line 95
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_42

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 96
    monitor-exit p0

    return v1

    .line 98
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;->matchingChannel:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v0, :cond_14

    .line 99
    invoke-interface {v0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_42

    monitor-exit p0

    return p1

    .line 101
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;->attemptingChannel:Ljava/nio/channels/ReadableByteChannel;

    if-nez v0, :cond_1e

    .line 102
    invoke-direct {p0}, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;->nextAttemptingChannel()Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;->attemptingChannel:Ljava/nio/channels/ReadableByteChannel;
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_42

    .line 106
    :cond_1e
    :goto_1e
    :try_start_1e
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;->attemptingChannel:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_24} :catch_36
    .catchall {:try_start_1e .. :try_end_24} :catchall_42

    if-nez v0, :cond_28

    .line 110
    monitor-exit p0

    return v1

    .line 113
    :cond_28
    :try_start_28
    iget-object v2, p0, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;->attemptingChannel:Ljava/nio/channels/ReadableByteChannel;

    iput-object v2, p0, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;->matchingChannel:Ljava/nio/channels/ReadableByteChannel;

    const/4 v2, 0x0

    .line 114
    iput-object v2, p0, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;->attemptingChannel:Ljava/nio/channels/ReadableByteChannel;

    .line 115
    iget-object v2, p0, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;->ciphertextChannel:Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;

    invoke-virtual {v2}, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->disableRewinding()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_34} :catch_36
    .catchall {:try_start_28 .. :try_end_34} :catchall_42

    .line 116
    monitor-exit p0

    return v0

    .line 121
    :catch_36
    :try_start_36
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;->ciphertextChannel:Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;

    invoke-virtual {v0}, Lcom/google/crypto/tink/subtle/RewindableReadableByteChannel;->rewind()V

    .line 122
    invoke-direct {p0}, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;->nextAttemptingChannel()Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/streamingaead/ReadableByteChannelDecrypter;->attemptingChannel:Ljava/nio/channels/ReadableByteChannel;
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_42

    goto :goto_1e

    :catchall_42
    move-exception p1

    monitor-exit p0

    throw p1
.end method
