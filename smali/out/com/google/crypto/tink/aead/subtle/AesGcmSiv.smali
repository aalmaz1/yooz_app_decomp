.class public final Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;
.super Ljava/lang/Object;
.source "AesGcmSiv.java"

# interfaces
.implements Lcom/google/crypto/tink/Aead;


# static fields
.field private static final IV_SIZE_IN_BYTES:I = 0xc

.field private static final TAG_SIZE_IN_BYTES:I = 0x10

.field private static final TEST_AAD:[B

.field private static final TEST_KEY:[B

.field private static final TEST_NOUNCE:[B

.field private static final TEST_PLAINTEXT:[B

.field private static final TEST_RESULT:[B

.field private static final localAesGcmSivCipher:Ljava/lang/ThreadLocal;
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

    const-string v0, "7a806c"

    .line 53
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->TEST_PLAINTEXT:[B

    const-string v0, "46bb91c3c5"

    .line 54
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->TEST_AAD:[B

    const-string v0, "36864200e0eaf5284d884a0e77d31646"

    .line 55
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->TEST_KEY:[B

    const-string v0, "bae8e37fc83441b16034566b"

    .line 56
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->TEST_NOUNCE:[B

    const-string v0, "af60eb711bd85bc1e4d3e0a462e074eea428a8"

    .line 57
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->TEST_RESULT:[B

    .line 76
    new-instance v0, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->localAesGcmSivCipher:Ljava/lang/ThreadLocal;

    return-void
.end method

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

    .line 113
    invoke-direct {p0, p1, v0}, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;-><init>([B[B)V

    return-void
.end method

.method private constructor <init>([B[B)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
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

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p2, p0, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->outputPrefix:[B

    .line 108
    array-length p2, p1

    invoke-static {p2}, Lcom/google/crypto/tink/subtle/Validators;->validateAesKeySize(I)V

    .line 109
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object p2, p0, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->keySpec:Ljavax/crypto/SecretKey;

    return-void
.end method

.method static synthetic access$000(Ljavax/crypto/Cipher;)Z
    .registers 1

    .line 50
    invoke-static {p0}, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->isAesGcmSivCipher(Ljavax/crypto/Cipher;)Z

    move-result p0

    return p0
.end method

.method public static create(Lcom/google/crypto/tink/aead/AesGcmSivKey;)Lcom/google/crypto/tink/Aead;
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

    .line 101
    new-instance v0, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;

    .line 102
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmSivKey;->getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object v1

    .line 103
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmSivKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;-><init>([B[B)V

    return-object v0
.end method

.method private getAesGcmSivCipher()Ljavax/crypto/Cipher;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 117
    sget-object v0, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->localAesGcmSivCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    if-eqz v0, :cond_b

    return-object v0

    .line 119
    :cond_b
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "AES GCM SIV cipher is not available or is invalid."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getParams([B)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "iv"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 204
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->getParams([BII)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p0

    return-object p0
.end method

.method private static getParams([BII)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "buf",
            "offset",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 209
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v1, 0x80

    invoke-direct {v0, v1, p0, p1, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    return-object v0
.end method

.method private static isAesGcmSivCipher(Ljavax/crypto/Cipher;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cipher"
        }
    .end annotation

    const/4 v0, 0x0

    .line 64
    :try_start_1
    sget-object v1, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->TEST_NOUNCE:[B

    invoke-static {v1}, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->getParams([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    .line 65
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->TEST_KEY:[B

    const-string v4, "AES"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 66
    sget-object v1, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->TEST_AAD:[B

    invoke-virtual {p0, v1}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 67
    sget-object v1, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->TEST_RESULT:[B

    array-length v2, v1

    invoke-virtual {p0, v1, v0, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p0

    .line 68
    sget-object v1, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->TEST_PLAINTEXT:[B

    invoke-static {p0, v1}, Lcom/google/crypto/tink/subtle/Bytes;->equal([B[B)Z

    move-result p0
    :try_end_26
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_26} :catch_27

    return p0

    :catch_27
    return v0
.end method

.method private rawDecrypt([B[B)[B
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

    .line 172
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->getAesGcmSivCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 173
    array-length v1, p1

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_25

    const/4 v1, 0x0

    const/16 v2, 0xc

    .line 177
    invoke-static {p1, v1, v2}, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->getParams([BII)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    const/4 v3, 0x2

    .line 178
    iget-object v4, p0, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->keySpec:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_1e

    .line 179
    array-length v1, p2

    if-eqz v1, :cond_1e

    .line 180
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 182
    :cond_1e
    array-length p2, p1

    sub-int/2addr p2, v2

    invoke-virtual {v0, p1, v2, p2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    .line 174
    :cond_25
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private rawEncrypt([B[B)[B
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

    .line 126
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->getAesGcmSivCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 128
    array-length v1, p1

    const v2, 0x7fffffe3

    if-gt v1, v2, :cond_59

    .line 131
    array-length v1, p1

    const/16 v2, 0xc

    add-int/2addr v1, v2

    const/16 v6, 0x10

    add-int/2addr v1, v6

    new-array v7, v1, [B

    .line 132
    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v1

    const/4 v8, 0x0

    .line 133
    invoke-static {v1, v8, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    invoke-static {v1}, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->getParams([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    .line 136
    iget-object v2, p0, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->keySpec:Ljavax/crypto/SecretKey;

    const/4 v9, 0x1

    invoke-virtual {v0, v9, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_2d

    .line 137
    array-length v1, p2

    if-eqz v1, :cond_2d

    .line 138
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_2d
    const/4 v2, 0x0

    .line 140
    array-length v3, p1

    const/16 v5, 0xc

    move-object v1, p1

    move-object v4, v7

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p2

    .line 144
    array-length v0, p1

    add-int/2addr v0, v6

    if-ne p2, v0, :cond_3c

    return-object v7

    .line 146
    :cond_3c
    array-length p1, p1

    sub-int/2addr p2, p1

    .line 147
    new-instance p1, Ljava/security/GeneralSecurityException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 150
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v9

    const-string p2, "encryption failed; GCM tag must be %s bytes, but got only %s bytes"

    .line 148
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_59
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 192
    iget-object v0, p0, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->outputPrefix:[B

    array-length v1, v0

    if-nez v1, :cond_a

    .line 193
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->rawDecrypt([B[B)[B

    move-result-object p1

    return-object p1

    .line 195
    :cond_a
    invoke-static {v0, p1}, Lcom/google/crypto/tink/internal/Util;->isPrefix([B[B)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 198
    iget-object v0, p0, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->outputPrefix:[B

    array-length v0, v0

    array-length v1, p1

    .line 199
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->rawDecrypt([B[B)[B

    move-result-object p1

    return-object p1

    .line 196
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

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->rawEncrypt([B[B)[B

    move-result-object p1

    .line 164
    iget-object p2, p0, Lcom/google/crypto/tink/aead/subtle/AesGcmSiv;->outputPrefix:[B

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

    .line 167
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p1

    return-object p1
.end method
