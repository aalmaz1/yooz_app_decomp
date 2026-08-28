.class public Lcom/google/crypto/tink/streamingaead/internal/LegacyFullStreamingAead;
.super Ljava/lang/Object;
.source "LegacyFullStreamingAead.java"

# interfaces
.implements Lcom/google/crypto/tink/StreamingAead;


# instance fields
.field private final rawStreamingAead:Lcom/google/crypto/tink/StreamingAead;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/StreamingAead;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rawStreamingAead"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/crypto/tink/streamingaead/internal/LegacyFullStreamingAead;->rawStreamingAead:Lcom/google/crypto/tink/StreamingAead;

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/internal/LegacyProtoKey;)Lcom/google/crypto/tink/StreamingAead;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 49
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/LegacyProtoKey;->getSerialization(Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    .line 51
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyData;->newBuilder()Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setKeyMaterialType(Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyData$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KeyData;

    .line 56
    new-instance v0, Lcom/google/crypto/tink/streamingaead/internal/LegacyFullStreamingAead;

    const-class v1, Lcom/google/crypto/tink/StreamingAead;

    invoke-static {p0, v1}, Lcom/google/crypto/tink/Registry;->getPrimitive(Lcom/google/crypto/tink/proto/KeyData;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/StreamingAead;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/streamingaead/internal/LegacyFullStreamingAead;-><init>(Lcom/google/crypto/tink/StreamingAead;)V

    return-object v0
.end method


# virtual methods
.method public newDecryptingChannel(Ljava/nio/channels/ReadableByteChannel;[B)Ljava/nio/channels/ReadableByteChannel;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ciphertextSource",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/internal/LegacyFullStreamingAead;->rawStreamingAead:Lcom/google/crypto/tink/StreamingAead;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/StreamingAead;->newDecryptingChannel(Ljava/nio/channels/ReadableByteChannel;[B)Ljava/nio/channels/ReadableByteChannel;

    move-result-object p1

    return-object p1
.end method

.method public newDecryptingStream(Ljava/io/InputStream;[B)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ciphertextSource",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/internal/LegacyFullStreamingAead;->rawStreamingAead:Lcom/google/crypto/tink/StreamingAead;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/StreamingAead;->newDecryptingStream(Ljava/io/InputStream;[B)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public newEncryptingChannel(Ljava/nio/channels/WritableByteChannel;[B)Ljava/nio/channels/WritableByteChannel;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ciphertextDestination",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/internal/LegacyFullStreamingAead;->rawStreamingAead:Lcom/google/crypto/tink/StreamingAead;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/StreamingAead;->newEncryptingChannel(Ljava/nio/channels/WritableByteChannel;[B)Ljava/nio/channels/WritableByteChannel;

    move-result-object p1

    return-object p1
.end method

.method public newEncryptingStream(Ljava/io/OutputStream;[B)Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ciphertextDestination",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/internal/LegacyFullStreamingAead;->rawStreamingAead:Lcom/google/crypto/tink/StreamingAead;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/StreamingAead;->newEncryptingStream(Ljava/io/OutputStream;[B)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public newSeekableDecryptingChannel(Ljava/nio/channels/SeekableByteChannel;[B)Ljava/nio/channels/SeekableByteChannel;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ciphertextSource",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/google/crypto/tink/streamingaead/internal/LegacyFullStreamingAead;->rawStreamingAead:Lcom/google/crypto/tink/StreamingAead;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/StreamingAead;->newSeekableDecryptingChannel(Ljava/nio/channels/SeekableByteChannel;[B)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1

    return-object p1
.end method
