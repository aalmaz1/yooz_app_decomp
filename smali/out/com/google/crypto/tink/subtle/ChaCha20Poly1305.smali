.class public final Lcom/google/crypto/tink/subtle/ChaCha20Poly1305;
.super Ljava/lang/Object;
.source "ChaCha20Poly1305.java"

# interfaces
.implements Lcom/google/crypto/tink/Aead;


# instance fields
.field private final cipher:Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20Poly1305;

.field private final outputPrefix:[B


# direct methods
.method public constructor <init>([B)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
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

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305;-><init>([B[B)V

    return-void
.end method

.method private constructor <init>([B[B)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "outputPrefix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20Poly1305;

    invoke-direct {v0, p1}, Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20Poly1305;-><init>([B)V

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305;->cipher:Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20Poly1305;

    .line 44
    iput-object p2, p0, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305;->outputPrefix:[B

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/aead/ChaCha20Poly1305Key;)Lcom/google/crypto/tink/Aead;
    .registers 4
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

    .line 53
    new-instance v0, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305;

    .line 54
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/ChaCha20Poly1305Key;->getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object v1

    .line 55
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/ChaCha20Poly1305Key;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305;-><init>([B[B)V

    return-object v0
.end method

.method private rawDecrypt([B[B)[B
    .registers 6
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

    .line 81
    array-length v0, p1

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_18

    const/16 v0, 0xc

    .line 84
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 85
    array-length v2, p1

    sub-int/2addr v2, v0

    .line 86
    invoke-static {p1, v0, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305;->cipher:Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20Poly1305;

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20Poly1305;->decrypt(Ljava/nio/ByteBuffer;[B[B)[B

    move-result-object p1

    return-object p1

    .line 82
    :cond_18
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private rawEncrypt([B[B)[B
    .registers 6
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

    .line 60
    array-length v0, p1

    const/16 v1, 0xc

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    .line 61
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 63
    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 65
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305;->cipher:Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20Poly1305;

    invoke-virtual {v2, v0, v1, p1, p2}, Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20Poly1305;->encrypt(Ljava/nio/ByteBuffer;[B[B[B)V

    .line 66
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public decrypt([B[B)[B
    .registers 5
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

    .line 96
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305;->outputPrefix:[B

    array-length v1, v0

    if-nez v1, :cond_a

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305;->rawDecrypt([B[B)[B

    move-result-object p1

    return-object p1

    .line 99
    :cond_a
    invoke-static {v0, p1}, Lcom/google/crypto/tink/internal/Util;->isPrefix([B[B)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 102
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305;->outputPrefix:[B

    array-length v0, v0

    array-length v1, p1

    .line 103
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305;->rawDecrypt([B[B)[B

    move-result-object p1

    return-object p1

    .line 100
    :cond_1d
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encrypt([B[B)[B
    .registers 5
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

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305;->rawEncrypt([B[B)[B

    move-result-object p1

    .line 73
    iget-object p2, p0, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305;->outputPrefix:[B

    array-length v0, p2

    if-nez v0, :cond_a

    return-object p1

    :cond_a
    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 76
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p1

    return-object p1
.end method
