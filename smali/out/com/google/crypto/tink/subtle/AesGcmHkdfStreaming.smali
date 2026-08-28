.class public final Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;
.super Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;
.source "AesGcmHkdfStreaming.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;,
        Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamEncrypter;
    }
.end annotation


# static fields
.field private static final NONCE_PREFIX_IN_BYTES:I = 0x7

.field private static final NONCE_SIZE_IN_BYTES:I = 0xc

.field private static final TAG_SIZE_IN_BYTES:I = 0x10


# instance fields
.field private final ciphertextSegmentSize:I

.field private final firstSegmentOffset:I

.field private final hkdfAlg:Ljava/lang/String;

.field private final ikm:[B

.field private final keySizeInBytes:I

.field private final plaintextSegmentSize:I


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingKey;)V
    .registers 5
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

    .line 120
    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;-><init>()V

    .line 121
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingKey;->getInitialKeyMaterial()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->ikm:[B

    .line 123
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingKey;->getParameters()Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->getHkdfHashType()Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;->SHA1:Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "HmacSha1"

    goto :goto_49

    .line 125
    :cond_24
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingKey;->getParameters()Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->getHkdfHashType()Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;->SHA256:Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "HmacSha256"

    goto :goto_49

    .line 127
    :cond_37
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingKey;->getParameters()Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->getHkdfHashType()Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;->SHA512:Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    const-string v0, "HmacSha512"

    .line 133
    :goto_49
    iput-object v0, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->hkdfAlg:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingKey;->getParameters()Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->getDerivedAesGcmKeySizeBytes()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->keySizeInBytes:I

    .line 135
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingKey;->getParameters()Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->getCiphertextSegmentSizeBytes()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->ciphertextSegmentSize:I

    const/4 v0, 0x0

    .line 137
    iput v0, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->firstSegmentOffset:I

    add-int/lit8 p1, p1, -0x10

    .line 138
    iput p1, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->plaintextSegmentSize:I

    return-void

    .line 130
    :cond_67
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown HKDF algorithm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingKey;->getParameters()Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters;->getHkdfHashType()Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingParameters$HashType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BLjava/lang/String;III)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ikm",
            "hkdfAlg",
            "keySizeInBytes",
            "ciphertextSegmentSize",
            "firstSegmentOffset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;-><init>()V

    .line 103
    array-length v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_31

    array-length v0, p1

    if-lt v0, p3, :cond_31

    .line 107
    invoke-static {p3}, Lcom/google/crypto/tink/subtle/Validators;->validateAesKeySize(I)V

    .line 108
    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->getHeaderLength()I

    move-result v0

    add-int/2addr v0, p5

    add-int/2addr v0, v1

    if-le p4, v0, :cond_29

    .line 111
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->ikm:[B

    .line 112
    iput-object p2, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->hkdfAlg:Ljava/lang/String;

    .line 113
    iput p3, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->keySizeInBytes:I

    .line 114
    iput p4, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->ciphertextSegmentSize:I

    .line 115
    iput p5, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->firstSegmentOffset:I

    sub-int/2addr p4, v1

    .line 116
    iput p4, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->plaintextSegmentSize:I

    return-void

    .line 109
    :cond_29
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "ciphertextSegmentSize too small"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_31
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "ikm too short, must be >= "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000()Ljavax/crypto/Cipher;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->cipherInstance()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;)[B
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->randomSalt()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()[B
    .registers 1

    .line 54
    invoke-static {}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->randomNonce()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;[B[B)Ljavax/crypto/spec/SecretKeySpec;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->deriveKeySpec([B[B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400([BJZ)Ljavax/crypto/spec/GCMParameterSpec;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 54
    invoke-static {p0, p1, p2, p3}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->paramsForSegment([BJZ)Ljavax/crypto/spec/GCMParameterSpec;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;)I
    .registers 1

    .line 54
    iget p0, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->keySizeInBytes:I

    return p0
.end method

.method private static cipherInstance()Ljavax/crypto/Cipher;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 202
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->CIPHER:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "AES/GCM/NoPadding"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public static create(Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingKey;)Lcom/google/crypto/tink/StreamingAead;
    .registers 2
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

    .line 143
    new-instance v0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;-><init>(Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingKey;)V

    return-object v0
.end method

.method private deriveKeySpec([B[B)Ljavax/crypto/spec/SecretKeySpec;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "salt",
            "aad"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->hkdfAlg:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->ikm:[B

    iget v2, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->keySizeInBytes:I

    invoke-static {v0, v1, p1, p2, v2}, Lcom/google/crypto/tink/subtle/Hkdf;->computeHkdf(Ljava/lang/String;[B[B[BI)[B

    move-result-object p1

    .line 225
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p2
.end method

.method private static paramsForSegment([BJZ)Ljavax/crypto/spec/GCMParameterSpec;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "prefix",
            "segmentNr",
            "last"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    .line 211
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 212
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 213
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 214
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/subtle/SubtleUtil;->putAsUnsigedInt(Ljava/nio/ByteBuffer;J)V

    int-to-byte p0, p3

    .line 215
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 216
    new-instance p0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 p1, 0x80

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    return-object p0
.end method

.method private static randomNonce()[B
    .registers 1

    const/4 v0, 0x7

    .line 220
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method private randomSalt()[B
    .registers 2

    .line 206
    iget v0, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->keySizeInBytes:I

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public expectedCiphertextSize(J)J
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plaintextSize"
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->getCiphertextOffset()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 192
    iget v0, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->plaintextSegmentSize:I

    int-to-long v1, v0

    div-long v1, p1, v1

    .line 193
    iget v3, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->ciphertextSegmentSize:I

    int-to-long v3, v3

    mul-long/2addr v1, v3

    int-to-long v3, v0

    .line 194
    rem-long/2addr p1, v3

    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-lez v0, :cond_1b

    const-wide/16 v3, 0x10

    add-long/2addr p1, v3

    add-long/2addr v1, p1

    :cond_1b
    return-wide v1
.end method

.method public getCiphertextOffset()I
    .registers 3

    .line 174
    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->getHeaderLength()I

    move-result v0

    iget v1, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->firstSegmentOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCiphertextOverhead()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method public getCiphertextSegmentSize()I
    .registers 2

    .line 164
    iget v0, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->ciphertextSegmentSize:I

    return v0
.end method

.method public getFirstSegmentOffset()I
    .registers 2

    .line 183
    iget v0, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->firstSegmentOffset:I

    return v0
.end method

.method public getHeaderLength()I
    .registers 2

    .line 169
    iget v0, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->keySizeInBytes:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getPlaintextSegmentSize()I
    .registers 2

    .line 159
    iget v0, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->plaintextSegmentSize:I

    return v0
.end method

.method public bridge synthetic newDecryptingChannel(Ljava/nio/channels/ReadableByteChannel;[B)Ljava/nio/channels/ReadableByteChannel;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
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

    .line 53
    invoke-super {p0, p1, p2}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->newDecryptingChannel(Ljava/nio/channels/ReadableByteChannel;[B)Ljava/nio/channels/ReadableByteChannel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newDecryptingStream(Ljava/io/InputStream;[B)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "ciphertextStream",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-super {p0, p1, p2}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->newDecryptingStream(Ljava/io/InputStream;[B)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newEncryptingChannel(Ljava/nio/channels/WritableByteChannel;[B)Ljava/nio/channels/WritableByteChannel;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
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

    .line 53
    invoke-super {p0, p1, p2}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->newEncryptingChannel(Ljava/nio/channels/WritableByteChannel;[B)Ljava/nio/channels/WritableByteChannel;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newEncryptingStream(Ljava/io/OutputStream;[B)Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "ciphertext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-super {p0, p1, p2}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->newEncryptingStream(Ljava/io/OutputStream;[B)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newSeekableDecryptingChannel(Ljava/nio/channels/SeekableByteChannel;[B)Ljava/nio/channels/SeekableByteChannel;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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

    .line 53
    invoke-super {p0, p1, p2}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->newSeekableDecryptingChannel(Ljava/nio/channels/SeekableByteChannel;[B)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1

    return-object p1
.end method

.method public newStreamSegmentDecrypter()Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 154
    new-instance v0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;-><init>(Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;)V

    return-object v0
.end method

.method public bridge synthetic newStreamSegmentDecrypter()Lcom/google/crypto/tink/subtle/StreamSegmentDecrypter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->newStreamSegmentDecrypter()Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;

    move-result-object v0

    return-object v0
.end method

.method public newStreamSegmentEncrypter([B)Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamEncrypter;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aad"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 149
    new-instance v0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamEncrypter;

    invoke-direct {v0, p0, p1}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamEncrypter;-><init>(Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;[B)V

    return-object v0
.end method

.method public bridge synthetic newStreamSegmentEncrypter([B)Lcom/google/crypto/tink/subtle/StreamSegmentEncrypter;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "aad"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->newStreamSegmentEncrypter([B)Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamEncrypter;

    move-result-object p1

    return-object p1
.end method
