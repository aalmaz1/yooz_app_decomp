.class public final Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;
.super Ljava/lang/Object;
.source "EncryptThenAuthenticate.java"

# interfaces
.implements Lcom/google/crypto/tink/Aead;


# instance fields
.field private final cipher:Lcom/google/crypto/tink/subtle/IndCpaCipher;

.field private final mac:Lcom/google/crypto/tink/Mac;

.field private final macLength:I

.field private final outputPrefix:[B


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/subtle/IndCpaCipher;Lcom/google/crypto/tink/Mac;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "cipher",
            "mac",
            "macLength"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 49
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;-><init>(Lcom/google/crypto/tink/subtle/IndCpaCipher;Lcom/google/crypto/tink/Mac;I[B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/crypto/tink/subtle/IndCpaCipher;Lcom/google/crypto/tink/Mac;I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher",
            "mac",
            "macLength",
            "outputPrefix"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;->cipher:Lcom/google/crypto/tink/subtle/IndCpaCipher;

    .line 55
    iput-object p2, p0, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;->mac:Lcom/google/crypto/tink/Mac;

    .line 56
    iput p3, p0, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;->macLength:I

    .line 57
    iput-object p4, p0, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;->outputPrefix:[B

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;)Lcom/google/crypto/tink/Aead;
    .locals 9
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

    .line 66
    new-instance v0, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;

    new-instance v1, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;

    .line 68
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->getAesKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v2

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object v2

    .line 69
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->getParameters()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getIvSizeBytes()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;-><init>([BI)V

    new-instance v2, Lcom/google/crypto/tink/subtle/PrfMac;

    new-instance v3, Lcom/google/crypto/tink/subtle/PrfHmacJce;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HMAC"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->getParameters()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getHashType()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    .line 74
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->getHmacKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v7

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {v3, v4, v6}, Lcom/google/crypto/tink/subtle/PrfHmacJce;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    .line 75
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->getParameters()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getTagSizeBytes()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/crypto/tink/subtle/PrfMac;-><init>(Lcom/google/crypto/tink/prf/Prf;I)V

    .line 76
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->getParameters()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getTagSizeBytes()I

    move-result v3

    .line 77
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;-><init>(Lcom/google/crypto/tink/subtle/IndCpaCipher;Lcom/google/crypto/tink/Mac;I[B)V

    return-object v0
.end method

.method public static newAesCtrHmac([BILjava/lang/String;[BI)Lcom/google/crypto/tink/Aead;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x10,
            0x0
        }
        names = {
            "aesCtrKey",
            "ivSize",
            "hmacAlgorithm",
            "hmacKey",
            "tagSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 88
    new-instance v0, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;

    invoke-direct {v0, p0, p1}, Lcom/google/crypto/tink/subtle/AesCtrJceCipher;-><init>([BI)V

    .line 89
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    const-string p1, "HMAC"

    invoke-direct {p0, p3, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 90
    new-instance p1, Lcom/google/crypto/tink/subtle/PrfMac;

    new-instance p3, Lcom/google/crypto/tink/subtle/PrfHmacJce;

    invoke-direct {p3, p2, p0}, Lcom/google/crypto/tink/subtle/PrfHmacJce;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {p1, p3, p4}, Lcom/google/crypto/tink/subtle/PrfMac;-><init>(Lcom/google/crypto/tink/prf/Prf;I)V

    .line 91
    new-instance p0, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;

    invoke-direct {p0, v0, p1, p4}, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;-><init>(Lcom/google/crypto/tink/subtle/IndCpaCipher;Lcom/google/crypto/tink/Mac;I)V

    return-object p0
.end method


# virtual methods
.method public decrypt([B[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ciphertext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 133
    array-length v0, p1

    iget v1, p0, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;->macLength:I

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;->outputPrefix:[B

    array-length v3, v2

    add-int/2addr v1, v3

    if-lt v0, v1, :cond_2

    .line 136
    invoke-static {v2, p1}, Lcom/google/crypto/tink/internal/Util;->isPrefix([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;->outputPrefix:[B

    array-length v0, v0

    array-length v1, p1

    iget v2, p0, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;->macLength:I

    sub-int/2addr v1, v2

    .line 140
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 141
    array-length v1, p1

    iget v2, p0, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;->macLength:I

    sub-int/2addr v1, v2

    array-length v2, p1

    .line 142
    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-array p2, v1, [B

    :cond_0
    const/16 v2, 0x8

    .line 148
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    array-length v4, p2

    int-to-long v4, v4

    const-wide/16 v6, 0x8

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 149
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;->mac:Lcom/google/crypto/tink/Mac;

    const/4 v4, 0x3

    new-array v4, v4, [[B

    aput-object p2, v4, v1

    const/4 p2, 0x1

    aput-object v0, v4, p2

    const/4 p2, 0x2

    aput-object v2, v4, p2

    invoke-static {v4}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p2

    invoke-interface {v3, p1, p2}, Lcom/google/crypto/tink/Mac;->verifyMac([B[B)V

    .line 150
    iget-object p1, p0, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;->cipher:Lcom/google/crypto/tink/subtle/IndCpaCipher;

    invoke-interface {p1, v0}, Lcom/google/crypto/tink/subtle/IndCpaCipher;->decrypt([B)[B

    move-result-object p1

    return-object p1

    .line 137
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (ciphertext too short)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encrypt([B[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "plaintext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;->cipher:Lcom/google/crypto/tink/subtle/IndCpaCipher;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/subtle/IndCpaCipher;->encrypt([B)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p2, v0, [B

    :cond_0
    const/16 v1, 0x8

    .line 114
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v3, p2

    int-to-long v3, v3

    const-wide/16 v5, 0x8

    mul-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;->mac:Lcom/google/crypto/tink/Mac;

    const/4 v3, 0x3

    new-array v4, v3, [[B

    aput-object p2, v4, v0

    const/4 p2, 0x1

    aput-object p1, v4, p2

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-static {v4}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/google/crypto/tink/Mac;->computeMac([B)[B

    move-result-object v1

    new-array v2, v3, [[B

    .line 116
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/EncryptThenAuthenticate;->outputPrefix:[B

    aput-object v3, v2, v0

    aput-object p1, v2, p2

    aput-object v1, v2, v5

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p1

    return-object p1
.end method
