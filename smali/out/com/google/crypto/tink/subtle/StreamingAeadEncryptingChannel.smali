.class Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;
.super Ljava/lang/Object;
.source "StreamingAeadEncryptingChannel.java"

# interfaces
.implements Ljava/nio/channels/WritableByteChannel;


# instance fields
.field private ciphertextChannel:Ljava/nio/channels/WritableByteChannel;

.field ctBuffer:Ljava/nio/ByteBuffer;

.field private encrypter:Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;

.field open:Z

.field private plaintextSegmentSize:I

.field ptBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;Ljava/nio/channels/WritableByteChannel;[B)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamAead",
            "ciphertextChannel",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->open:Z

    .line 41
    iput-object p2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ciphertextChannel:Ljava/nio/channels/WritableByteChannel;

    .line 42
    invoke-virtual {p1, p3}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->newStreamSegmentEncrypter([B)Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;

    move-result-object p3

    iput-object p3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->encrypter:Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;

    .line 43
    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->getPlaintextSegmentSize()I

    move-result p3

    iput p3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->plaintextSegmentSize:I

    .line 44
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    iput-object p3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ptBuffer:Ljava/nio/ByteBuffer;

    .line 45
    iget v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->plaintextSegmentSize:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->getCiphertextOffset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 46
    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->getCiphertextSegmentSize()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    .line 50
    iget-object p3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->encrypter:Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;

    invoke-interface {p3}, Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;->getHeader()Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 51
    iget-object p1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 52
    iget-object p1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p2, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 94
    :try_start_1
    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->open:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_67

    if-nez v0, :cond_7

    .line 95
    monitor-exit p0

    return-void

    .line 100
    :cond_7
    :goto_7
    :try_start_7
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_22

    .line 101
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ciphertextChannel:Ljava/nio/channels/WritableByteChannel;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-lez v0, :cond_1a

    goto :goto_7

    .line 103
    :cond_1a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to write ciphertext before closing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_67

    .line 107
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 108
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ptBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 109
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->encrypter:Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ptBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, v2}, Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;->encryptSegment(Ljava/nio/ByteBuffer;ZLjava/nio/ByteBuffer;)V
    :try_end_36
    .catch Ljava/security/GeneralSecurityException; {:try_start_22 .. :try_end_36} :catch_60
    .catchall {:try_start_22 .. :try_end_36} :catchall_67

    .line 114
    :try_start_36
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 115
    :goto_3b
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_56

    .line 116
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ciphertextChannel:Ljava/nio/channels/WritableByteChannel;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-lez v0, :cond_4e

    goto :goto_3b

    .line 118
    :cond_4e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to write ciphertext before closing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_56
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ciphertextChannel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->close()V

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->open:Z
    :try_end_5e
    .catchall {:try_start_36 .. :try_end_5e} :catchall_67

    .line 123
    monitor-exit p0

    return-void

    :catch_60
    move-exception v0

    .line 112
    :try_start_61
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_67
    .catchall {:try_start_61 .. :try_end_67} :catchall_67

    :catchall_67
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isOpen()Z
    .registers 2

    .line 127
    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->open:Z

    return v0
.end method

.method public declared-synchronized write(Ljava/nio/ByteBuffer;)I
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 57
    :try_start_1
    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->open:Z

    if-eqz v0, :cond_98

    .line 60
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_14

    .line 61
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ciphertextChannel:Ljava/nio/channels/WritableByteChannel;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 63
    :cond_14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 64
    :goto_18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ptBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_8c

    .line 65
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_33

    .line 66
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_9e

    sub-int/2addr p1, v0

    monitor-exit p0

    return p1

    .line 68
    :cond_33
    :try_start_33
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ptBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 69
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 70
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 71
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_48
    .catchall {:try_start_33 .. :try_end_48} :catchall_9e

    .line 73
    :try_start_48
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ptBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 74
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 75
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_63

    .line 76
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->encrypter:Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;

    iget-object v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ptBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v4, v2, v3, v5}, Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;->encryptSegment(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ZLjava/nio/ByteBuffer;)V

    goto :goto_6c

    .line 78
    :cond_63
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->encrypter:Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ptBuffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;->encryptSegment(Ljava/nio/ByteBuffer;ZLjava/nio/ByteBuffer;)V
    :try_end_6c
    .catch Ljava/security/GeneralSecurityException; {:try_start_48 .. :try_end_6c} :catch_85
    .catchall {:try_start_48 .. :try_end_6c} :catchall_9e

    .line 83
    :goto_6c
    :try_start_6c
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 84
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ciphertextChannel:Ljava/nio/channels/WritableByteChannel;

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ctBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 85
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ptBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 86
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ptBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->plaintextSegmentSize:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_18

    :catch_85
    move-exception p1

    .line 81
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 88
    :cond_8c
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadEncryptingChannel;->ptBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 89
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1
    :try_end_95
    .catchall {:try_start_6c .. :try_end_95} :catchall_9e

    sub-int/2addr p1, v0

    monitor-exit p0

    return p1

    .line 58
    :cond_98
    :try_start_98
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1
    :try_end_9e
    .catchall {:try_start_98 .. :try_end_9e} :catchall_9e

    :catchall_9e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
