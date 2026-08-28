.class public final Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;
.super Ljava/lang/Object;
.source "ChaCha20Poly1305Jce.java"

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

.field private static final NONCE_SIZE_IN_BYTES:I = 0xc

.field private static final TAG_SIZE_IN_BYTES:I = 0x10

.field private static final TEST_CIPHERTEXT_OF_EMPTY:[B

.field private static final TEST_KEY:[B

.field private static final TEST_NONCE:[B

.field private static final localCipher:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final keySpec:Ljavax/crypto/SecretKey;

.field private final outputPrefix:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_NOT_FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    const-string v0, "808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9f"

    .line 60
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->TEST_KEY:[B

    const-string v0, "070000004041424344454647"

    .line 61
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->TEST_NONCE:[B

    const-string v0, "a0784d7a4716f3feb4f64e7f4b39bf04"

    .line 63
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->TEST_CIPHERTEXT_OF_EMPTY:[B

    .line 86
    new-instance v0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->localCipher:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>([B[B)V
    .registers 5
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

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    sget-object v0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 115
    invoke-static {}, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 118
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_22

    .line 121
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "ChaCha20"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->keySpec:Ljavax/crypto/SecretKey;

    .line 122
    iput-object p2, p0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->outputPrefix:[B

    return-void

    .line 119
    :cond_22
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "The key length in bytes must be 32."

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 116
    :cond_2a
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "JCE does not support algorithm: ChaCha20-Poly1305"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_32
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use ChaCha20Poly1305 in FIPS-mode."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Ljavax/crypto/Cipher;)Z
    .registers 1

    .line 47
    invoke-static {p0}, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->isValid(Ljavax/crypto/Cipher;)Z

    move-result p0

    return p0
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

    .line 127
    new-instance v0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;

    .line 128
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/ChaCha20Poly1305Key;->getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object v1

    .line 129
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/ChaCha20Poly1305Key;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;-><init>([B[B)V

    return-object v0
.end method

.method static getThreadLocalCipherOrNull()Ljavax/crypto/Cipher;
    .registers 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 138
    sget-object v0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->localCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public static isSupported()Z
    .registers 1

    .line 142
    sget-object v0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->localCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static isValid(Ljavax/crypto/Cipher;)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cipher"
        }
    .end annotation

    const-string v0, "ChaCha20"

    const/4 v1, 0x0

    .line 67
    :try_start_3
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->TEST_NONCE:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 68
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v4, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->TEST_KEY:[B

    invoke-direct {v3, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v5, 0x2

    invoke-virtual {p0, v5, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 69
    sget-object v3, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->TEST_CIPHERTEXT_OF_EMPTY:[B

    invoke-virtual {p0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 70
    array-length v6, v6

    if-eqz v6, :cond_1f

    return v1

    .line 74
    :cond_1f
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v6, v4, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v5, v6, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 75
    invoke-virtual {p0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 76
    array-length p0, p0
    :try_end_2c
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_2c} :catch_31

    if-eqz p0, :cond_2f

    return v1

    :cond_2f
    const/4 p0, 0x1

    return p0

    :catch_31
    return v1
.end method


# virtual methods
.method public decrypt([B[B)[B
    .registers 8
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

    if-eqz p1, :cond_54

    .line 185
    array-length v0, p1

    iget-object v1, p0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->outputPrefix:[B

    array-length v2, v1

    const/16 v3, 0xc

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x10

    if-lt v0, v2, :cond_4c

    .line 188
    invoke-static {v1, p1}, Lcom/google/crypto/tink/internal/Util;->isPrefix([B[B)Z

    move-result v0

    if-eqz v0, :cond_44

    new-array v0, v3, [B

    .line 193
    iget-object v1, p0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->outputPrefix:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 201
    sget-object v0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->localCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    .line 202
    iget-object v4, p0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->keySpec:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v2, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_37

    .line 203
    array-length v1, p2

    if-eqz v1, :cond_37

    .line 204
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 206
    :cond_37
    iget-object p2, p0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->outputPrefix:[B

    array-length v1, p2

    add-int/2addr v1, v3

    .line 207
    array-length v2, p1

    array-length p2, p2

    sub-int/2addr v2, p2

    sub-int/2addr v2, v3

    .line 208
    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    .line 189
    :cond_44
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 186
    :cond_4c
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 183
    :cond_54
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ciphertext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encrypt([B[B)[B
    .registers 13
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

    if-eqz p1, :cond_61

    const/16 v0, 0xc

    .line 151
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v1

    .line 152
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 153
    sget-object v3, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->localCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    .line 154
    iget-object v5, p0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->keySpec:Ljavax/crypto/SecretKey;

    invoke-virtual {v4, v3, v5, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_24

    .line 155
    array-length v2, p2

    if-eqz v2, :cond_24

    .line 156
    invoke-virtual {v4, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 158
    :cond_24
    array-length p2, p1

    invoke-virtual {v4, p2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p2

    .line 159
    iget-object v2, p0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->outputPrefix:[B

    array-length v3, v2

    const v5, 0x7fffffff

    sub-int/2addr v5, v3

    sub-int/2addr v5, v0

    if-gt p2, v5, :cond_59

    .line 162
    array-length v3, v2

    add-int/2addr v3, v0

    add-int/2addr v3, p2

    .line 163
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 164
    iget-object v3, p0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->outputPrefix:[B

    array-length v3, v3

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x0

    .line 170
    array-length v7, p1

    iget-object v1, p0, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->outputPrefix:[B

    array-length v1, v1

    add-int/lit8 v9, v1, 0xc

    move-object v5, p1

    move-object v8, v2

    .line 171
    invoke-virtual/range {v4 .. v9}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p1

    if-ne p1, p2, :cond_51

    return-object v2

    .line 174
    :cond_51
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "not enough data written"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :cond_59
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 149
    :cond_61
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "plaintext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
