.class public final Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20Poly1305Jce;
.super Ljava/lang/Object;
.source "InsecureNonceChaCha20Poly1305Jce.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# static fields
.field private static final CIPHER_NAME:Ljava/lang/String; = "ChaCha20-Poly1305"

.field private static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field private static final KEY_NAME:Ljava/lang/String; = "ChaCha20"

.field private static final KEY_SIZE_IN_BYTES:I = 0x20

.field private static final NONCE_SIZE_IN_BYTES:I = 0xc

.field private static final TAG_SIZE_IN_BYTES:I = 0x10


# instance fields
.field private final keySpec:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_NOT_FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20Poly1305Jce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 2
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

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    sget-object v0, Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20Poly1305Jce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    invoke-static {}, Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20Poly1305Jce;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 65
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "ChaCha20"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20Poly1305Jce;->keySpec:Ljavax/crypto/SecretKey;

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "The key length in bytes must be 32."

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "JCE does not support algorithm: ChaCha20-Poly1305"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use ChaCha20Poly1305 in FIPS-mode."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create([B)Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20Poly1305Jce;
    .locals 1
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

    .line 71
    new-instance v0, Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20Poly1305Jce;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20Poly1305Jce;-><init>([B)V

    return-object v0
.end method

.method public static isSupported()Z
    .locals 1

    .line 75
    invoke-static {}, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->getThreadLocalCipherOrNull()Ljavax/crypto/Cipher;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public decrypt([B[BI[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x10
        }
        names = {
            "nonce",
            "ciphertextWithPrefix",
            "ciphertextOffset",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 139
    array-length v0, p1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 142
    array-length v0, p2

    add-int/lit8 v1, p3, 0x10

    if-lt v0, v1, :cond_1

    .line 145
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 147
    invoke-static {}, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->getThreadLocalCipherOrNull()Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v1, 0x2

    .line 148
    iget-object v2, p0, Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20Poly1305Jce;->keySpec:Ljavax/crypto/SecretKey;

    invoke-virtual {p1, v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p4, :cond_0

    .line 149
    array-length v0, p4

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p1, p4}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 152
    :cond_0
    array-length p4, p2

    sub-int/2addr p4, p3

    invoke-virtual {p1, p2, p3, p4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    .line 143
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "nonce length must be 12 bytes."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ciphertext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public decrypt([B[B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "nonce",
            "ciphertext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20Poly1305Jce;->decrypt([B[BI[B)[B

    move-result-object p1

    return-object p1
.end method

.method public encrypt([B[BI[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x10
        }
        names = {
            "nonce",
            "plaintext",
            "ciphertextOffset",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 96
    array-length v0, p1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 99
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 100
    invoke-static {}, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->getThreadLocalCipherOrNull()Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 p1, 0x1

    .line 101
    iget-object v2, p0, Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20Poly1305Jce;->keySpec:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, p1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p4, :cond_0

    .line 102
    array-length p1, p4

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {v1, p4}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 105
    :cond_0
    array-length p1, p2

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p1

    const p4, 0x7fffffff

    sub-int/2addr p4, p3

    if-gt p1, p4, :cond_2

    add-int p4, p3, p1

    .line 110
    new-array p4, p4, [B

    const/4 v3, 0x0

    .line 111
    array-length v4, p2

    move-object v2, p2

    move-object v5, p4

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p2

    if-ne p2, p1, :cond_1

    return-object p4

    .line 113
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "not enough data written"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "nonce length must be 12 bytes."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "plaintext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encrypt([B[B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "nonce",
            "plaintext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/crypto/tink/aead/internal/InsecureNonceChaCha20Poly1305Jce;->encrypt([B[BI[B)[B

    move-result-object p1

    return-object p1
.end method
