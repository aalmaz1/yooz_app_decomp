.class public final Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;
.super Ljava/lang/Object;
.source "XChaCha20Poly1305Jce.java"

# interfaces
.implements Lcom/google/crypto/tink/Aead;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# static fields
.field private static final CIPHER_NAME:Ljava/lang/String; = "ChaCha20-Poly1305"

.field private static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field private static final KEY_NAME:Ljava/lang/String; = "ChaCha20"

.field private static final KEY_SIZE_IN_BYTES:I = 0x20

.field private static final NONCE_SIZE_IN_BYTES:I = 0x18

.field private static final TAG_SIZE_IN_BYTES:I = 0x10


# instance fields
.field private final key:[B

.field private final outputPrefix:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_NOT_FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    return-void
.end method

.method private constructor <init>([B[B)V
    .locals 2
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

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    invoke-static {}, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 72
    iput-object p1, p0, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->key:[B

    .line 73
    iput-object p2, p0, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->outputPrefix:[B

    return-void

    .line 70
    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "The key length in bytes must be 32."

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "JCE does not support algorithm: ChaCha20-Poly1305"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use ChaCha20Poly1305 in FIPS-mode."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;)Lcom/google/crypto/tink/Aead;
    .locals 3
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

    .line 78
    new-instance v0, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;

    .line 79
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object v1

    .line 80
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;-><init>([B[B)V

    return-object v0
.end method

.method static getChaCha20Nonce([B)[B
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nonce"
        }
    .end annotation

    const/16 v0, 0xc

    new-array v0, v0, [B

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/16 v3, 0x10

    .line 159
    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static isSupported()Z
    .locals 1

    .line 84
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
.method public decrypt([B[B)[B
    .locals 5
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

    if-eqz p1, :cond_3

    .line 129
    array-length v0, p1

    iget-object v1, p0, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->outputPrefix:[B

    array-length v2, v1

    const/16 v3, 0x18

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x10

    if-lt v0, v2, :cond_2

    .line 132
    invoke-static {v1, p1}, Lcom/google/crypto/tink/internal/Util;->isPrefix([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v3, [B

    .line 136
    iget-object v1, p0, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->outputPrefix:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    iget-object v1, p0, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->key:[B

    invoke-static {v1, v0}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->hChaCha20([B[B)[B

    move-result-object v1

    .line 143
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "ChaCha20"

    invoke-direct {v2, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 144
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v0}, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->getChaCha20Nonce([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 145
    invoke-static {}, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->getThreadLocalCipherOrNull()Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v4, 0x2

    .line 146
    invoke-virtual {v0, v4, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_0

    .line 147
    array-length v1, p2

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 150
    :cond_0
    iget-object p2, p0, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->outputPrefix:[B

    array-length v1, p2

    add-int/2addr v1, v3

    .line 151
    array-length v2, p1

    array-length p2, p2

    sub-int/2addr v2, p2

    sub-int/2addr v2, v3

    .line 152
    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    .line 133
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ciphertext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encrypt([B[B)[B
    .locals 11
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

    if-eqz p1, :cond_3

    const/16 v0, 0x18

    .line 93
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->key:[B

    invoke-static {v2, v1}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->hChaCha20([B[B)[B

    move-result-object v2

    .line 95
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "ChaCha20"

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 96
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {v1}, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->getChaCha20Nonce([B)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 97
    invoke-static {}, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->getThreadLocalCipherOrNull()Ljavax/crypto/Cipher;

    move-result-object v5

    const/4 v4, 0x1

    .line 98
    invoke-virtual {v5, v4, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_0

    .line 99
    array-length v2, p2

    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {v5, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 102
    :cond_0
    array-length p2, p1

    invoke-virtual {v5, p2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p2

    .line 103
    iget-object v2, p0, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->outputPrefix:[B

    array-length v3, v2

    const v4, 0x7fffffff

    sub-int/2addr v4, v3

    sub-int/2addr v4, v0

    if-gt p2, v4, :cond_2

    .line 106
    array-length v3, v2

    add-int/2addr v3, v0

    add-int/2addr v3, p2

    .line 107
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 108
    iget-object v3, p0, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->outputPrefix:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    .line 114
    array-length v8, p1

    iget-object v1, p0, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->outputPrefix:[B

    array-length v1, v1

    add-int/lit8 v10, v1, 0x18

    move-object v6, p1

    move-object v9, v2

    .line 115
    invoke-virtual/range {v5 .. v10}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p1

    if-ne p1, p2, :cond_1

    return-object v2

    .line 118
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "not enough data written"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 104
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "plaintext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
