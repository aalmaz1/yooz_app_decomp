.class public final Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;
.super Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;
.source "AesCtrHmacStreaming.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;,
        Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamEncrypter;
    }
.end annotation


# static fields
.field public static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field private static final HMAC_KEY_SIZE_IN_BYTES:I = 0x20

.field private static final NONCE_PREFIX_IN_BYTES:I = 0x7

.field private static final NONCE_SIZE_IN_BYTES:I = 0x10


# instance fields
.field private final ciphertextSegmentSize:I

.field private final firstSegmentOffset:I

.field private final hkdfAlgo:Ljava/lang/String;

.field private final ikm:[B

.field private final keySizeInBytes:I

.field private final plaintextSegmentSize:I

.field private final tagAlgo:Ljava/lang/String;

.field private final tagSizeInBytes:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_NOT_FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    return-void
.end method

.method private constructor <init>(Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKey;)V
    .registers 8
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

    .line 135
    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;-><init>()V

    .line 136
    sget-object v0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 139
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKey;->getInitialKeyMaterial()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->ikm:[B

    .line 141
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKey;->getParameters()Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->getHkdfHashType()Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;->SHA1:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "HmacSha512"

    const-string v2, "HmacSha256"

    const-string v3, "HmacSha1"

    const-string v4, ""

    if-eqz v0, :cond_33

    move-object v0, v3

    goto :goto_58

    .line 143
    :cond_33
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKey;->getParameters()Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->getHkdfHashType()Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    move-result-object v0

    sget-object v5, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;->SHA256:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    move-object v0, v2

    goto :goto_58

    .line 145
    :cond_45
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKey;->getParameters()Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->getHkdfHashType()Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    move-result-object v0

    sget-object v5, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;->SHA512:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    move-object v0, v1

    goto :goto_58

    :cond_57
    move-object v0, v4

    .line 148
    :goto_58
    iput-object v0, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->hkdfAlgo:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKey;->getParameters()Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->getDerivedKeySizeBytes()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->keySizeInBytes:I

    .line 151
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKey;->getParameters()Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->getHmacHashType()Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    move-result-object v0

    sget-object v5, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;->SHA1:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    move-object v1, v3

    goto :goto_9a

    .line 153
    :cond_76
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKey;->getParameters()Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->getHmacHashType()Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    move-result-object v0

    sget-object v3, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;->SHA256:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    move-object v1, v2

    goto :goto_9a

    .line 155
    :cond_88
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKey;->getParameters()Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->getHmacHashType()Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    move-result-object v0

    sget-object v2, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;->SHA512:Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters$HashType;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    goto :goto_9a

    :cond_99
    move-object v1, v4

    .line 158
    :goto_9a
    iput-object v1, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->tagAlgo:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKey;->getParameters()Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->getHmacTagSizeBytes()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->tagSizeInBytes:I

    .line 160
    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKey;->getParameters()Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingParameters;->getCiphertextSegmentSizeBytes()I

    move-result p1

    iput p1, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->ciphertextSegmentSize:I

    const/4 v1, 0x0

    .line 162
    iput v1, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->firstSegmentOffset:I

    sub-int/2addr p1, v0

    .line 163
    iput p1, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->plaintextSegmentSize:I

    return-void

    .line 137
    :cond_b7
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use AES-CTR-HMAC streaming in FIPS-mode."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BLjava/lang/String;ILjava/lang/String;III)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ikm",
            "hkdfAlgo",
            "keySizeInBytes",
            "tagAlgo",
            "tagSizeInBytes",
            "ciphertextSegmentSize",
            "firstSegmentOffset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;-><init>()V

    .line 115
    sget-object v0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 118
    array-length v1, p1

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-static/range {v1 .. v6}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->validateParameters(IILjava/lang/String;III)V

    .line 125
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->ikm:[B

    .line 126
    iput-object p2, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->hkdfAlgo:Ljava/lang/String;

    .line 127
    iput p3, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->keySizeInBytes:I

    .line 128
    iput-object p4, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->tagAlgo:Ljava/lang/String;

    .line 129
    iput p5, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->tagSizeInBytes:I

    .line 130
    iput p6, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->ciphertextSegmentSize:I

    .line 131
    iput p7, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->firstSegmentOffset:I

    sub-int/2addr p6, p5

    .line 132
    iput p6, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->plaintextSegmentSize:I

    return-void

    .line 116
    :cond_2b
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use AES-CTR-HMAC streaming in FIPS-mode."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

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
    invoke-static {}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->cipherInstance()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;)Ljavax/crypto/Mac;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->macInstance()Ljavax/crypto/Mac;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;)[B
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->randomSalt()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;)[B
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->randomNonce()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;[B[B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->deriveKeyMaterial([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;[B)Ljavax/crypto/spec/SecretKeySpec;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->deriveKeySpec([B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;[B)Ljavax/crypto/spec/SecretKeySpec;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->deriveHmacKeySpec([B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;[BJZ)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->nonceForSegment([BJZ)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;)I
    .registers 1

    .line 54
    iget p0, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->tagSizeInBytes:I

    return p0
.end method

.method static synthetic access$900(Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;)I
    .registers 1

    .line 54
    iget p0, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->keySizeInBytes:I

    return p0
.end method

.method private static cipherInstance()Ljavax/crypto/Cipher;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 263
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->CIPHER:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "AES/CTR/NoPadding"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public static create(Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKey;)Lcom/google/crypto/tink/StreamingAead;
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

    .line 167
    new-instance v0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;-><init>(Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKey;)V

    return-object v0
.end method

.method private deriveHmacKeySpec([B)Ljavax/crypto/spec/SecretKeySpec;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyMaterial"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 299
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget v1, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->keySizeInBytes:I

    const/16 v2, 0x20

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->tagAlgo:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method private deriveKeyMaterial([B[B)[B
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

    .line 290
    iget v0, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->keySizeInBytes:I

    add-int/lit8 v0, v0, 0x20

    .line 291
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->hkdfAlgo:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->ikm:[B

    invoke-static {v1, v2, p1, p2, v0}, Lcom/google/crypto/tink/subtle/Hkdf;->computeHkdf(Ljava/lang/String;[B[B[BI)[B

    move-result-object p1

    return-object p1
.end method

.method private deriveKeySpec([B)Ljavax/crypto/spec/SecretKeySpec;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyMaterial"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 295
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget v1, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->keySizeInBytes:I

    const-string v2, "AES"

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method private macInstance()Ljavax/crypto/Mac;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 267
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->MAC:Lcom/google/crypto/tink/subtle/EngineFactory;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->tagAlgo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    return-object v0
.end method

.method private nonceForSegment([BJZ)[B
    .registers 7
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

    const/16 v0, 0x10

    .line 276
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 277
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 278
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 279
    invoke-static {v0, p2, p3}, Lcom/google/crypto/tink/subtle/SubtleUtil;->putAsUnsigedInt(Ljava/nio/ByteBuffer;J)V

    int-to-byte p1, p4

    .line 280
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 281
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 282
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method private randomNonce()[B
    .registers 2

    const/4 v0, 0x7

    .line 286
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method private randomSalt()[B
    .registers 2

    .line 271
    iget v0, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->keySizeInBytes:I

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method private static validateParameters(IILjava/lang/String;III)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ikmSize",
            "keySizeInBytes",
            "tagAlgo",
            "tagSizeInBytes",
            "ciphertextSegmentSize",
            "firstSegmentOffset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/16 v0, 0x10

    if-lt p0, v0, :cond_6b

    if-lt p0, p1, :cond_6b

    if-ltz p5, :cond_63

    .line 185
    invoke-static {p1}, Lcom/google/crypto/tink/subtle/Validators;->validateAesKeySize(I)V

    const/16 p0, 0xa

    if-lt p3, p0, :cond_4e

    const-string p0, "HmacSha1"

    .line 189
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/16 p0, 0x14

    if-gt p3, p0, :cond_34

    :cond_1b
    const-string p0, "HmacSha256"

    .line 190
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    const/16 p0, 0x20

    if-gt p3, p0, :cond_34

    :cond_27
    const-string p0, "HmacSha512"

    .line 191
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3c

    const/16 p0, 0x40

    if-gt p3, p0, :cond_34

    goto :goto_3c

    .line 192
    :cond_34
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "tag size too big"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3c
    :goto_3c
    sub-int/2addr p4, p5

    sub-int/2addr p4, p3

    sub-int/2addr p4, p1

    add-int/lit8 p4, p4, -0x7

    add-int/lit8 p4, p4, -0x1

    if-lez p4, :cond_46

    return-void

    .line 203
    :cond_46
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "ciphertextSegmentSize too small"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 187
    :cond_4e
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "tag size too small "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 183
    :cond_63
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "firstSegmentOffset must not be negative"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 179
    :cond_6b
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ikm too short, must be >= "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 252
    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->getCiphertextOffset()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 253
    iget v0, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->plaintextSegmentSize:I

    int-to-long v1, v0

    div-long v1, p1, v1

    .line 254
    iget v3, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->ciphertextSegmentSize:I

    int-to-long v3, v3

    mul-long/2addr v1, v3

    int-to-long v3, v0

    .line 255
    rem-long/2addr p1, v3

    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-lez v0, :cond_1c

    .line 257
    iget v0, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->tagSizeInBytes:I

    int-to-long v3, v0

    add-long/2addr p1, v3

    add-long/2addr v1, p1

    :cond_1c
    return-wide v1
.end method

.method public getCiphertextOffset()I
    .registers 3

    .line 235
    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->getHeaderLength()I

    move-result v0

    iget v1, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->firstSegmentOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCiphertextOverhead()I
    .registers 2

    .line 240
    iget v0, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->tagSizeInBytes:I

    return v0
.end method

.method public getCiphertextSegmentSize()I
    .registers 2

    .line 220
    iget v0, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->ciphertextSegmentSize:I

    return v0
.end method

.method public getFirstSegmentOffset()I
    .registers 2

    .line 244
    iget v0, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->firstSegmentOffset:I

    return v0
.end method

.method public getHeaderLength()I
    .registers 2

    .line 230
    iget v0, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->keySizeInBytes:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getPlaintextSegmentSize()I
    .registers 2

    .line 225
    iget v0, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->plaintextSegmentSize:I

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

.method public newStreamSegmentDecrypter()Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 215
    new-instance v0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;-><init>(Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;)V

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
    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->newStreamSegmentDecrypter()Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;

    move-result-object v0

    return-object v0
.end method

.method public newStreamSegmentEncrypter([B)Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamEncrypter;
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

    .line 210
    new-instance v0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamEncrypter;

    invoke-direct {v0, p0, p1}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamEncrypter;-><init>(Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;[B)V

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
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->newStreamSegmentEncrypter([B)Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamEncrypter;

    move-result-object p1

    return-object p1
.end method
